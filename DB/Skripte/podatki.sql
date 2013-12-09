-- to mora bit
-- android_metadata(locale)
INSERT INTO android_metadata VALUES ('en_US');

-- Hala(IDHale, ImeHale)
INSERT INTO Hala VALUES (1, 'CityPark');
INSERT INTO Hala VALUES (2, 'Emporium');
INSERT INTO Hala VALUES (3, 'Hala A');
...

-- Vhod(IDVhoda, IDHale, LokacijaLat, LokacijaLong)
-- http://universimmedia.pagesperso-orange.fr/geo/loc.htm
INSERT INTO Vhod VALUES (1, 1, 46.06824, 14.54662);
INSERT INTO Vhod VALUES (2, 1, 46.06735; 14.54717);
INSERT INTO Vhod VALUES (3, 1, 46.06760, 14.54530);
...

-- Kategorija(IDKategorije, ImeKategorije)
-- http://www.btc-city.com/zemljevid
INSERT INTO Kategorija VALUES (1, 'Tehnika');
INSERT INTO Kategorija VALUES (2, 'Hišni ljubljenèki');
INSERT INTO Kategorija VALUES (3, 'Moda');
INSERT INTO Kategorija VALUES (4, 'Raèunalništvo');
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