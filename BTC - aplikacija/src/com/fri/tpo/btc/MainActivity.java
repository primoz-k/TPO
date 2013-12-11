package com.fri.tpo.btc;

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
	private Polygon p1, p2; // testni poligon za dvorano A, citypark
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		db = new DatabaseConnector(this);

		/*ArrayList<HashMap<String, String>> vseHale = db.getAllDataFromHala();
		
		String izpis="";
		for (HashMap<String, String> hala : vseHale)
			izpis += hala.get("_id").toString()+": "+hala.get("ImeHale").toString()+"\n";*/

	    // nalozi mapo
	    try {
            inicializirajZemljevid(); 
        } catch (Exception e) {
            e.printStackTrace();
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
                MarkerOptions marker = new MarkerOptions();
                marker.position(new LatLng(46.067589, 14.545394));
                marker.title("Vhod v halo");
                map.addMarker(marker);
            } else {
            	Toast.makeText(getApplicationContext(), "Karta ni narejena!", Toast.LENGTH_SHORT).show();
            }
        }
    }
    
    // ustvarjanje poligonov za hale
    private void ustvariPoligone() {
    	// testni overlay za halo A
        PolygonOptions overlay = new PolygonOptions();
        overlay.add(new LatLng(46.067886, 14.541543), new LatLng(46.067961, 14.542251), new LatLng(46.065474, 14.543774), new LatLng(46.065311, 14.543066));
        overlay.strokeColor(Color.RED);
        overlay.strokeWidth(1f);
        overlay.fillColor(Color.argb(50, 0, 255, 0)); // pol prosojno            
        p1 = map.addPolygon(overlay);
        // testni overlay za city park halo
        overlay = new PolygonOptions();
        overlay.add(new LatLng(46.069144, 14.544461), new LatLng(46.069368, 14.545115), new LatLng(46.068571, 14.545662), new LatLng(46.068690, 14.546317), new LatLng(46.066353, 14.547712), new LatLng(46.065981, 14.546349));
        overlay.strokeColor(Color.BLUE);
        overlay.strokeWidth(1f);
        overlay.fillColor(Color.argb(50, 0, 255, 255)); // pol prosojno 
        p2 = map.addPolygon(overlay);
    }
    
    // klik na zemljevid
    @Override
    public void onMapClick(LatLng klik) {
    	Log.i("Klik", "klik na karto " + klik.toString());
    	if (vsebuje(p1, klik) || vsebuje(p2, klik))
    		Toast.makeText(getApplicationContext(), "Klik na halo!", Toast.LENGTH_SHORT).show();
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
