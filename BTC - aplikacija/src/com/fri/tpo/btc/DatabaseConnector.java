package com.fri.tpo.btc;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;

public class DatabaseConnector extends SQLiteOpenHelper {

	private static String DB_NAME = "baza.sqlite3";
	private SQLiteDatabase myDatabase;
	private final Context myContext;
	private boolean upgraded = false; // ali je baza posodobljena

	public DatabaseConnector(Context context) {
		super(context, DB_NAME, null, 8); // TODO ZA UPGRADE BAZE POVECAJ TO STEVILO
		this.myContext = context;

		// na zacetku ustvari bazo / posodobi bazo
		this.getReadableDatabase();
		try {
			createDataBase();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	private void createDataBase() throws IOException {

		// ce baza se ne obstaja ALI je posodobljena
		if (upgraded || !dbExists()) {
			upgraded = false;
			copyDataBase(); // kopija iz assets na telefon
		}
		Log.i("info", "klic createDataBase");
	}

	private void openDataBase() throws SQLException {
		this.myDatabase = this.getReadableDatabase();
	}

	public void startDatabase() {
		Log.i("info", "klic startDatabase");
		try {
			openDataBase();
		} catch (SQLException e) {
			throw e;
		}
	}

	public synchronized void close() {
		if (myDatabase != null)
			myDatabase.close();
		super.close();
	}

	private void copyDataBase() throws IOException {
		InputStream myInput = myContext.getAssets().open(DB_NAME);
		OutputStream myOutput = new FileOutputStream(
				myContext.getDatabasePath(DB_NAME));

		// transfer bytes from the inputfile to the outputfile
		byte[] buffer = new byte[1024];
		int length;
		while ((length = myInput.read(buffer)) > 0) {
			myOutput.write(buffer, 0, length);
		}

		// Close the streams
		myOutput.flush();
		myOutput.close();
		myInput.close();

		Log.i("info", "klic copyDataBase");
	}

	@Override
	public void onCreate(SQLiteDatabase arg0) {
		Log.i("info", "klic onCreate");
		upgraded = true;
	}

	@Override
	public void onUpgrade(SQLiteDatabase db, int v1, int v2) {
		Log.i("info", "klic onUpgrade");
		upgraded = true;
	}

	// ali baza ze obstaja
	private boolean dbExists() {
		return myContext.getDatabasePath(DB_NAME).exists();
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
		// close();

		return c;
	}
}