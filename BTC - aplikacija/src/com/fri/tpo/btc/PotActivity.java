package com.fri.tpo.btc;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;

import android.app.Activity;
import android.location.Location;
import android.os.AsyncTask;
import android.os.AsyncTask.Status;
import android.os.Bundle;
import android.view.Menu;
import android.widget.Toast;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesClient.ConnectionCallbacks;
import com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener;
import com.google.android.gms.location.LocationClient;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MarkerOptions;

public class PotActivity extends Activity implements LocationListener, ConnectionCallbacks, OnConnectionFailedListener {
	
	private GoogleMap map;
	private Directions directions;
	private LocationClient location;
	private LocationRequest locRequest;

	private LatLng end;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_pot);
		
		directions = new Directions();
		
		try {
			map = MapHelper.inicializirajZemljevid(this, R.id.mapPot);
			map.setMyLocationEnabled(true);
			
			// lokacija cilja
			double lat = getIntent().getDoubleExtra("lat", MapHelper.ZACETEK.latitude);
			double lng = getIntent().getDoubleExtra("lng", MapHelper.ZACETEK.longitude);
			end = new LatLng(lat, lng);
			map.moveCamera(CameraUpdateFactory.newLatLng(end));
			
			// dobimo trenutno lokacijo
			locRequest = LocationRequest.create();
			locRequest.setPriority(LocationRequest.PRIORITY_HIGH_ACCURACY); // visoka natancnost
			locRequest.setInterval(10000); // 10s
			locRequest.setFastestInterval(5000); // 5s
			location = new LocationClient(this, this, this);

		} catch (Exception e) {
			Toast.makeText(getApplicationContext(), e.getMessage(), Toast.LENGTH_SHORT).show();
		}
	}
	
	// ob spremembi pozicije
	@Override
	public void onLocationChanged(Location l) {
		LatLng pos = new LatLng(l.getLatitude(), l.getLongitude());
		pos = MapHelper.ZACETEK; // HACK POBRISI - ZA DEBUG ---------------------------------------------------------------------------------------------------
		// preveri ce je kamera znotraj mej
		if (MapHelper.BOUNDS.contains(pos)) {
			String url = String.format("http://maps.googleapis.com/maps/api/directions/json?origin=%s,%s&destination=%s,%s&sensor=true&mode=walking", 
					pos.latitude, pos.longitude, end.latitude, end.longitude);

			// stanje taska v ozadju
			if (directions.getStatus() == Status.FINISHED)
				directions = new Directions();
			if (directions.getStatus() == Status.PENDING)
				directions.execute(url);
			
			// priblizaj na trenutno mesto
			map.animateCamera(CameraUpdateFactory.newLatLngZoom(pos, 18));
		} else {
			Toast.makeText(getApplicationContext(), "Ne nahajate se na obmocju BTC City!", Toast.LENGTH_LONG).show();
		}
	}
	
	@Override
	public void onConnected(Bundle arg0) {
		Toast.makeText(getApplicationContext(), "Povezava uspesna!", Toast.LENGTH_SHORT).show();
		location.requestLocationUpdates(locRequest, this);
	}
	
	@Override
	public void onConnectionFailed(ConnectionResult arg0) {
		Toast.makeText(getApplicationContext(), "Povezava neuspesna!", Toast.LENGTH_SHORT).show();
	}
	
	@Override
	public void onDisconnected() {
		Toast.makeText(getApplicationContext(), "Povezava prekinjena!", Toast.LENGTH_SHORT).show();
	}
	
	@Override
	protected void onStart() {
		super.onStart();
		
		location.connect();
	}
	
	@Override
	protected void onStop() {
		if (location.isConnected())
			location.removeLocationUpdates(this);
		location.disconnect();
		
		super.onStop();
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.pot, menu);
		return true;
	}
	
	private void izrisiPot(String json) {
		// doda crto na zemljevid
		if (json != null) {
			map.clear();
			map.addPolyline(MapHelper.parseDirections(json));
			map.addMarker(new MarkerOptions().position(end));
		}
	}
	
	// dobi navodila za pot na drugi niti iz streznika
	private class Directions extends AsyncTask<String, Void, String> {
		@Override
		protected String doInBackground(String... urls) {
			try {
				StringBuilder sb = new StringBuilder();
		        URLConnection conn = new URL(urls[0]).openConnection();
		        BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		        String inputLine;
		        while ((inputLine = in.readLine()) != null) 
		            sb.append(inputLine);
		        in.close();
		        
		        return sb.toString();
			} catch (Exception e) {
				return null;
			}
		}
		
		@Override
		protected void onPostExecute(String result) {
			izrisiPot(result);
			super.onPostExecute(result);
		}
	}

}
