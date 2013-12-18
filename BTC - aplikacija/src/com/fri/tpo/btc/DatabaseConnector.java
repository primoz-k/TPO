package com.fri.tpo.btc;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

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
	    private final boolean recreate = false; // daj to na TRUE ce se spreminja baza da jo ponovno zgradi in nazaj na FALSE
	    
	    public DatabaseConnector(Context context){
	        super(context, DB_NAME, null, 1);
	        this.myContext = context;
	    }
	    private void createDataBase() throws IOException{
	    	 
	    	boolean dbExist = checkDataBase();
	    	// ce baza se ne obstaja jo prekopiramo iz assets v bazo za branje
	    	if (recreate || !dbExist){
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
	         	 openDataBase();
	    	 } catch (IOException e) { 
	    		 throw new Error("Unable to create database");	
	    	 } catch (SQLException e){
		  		 throw e;
		  	}
	    }
	    
	    private boolean checkDataBase(){
	    	 
	    	SQLiteDatabase checkDB = null;
	 
	    	try {
	    		
	    		String myPath = DB_PATH + DB_NAME;
	    		checkDB = SQLiteDatabase.openDatabase(myPath, null, SQLiteDatabase.OPEN_READONLY);
	    		
	    	} catch(SQLiteException e){}
	 
	    	if(checkDB != null) checkDB.close();
	 
	    	return checkDB != null ? true : false;
	    }
	    
	    public synchronized void close(){
	        if(myDatabase != null)
	            myDatabase.close();
	        super.close();

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
		}

		@Override
		public void onUpgrade(SQLiteDatabase arg0, int arg1, int arg2) {
		}
		
		// vrne zgrajeno data tabelo
	    // TODO predelaj da bo odporen na SQL injection
	    public DataTable getDataTable(String query) {	    	
	    	startDatabase();
	    	Cursor cursor = myDatabase.rawQuery(query, null);
	    	
	    	DataTable t = DataTable.createDataTable(cursor);
	        close();
	        
	    	return t;
	    }
	    
	    // vrne cursor ... potreben za listview adapter
	    public Cursor getCursor(String query) {
	    	startDatabase();
	    	Cursor c = myDatabase.rawQuery(query, null);
	    	//close();
	    	
	    	return c;
	    }
}