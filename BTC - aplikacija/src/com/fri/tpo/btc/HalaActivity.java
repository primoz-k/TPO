package com.fri.tpo.btc;

import java.util.ArrayList;

import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.view.Menu;
import android.view.View;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.Toast;

public class HalaActivity extends Activity implements OnItemClickListener {

	private ListView lv_trgovine;
	
	private int idHale;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_hala);
		
		lv_trgovine = (ListView)findViewById(R.id.lv_trgovine);
		
		idHale = getIntent().getIntExtra("id", 1);
		DatabaseConnector db = new DatabaseConnector(this);
		DataTable dt = db.getDataTable("SELECT ImeTrgovine FROM Trgovina WHERE IDHale = " + idHale);
		
		// trgovine v list view
		ArrayList<String> trgovineList = dt.getColumn("ImeTrgovine");
		String[] trgovine = {"NI", "VNESENIH", "TRGOVIN!"};
		if (trgovineList != null)
			trgovineList.toArray(new String[trgovineList.size()]);
        ArrayAdapter<String> adapter = new ArrayAdapter<String>(this, android.R.layout.simple_list_item_1, android.R.id.text1, trgovine);
        lv_trgovine.setAdapter(adapter); 
        lv_trgovine.setOnItemClickListener(this);
        
        
        // ime hale v actionbar
        getActionBar().setTitle(db.getData(idHale, "SELECT IDHale as _id, ImeHale FROM Hala WHERE IDHale = ?").get("ImeHale"));
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.hala, menu);
		return true;
	}

	@Override
	public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
		String trgovina = lv_trgovine.getItemAtPosition(position).toString();
		// http://stackoverflow.com/questions/12077955/android-using-simplecursoradapter-to-get-data-from-database-to-listview
		// da cursor napolni listview
		Toast.makeText(this, "Vrednost: " + trgovina, Toast.LENGTH_SHORT).show();
	}
}
