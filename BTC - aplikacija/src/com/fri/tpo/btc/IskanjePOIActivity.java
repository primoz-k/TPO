package com.fri.tpo.btc;

import java.util.HashMap;

import android.app.Activity;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.view.Menu;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.SimpleCursorAdapter;
import android.widget.Spinner;
import android.widget.Toast;

import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.GoogleMap.OnInfoWindowClickListener;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.MarkerOptions;

public class IskanjePOIActivity extends Activity implements OnItemSelectedListener, OnInfoWindowClickListener {
	
	private GoogleMap map;
	
	private DatabaseConnector db;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_iskanje_poi);
		getActionBar().setDisplayHomeAsUpEnabled(true); // UP gumb na actionbaru
		
		db = new DatabaseConnector(this);
		
		// inicializacija spinnerja
		Cursor cursor = db.getCursor("SELECT IDVrste as _id, Vrsta FROM VrstaPOI");
		SimpleCursorAdapter adapter = new SimpleCursorAdapter(this, R.layout.vrsta_poi_item, cursor, new String[]{ "Vrsta" }, new int[] { R.id.vrsta });
		Spinner sp = (Spinner)findViewById(R.id.sp_vrstaPOI);
		sp.setAdapter(adapter);
		sp.setOnItemSelectedListener(this);
		db.close(); // HACK probi popravit
		
		// inicializacija zemljevida
		try {
			map = MapHelper.inicializirajZemljevid(this, R.id.mapPOI);
			map.setOnInfoWindowClickListener(this); // listener za klik na info okno od markerja
			//Toast.makeText(getApplicationContext(), "Klikni na oznako za prikaz poti", Toast.LENGTH_LONG).show();
		} catch (Exception e) {
			Toast.makeText(getApplicationContext(), e.getMessage(), Toast.LENGTH_SHORT).show();
		}
		
		
	}

	// na karti prikazi izbran POI
	private void prikaziPOI(int id) {
		map.clear(); // pocisti vse markerje
		
		// vsi POI dolocene vrste
		DataTable dt = db.getDataTable("SELECT * FROM POI WHERE IDVrste = " + id);
		String imeVrste = db.getDataTable("Select Vrsta FROM VrstaPOI WHERE IDVrste = " + id).getString("Vrsta");
		
		// izris vseh POI
		for (HashMap<String, String> row : dt.getRows()) {			
			double lat = Double.parseDouble(row.get("LokacijaLat"));
			double lng = Double.parseDouble(row.get("LokacijaLong"));
			MarkerOptions m = new MarkerOptions();
			m.position(new LatLng(lat, lng));
			m.title(imeVrste).snippet("Klikni za prikaz poti");

			map.addMarker(m);
		}
	}
	
	// klik na drugo vrsto POI
	@Override
    public void onItemSelected(AdapterView<?> parentView, View selectedItemView, int position, long id) {
		prikaziPOI((int)id);
    }
	
	@Override
    public void onNothingSelected(AdapterView<?> parentView) {
        // klik mimo
    }
	
	// klik na opis markerja
	@Override
	public void onInfoWindowClick(Marker m) {
		LatLng pos = m.getPosition();
		double lat = pos.latitude, lng = pos.longitude;
		
		Intent intent = new Intent(this, PotActivity.class);
		intent.putExtra("lat", lat);
		intent.putExtra("lng", lng);
		startActivity(intent);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.iskanje_poi, menu);
		return true;
	}
}
