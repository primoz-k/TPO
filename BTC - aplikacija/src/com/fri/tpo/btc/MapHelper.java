package com.fri.tpo.btc;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.graphics.Color;

import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.MapFragment;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.PolygonOptions;
import com.google.android.gms.maps.model.PolylineOptions;

public class MapHelper {
	
	public static final LatLng ZACETEK = new LatLng(46.067008, 14.544182); // zacetna pozicija kamere
	public static final LatLngBounds BOUNDS = new LatLngBounds(new LatLng(46.061172, 14.541693), new LatLng(46.069509, 14.549246));
	
	/*
	 * Inicializacija Google Maps zemljevida s privzetimi nastavitvami in pozicijo
	 */
	public static GoogleMap initMap(Activity parent, int mapId) throws Exception {
		GoogleMap map = ((MapFragment) parent.getFragmentManager().findFragmentById(mapId)).getMap();
 
        // ce je zemljevid ustvarjen
        if (map != null) {
            // nastavi kamero na BTC
            //map.moveCamera(CameraUpdateFactory.newLatLngZoom(ZACETEK, 16));
        	map.moveCamera(CameraUpdateFactory.newLatLngBounds(BOUNDS, 480, 480, 0)); // TODO dobi SIRINO telefona
            // onemogoci interacije
            map.getUiSettings().setRotateGesturesEnabled(false);
            map.getUiSettings().setTiltGesturesEnabled(false);
        } else
        	throw new Exception("Karta ni narejena!");
        
        return map;
    }
	
	/*
	 * Parsanje navodil iz JSON niza
	 * Directions API: https://developers.google.com/maps/documentation/directions/
	 */
	public static PolylineOptions parseDirections(String jsonStr) {
		PolylineOptions p = new PolylineOptions();
		p.width(5).color(Color.RED);
		
		try {
			JSONObject json = new JSONObject(jsonStr);
			JSONArray routes = json.getJSONArray("routes");
	        JSONObject route = routes.getJSONObject(0);
	        JSONArray legs = route.getJSONArray("legs");
	        JSONArray steps = legs.getJSONObject(0).getJSONArray("steps");
	        
	        JSONObject start = steps.getJSONObject(0).getJSONObject("start_location");
	        p.add(new LatLng(start.getDouble("lat"), start.getDouble("lng")));
	        for (int i = 0; i < steps.length(); i++) {
	        	JSONObject end = steps.getJSONObject(i).getJSONObject("end_location");
	        	p.add(new LatLng(end.getDouble("lat"), end.getDouble("lng")));
	        }
		} catch (JSONException e) {
			
		}
		
		return p;
	}

	/*
	 * Privzeti poligon za obris hal
	 */
	public static PolygonOptions getOutline() {
		return new PolygonOptions().fillColor(Color.argb(80, 255, 0, 0)).strokeWidth(0);
	}
	
	/*
	 * Zgradi URL za navodila za pot (Origin - Destination)
	 */
	public static String getDirectionsURL(double oLat, double oLong, double dLat, double dLong) {
		return String.format("http://maps.googleapis.com/maps/api/directions/json?origin=%s,%s&destination=%s,%s&sensor=true&mode=walking", 
				oLat, oLong, dLat, dLong);
	}
}

