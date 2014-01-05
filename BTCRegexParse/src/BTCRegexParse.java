import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.sun.tools.javac.util.Pair;


public class BTCRegexParse {
	

	private static int index = 1;
	private static HashMap<String, Integer> kat;
	private static ArrayList<Pair<String, Integer>> hale;
	
	public static void main(String[] args) {		
		fill(); // napolni hashmape
		
		// generiranje insert stavkov za vsako halo
		for (Pair<String, Integer> p : hale) {
			System.out.println("-- "+ p.fst + " ("+p.snd+") ------------------------------------------------------");
			trgovineVHali(p.fst, p.snd);
			System.out.println();
		}
	}
	
	private static void fill() {
		hale = new ArrayList<Pair<String,Integer>>();
		hale.add(new Pair<String, Integer>("CityPark", 1));
		hale.add(new Pair<String, Integer>("Parkirna hiša CP", 2));
		hale.add(new Pair<String, Integer>("Dvorana A", 3));
		hale.add(new Pair<String, Integer>("Simobil", 4));
		hale.add(new Pair<String, Integer>("Stolpnica", 5));
		hale.add(new Pair<String, Integer>("Kristalna palača", 6));
		hale.add(new Pair<String, Integer>("Dvorana Mercurius", 7));
		hale.add(new Pair<String, Integer>("Upravna stavba", 8));
		hale.add(new Pair<String, Integer>("Dvorana 1", 9));
		hale.add(new Pair<String, Integer>("Dvorana 2", 10));
		hale.add(new Pair<String, Integer>("Dvorana 3", 11));
		hale.add(new Pair<String, Integer>("Dvorana 4", 12));
		hale.add(new Pair<String, Integer>("Dvorana 5", 13));
		hale.add(new Pair<String, Integer>("Dvorana 6", 14));
		hale.add(new Pair<String, Integer>("Dvorana 7", 15));
		hale.add(new Pair<String, Integer>("Dvorana 8", 16));
		hale.add(new Pair<String, Integer>("Dvorana 9", 17));
		hale.add(new Pair<String, Integer>("Dvorana 10", 18));
		hale.add(new Pair<String, Integer>("Dvorana 11", 19));
		hale.add(new Pair<String, Integer>("Dvorana 12", 20));
		hale.add(new Pair<String, Integer>("Dvorana 17", 21));
		hale.add(new Pair<String, Integer>("Dvorana 18", 22));
		hale.add(new Pair<String, Integer>("McDonalds", 23));
		hale.add(new Pair<String, Integer>("Kolosej", 24));
		hale.add(new Pair<String, Integer>("Plaza Hotel", 25));
		hale.add(new Pair<String, Integer>("Tržnica", 26));
		hale.add(new Pair<String, Integer>("Kratochwill", 27));
		hale.add(new Pair<String, Integer>("Lidl", 28));
		hale.add(new Pair<String, Integer>("Diamant", 29));
		hale.add(new Pair<String, Integer>("Emporium", 30));
		hale.add(new Pair<String, Integer>("Dvorana E", 31));
		hale.add(new Pair<String, Integer>("Millenium", 32));
		hale.add(new Pair<String, Integer>("Parkirna hiša BTC", 33));
		hale.add(new Pair<String, Integer>("Argentinska rest", 34));
		hale.add(new Pair<String, Integer>("Atlantis", 35));
		hale.add(new Pair<String, Integer>("Avtocenter", 36));
		
		kat = new HashMap<String, Integer>();
		kat.put("Tehnika", 1);
		kat.put("Hišni ljubljenčki", 2);
		kat.put("Moda", 3);
		kat.put("Šport in prosti čas", 4);
		kat.put("Gostinstvo in prehrana", 5);
		kat.put("Servis", 6);
		kat.put("Motociklizem", 7);
		kat.put("Avtomobilizem", 8);
		kat.put("Igre in konzole", 9);
		kat.put("Prehrana", 10);
		kat.put("Vse za dom", 11);
		kat.put("Izobraževanje, šole in tečaji", 12);
		kat.put("Šport in rekreacija", 13);
		kat.put("Erotika", 14);
		kat.put("Knjige in revije", 15);
		kat.put("Računalništvo", 16);
		kat.put("Vse za otroka", 17);
		kat.put("Kultura, zabava in umetnost", 18);
		kat.put("Turizem", 19);
		kat.put("Film in Glasba", 20);
		kat.put("Lepota in zdravje", 21);
		kat.put("Šola in pisarna", 22);
		kat.put("Denar, finance, investicije", 23);
		kat.put("Ostalo", 24);
		kat.put("Živali", 25);

	}
	
