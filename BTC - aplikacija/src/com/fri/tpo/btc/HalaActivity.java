package com.fri.tpo.btc;

import android.os.Bundle;
import android.app.Activity;
import android.view.Menu;
import android.view.View;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.Toast;

public class HalaActivity extends Activity implements OnItemClickListener {

	private ListView lv_trgovine;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_hala);
		
		lv_trgovine = (ListView)findViewById(R.id.lv_trgovine);
		
		// testne vrednosti
        String[] values = new String[] {"BigBang", "Comshop", "Spar", "ThomasSport", "Hervis", "DM", "..."};
        ArrayAdapter<String> adapter = new ArrayAdapter<String>(this, android.R.layout.simple_list_item_1, android.R.id.text1, values);
        lv_trgovine.setAdapter(adapter); 
        lv_trgovine.setOnItemClickListener(this);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.hala, menu);
		return true;
	}

	@Override
	public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
		Toast.makeText(this, "Vrednost: " + lv_trgovine.getItemAtPosition(position).toString(), Toast.LENGTH_SHORT).show();
	}
}
