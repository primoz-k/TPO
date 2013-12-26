package com.fri.tpo.btc;

import java.util.ArrayList;
import java.util.HashMap;

import android.database.Cursor;

public class DataTable {
	private ArrayList<HashMap<String, String>> data; // podatki iz baze
	
	public DataTable() {
		data = new ArrayList<HashMap<String, String>>();
	}
	
	/*
	 * Vrednost v tabeli na doloceni vstici
	 */
	public String getString(String column, int row) {
		if (row >= data.size() || !data.get(row).containsKey(column))
			return "";
		return data.get(row).get(column);
	}
	
	/*
	 * Vrednost v tabeli na prvi vrstici
	 */
	public String getString(String column) {
		return getString(column, 0);
	}
	
	/*
	 * Ena vrstica v tabeli
	 */
	public HashMap<String, String> getRow(int row) {
		return data.get(row);
	}
	
	/*
	 * Podatki iz podanega stolpca
	 */
	public ArrayList<String> getColumn(String column) {
		ArrayList<String> col = new ArrayList<String>(getRowCount());
		
		for (HashMap<String, String> d : data)
			col.add(d.get(column));
		
		return col;
	}
	
	/*
	 * Vse vrstice v tabeli
	 */
	public ArrayList<HashMap<String, String>> getRows() {
		return data;
	}
	
	/*
	 * Stevilo vrstic v tabeli
	 */
	public int getRowCount() {
		return data.size();
	}
	
	/*
	 * Stevilo stolpcev v tabeli
	 */
	public int getColCount() {
		return data.size() > 0 ? data.get(0).size() : 0;
	}

	/*
	 * Dodajanje vrstice v tabelo
	 */
	public void addRow(HashMap<String, String> row) {
		data.add(row);
	}
	
	/*
	 * Ali je tabela prazna
	 */
	public boolean isEmpty() {
		return data.size() == 0;
	}
	
	/*
	 * Ustvarjanje tabele iz kurzorja
	 */
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
