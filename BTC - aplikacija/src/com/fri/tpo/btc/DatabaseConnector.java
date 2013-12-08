package com.fri.tpo.btc;

import java.io.File;

import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteDatabase.CursorFactory;


public class DatabaseConnector extends SQLiteOpenHelper{
	
		private static String DB_PATH = "/BTC/src/com/fri/tpo/btc/";
	    private static String DB_NAME = "baza.sqlite3";
	    private SQLiteDatabase myDatabase;

	    public DatabaseConnector(Context context){
	        super(context, DB_NAME, null, 1);
	        boolean dbexist = checkdatabase();
	        System.out.println(dbexist?"Obstaja":"Ne obstaja");
	    }
	    private boolean checkdatabase() {
	        boolean checkdb = false;
	        try {
	            String myPath = DB_PATH + DB_NAME;
	            File dbfile = new File(myPath);
	            checkdb = dbfile.exists();
	        } catch (SQLiteException e) {
	            System.out.println("Database doesn't exist");
	        }

	        return checkdb;
	    }
	    private void openReadibleDataBase() throws SQLException{
	        this.myDatabase = this.getReadableDatabase();
	    }
	    
	    public synchronized void close(){
	        if(myDatabase != null)
	            myDatabase.close();
	        super.close();

	    }
	    public String getDataInString() {
	    	openReadibleDataBase();
	        String izpis="";
	        String selectQuery = "SELECT * FROM Trgovina";
	        Cursor cursor = myDatabase.rawQuery(selectQuery, null);
	        if(cursor!=null && cursor.getCount()>0){
        		cursor.moveToFirst();
                do {
                    izpis = cursor.getString(0);
                } while (cursor.moveToNext());         
	        }
	        close();
	        return izpis;
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
