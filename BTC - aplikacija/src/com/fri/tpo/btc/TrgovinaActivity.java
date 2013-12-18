package com.fri.tpo.btc;

import java.util.ArrayList;
import java.util.HashMap;

import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.MapFragment;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.PolygonOptions;

import android.os.Bundle;
import android.app.ActionBar;
import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import android.util.Log;
import android.view.Menu;
import android.widget.TextView;
import android.widget.Toast;

public class TrgovinaActivity extends Activity {
	
	private int idTrgovine;
	private GoogleMap map;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_trgovina);
		
		DatabaseConnector db = new DatabaseConnector(this);
		
		idTrgovine = getIntent().getIntExtra("id", -1);
		
		DataTable dt = db.getDataTable("SELECT * FROM Trgovina NATURAL JOIN Hala WHERE IDTrgovine = " + idTrgovine);
		if (dt.isEmpty()) {
			Toast.makeText(getApplicationContext(), "Trgovine ni v bazi!", Toast.LENGTH_SHORT).show();
			return;
		}
		
		int idHale = Integer.parseInt(dt.getString("IDHale"));
		final ActionBar actionBar = getActionBar();
		//actionBar.setHomeButtonEnabled(true);
		// polnjenje osnovnih podatkov
		actionBar.setTitle(String.format("%s (%s)", dt.getString("ImeTrgovine"), dt.getString("ImeHale")));
		((TextView)findViewById(R.id.tv_telefon)).setText(dt.getString("Telefon"));
		((TextView)findViewById(R.id.tv_email)).setText(dt.getString("Email"));
		((TextView)findViewById(R.id.tv_spletnaStran)).setText(dt.getString("SpletnaStran"));
		TextView tv_casi = (TextView)findViewById(R.id.tv_odpiralni); // odpiralni cas
		tv_casi.setText(String.format("pon - pet: %s - %s\n", dt.getString("PonPetOd"), dt.getString("PonPetDo")));
		tv_casi.append(String.format("sob: %s - %s\n", dt.getString("SobOd"), dt.getString("SobDo")));
		tv_casi.append(String.format("ned: %s - %s", dt.getString("NedOd"), dt.getString("NedDo")));
		
		// izpis kategorij
		dt = db.getDataTable("SELECT ImeKategorije FROM KategorijaTrgovine NATURAL JOIN Kategorija WHERE IDTrgovine = " + idTrgovine);
		StringBuilder kat = new StringBuilder();
		for (String k : dt.getColumn("ImeKategorije"))
			kat.append(k).append("\n");
		((TextView)findViewById(R.id.tv_kategorije)).setText(kat.toString().trim());
		
		// prikaz hale
		dt = db.getDataTable("SELECT MIN(LokacijaLat) as minLat, MIN(LokacijaLong) as minLong, MAX(LokacijaLat) as maxLat, MAX(LokacijaLong) as maxLong FROM Obris WHERE IDHale = " + idHale);
		double minLat = Double.parseDouble(dt.getString("minLat"));
		double maxLat = Double.parseDouble(dt.getString("maxLat"));
		double minLong = Double.parseDouble(dt.getString("minLong"));
		double maxLong = Double.parseDouble(dt.getString("maxLong"));
		LatLngBounds hala = new LatLngBounds(new LatLng(minLat, minLong), new LatLng(maxLat, maxLong));
		
		// obris
		dt = db.getDataTable("SELECT LokacijaLat, LokacijaLong FROM Obris WHERE IDHale = " + idHale);
		PolygonOptions poly = new PolygonOptions();
		poly.strokeWidth(0).fillColor(Color.argb(80, 255, 0, 0));
		for (HashMap<String, String> d : dt.getRow())
			poly.add(new LatLng(Double.parseDouble(d.get("LokacijaLat")), Double.parseDouble(d.get("LokacijaLong"))));
		
		// vhodi
		ArrayList<MarkerOptions> markers = new ArrayList<MarkerOptions>();
		dt = db.getDataTable("SELECT LokacijaLat, LokacijaLong FROM Vhod WHERE IDHale = " + idHale);
		for (HashMap<String, String> d : dt.getRow()) {
			MarkerOptions marker = new MarkerOptions();
			marker.position(new LatLng(Double.parseDouble(d.get("LokacijaLat")), Double.parseDouble(d.get("LokacijaLong"))));
			markers.add(marker);
		}
		
		// inicializacija zemljevida
		if (map == null) {
            map = ((MapFragment) getFragmentManager().findFragmentById(R.id.map)).getMap();
 
            // ce je zemljevid ustvarjen
            if (map != null) {
                // nastavi kamero na halo
                map.moveCamera(CameraUpdateFactory.newLatLngBounds(hala, 300, 300, 0));
                // onemogoci interacije
                map.getUiSettings().setAllGesturesEnabled(false);
                map.getUiSettings().setZoomControlsEnabled(false);
                
                // obris
                map.addPolygon(poly);

                // vhodi
                for (MarkerOptions m : markers)
                	map.addMarker(m);
            } else {
            	Toast.makeText(getApplicationContext(), "Karta ni narejena!", Toast.LENGTH_SHORT).show();
            }
        }
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.trgovina, menu);
		return true;
	}

}
