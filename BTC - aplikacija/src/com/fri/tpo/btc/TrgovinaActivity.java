package com.fri.tpo.btc;

import java.util.HashMap;

import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.util.Log;
import android.view.Menu;
import android.widget.TextView;

public class TrgovinaActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_trgovina);
		
		HashMap<String, String> data = (HashMap<String, String>)getIntent().getSerializableExtra("data");
		// polnjenje podatkov
		getActionBar().setTitle(data.get("ImeTrgovine"));
		((TextView)findViewById(R.id.tv_telefon)).setText("Telefon: " + data.get("Telefon"));
		((TextView)findViewById(R.id.tv_email)).setText("Email: " + data.get("Email"));
		((TextView)findViewById(R.id.tv_spletnaStran)).setText("Spletna stran: " + data.get("SpletnaStran"));
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.trgovina, menu);
		return true;
	}

}
