package com.fri.tpo.btc;

import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import android.widget.SimpleCursorAdapter;

public class FragmentIskanjeAbecedni extends Fragment implements OnItemClickListener {
	
	
	private ListView lv_abecedni;
    
    public FragmentIskanjeAbecedni() {
		
	}
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,
			Bundle savedInstanceState) {
		View rootView = inflater.inflate(R.layout.fragment_iskanje_abecedni, container, false);
		
		int idHale = getArguments().getInt("id");
		
		DatabaseConnector db = new DatabaseConnector(getActivity());
 
		// vse trgovino v doloceni hali/vseh halah
		String query = "SELECT IDTrgovine as _id, * FROM Trgovina";
		if (idHale != -1)
			query += " WHERE IDHale = " + idHale;
		query += " ORDER BY ImeTrgovine";
        Cursor cursor = db.getCursor(query);
        // polnjenje listview-a s podatki
        SimpleCursorAdapter adapter = new SimpleCursorAdapter(getActivity(),
                R.layout.group_item, cursor, new String[] { "ImeTrgovine" }, new int[] { R.id.group });
        lv_abecedni = (ListView)rootView.findViewById(R.id.lv_abecedni);
        lv_abecedni.setAdapter(adapter); 
        lv_abecedni.setOnItemClickListener(this);
        db.close(); // HACK ker nesme biti kurzor prej zaprt
		
		return rootView;
	}
	
	@Override
	public void onItemClick(AdapterView<?> parent, View v, int position, long id) {
		// odpre izbrano trgovino
		Intent intent = new Intent(getActivity(), TrgovinaActivity.class);
		intent.putExtra("id", (int)id);
		this.startActivity(intent);
	}

}
