package com.fri.tpo.btc;

import android.app.Activity;

import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.MapFragment;
import com.google.android.gms.maps.model.LatLng;

public class MapHelper {
	
	public static final LatLng ZACETEK = new LatLng(46.067008, 14.544182); // zacetna pozicija kamere
	
	public static GoogleMap inicializirajZemljevid(Activity parent, int mapId) throws Exception {
		GoogleMap map = ((MapFragment) parent.getFragmentManager().findFragmentById(mapId)).getMap();
 
        // ce je zemljevid ustvarjen
        if (map != null) {
            // listener za klik na mapo
            //map.setOnMapClickListener(this);
            // nastavi kamero na BTC
            map.moveCamera(CameraUpdateFactory.newLatLngZoom(ZACETEK, 16));
            // onemogoci interacije
            map.getUiSettings().setRotateGesturesEnabled(false);
            map.getUiSettings().setTiltGesturesEnabled(false);
        } else
        	throw new Exception("Karta ni narejena!");
        
        return map;
    }

}
