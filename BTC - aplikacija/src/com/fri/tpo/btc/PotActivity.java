package com.fri.tpo.btc;

import android.app.Activity;
import android.location.Location;
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
	private LocationClient location;
	private LocationRequest locRequest;
	
	/**
	 * TODO: sparsaj podatke iz JSONa da dobis polygon path za pot
	EXAMPLE:
	http://maps.googleapis.com/maps/api/directions/json?origin=46.064998,14.544160&destination=46.068839,14.546521&sensor=false&mode=walking
	 */
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_pot);
		
		try {
			map = MapHelper.inicializirajZemljevid(this, R.id.mapPot);
			map.setMyLocationEnabled(true);
			
			LatLng marker = new LatLng(getIntent().getDoubleExtra("lat", 0), getIntent().getDoubleExtra("lng", 0));
			map.addMarker(new MarkerOptions().position(marker));
			map.moveCamera(CameraUpdateFactory.newLatLng(marker));
			
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
	
	@Override
	public void onLocationChanged(Location l) {
		map.moveCamera(CameraUpdateFactory.newLatLng(new LatLng(l.getLatitude(), l.getLongitude())));
		Toast.makeText(getApplicationContext(), l.getLatitude() + " - " + l.getLongitude(), Toast.LENGTH_SHORT).show();
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

}
