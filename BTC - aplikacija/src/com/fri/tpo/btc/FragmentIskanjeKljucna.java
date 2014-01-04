package com.fri.tpo.btc;

import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.SimpleCursorAdapter;

public class FragmentIskanjeKljucna extends Fragment implements OnItemClickListener {

	private ListView lv_kljucna;
	private EditText et_vnosIskanja;
	
	private int idHale;
    
    public FragmentIskanjeKljucna() {
		
	}
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,
			Bundle savedInstanceState) {
		View rootView = inflater.inflate(R.layout.fragment_iskanje_kljucna, container, false);
		// klik na gumb
		//rootView.findViewById(R.id.bt_isci).setOnClickListener(this);
		
		et_vnosIskanja = (EditText)rootView.findViewById(R.id.et_vnosIskanja);
		// ob spremembi teksta avtomatsko iskanje
		et_vnosIskanja.addTextChangedListener(new TextWatcher() {
			@Override
			public void onTextChanged(CharSequence s, int arg1, int arg2, int arg3) {
				isci(s.toString());
			}
			@Override
			public void beforeTextChanged(CharSequence s, int arg1, int arg2, int arg3) { }
			@Override
			public void afterTextChanged(Editable s) { }
		});
		lv_kljucna = (ListView)rootView.findViewById(R.id.lv_kljucna);
		
		idHale = getArguments().getInt("id");
		
		isci("");

		return rootView;
	}
	
	/*
	 * Klik na otroka listview, ki odpre trgovino
	 */
	@Override
	public void onItemClick(AdapterView<?> parent, View v, int position, long id) {
		// odpre izbrano trgovino
		Intent intent = new Intent(getActivity(), TrgovinaActivity.class);
		intent.putExtra("id", (int)id);
		this.startActivity(intent);
	}
	
	/*
	 * Iskanje trgovine po kljucni besedi
	 */
	private void isci(String kljucna) {
		DatabaseConnector db = new DatabaseConnector(getActivity());
		 
		// vse trgovino v doloceni hali/vseh halah
		String query = String.format("SELECT IDTrgovine as _id, * FROM Trgovina WHERE ImeTrgovine LIKE '%s%%' %s ORDER BY ImeTrgovine;", 
				kljucna, idHale != -1 ? "AND IDHale = " + idHale : "");

        Cursor cursor = db.getCursor(query);
        // polnjenje listview-a s podatki
        SimpleCursorAdapter adapter = new SimpleCursorAdapter(getActivity(),
                R.layout.group_item, cursor, new String[] { "ImeTrgovine" }, new int[] { R.id.group });
        lv_kljucna.setAdapter(adapter); 
        lv_kljucna.setOnItemClickListener(this);
        db.close(); // HACK ker nesme biti kurzor prej zaprt
	}
}
