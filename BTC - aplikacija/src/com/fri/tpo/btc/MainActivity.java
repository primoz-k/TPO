package com.fri.tpo.btc;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.MapFragment;
import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.model.LatLng;

import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.database.Cursor;
import android.util.Log;
import android.view.Menu;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends Activity {
	DatabaseConnector db;
	Cursor cur;
	TextView tv;
	
	private GoogleMap map;
	
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
            
            //map.setMyLocationEnabled(true);
            // nastavi kamero na BTC
            map.moveCamera(CameraUpdateFactory.newLatLngZoom(new LatLng(46.067008, 14.544182), 14));
        }
    }

}
