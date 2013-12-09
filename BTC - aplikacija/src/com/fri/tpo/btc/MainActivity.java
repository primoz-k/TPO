package com.fri.tpo.btc;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.database.Cursor;
import android.util.Log;
import android.view.Menu;
import android.view.View;
import android.widget.TextView;

public class MainActivity extends Activity {
	DatabaseConnector db;
	Cursor cur;
	TextView tv;
	
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

}
