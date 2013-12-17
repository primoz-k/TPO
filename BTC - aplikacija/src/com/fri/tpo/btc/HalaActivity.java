package com.fri.tpo.btc;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.util.DisplayMetrics;
import android.view.Menu;
import android.view.View;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ExpandableListView;
import android.widget.ExpandableListView.OnChildClickListener;
import android.widget.ListView;
import android.widget.Toast;

public class HalaActivity extends Activity implements OnChildClickListener {

	private ExpandableListView elv_kategorije;
    private Map<String, List<String>> kat;
	
	private int idHale;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_hala);
		
		idHale = getIntent().getIntExtra("id", 1);
		DatabaseConnector db = new DatabaseConnector(this);
		DataTable dt = db.getDataTable("SELECT ImeHale FROM Hala WHERE IDHale = " + idHale);
		
        // ime hale v actionbar
        getActionBar().setTitle(dt.getString("ImeHale"));        
        
        // branje kategorij
        kat = new HashMap<String, List<String>>();
        dt = db.getDataTable("SELECT ImeKategorije FROM Kategorija");
        ArrayList<String> groups = dt.getColumn("ImeKategorije");
        for (String k : groups)
        	kat.put(k, new ArrayList<String>());
        
        // branje trgovin v kategoriji
        dt = db.getDataTable("SELECT ImeTrgovine, ImeKategorije, IDTrgovine FROM Trgovina as t NATURAL JOIN KategorijaTrgovine as kt JOIN Kategorija as k ON (k.IDKategorije =kt.IDKategorije) WHERE IDHale = "+ idHale);
        for (HashMap<String, String> row : dt.getData()) {
        	ArrayList<String> l = (ArrayList)kat.get(row.get("ImeKategorije"));
        	l.add(row.get("ImeTrgovine")+";"+row.get("IDTrgovine"));
        	kat.put(row.get("ImeKategorije"), l);
        }
 
        ExpandableListAdapter expListAdapter = new ExpandableListAdapter(this, groups, kat);
        elv_kategorije = (ExpandableListView)findViewById(R.id.elv_kategorije);
        elv_kategorije.setAdapter(expListAdapter); 
        elv_kategorije.setOnChildClickListener(this); // listener za klik na trgovino
	}
	
	@Override
	public boolean onChildClick(ExpandableListView parent, View v,
			int groupPosition, int childPosition, long id) {        
        // odpre aktivnost za trgovino z izbranim idjem
		Intent intent = new Intent(this, TrgovinaActivity.class);
		intent.putExtra("id", (int)id);
		this.startActivity(intent);
		return true;
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.hala, menu);
		return true;
	}

}
