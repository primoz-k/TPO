package com.fri.tpo.btc;

import java.util.HashMap;

import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.util.Log;
import android.view.Menu;
import android.widget.TextView;
import android.widget.Toast;

public class TrgovinaActivity extends Activity {
	
	private int idTrgovine;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_trgovina);
		
		DatabaseConnector db = new DatabaseConnector(this);
		
		idTrgovine = getIntent().getIntExtra("id", -1);
		
		DataTable dt = db.getDataTable("SELECT * FROM Trgovina WHERE IDTrgovine = " + idTrgovine);
		if (dt.isEmpty())
			Toast.makeText(getApplicationContext(), "Trgovine ni v bazi!", Toast.LENGTH_SHORT).show();
		
		
		// polnjenje podatkov
		getActionBar().setTitle(dt.getString("ImeTrgovine"));
		((TextView)findViewById(R.id.tv_telefon)).setText("Telefon: " + dt.getString("Telefon"));
		((TextView)findViewById(R.id.tv_email)).setText("Email: " + dt.getString("Email"));
		((TextView)findViewById(R.id.tv_spletnaStran)).setText("Spletna stran: " + dt.getString("SpletnaStran"));
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.trgovina, menu);
		return true;
	}

}
