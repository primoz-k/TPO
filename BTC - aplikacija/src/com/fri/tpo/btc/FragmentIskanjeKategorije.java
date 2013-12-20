package com.fri.tpo.btc;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ExpandableListView;
import android.widget.ExpandableListView.OnChildClickListener;

public class FragmentIskanjeKategorije extends Fragment implements OnChildClickListener {
	
	
	private ExpandableListView elv_kategorije;
    private Map<String, List<String>> kat;
    
    public FragmentIskanjeKategorije() {
		
	}
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,
			Bundle savedInstanceState) {
		View rootView = inflater.inflate(R.layout.fragment_iskanje_kategorije, container, false);
		
		int idHale = getArguments().getInt("id");
		
		DatabaseConnector db = new DatabaseConnector(getActivity());
		DataTable dt;
        
        // branje kategorij
        kat = new HashMap<String, List<String>>();
        dt = db.getDataTable("SELECT ImeKategorije FROM Kategorija");
        ArrayList<String> groups = dt.getColumn("ImeKategorije");
        for (String k : groups)
        	kat.put(k, new ArrayList<String>());
        
        // branje trgovin v kategoriji
        String query = "SELECT ImeTrgovine, ImeKategorije, IDTrgovine FROM Trgovina as t NATURAL JOIN KategorijaTrgovine as kt JOIN Kategorija as k ON (k.IDKategorije =kt.IDKategorije)";
        if (idHale != -1)
        	query += " WHERE IDHale = " + idHale;
        dt = db.getDataTable(query);
        for (HashMap<String, String> row : dt.getRows()) {
        	ArrayList<String> l = (ArrayList)kat.get(row.get("ImeKategorije"));
        	l.add(row.get("ImeTrgovine")+";"+row.get("IDTrgovine"));
        	kat.put(row.get("ImeKategorije"), l);
        }
 
        ExpandableListAdapter expListAdapter = new ExpandableListAdapter(getActivity(), groups, kat);
        elv_kategorije = (ExpandableListView)rootView.findViewById(R.id.elv_kategorije);
        elv_kategorije.setAdapter(expListAdapter); 
        elv_kategorije.setOnChildClickListener(this); // listener za klik na trgovino
		
		return rootView;
	}
	
	@Override
	public boolean onChildClick(ExpandableListView parent, View v,
			int groupPosition, int childPosition, long id) {
		// odpre aktivnost za trgovino z izbranim idjem
		Intent intent = new Intent(getActivity(), TrgovinaActivity.class);
		intent.putExtra("id", (int)id);
		this.startActivity(intent);
		return true;
	}
}
