-- to mora bit
-- android_metadata(locale)
INSERT INTO android_metadata VALUES ('en_US');

-- Hala(IDHale, ImeHale)
INSERT INTO Hala VALUES (1, 'CityPark');
INSERT INTO Hala VALUES (2, 'Parkirna hiša CP');
INSERT INTO Hala VALUES (3, 'Dvorana A');
INSERT INTO Hala VALUES (4, 'Simobil');
INSERT INTO Hala VALUES (5, 'Stolpnica');
INSERT INTO Hala VALUES (6, 'Kristalna palača');
INSERT INTO Hala VALUES (7, 'Dvorana Mercurius');
INSERT INTO Hala VALUES (8, 'Upravna stavba');
INSERT INTO Hala VALUES (9, 'Dvorana 1');
INSERT INTO Hala VALUES (10, 'Dvorana 2');
INSERT INTO Hala VALUES (11, 'Dvorana 3');
INSERT INTO Hala VALUES (12, 'Dvorana 4');
INSERT INTO Hala VALUES (13, 'Dvorana 5');
INSERT INTO Hala VALUES (14, 'Dvorana 6');
INSERT INTO Hala VALUES (15, 'Dvorana 7');
INSERT INTO Hala VALUES (16, 'Dvorana 8');
INSERT INTO Hala VALUES (17, 'Dvorana 9');
INSERT INTO Hala VALUES (18, 'Dvorana 10');
INSERT INTO Hala VALUES (19, 'Dvorana 11');
INSERT INTO Hala VALUES (20, 'Dvorana 12');
INSERT INTO Hala VALUES (21, 'Dvorana 17');
INSERT INTO Hala VALUES (22, 'Dvorana 18');
INSERT INTO Hala VALUES (23, 'McDonalds');
INSERT INTO Hala VALUES (24, 'Kolosej');
INSERT INTO Hala VALUES (25, 'Plaza Hotel');
INSERT INTO Hala VALUES (26, 'Tržnica');
INSERT INTO Hala VALUES (27, 'Kratochwill');
INSERT INTO Hala VALUES (28, 'Lidl');
INSERT INTO Hala VALUES (29, 'Diamant');
INSERT INTO Hala VALUES (30, 'Emporium');
INSERT INTO Hala VALUES (31, 'Dvorana E');
INSERT INTO Hala VALUES (32, 'Millenium');
INSERT INTO Hala VALUES (33, 'Parkirna hiša BTC');
INSERT INTO Hala VALUES (34, 'Argentinska rest');
INSERT INTO Hala VALUES (35, 'Atlantis');
INSERT INTO Hala VALUES (36, 'Avtocenter');

-- Obris(IDObrisa, IDHale, LokacijaLat, LokacijaLong)
INSERT INTO Obris VALUES (1, 1, 46.069157, 14.544410);
INSERT INTO Obris VALUES (2, 1, 46.069353, 14.545126);
INSERT INTO Obris VALUES (3, 1, 46.068571, 14.545662);
INSERT INTO Obris VALUES (4, 1, 46.068698, 14.546349);
INSERT INTO Obris VALUES (5, 1, 46.066353, 14.547701);
INSERT INTO Obris VALUES (6, 1, 46.065988, 14.546328);
INSERT INTO Obris VALUES (7, 2, 46.068787, 14.546682);
INSERT INTO Obris VALUES (8, 2, 46.068921, 14.547240);
INSERT INTO Obris VALUES (9, 2, 46.066814, 14.548484);
INSERT INTO Obris VALUES (10, 2, 46.066651, 14.547905);
-- INSERT INTO Obris VALUES (, , , );

-- Vhod(IDVhoda, IDHale, LokacijaLat, LokacijaLong)
-- http://universimmedia.pagesperso-orange.fr/geo/loc.htm
INSERT INTO Vhod VALUES (1, 1, 46.06824, 14.54662);
INSERT INTO Vhod VALUES (2, 1, 46.06735; 14.54717);
INSERT INTO Vhod VALUES (3, 1, 46.06760, 14.54530);
-- . . .