	private static void trgovineVHali(String hala, int idHale) {
		String line = getUrlSource("http://www.btc-city.com/menu-trgovine/trgovine");
		String pattern = "(?i)<a href=\"([^\"]*)\">.*\">" + hala;

		// url-ji trgovin v podani hali
		Matcher m = Pattern.compile(pattern).matcher(line);
		ArrayList<String> shops = new ArrayList<String>();
		while (m.find()) {
			String url = getUrlSource("http://www.btc-city.com" + m.group(1));
			shops.add(url);
		}

		// izpis za vsako trgovino
		for (String url : shops) {
			String ime, tel, email, www, ponPetOd = "", ponPetDo = "", sobOd = "", sobDo = "", nedOd = "", nedDo = "";
			// ime trgovine
			m = Pattern.compile("<p>([\\w\\sčšžČŠŽ&;\\.-]*)</p>").matcher(url);
			ime = m.find() ? m.group(1) : "/";
			// tel trgovine
			m = Pattern.compile("<p>([0-9/ ]*)</p>").matcher(url);
			tel = m.find() ? m.group(1) : "/";
			// spletna stran
			m = Pattern.compile("<p><a href=\"http.*\">(.*)</a></p>").matcher(url);
			www = m.find() ? m.group(1) : "/";
			// spletna stran
			m = Pattern.compile("<p><a href=\"mailto.*\">(.*)</a></p>").matcher(url);
			email = m.find() ? m.group(1) : "/";
			
			// delovni cas
			m = Pattern.compile("<p>pon:[\\s]*([0-9:]*) - ([0-9:]*)</p>").matcher(url);
			if (m.find()) {
				ponPetOd = m.group(1);
				ponPetDo = m.group(2);
			}
			m = Pattern.compile("<p>sob:[\\s]*([0-9:]*) - ([0-9:]*)</p>").matcher(url);
			if (m.find()) {
				sobOd = m.group(1);
				sobDo = m.group(2);
			}
			m = Pattern.compile("<p>ned:[\\s]*([0-9:]*) - ([0-9:]*)</p>").matcher(url);
			if (m.find()) {
				nedOd = m.group(1);
				nedDo = m.group(2);
			}
			
			// INSERT trgovina
			String insert = String.format("INSERT INTO Trgovina VALUES " +
					"(%d, %s, '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s');", 
					index, idHale, ime, tel, email, www, ponPetOd, ponPetDo, sobOd, sobDo, nedOd, nedDo);
			System.out.println(insert);
			
			// INSERT kategorija
			m = Pattern.compile("([\\w čšžČŠŽ;&-]+)</li>").matcher(url);
			while (m.find()) {
				String val = m.group(1).trim().replace("&amp;", "in");
				if (val.length() == 0 || val.equals("&nbsp;") || !kat.containsKey(val))
					continue;
				insert = String.format("INSERT INTO KategorijaTrgovine VALUES (%d, %d); -- %s", index, (int)kat.get(val), val);
				System.out.println(insert);
			}
			
			// naslednja trgovina
			index++;
		}
	}
	
	private static String getUrlSource(String url) {
		StringBuilder a = new StringBuilder();
		try {
	        URL yahoo = new URL(url);
	        URLConnection yc = yahoo.openConnection();
	        BufferedReader in = new BufferedReader(new InputStreamReader(
	                yc.getInputStream(), "UTF-8"));
	        String inputLine;
	        
	        while ((inputLine = in.readLine()) != null)
	            a.append(inputLine).append("\n");
	        in.close();
		} catch (IOException e) {
		}

        return a.toString();
    }

}
