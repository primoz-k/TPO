package com.fri.tpo.btc;

import java.util.HashMap;
import java.util.List;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.View;
import android.widget.Toast;

import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.GoogleMap.OnMapClickListener;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.Polygon;
import com.google.android.gms.maps.model.PolygonOptions;

public class MainActivity extends Activity implements OnMapClickListener {
	private DatabaseConnector db;
	
	private GoogleMap map; // glavni zemljevid
	private HashMap<Integer, Polygon> obrisi; // obrisi hal (ID -> OBRIS)
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		db = new DatabaseConnector(this);

	    // inicializacija zemljevida
	    try {
            map = MapHelper.inicializirajZemljevid(this, R.id.map);
            map.setOnMapClickListener(this);
            ustvariPoligone();
        } catch (Exception e) {
            Toast.makeText(getApplicationContext(), e.getMessage(), Toast.LENGTH_LONG).show();
        }
	}
	
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}
	
	// iskanje trgovin
	public void iskanjeTrgovin(View v) {
		// odpre aktivnost za iskanje trgovin brez id-ja (vse hale)
		Intent intent = new Intent(this, IskanjeActivity.class);
		this.startActivity(intent);
	}
	
	// iskanje tock interesa
	public void iskanjePOI(View v) {
		// odpre aktivnost za iskanje tock interesa
		Intent intent = new Intent(this, IskanjePOIActivity.class);
		this.startActivity(intent);
	}
    
    // ustvarjanje poligonov za hale
    private void ustvariPoligone() {
        // inicializacija in izris poligonov za vse hale
        obrisi = new HashMap<Integer, Polygon>();
        DataTable hale = db.getDataTable("SELECT IDHale FROM Hala");
        for (String id : hale.getColumn("IDHale")) {
        	PolygonOptions poly = new PolygonOptions();
        	poly.strokeWidth(0).fillColor(Color.argb(80, 255, 0, 0));
        	
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
        	obrisi.put(Integer.parseInt(id), map.addPolygon(poly));
        }
    }
    
    // klik na zemljevid
    @Override
    public void onMapClick(LatLng klik) {
    	Log.i("Klik", "klik na karto " + klik.toString());
    	
    	for (int id : obrisi.keySet()) {
    		if (vsebuje(obrisi.get(id), klik)) {
    			// odpre aktivnost za halo
    			Intent intent = new Intent(this, IskanjeActivity.class);
    			intent.putExtra("id", id);
    			this.startActivity(intent);
    			break;
    		}
    	}
    }
    
    // ali je izbrana tocka v poligonu
    private boolean vsebuje(Polygon poly, LatLng point) {
		int i, j;
		List<LatLng> points = poly.getPoints();
		boolean result = false;
		
		for (i = 0, j = points.size() - 1; i < points.size(); j = i++)
			if ((points.get(i).longitude > point.longitude) != (points.get(j).longitude > point.longitude) &&
			      (point.latitude < (points.get(j).latitude - points.get(i).latitude) * (point.longitude - points.get(i).longitude) / (points.get(j).longitude - points.get(i).longitude) + points.get(i).latitude))
				result = !result;
		return result;
    }

}
