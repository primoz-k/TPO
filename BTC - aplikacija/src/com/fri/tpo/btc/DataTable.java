package com.fri.tpo.btc;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

import android.database.Cursor;

public class DataTable {
	private ArrayList<HashMap<String, String>> data;
	
	public DataTable() {
		data = new ArrayList<HashMap<String, String>>();
	}
	
	// vrne vrednost iz tabele v določeni vrstici
	public String getString(String column, int row) {
		if (row >= data.size() || !data.get(row).containsKey(column))
			return "";
		
		return data.get(row).get(column);
	}
	
	// vrne vrednost iz tabele v prvi vrstici
	public String getString(String column) {
		return getString(column, 0);
	}
	
	// vrne eno vrstico v tabeli
	public HashMap<String, String> getRow(int row) {
		return data.get(row);
	}
	
	// vrne en stolpec v tabeli
	public ArrayList<String> getColumn(String column) {
		ArrayList<String> col = new ArrayList<String>(getRowCount());
		
		for (HashMap<String, String> d : data)
			col.add(d.get(column));
		
		return col;
	}
	
	// vrne celotno tabelo - vse vrstice
	public ArrayList<HashMap<String, String>> getRows() {
		return data;
	}
	
	// število vrstic
	public int getRowCount() {
		return data.size();
	}
	
	// število stolpcev
	public int getColCount() {
		return data.get(0).size();
	}

	// dodaj vrstico
	public void addRow(HashMap<String, String> row) {
		data.add(row);
	}
	
	// ali je tabela prazna
	public boolean isEmpty() {
		return data.size() == 0;
	}
	
	// ustvari tabelo iz kurzorja
	public static DataTable createDataTable(Cursor c) {
		DataTable dt = new DataTable();
    	
    	if (c != null && c.getCount() > 0) {
    		c.moveToFirst();
    		do {
    			HashMap<String, String> row = new HashMap<String, String>(c.getCount());
        		for (int i=0; i < c.getColumnCount(); i++)
        			row.put(c.getColumnName(i), c.getString(i));
        		dt.addRow(row);
    		} while (c.moveToNext());  
        }
		
		return dt;
	}
	
	
}
