package com.fri.tpo.btc;

import java.util.HashMap;
import java.util.List;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Intent;
import android.os.Bundle;
import android.util.SparseArray;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Toast;

import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.GoogleMap.OnMapClickListener;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.Polygon;
import com.google.android.gms.maps.model.PolygonOptions;

public class MainActivity extends Activity implements OnMapClickListener {
	
	private GoogleMap map; // glavni zemljevid
	private SparseArray<Polygon> polygons; // obrisi hal (ID -> OBRIS)
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
	    // inicializacija zemljevida
	    try {
            map = MapHelper.initMap(this, R.id.map);
            map.setOnMapClickListener(this);
            makePolygons();
        } catch (Exception e) {
            Toast.makeText(getApplicationContext(), e.getMessage(), Toast.LENGTH_LONG).show();
        }
	}
	
	/*
	 * KLIK na gumb za iskanje trgovin
	 */
	public void findShops(View v) {
		this.startActivity(new Intent(this, IskanjeActivity.class));
	}
	
	/*
	 * KLIK na gumb za iskanje tock interesa
	 */
	public void findPOI(View v) {
		this.startActivity(new Intent(this, IskanjePOIActivity.class));
	}
    
	/*
	 * Ustvarjanje poligonov za vsako halo v bazi
	 */
    private void makePolygons() {
        // inicializacija in izris poligonov za vse hale
    	DatabaseConnector db = new DatabaseConnector(this);
        polygons = new SparseArray<Polygon>();
        DataTable hale = db.getDataTable("SELECT IDHale FROM Hala");
        for (String id : hale.getColumn("IDHale")) {
        	PolygonOptions poly = MapHelper.getOutline();
        	
        	// preberemo tocke iz baze
        	DataTable obrisiLok = db.getDataTable("SELECT LokacijaLat, LokacijaLong FROM Obris WHERE IDHale = " + id);
        	
        	// ce ni podatkov o obrisih - preskocimo
        	if (obrisiLok.isEmpty())
        		continue;
        	
        	// dodamo tocke v polygon
        	for (HashMap<String, String> row : obrisiLok.getRows()) {
        		double lat = Double.parseDouble(row.get("LokacijaLat"));
        		double lng = Double.parseDouble(row.get("LokacijaLong"));
        		poly.add(new LatLng(lat, lng));
        	}
        	
        	// dodamo obrise v array za racunanje dotikov
        	polygons.put(Integer.parseInt(id), map.addPolygon(poly));
        }
    }
    
    /*
     * Klik na zemljevid
     */
    @Override
    public void onMapClick(LatLng klik) {
    	// sprehod cez vse obrise hal
    	for (int i = 0; i < polygons.size(); i++)
    		if (contains(polygons.valueAt(i), klik)) {
    			// odpre aktivnost za halo s pravim IDjem
    			Intent intent = new Intent(this, IskanjeActivity.class);
    			intent.putExtra("id", polygons.keyAt(i));
    			this.startActivity(intent);
    			break;
    		}
    }
    
    /*
     * Ali izbran poligon vsebuje tocko
     */
    private boolean contains(Polygon poly, LatLng point) {
		int i, j;
		List<LatLng> points = poly.getPoints();
		boolean result = false;
		
		for (i = 0, j = points.size() - 1; i < points.size(); j = i++)
			if ((points.get(i).longitude > point.longitude) != (points.get(j).longitude > point.longitude) &&
			      (point.latitude < (points.get(j).latitude - points.get(i).latitude) * (point.longitude - points.get(i).longitude) / (points.get(j).longitude - points.get(i).longitude) + points.get(i).latitude))
				result = !result;
		return result;
    }
    
    @Override
	public boolean onCreateOptionsMenu(Menu menu) {
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}
    
    /*
     * Klik na menu
     */
    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
    	switch (item.getItemId()) {
    	case R.id.about_settings:
    		AlertDialog about = new AlertDialog.Builder(this).create();
    		about.setTitle("Avtorji aplikacije:");
    		about.setMessage("Denis Korinšek (63110055)\nPrimož Kerin (63110015)\nMatej Biberovič (63110100)");
    		about.show();
    		return true;
    	case R.id.navodila_settings:
    		AlertDialog instr = new AlertDialog.Builder(this).create();
    		instr.setTitle("Navodila za uporabo:");
    		instr.setMessage("Za iskanje vseh trgovin pritisni na ikono za iskanje (levo). " +
    				"Za iskanje trgovin v določeni hali pritisni na obris hale na zemljevidu.\n" +
    				"Za iskanje točk interesa pritisni ikono za prikaz točk (desno). " +
    				"Ob kliku na določeno točko se vam prikaže pot do te točke.");
    		instr.show();
    		return true;
    	}
    	return super.onOptionsItemSelected(item);
    }

}
