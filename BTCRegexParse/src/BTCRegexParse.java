import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


public class BTCRegexParse {
	

	public static void main(String[] args) {
		//System.out.println(getUrlSource("http://www.btc-city.com/menu-trgovine/trgovine"));
		
		trgovineVHali("Citypark", 1, 1);
	}
	
	private static void trgovineVHali(String hala, int idHale, int index) {
		String line = getUrlSource("http://www.btc-city.com/menu-trgovine/trgovine");
		String pattern = "<a href=\"([^\"]*)\">.*\">" + hala;

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
				String val = m.group(1).trim().replace("amp;", "");
				if (val.length() == 0 || val.equals("&nbsp;"))
					continue;
				insert = String.format("INSERT INTO KategorijaTrgovine VALUES (%d, ); -- %s", index, val);
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
