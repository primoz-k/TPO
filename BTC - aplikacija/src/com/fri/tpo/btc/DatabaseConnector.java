package com.fri.tpo.btc;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;

import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;


public class DatabaseConnector extends SQLiteOpenHelper{
	
		private static String DB_PATH = "data/data/com.fri.tpo.btc/databases/";
	    private static String DB_NAME = "baza.sqlite3";
	    private SQLiteDatabase myDatabase;
	    private final Context myContext;
	    
	    public DatabaseConnector(Context context){
	        super(context, DB_NAME, null, 1);
	        this.myContext = context;
	    }
	    private void createDataBase() throws IOException{
	    	 
	    	boolean dbExist = checkDataBase();
	    	// ce baza se ne obstaja jo prekopiramo iz assets v bazo za branje
	    	if(!dbExist){
	        	this.getReadableDatabase();
    			copyDataBase();
	    	}
	 
	    }
	    
	    private void openDataBase() throws SQLException{
	        this.myDatabase = this.getReadableDatabase();
	    }
	    
	    public void startDatabase(){
	    	 try {
	    		 
	         	createDataBase();
	  
	    	 } catch (IOException ioe) { 
	    		 throw new Error("Unable to create database");	
	    	 }
		  	try {
		  		openDataBase();
		  	}catch(SQLException e){
		  		throw e;
		  	}
	    }
	    
	    private boolean checkDataBase(){
	    	 
	    	SQLiteDatabase checkDB = null;
	 
	    	try{
	    		
	    		String myPath = DB_PATH + DB_NAME;
	    		checkDB = SQLiteDatabase.openDatabase(myPath, null, SQLiteDatabase.OPEN_READONLY);
	    		
	    	}catch(SQLiteException e){}
	 
	    	if(checkDB != null) checkDB.close();
	 
	    	return checkDB != null ? true : false;
	    }
	    
	    public synchronized void close(){
	        if(myDatabase != null)
	            myDatabase.close();
	        super.close();

	    }
	   
	    public String getDataInString(String query) {
	        String izpis="";
	        Cursor cursor = myDatabase.rawQuery(query, null);
	        if(cursor!=null && cursor.getCount()>0){
        		cursor.moveToFirst();
                do {
	        		for(int i=0;i<=cursor.getCount();i++){
	        			izpis = izpis+" "+ cursor.getString(i);
	        		}
	        		izpis+="/n";
                } while (cursor.moveToNext());         
	        }
	        close();
	        return izpis;
	    } 
	    
	    
	    public HashMap<String, String> getHalaInHashMap(int idHale) {
	    	return getDataHashMap(idHale, "Select * FROM Hala WHERE _id=?");
	    } 
	    
	    public HashMap<String, String> getTrgovinaInHashMap(int idHale) {
	        return getDataHashMap(idHale, "Select * FROM Trgovina WHERE _id=?");
	    }
	    
	    private HashMap<String, String> getDataHashMap(int id,String query) {
	    	startDatabase();
	    	HashMap<String, String> data = new HashMap<String, String>();
	        Cursor cursor = myDatabase.rawQuery(query,new String[]{""+id});
	        if(cursor!=null && cursor.getCount()>0){
        		cursor.moveToFirst();
        		for(int i=0;i<=cursor.getCount();i++){
        			data.put(cursor.getColumnName(i), cursor.getString(i));
        		}     
	        }
	        close();
	        return data;
	    }
	    
	    public ArrayList<HashMap<String, String>> getAllDataFromHala(){
	    	return getAllData("Select * FROM Hala"); 
	    }
	    
	    public ArrayList<HashMap<String, String>> getAllDataFromTrgovina(){
	    	return getAllData("Select * FROM Trgovina"); 
	    }
	    
	    private ArrayList<HashMap<String, String>> getAllData(String query) {
	    	startDatabase();
	    	ArrayList<HashMap<String, String>> data = new ArrayList<HashMap<String,String>>();
	    	HashMap<String, String> line = new HashMap<String, String>();
	        Cursor cursor = myDatabase.rawQuery(query,null);
	        if(cursor!=null && cursor.getCount()>0){
        		cursor.moveToFirst();
        		do{
	        		for(int i=0;i<=cursor.getColumnCount()-1;i++){
	        			line.put(cursor.getColumnName(i), cursor.getString(i));
	        		}     
	        		data.add(line);
	        		line = new HashMap<String, String>();
        		} while (cursor.moveToNext());  
	        }
	        close();
	        return data;
	    }
	    
	    private void copyDataBase() throws IOException{
	    	InputStream myInput = myContext.getAssets().open(DB_NAME);
	    	String outFileName = DB_PATH + DB_NAME;
	    	OutputStream myOutput = new FileOutputStream(outFileName);
	 
	    	//transfer bytes from the inputfile to the outputfile
	    	byte[] buffer = new byte[1024];
	    	int length;
	    	while ((length = myInput.read(buffer))>0){
	    		myOutput.write(buffer, 0, length);
	    	}
	 
	    	//Close the streams
	    	myOutput.flush();
	    	myOutput.close();
	    	myInput.close();
	 
	    }
		
	    @Override
		public void onCreate(SQLiteDatabase arg0) {
			// TODO Auto-generated method stub
			
		}

		@Override
		public void onUpgrade(SQLiteDatabase arg0, int arg1, int arg2) {
			// TODO Auto-generated method stub
			
		}
}