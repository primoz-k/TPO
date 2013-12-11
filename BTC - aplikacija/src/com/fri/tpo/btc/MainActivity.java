package com.fri.tpo.btc;

import java.util.ArrayList;
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

import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.GoogleMap.OnMapClickListener;
import com.google.android.gms.maps.MapFragment;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.Polygon;
import com.google.android.gms.maps.model.PolygonOptions;

public class MainActivity extends Activity implements OnMapClickListener {
	private DatabaseConnector db;
	
	private GoogleMap map;
	private HashMap<String, Polygon> obrisi; // obrisi hal
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		db = new DatabaseConnector(this);

	    // nalozi mapo
	    try {
            inicializirajZemljevid(); 
        } catch (Exception e) {
            e.printStackTrace();
            Toast.makeText(getApplicationContext(), "napaka ob inicializaciji: " + e.getMessage(), Toast.LENGTH_LONG).show();
        }
	}
	

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}
	
	// odpiranje trgovine
	public void odpriTrgovino(View v) {
		Log.i("klik", "odpiranje trgovine");
		
		// odpre aktivnost za trgovino s podanim hashmapom (trgovino)
		Intent intent = new Intent(this, TrgovinaActivity.class);
		intent.putExtra("id", 2);
		intent.putExtra("data", db.getTrgovina(2)); // ID trgovine 2 ! za test
		this.startActivity(intent);
	}
	
	// odpiranje hale
	public void odpriHalo(View v) {
		Log.i("klik", "odpiranje hale");
		
		// odpre aktivnost za halo
		Intent intent = new Intent(this, HalaActivity.class);
		intent.putExtra("id", 1);
		this.startActivity(intent);
	}
	
	// inicializacija zemljevida
    private void inicializirajZemljevid() {
        if (map == null) {
            map = ((MapFragment) getFragmentManager().findFragmentById(R.id.map)).getMap();
 
            // check if map is created successfully or not
            if (map != null) {
            	// https://developers.google.com/maps/documentation/android/views - dokumentacija za maps API
                // listener za klik na mapo
                map.setOnMapClickListener(this);
                // nastavi kamero na BTC
                map.moveCamera(CameraUpdateFactory.newLatLngZoom(new LatLng(46.067008, 14.544182), 15));
                // onemogoci interacije
                map.getUiSettings().setRotateGesturesEnabled(false);
                map.getUiSettings().setTiltGesturesEnabled(false);
                
                ustvariPoligone();

                // test za marker
                /*MarkerOptions marker = new MarkerOptions();
                marker.position(new LatLng(46.067589, 14.545394));
                marker.title("Vhod v halo");
                map.addMarker(marker);*/
            } else {
            	Toast.makeText(getApplicationContext(), "Karta ni narejena!", Toast.LENGTH_SHORT).show();
            }
        }
    }
    
    // ustvarjanje poligonov za hale
    private void ustvariPoligone() {
        // inicializacija in izris poligonov za vse hale
        obrisi = new HashMap<String, Polygon>();
        ArrayList<String> hale = db.getAllData("SELECT IDHale FROM Hala").get("IDHale");
        for (String id : hale) {
        	PolygonOptions poly = new PolygonOptions();
        	poly.strokeColor(Color.BLACK).strokeWidth(1f).fillColor(Color.argb(50, 0, 255, 0));
        	
        	// preberemo tocke iz baze
        	HashMap<String, ArrayList<String>> lokacijeObrisov = db.getAllData("SELECT LokacijaLat, LokacijaLong FROM Obris WHERE IDHale = " + id);
        	ArrayList<String> lLat = lokacijeObrisov.get("LokacijaLat");
        	ArrayList<String> lLong = lokacijeObrisov.get("LokacijaLong");
        	
        	if (lLat == null)
        		continue;
        	
        	// dodamo tocke v polygon
        	for (int i = 0; i < lLat.size(); i++)
        		poly.add(new LatLng(Double.parseDouble(lLat.get(i)), Double.parseDouble(lLong.get(i))));
        	
        	obrisi.put(id, map.addPolygon(poly));
        }
    }
    
    // klik na zemljevid
    @Override
    public void onMapClick(LatLng klik) {
    	Log.i("Klik", "klik na karto " + klik.toString());
    	
    	for (String id : obrisi.keySet()) {
    		if (vsebuje(obrisi.get(id), klik)) {
    			Toast.makeText(getApplicationContext(), "Klik na halo id: " + id, Toast.LENGTH_SHORT).show();
    			break;
    		}
    	}
    }
    
    // ali je izbrana tocka v poligonu
    private boolean vsebuje(Polygon poly, LatLng point) {
    	int i, j;
    	List<LatLng> points = poly.getPoints();
        boolean result = false;
        
        for (i = 0, j = points.size() - 1; i < points.size(); j = i++) {
          if ((points.get(i).longitude > point.longitude) != (points.get(j).longitude > point.longitude) &&
              (point.latitude < (points.get(j).latitude - points.get(i).latitude) * (point.longitude - points.get(i).longitude) / (points.get(j).longitude - points.get(i).longitude) + points.get(i).latitude)) {
            result = !result;
           }
        }
        return result;
    }

}
