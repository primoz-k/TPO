package com.fri.tpo.btc;

import java.util.HashMap;

import android.app.Activity;
import android.database.Cursor;
import android.os.Bundle;
import android.view.Menu;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.SimpleCursorAdapter;
import android.widget.Spinner;
import android.widget.Toast;

import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.MapFragment;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MarkerOptions;

public class IskanjePOIActivity extends Activity implements OnItemSelectedListener {
	
	private GoogleMap map;
	private DatabaseConnector db;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_iskanje_poi);
		getActionBar().setDisplayHomeAsUpEnabled(true); // UP gumb na actionbaru
		
		db = new DatabaseConnector(this);
		
		Cursor cursor = db.getCursor("SELECT IDVrste as _id, Vrsta FROM VrstaPOI");
		SimpleCursorAdapter adapter = new SimpleCursorAdapter(this, R.layout.vrsta_poi_item, cursor, new String[]{ "Vrsta" }, new int[] { R.id.vrsta });
		Spinner sp = (Spinner)findViewById(R.id.sp_vrsta);
		sp.setAdapter(adapter);
		sp.setOnItemSelectedListener(this);
		db.close(); // HACK probi popravit
		
		inicializirajZemljevid();
	}
	
	// inicializacija zemljevida
	private void inicializirajZemljevid() {
        if (map == null) {
            map = ((MapFragment) getFragmentManager().findFragmentById(R.id.mapPOI)).getMap();
 
            // ce je zemljevid ustvarjen
            if (map != null) {
                // nastavi kamero na BTC
                map.moveCamera(CameraUpdateFactory.newLatLngZoom(MainActivity.ZACETEK, 16));
                // onemogoci interacije
                map.getUiSettings().setRotateGesturesEnabled(false);
                map.getUiSettings().setTiltGesturesEnabled(false);
                
            } else {
            	Toast.makeText(getApplicationContext(), "Karta ni narejena!", Toast.LENGTH_SHORT).show();
            }
        }
    }
	
	// na karti prikazi izbran POI
	private void prikaziPOI(int id) {
		map.clear(); // pocisti vse markerje
		
		// vsi POI dolocene vrste
		DataTable dt = db.getDataTable("SELECT * FROM POI WHERE IDVrste = " + id);
		
		// izris vseh POI
		for (HashMap<String, String> row : dt.getRows()) {
			double lat = Double.parseDouble(row.get("LokacijaLat"));
			double lng = Double.parseDouble(row.get("LokacijaLong"));
			MarkerOptions m = new MarkerOptions();
			m.position(new LatLng(lat, lng));
			
			map.addMarker(m);
		}
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.iskanje_poi, menu);
		return true;
	}
	
	@Override
    public void onItemSelected(AdapterView<?> parentView, View selectedItemView, int position, long id) {
		prikaziPOI((int)id);
    }
	
	@Override
    public void onNothingSelected(AdapterView<?> parentView) {
        // klik mimo
    }

	/*@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		switch (item.getItemId()) {
		case android.R.id.home:
			// This ID represents the Home or Up button. In the case of this
			// activity, the Up button is shown. Use NavUtils to allow users
			// to navigate up one level in the application structure. For
			// more details, see the Navigation pattern on Android Design:
			//
			// http://developer.android.com/design/patterns/navigation.html#up-vs-back
			//
			NavUtils.navigateUpFromSameTask(this);
			return true;
		}
		return super.onOptionsItemSelected(item);
	}*/

}
