package com.fri.tpo.btc;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.GoogleMap.OnMapClickListener;
import com.google.android.gms.maps.MapFragment;
import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.Polygon;
import com.google.android.gms.maps.model.PolygonOptions;

import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Color;
import android.graphics.Point;
import android.util.Log;
import android.view.Menu;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends Activity implements OnMapClickListener {
	DatabaseConnector db;
	Cursor cur;
	TextView tv;
	
	private GoogleMap map;
	private Polygon p; // testni poligon za dvorano A
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		tv = (TextView)findViewById(R.id.tv1);
		
		db = new DatabaseConnector(this);
		
		
		
		//String data = db.getData("Select * from Hala");
		
		//HashMap<String, String> hale = db.getHalaInHashMap(1);
		ArrayList<HashMap<String, String>> vseHale = db.getAllDataFromHala();
		
		String izpis="";
		for(HashMap<String, String> hala:vseHale)
			izpis+=hala.get("_id").toString()+"->"+hala.get("ImeHale").toString()+"\n";
			
		
	    tv.setText(izpis);
	    
	    
	    // nalozi mapo
	    try {
            initilizeMap(); 
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
	
	public void odpriTrgovino(View v) {
		Log.i("klik", "odpiranje trgovine");
		
		// odpre aktivnost za trgovino s podanim hashmapom
		HashMap<String, String> trgovina = new HashMap<String, String>(); // ZAENKRAT TEST
		trgovina.put("ImeTrgovine", "BigBang");
		Intent intent = new Intent(this, TrgovinaActivity.class);
		intent.putExtra("data", trgovina);
		this.startActivity(intent);
	}
	
	@Override
	protected void onResume() {
		// TODO Auto-generated method stub
		super.onResume();
	}
	
	// inicializacija zemljevida
    private void initilizeMap() {
        if (map == null) {
            map = ((MapFragment) getFragmentManager().findFragmentById(
                    R.id.map)).getMap();
 
            // check if map is created successfully or not
            if (map == null) {
                Toast.makeText(getApplicationContext(),
                        "Karta ni narejena!", Toast.LENGTH_SHORT)
                        .show();
                return;
            }
            
            // https://developers.google.com/maps/documentation/android/views - dokumentacija za maps API
            // listener za klik na mapo
            map.setOnMapClickListener(this);
            // nastavi kamero na BTC
            map.moveCamera(CameraUpdateFactory.newLatLngZoom(new LatLng(46.067008, 14.544182), 15));
            
            // testni overlay za halo A
            PolygonOptions overlay = new PolygonOptions();
            overlay.add(new LatLng(46.067886, 14.541543), new LatLng(46.067961, 14.542251), new LatLng(46.065474, 14.543774), new LatLng(46.065311, 14.543066));
            overlay.strokeColor(Color.RED);
            overlay.strokeWidth(1f);
            overlay.fillColor(Color.argb(50, 0, 255, 0)); // pol prosojno            
            p = map.addPolygon(overlay);
           
            
        }
    }
    
    @Override
    public void onMapClick(LatLng klik) {
    	Log.i("Klik", "klik na karto " + klik.toString());
    	if (vsebuje(p, klik))
    		Toast.makeText(this, "Klik na halo!", Toast.LENGTH_SHORT).show();
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