-- Kategorija(IDKategorije, ImeKategorije)
INSERT INTO Kategorija VALUES (1, 'Tehnika');
INSERT INTO Kategorija VALUES (2, 'Hišni ljubljenčki');
INSERT INTO Kategorija VALUES (3, 'Moda');
INSERT INTO Kategorija VALUES (4, 'Šport in prosti čas');
INSERT INTO Kategorija VALUES (5, 'Gostinstvo in prehrana');
INSERT INTO Kategorija VALUES (6, 'Servis');
INSERT INTO Kategorija VALUES (7, 'Motociklizem');
INSERT INTO Kategorija VALUES (8, 'Avtomobilizem');
INSERT INTO Kategorija VALUES (9, 'Igre in konzole');
INSERT INTO Kategorija VALUES (10, 'Prehrana');
INSERT INTO Kategorija VALUES (11, 'Vse za dom');
INSERT INTO Kategorija VALUES (12, 'Izobraževanje, šole in tečaji');
INSERT INTO Kategorija VALUES (13, 'Šport in rekreacija');
INSERT INTO Kategorija VALUES (14, 'Erotika');
INSERT INTO Kategorija VALUES (15, 'Knjige in revije');
INSERT INTO Kategorija VALUES (16, 'Računalništvo');
INSERT INTO Kategorija VALUES (17, 'Vse za otroka');
INSERT INTO Kategorija VALUES (18, 'Kultura, zabava in umetnost');
INSERT INTO Kategorija VALUES (19, 'Turizem');
INSERT INTO Kategorija VALUES (20, 'Film in glasba');
INSERT INTO Kategorija VALUES (21, 'Lepota in zdravje');
INSERT INTO Kategorija VALUES (22, 'Šola in pisarna');
INSERT INTO Kategorija VALUES (23, 'Denar, finance, investicije');
INSERT INTO Kategorija VALUES (24, 'Ostalo');
INSERT INTO Kategorija VALUES (25, 'Živali');
...

-- Trgovina(IDTrgovine, IDHale, ImeTrgovine, Telefon, Email, SpetnaStran, PonPetOd, PonPetDo, SobOd, SobDo, NedOd, NedDo)
-- obratovalni cas je lahko tut NULL
INSERT INTO Kategorija VALUES (1, 1, 'BigBang', '01/520 09 00', 'potrosniki@bigbang.si', 'bigbang.si', '09:00','21:00','08:00','21:00','08:00','15:00');
INSERT INTO Kategorija VALUES (2, 1, '', '', '', '', '','','','','','');
INSERT INTO Kategorija VALUES (3, 1, '', '', '', '', '','','','','','');
INSERT INTO Kategorija VALUES (4, 1, '', '', '', '', '','','','','','');
...

-- KategorijaTrgovine(IDTrgovine, IDKategorije)
INSERT INTO KategorijaTrgovine VALUES (1, 1);
INSERT INTO KategorijaTrgovine VALUES (1, 4);
...

-- VrstaPOI(IDVrste, Vrsta)
INSERT INTO VrstaPOI VALUES (1, 'Informacije');
INSERT INTO VrstaPOI VALUES (2, 'Bankomat');
INSERT INTO VrstaPOI VALUES (3, 'Avtobusna postaja');
INSERT INTO VrstaPOI VALUES (4, 'Igrala');
...

-- POI(IDPoi, IDVrste, LokacijaLat, LokacijaLong)
INSERT INTO POI VALUES (1, 3, 46.06550, 14.54403);
INSERT INTO POI VALUES (2, 3, 46.06552, 14.54848);
INSERT INTO POI VALUES (3, , , ,);
INSERT INTO POI VALUES (4, , , ,);
INSERT INTO POI VALUES (5, , , ,);
...