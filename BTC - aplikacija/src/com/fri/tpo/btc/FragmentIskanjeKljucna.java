package com.fri.tpo.btc;

import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.SimpleCursorAdapter;

public class FragmentIskanjeKljucna extends Fragment implements OnItemClickListener, OnClickListener {
	
	
	private ListView lv_kljucna;
	private Button bt_isci;
	private EditText et_vnosIskanja;
	
	private int idHale;
    
    public FragmentIskanjeKljucna() {
		
	}
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,
			Bundle savedInstanceState) {
		View rootView = inflater.inflate(R.layout.fragment_iskanje_kljucna, container, false);
		bt_isci = (Button)rootView.findViewById(R.id.bt_isci);
		bt_isci.setOnClickListener(this);
		et_vnosIskanja = (EditText)rootView.findViewById(R.id.et_vnosIskanja);
		lv_kljucna = (ListView)rootView.findViewById(R.id.lv_kljucna);
		
		idHale = getArguments().getInt("id");
		
		isci("");

		return rootView;
	}
	
	@Override
	public void onItemClick(AdapterView<?> parent, View v, int position, long id) {
		// odpre izbrano trgovino
		Intent intent = new Intent(getActivity(), TrgovinaActivity.class);
		intent.putExtra("id", (int)id);
		this.startActivity(intent);
	}
	
	// klik na gumb za iskanje
	@Override
	public void onClick(View v) {
		// iskanje po kljucni besedi
		isci(et_vnosIskanja.getText().toString());
	}
	
	private void isci(String kljucna) {
		DatabaseConnector db = new DatabaseConnector(getActivity());
		 
		// vse trgovino v doloceni hali/vseh halah
		String query = "SELECT IDTrgovine as _id, * FROM Trgovina WHERE ImeTrgovine LIKE '" + kljucna + "%'";
		if (idHale != -1)
			query += " AND IDHale = " + idHale;
		query += " ORDER BY ImeTrgovine";
        Cursor cursor = db.getCursor(query);
        // polnjenje listview-a s podatki
        SimpleCursorAdapter adapter = new SimpleCursorAdapter(getActivity(),
                R.layout.group_item, cursor, new String[] { "ImeTrgovine" }, new int[] { R.id.group });
        lv_kljucna.setAdapter(adapter); 
        lv_kljucna.setOnItemClickListener(this);
        db.close(); // HACK ker nesme biti kurzor prej zaprt
	}
}
