package com.fri.tpo.btc;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

import android.database.Cursor;

public class DataTable {
	private ArrayList<String> columns;
	private ArrayList<ArrayList<String>> data;
	
	public DataTable() {
		columns = new ArrayList<String>();
		data = new ArrayList<ArrayList<String>>();
	}
	
	public String getString(String column, int row) {
		if (!columns.contains(column) || row >= data.size())
			return "";

		int index = columns.indexOf(column);
		
		return index != -1 ? data.get(row).get(index) : "";
	}
	
	public String getString(String column) {
		return getString(column, 0);
	}
	
	public ArrayList<String> getRow(int row) {
		return data.get(row);
	}
	
	public ArrayList<String> getColumn(String column) {
		ArrayList<String> col = new ArrayList<String>(getRowCount());
		int index = columns.indexOf(column);
		if (index == -1)
			return null;
		
		for (ArrayList<String> cols : data)
			col.add(cols.get(index));
		
		return col;
	}
	
	public int getRowCount() {
		return data.size();
	}
	
	public int getColCount() {
		return columns.size();
	}
	
	public void setColumns(String[] columns) {
		this.columns = new ArrayList<String>(Arrays.asList(columns));
	}
	
	public void addRow(ArrayList<String> row) {
		data.add(row);
	}
	
	public boolean isEmpty() {
		return data.size() == 0;
	}
	
	public static DataTable createDataTable(Cursor c) {
		DataTable dt = new DataTable();
    	
    	if (c != null && c.getCount() > 0) {
    		c.moveToFirst();
    		dt.setColumns(c.getColumnNames());
    		do {
    			ArrayList<String> row = new ArrayList<String>(c.getCount());
        		for (int i=0; i < c.getColumnCount(); i++)
        			row.add(c.getString(i));
        		dt.addRow(row);
    		} while (c.moveToNext());  
        }
		
		return dt;
	}
}
