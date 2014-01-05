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
-- DONE

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

INSERT INTO Obris VALUES (11, 3, 46.067924, 14.541553);
INSERT INTO Obris VALUES (12, 3, 46.068162, 14.542294);
INSERT INTO Obris VALUES (13, 3, 46.065489, 14.543924);
INSERT INTO Obris VALUES (14, 3, 46.065266, 14.543120);
-- INSERT INTO Obris VALUES (, , , );
-- ze v bazi

-- Vhod(IDVhoda, IDHale, LokacijaLat, LokacijaLong)
-- http://universimmedia.pagesperso-orange.fr/geo/loc.htm
INSERT INTO Vhod VALUES (1, 1, 46.06824, 14.54662);
INSERT INTO Vhod VALUES (2, 1, 46.06735, 14.54717);
INSERT INTO Vhod VALUES (3, 1, 46.06760, 14.54530);
-- TODO

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
-- DONE

-- VrstaPOI(IDVrste, Vrsta)
INSERT INTO VrstaPOI VALUES (1, 'Informacije');
INSERT INTO VrstaPOI VALUES (2, 'Bankomati');
INSERT INTO VrstaPOI VALUES (3, 'Igrala');
INSERT INTO VrstaPOI VALUES (4, 'BUS');
INSERT INTO VrstaPOI VALUES (5, 'Taxi');
INSERT INTO VrstaPOI VALUES (6, 'Citybus');
-- DONE

-- POI(IDPoi, IDVrste, LokacijaLat, LokacijaLong)
INSERT INTO POI VALUES (1, 1, 46.066740, 14.542658);
INSERT INTO POI VALUES (2, 1, 46.068065, 14.543720);
INSERT INTO POI VALUES (3, 1, 46.062653, 14.548323);
INSERT INTO POI VALUES (4, 2, 46.068869, 14.542336);
INSERT INTO POI VALUES (5, 2, 46.066703, 14.541500);
INSERT INTO POI VALUES (6, 2, 46.064760, 14.543409);
INSERT INTO POI VALUES (7, 2, 46.066427, 14.542809);
INSERT INTO POI VALUES (8, 2, 46.064909, 14.542862);
INSERT INTO POI VALUES (9, 2, 46.061879, 14.544665);
INSERT INTO POI VALUES (10, 2, 46.062564, 14.543806);
INSERT INTO POI VALUES (11, 2, 46.064886, 14.546767);
INSERT INTO POI VALUES (12, 2, 46.064938, 14.548581);
INSERT INTO POI VALUES (13, 2, 46.065720, 14.549589);
INSERT INTO POI VALUES (14, 2, 46.067536, 14.545383);
INSERT INTO POI VALUES (15, 3, 46.065169, 14.543173);
INSERT INTO POI VALUES (16, 3, 46.062005, 14.544396);
INSERT INTO POI VALUES (17, 3, 46.063390, 14.548259);
INSERT INTO POI VALUES (18, 3, 46.064715, 14.546446);
INSERT INTO POI VALUES (19, 3, 46.066368, 14.545469);
INSERT INTO POI VALUES (20, 3, 46.067507, 14.545416);
INSERT INTO POI VALUES (21, 3, 46.065720, 14.549578);
INSERT INTO POI VALUES (22, 4, 46.069122, 14.539955);
INSERT INTO POI VALUES (23, 4, 46.069234, 14.541478);
INSERT INTO POI VALUES (24, 4, 46.068214, 14.541939);
INSERT INTO POI VALUES (25, 4, 46.065519, 14.544042);
INSERT INTO POI VALUES (26, 4, 46.062102, 14.544890);
INSERT INTO POI VALUES (27, 4, 46.065571, 14.548484);
INSERT INTO POI VALUES (28, 5, 46.064909, 14.543227);
INSERT INTO POI VALUES (29, 5, 46.068154 , 14.541596);
INSERT INTO POI VALUES (30, 6, 46.065594 , 14.542648);
INSERT INTO POI VALUES (31, 6, 46.064149 , 14.54342);
INSERT INTO POI VALUES (32, 6, 46.068318 , 14.542047);
INSERT INTO POI VALUES (33, 6, 46.067395 , 14.543656);
INSERT INTO POI VALUES (34, 6, 46.065281 , 14.545029);
INSERT INTO POI VALUES (35, 6, 46.062884 , 14.545351);
INSERT INTO POI VALUES (36, 6, 46.063048 , 14.54784);
INSERT INTO POI VALUES (37, 6, 46.065653 , 14.548484);
-- DONE

-- Trgovina(IDTrgovine, IDHale, ImeTrgovine, Telefon, Email, SpetnaStran, PonPetOd, PonPetDo, SobOd, SobDo, NedOd, NedDo)
-- KategorijaTrgovine(IDTrgovine, IDKategorije)
-- CityPark (1) ------------------------------------------------------
INSERT INTO Trgovina VALUES (1, 1, 'Accessorize', '01/320 08 45', 'accessorize.lj1@acron-trgovina.si', 'http://www.acron-trgovina.si/', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (1, 3); -- Moda
INSERT INTO Trgovina VALUES (2, 1, 'Adidas', '01/320 81 40', 'adidasshop-ljubljana@afp.si', '/', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (2, 3); -- Moda
INSERT INTO Trgovina VALUES (3, 1, 'After Leonardo', '01/547 10 92', 'after.citypark@leonardo.si', 'http://www.leonardo.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (3, 3); -- Moda
INSERT INTO Trgovina VALUES (4, 1, 'Art', '01/541 00 46', 'info@art-lj.si', 'http://www.art-lj.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (4, 4); -- Šport in prosti čas
INSERT INTO Trgovina VALUES (5, 1, 'Bags&amp;More', '01 620 87 36', 'Bags.morelj5@acron-trgovina.si', 'http://www.acron-trgovina.si/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (5, 3); -- Moda
INSERT INTO Trgovina VALUES (6, 1, 'Bata Superstore', '051/658 562', 'bata.citypark@sportina.si', 'http://www.sportina.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (6, 3); -- Moda
INSERT INTO Trgovina VALUES (7, 1, 'bauMax', '01/548 44 44', 'info-si@baumax.com', 'http://www.baumax.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (7, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (8, 1, 'Bazilica - zel', '01/541 00 54', 'bazilica.zel@gmail.com', 'http://www.bazilica.com', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (8, 21); -- Lepota in zdravje
INSERT INTO Trgovina VALUES (9, 1, 'Big Bang', '01/520 09 00', 'potrosniki@bigbang.si', 'http://bigbang.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (9, 8); -- Avtomobilizem
INSERT INTO KategorijaTrgovine VALUES (9, 20); -- Film in Glasba
INSERT INTO KategorijaTrgovine VALUES (9, 9); -- Igre in konzole
INSERT INTO KategorijaTrgovine VALUES (9, 21); -- Lepota in zdravje
INSERT INTO KategorijaTrgovine VALUES (9, 16); -- Računalništvo
INSERT INTO KategorijaTrgovine VALUES (9, 22); -- Šola in pisarna
INSERT INTO KategorijaTrgovine VALUES (9, 1); -- Tehnika
INSERT INTO KategorijaTrgovine VALUES (9, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (10, 1, 'Camper', '059 07 56 63', 'camper.city@cloudy.si', '/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (10, 3); -- Moda
INSERT INTO Trgovina VALUES (11, 1, 'Comma', '01/520 11 91', 'cityparkcomma@soliver.si', 'http://www.comma-fashion.com', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (11, 3); -- Moda
INSERT INTO Trgovina VALUES (12, 1, 'Crocs', '0599/577 37', 'crocs.citypark@gmail.com', '/', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (12, 3); -- Moda
INSERT INTO Trgovina VALUES (13, 1, 'Deichmann', '01/ 520 13 71', 'deichmann-obutev@deichmann.com', 'http://www.deichmann.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (13, 3); -- Moda
INSERT INTO Trgovina VALUES (14, 1, 'Diddl Shop', '0599 / 26 192', 'info@diddlshop.si', 'www.diddlshop.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (14, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (14, 22); -- Šola in pisarna
INSERT INTO KategorijaTrgovine VALUES (14, 11); -- Vse za dom
INSERT INTO KategorijaTrgovine VALUES (14, 17); -- Vse za otroka
INSERT INTO Trgovina VALUES (15, 1, 'Direndaj', '01/ 620 77 46', 'direndaj.ljubljana-city@orbico.si', 'http://www.direndaj.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (15, 9); -- Igre in konzole
INSERT INTO KategorijaTrgovine VALUES (15, 15); -- Knjige in revije
INSERT INTO KategorijaTrgovine VALUES (15, 22); -- Šola in pisarna
INSERT INTO KategorijaTrgovine VALUES (15, 17); -- Vse za otroka
INSERT INTO Trgovina VALUES (16, 1, 'DM Drogerie markt', '01/5415300', 'info@dm-drogeriemarkt.si', 'http://www.dm-drogeriemarkt.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (16, 21); -- Lepota in zdravje
INSERT INTO Trgovina VALUES (17, 1, 'Dollar', '01/520 93 00', 'trgovina.ljubljana@dollar.si', 'http://www.dollar.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (17, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (18, 1, 'Florentina dežela balonov', '041 412 162', 'florentina@siol.net', 'http://www.florentina.si ', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (18, 17); -- Vse za otroka
INSERT INTO Trgovina VALUES (19, 1, 'G-Star', '051/658 517', 'gstar.citypark@sportina.si', 'http://www.sportina.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (19, 3); -- Moda
INSERT INTO Trgovina VALUES (20, 1, 'Guess Accessories Store', '0599/28 876', 'guessbtc@sanis.si', 'https://www.facebook.com/guess.l....', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (20, 3); -- Moda
INSERT INTO Trgovina VALUES (21, 1, 'H&amp;M', '01/547 18 60', '/', '/', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (21, 3); -- Moda
INSERT INTO Trgovina VALUES (22, 1, 'Hervis', '01/587 48 10', 'hm08-300.ljubljana@hervis.si', 'http://www.hervis.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (22, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (22, 4); -- Šport in prosti čas
INSERT INTO Trgovina VALUES (23, 1, 'Hiša čokolade Rustika', '01/430 17 94', 'cokoladnica_lj@rustika.eu', '/', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (23, 10); -- Prehrana
INSERT INTO Trgovina VALUES (24, 1, 'Humanic', '01/524 00 37', 'bracic.petra@lsag.com', 'http://www.shoemanic.com', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (24, 3); -- Moda
INSERT INTO Trgovina VALUES (25, 1, 'iStore', '/', 'istore@fmc.si', 'http://www.i-store.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (25, 16); -- Računalništvo
INSERT INTO KategorijaTrgovine VALUES (25, 1); -- Tehnika
INSERT INTO Trgovina VALUES (26, 1, 'BTC City Ljubljana', '01/ 755 47 01', 'kontakt@kastner-oehler.si', 'http://www.kastner-oehler.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (26, 3); -- Moda
INSERT INTO Trgovina VALUES (27, 1, 'Kelih', '01/541 18 18', '/', '/', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (27, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (28, 1, 'Leonardo', '01/547 10 90', 'leonardo@leonardo-ce.si', '/', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (28, 22); -- Šola in pisarna
INSERT INTO Trgovina VALUES (29, 1, 'Limoni', '01/523 35 31', 'cityparklj@limoni.si', '/', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (29, 21); -- Lepota in zdravje
INSERT INTO Trgovina VALUES (30, 1, 'BTC City Ljubljana', '01/523 34 66', 'info@loccitane.si', 'http://www.loccitane.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (30, 21); -- Lepota in zdravje
INSERT INTO Trgovina VALUES (31, 1, 'Marks &amp; Spencer', '01/520 49 00', 'marinopoulos@siol.net', 'http://www.marksandspencer.com', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (31, 3); -- Moda
INSERT INTO Trgovina VALUES (32, 1, 'Megamarket Interspar', '01/587 30 10', 'im.01@spar.si', 'http://www.spar.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (32, 10); -- Prehrana
INSERT INTO Trgovina VALUES (33, 1, 'Melvita', '01/320 48 47', 'info@melvita.si', 'http://www.melvita.si', '09:00', '21:00', '09:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (33, 21); -- Lepota in zdravje
INSERT INTO Trgovina VALUES (34, 1, 'Mladinska knjiga trgovina', '01 520 81 61', 'skupnicitypark@mk-trgovina.si', 'http://www.mk-trgovina.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (34, 15); -- Knjige in revije
INSERT INTO Trgovina VALUES (35, 1, 'Mura', '01/547 29 90', '/', 'http://www.mura.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (35, 3); -- Moda
INSERT INTO Trgovina VALUES (36, 1, 'Naracamicie', '/', 'info@naracamicie.si', 'http://naracamicie.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (36, 3); -- Moda
INSERT INTO Trgovina VALUES (37, 1, 'New Yorker', '01/548 35 91', '/', '/', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (37, 3); -- Moda
INSERT INTO Trgovina VALUES (38, 1, 'Okaidi', '/', '/', '/', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (38, 3); -- Moda
INSERT INTO Trgovina VALUES (39, 1, 'Orsay', '051/658 518', 'Orsay.citypark@sportina.si', 'http://www.sportina.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (39, 3); -- Moda
INSERT INTO Trgovina VALUES (40, 1, 'Palmers', '01/523 35 28', 'palmers-citypark@krokodil.si', 'http://www.krokodil.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (40, 3); -- Moda
INSERT INTO Trgovina VALUES (41, 1, 'Promod', '/', '/', '/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (41, 3); -- Moda
INSERT INTO Trgovina VALUES (42, 1, 'Rifle', '01/541 95 20', '/', '/', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (42, 3); -- Moda
INSERT INTO Trgovina VALUES (43, 1, 's.Oliver', '01/520 11 92', 'citypark@soliver.si', 'http://www.soliver.de', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (43, 3); -- Moda
INSERT INTO Trgovina VALUES (44, 1, 's.Oliver Junior', '01/520 11 90', 'cityparkkids@soliver.si', 'http://www.soliver.de', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (44, 3); -- Moda
INSERT INTO Trgovina VALUES (45, 1, 's.Oliver Selection', '01 520 11 92', 'cityparkselection@soliver.si', 'http://www.soliver.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (45, 3); -- Moda
INSERT INTO Trgovina VALUES (46, 1, 'Sanolabor', '01/521 12 88', 'mp.lj-citypark@sanolabor.si', '/', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (46, 21); -- Lepota in zdravje
INSERT INTO Trgovina VALUES (47, 1, 'Sariko', '01 / 236 20 28', '/', '/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (47, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (47, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (48, 1, 'Six', '051/658 523', 'six.citypark@sportina.si', 'http://www.sportina.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (48, 3); -- Moda
INSERT INTO Trgovina VALUES (49, 1, 'Sten time', '01/546 52 13', 'info@sten.si', 'http://www.sten.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (49, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (49, 22); -- Šola in pisarna
INSERT INTO KategorijaTrgovine VALUES (49, 4); -- Šport in prosti čas
INSERT INTO KategorijaTrgovine VALUES (49, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (50, 1, 'Sten Time Exclusive', '030/321 121', 'info@sten.si', 'http://www.sten.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (50, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (50, 22); -- Šola in pisarna
INSERT INTO KategorijaTrgovine VALUES (50, 4); -- Šport in prosti čas
INSERT INTO KategorijaTrgovine VALUES (50, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (51, 1, 'Stenders', '01 / 620 87 78', 'prodaja@stenders.si', 'http://www.stenders.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (51, 21); -- Lepota in zdravje
INSERT INTO Trgovina VALUES (52, 1, 'Swarovski', '01/523 34 90', '/', '/', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (52, 3); -- Moda
INSERT INTO Trgovina VALUES (53, 1, 'Swatch', '/', 'info@sten.si', 'http://www.sten.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (53, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (53, 22); -- Šola in pisarna
INSERT INTO KategorijaTrgovine VALUES (53, 4); -- Šport in prosti čas
INSERT INTO Trgovina VALUES (54, 1, 'Tally Weijl', '051/658 577', 'TW.citypark@sportina.si', 'http://www.sportina.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (54, 3); -- Moda
INSERT INTO Trgovina VALUES (55, 1, 'Tele Mobiltel', '01/523 34 63', '/', '/', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (55, 1); -- Tehnika
INSERT INTO Trgovina VALUES (56, 1, 'Telekom Slovenije', '01/541 05 00', '/', 'http://www.telekom.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (56, 1); -- Tehnika
INSERT INTO Trgovina VALUES (57, 1, 'Tisoč in en dar', '01/541 17 30', 'info@pro-92.si', 'http://www.tisocinendar.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (57, 4); -- Šport in prosti čas
INSERT INTO Trgovina VALUES (58, 1, 'Tkanina', '01/541 00 42', 'tkanina.cermelj@siol.net', '/', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (58, 3); -- Moda
INSERT INTO Trgovina VALUES (59, 1, 'Toko', '01/524 00 31', 'Pe10@toko.si', 'http://www.toko.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (59, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (59, 22); -- Šola in pisarna
INSERT INTO KategorijaTrgovine VALUES (59, 1); -- Tehnika
INSERT INTO Trgovina VALUES (60, 1, 'Tom Tailor', '051/658 546', 'TomTailor.citypark@sportina.si', 'http://www.sportina.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (60, 3); -- Moda
INSERT INTO Trgovina VALUES (61, 1, 'Tomas sport', '01/523 34 98', 'spar.ts@amis.net', '/', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (61, 3); -- Moda
INSERT INTO Trgovina VALUES (62, 1, 'Transport', '/', 'transport-btc@t-2.net', 'http://www.transportshoes.com', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (62, 3); -- Moda
INSERT INTO Trgovina VALUES (63, 1, 'Triumph', '01 / 54 11 761', 'triumph.lj-citypark@siol.net', 'http://www.triumph.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (63, 3); -- Moda
INSERT INTO Trgovina VALUES (64, 1, 'Two way', '01/ 511 64 49', 'citypark@twoway.si', 'http://www.twoway.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (64, 3); -- Moda
INSERT INTO Trgovina VALUES (65, 1, 'Vinoteka Istenič', '/', 'office@istenic.si', 'http://www.istenic.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (65, 10); -- Prehrana
INSERT INTO Trgovina VALUES (66, 1, 'Vovko', '01/523 35 13', 'citypark@vovko.si', 'http://www.vovko.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (66, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (67, 1, 'xyz', '051/658 535', 'xyz.citypark@sportina.si', 'http://www.xyzstyleideas.com', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (67, 3); -- Moda
INSERT INTO Trgovina VALUES (68, 1, 'Zootic', '01/541 02 57', 'zootic.citypark@zootic.si', 'http://www.zootic.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (68, 2); -- Hišni ljubljenčki

-- Parkirna hiša CP (2) ------------------------------------------------------

-- Dvorana A (3) ------------------------------------------------------
INSERT INTO Trgovina VALUES (69, 3, 'Ahat', '01/585 25 24', 'ahat@rutil.si', 'http://www.ahat.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (69, 3); -- Moda
INSERT INTO Trgovina VALUES (70, 3, 'Alenka', '01/541 11 23', 'alenka.copati@gmail.com', 'http://www.alenkacopati.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (70, 3); -- Moda
INSERT INTO Trgovina VALUES (71, 3, 'Aler ZOO trgovina za male živali', '01/585 27 05', 'info@aler.si', 'http://www.aler.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (71, 2); -- Hišni ljubljenčki
INSERT INTO Trgovina VALUES (72, 3, 'BTC City Ljubljana', '01/547 16 74', 'tr0021@alpina.si', 'http://www.alpinashop.si/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (72, 3); -- Moda
INSERT INTO Trgovina VALUES (73, 3, 'Ara', '01/585 18 48', 'unika@siol.net', '/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (73, 3); -- Moda
INSERT INTO Trgovina VALUES (74, 3, 'Benn', '/', '/', 'http://www.facebook.com/pages/BEN...', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (74, 3); -- Moda
INSERT INTO Trgovina VALUES (75, 3, 'Bijoux modni dodatki', '01/585 22 91', 'info@modnidodatki.com', 'http://www.modnidodatki.com', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (75, 3); -- Moda
INSERT INTO Trgovina VALUES (76, 3, 'Boutique Špela', '01/585 17 85', 'spela.marinko@gmail.com', '/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (76, 3); -- Moda
INSERT INTO Trgovina VALUES (77, 3, 'Brugi shop', '01/585 17 76', '/', '/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (77, 3); -- Moda
INSERT INTO Trgovina VALUES (78, 3, 'By American', '01/585 27 59', 'byamerican@siol.net', 'http://www.zorga-tradecompany.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (78, 3); -- Moda
INSERT INTO Trgovina VALUES (79, 3, 'Cecil', '01/5423397', 'tkanina.btc3@siol.net', '/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (79, 3); -- Moda
INSERT INTO Trgovina VALUES (80, 3, 'Ciciban', '01/585 27 77', '/', 'http://www.ciciban.info/domov', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (80, 3); -- Moda
INSERT INTO Trgovina VALUES (81, 3, 'COCOZEBRA', '01/585 18 69', 'info@cocozebra.com', 'http://www.cocozebra.com', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (81, 21); -- Lepota in zdravje
INSERT INTO KategorijaTrgovine VALUES (81, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (81, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (82, 3, 'Cotton bay', '01/585 26 02', '/', 'http://cottonbay.si/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (82, 3); -- Moda
INSERT INTO Trgovina VALUES (83, 3, 'CS Kitajski center', '01/810 90 66', 'cs.kitajskicenter@gmail.com', '/', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (83, 14); -- Erotika
INSERT INTO KategorijaTrgovine VALUES (83, 20); -- Film in Glasba
INSERT INTO KategorijaTrgovine VALUES (83, 3); -- Moda
INSERT INTO Trgovina VALUES (84, 3, 'Cvetličarna Cvetnik', '07/393 47 75', 'cvetnik@volja.net', '/', '08:00', '20:00', '08:00', '13:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (84, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (85, 3, 'Cvetličarna Silvija', '068/195 092', 'lklidija0@gmail.com', 'http://www.cvetlicarna-silvija.co...', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (85, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (86, 3, 'Danex Art Galerija', '07/332 23 35', 'danexart@siol.net', 'http://www.prodajaslik.com', '08:00', '20:00', '08:00', '13:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (86, 4); -- Šport in prosti čas
INSERT INTO Trgovina VALUES (87, 3, 'Darila', '01/585 15 89', 'projest.darila@btc-city.si', 'http://www.fitnesshop.si/darila.h...', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (87, 22); -- Šola in pisarna
INSERT INTO KategorijaTrgovine VALUES (87, 1); -- Tehnika
INSERT INTO Trgovina VALUES (88, 3, 'Darila Vike', '01/364 10 90', 'info@vike.si', 'http://www.darila-vike.si/', '08:00', '20:00', '08:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (88, 21); -- Lepota in zdravje
INSERT INTO KategorijaTrgovine VALUES (88, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (88, 22); -- Šola in pisarna
INSERT INTO KategorijaTrgovine VALUES (88, 17); -- Vse za otroka
INSERT INTO Trgovina VALUES (89, 3, 'dm', '01/541 53 04', '/', 'http://www.dm-drogeriemarkt.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (89, 21); -- Lepota in zdravje
INSERT INTO Trgovina VALUES (90, 3, 'Drogerija Lola', '01/585 13 31', 'lola@t-2.net', '/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (90, 21); -- Lepota in zdravje
INSERT INTO KategorijaTrgovine VALUES (90, 3); -- Moda
INSERT INTO Trgovina VALUES (91, 3, 'BTC City Ljubljana', '01/585 17 31', 'tanja.dezman@dzs.si', 'http://www.dzs.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (91, 15); -- Knjige in revije
INSERT INTO KategorijaTrgovine VALUES (91, 16); -- Računalništvo
INSERT INTO KategorijaTrgovine VALUES (91, 22); -- Šola in pisarna
INSERT INTO KategorijaTrgovine VALUES (91, 17); -- Vse za otroka
INSERT INTO Trgovina VALUES (92, 3, 'Ecco', '01/585 18 33', 'bulevar.btc@btc-city.si', 'http://www.interalp.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (92, 3); -- Moda
INSERT INTO Trgovina VALUES (93, 3, 'Eigrače', '01/810 90 61', 'prodaja@eigrace.com', 'http://www.eigrace.com', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (93, 17); -- Vse za otroka
INSERT INTO Trgovina VALUES (94, 3, 'Elna', '01/585 27 02', 'elna-btc@lango.si', 'http://www.elna.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (94, 4); -- Šport in prosti čas
INSERT INTO KategorijaTrgovine VALUES (94, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (95, 3, 'Etnika slog', '01/810 20 19', 'btc@etnikaslog.si', 'http://www.etnikaslog.si/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (95, 3); -- Moda
INSERT INTO Trgovina VALUES (96, 3, 'Fanina', '01/585 26 99', 'info@fanina.si', 'www.fanina.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (96, 3); -- Moda
INSERT INTO Trgovina VALUES (97, 3, 'FitnesShop', '01/585 26 13', 'projest.fitnes@btc-city.si', 'http://www.fitnesshop.si/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (97, 4); -- Šport in prosti čas
INSERT INTO Trgovina VALUES (98, 3, 'Foto Bammera', '01/585 27 08', 'bammera@telemach.net', 'http://www.bammera.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (98, 24); -- Ostalo
INSERT INTO KategorijaTrgovine VALUES (98, 1); -- Tehnika
INSERT INTO Trgovina VALUES (99, 3, 'Funky Fashion', '01/585 18 15', 'byamerican@siol.net', 'http://www.zorga-tradecompany.si/...', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (99, 3); -- Moda
INSERT INTO Trgovina VALUES (100, 3, 'Galeb svet perila', '01/585 25 80', 'info@galeb-trade.si', 'http://www.galeb-trade.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (100, 3); -- Moda
INSERT INTO Trgovina VALUES (101, 3, 'Heta - Cerruti 1881', '01/585 26 96', '/', 'http://www.heta.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (101, 3); -- Moda
INSERT INTO Trgovina VALUES (102, 3, 'Hip Hop Shop', '031/684 263', 'hiphopshop.19@gmail.com', 'http://www.hiphopshop.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (102, 14); -- Erotika
INSERT INTO KategorijaTrgovine VALUES (102, 3); -- Moda
INSERT INTO Trgovina VALUES (103, 3, 'Hitex', '01/585 16 26', 'info@hitex.si', 'http://www.hitex.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (103, 21); -- Lepota in zdravje
INSERT INTO KategorijaTrgovine VALUES (103, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (104, 3, 'Hobby &amp; guns', '/', 'hobbyguns@btc-city.si', 'http://www.mshop.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (104, 4); -- Šport in prosti čas
INSERT INTO Trgovina VALUES (105, 3, 'BTC City Ljubljana', '051/860 160', 'trgovina@hudaura.com', 'http:\\www.hudaura.com', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (105, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (105, 6); -- Servis
INSERT INTO KategorijaTrgovine VALUES (105, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (106, 3, 'Joy', '01/585 26 05', 'tami@telemach.net', '/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (106, 3); -- Moda
INSERT INTO Trgovina VALUES (107, 3, 'Junior', '031/739 282', 'info@trgovina-junior.si', 'http://www.trgovina-junior.si/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (107, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (107, 11); -- Vse za dom
INSERT INTO KategorijaTrgovine VALUES (107, 17); -- Vse za otroka
INSERT INTO Trgovina VALUES (108, 3, 'BTC City Ljubljana', '/', 'nadja@karocikel.si', 'http://www.karocikel.si/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (108, 6); -- Servis
INSERT INTO KategorijaTrgovine VALUES (108, 4); -- Šport in prosti čas
INSERT INTO KategorijaTrgovine VALUES (108, 13); -- Šport in rekreacija
INSERT INTO Trgovina VALUES (109, 3, 'Kateks', '01/585 16 36', '/', '/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (109, 3); -- Moda
INSERT INTO Trgovina VALUES (110, 3, 'Katja Pro Boutique', '01/585 16 45', 'info@katja-pro.si', 'http://www.katja-pro.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (110, 3); -- Moda
INSERT INTO Trgovina VALUES (111, 3, 'Kelih', '01/542 20 09', '/', '/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (111, 22); -- Šola in pisarna
INSERT INTO KategorijaTrgovine VALUES (111, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (112, 3, 'Kibuba', '080 35 56', 'kibuba.btc@gmail.com', 'http://www.kibuba.com/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (112, 4); -- Šport in prosti čas
INSERT INTO Trgovina VALUES (113, 3, 'Kilometer', '01/585 28 52', 'metraza@kilometer.si', 'http://www.kilometer.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (113, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (113, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (114, 3, 'Knjižni diskont Založba Karantanija', '01/585 16 30', 'knjizni.diskont@gmail.com', 'http://www.zalozbakarantanija.si/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (114, 15); -- Knjige in revije
INSERT INTO Trgovina VALUES (115, 3, 'Kompas', '01/520 69 00', 'btc@kompas.si', 'http://www.kompas.si', '09:00', '19:00', '09:00', '14:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (115, 20); -- Film in Glasba
INSERT INTO KategorijaTrgovine VALUES (115, 19); -- Turizem
INSERT INTO Trgovina VALUES (116, 3, 'Kopitarna Sevnica', '01/320 06 14', 'trgovina.sevnica@kopitarna.eu', 'http://www.kopitarna-sevnica.si/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (116, 3); -- Moda
INSERT INTO Trgovina VALUES (117, 3, 'La Donna', '051/258 460', '/', 'http://www.facebook.com/TrgovinaL...', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (117, 3); -- Moda
INSERT INTO Trgovina VALUES (118, 3, 'Leder', '01/585 17 03', 'trgovina.leder@gmail.com', 'https://www.facebook.com/trgovina...', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (118, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (118, 22); -- Šola in pisarna
INSERT INTO Trgovina VALUES (119, 3, 'Lekarna Bizjak', '01/585 26 57', 'lekarna.bizjak@btc-city.si', '/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (119, 21); -- Lepota in zdravje
INSERT INTO KategorijaTrgovine VALUES (119, 4); -- Šport in prosti čas
INSERT INTO Trgovina VALUES (120, 3, 'Lisca', '01/541 14 23', 'lisca.lj.btc@lisca.si', 'http://www.lisca.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (120, 21); -- Lepota in zdravje
INSERT INTO KategorijaTrgovine VALUES (120, 3); -- Moda
INSERT INTO Trgovina VALUES (121, 3, 'Lolita Erotic Shop', '01/585 29 22', 'lolita@lolitashop.net', 'www.lolita.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (121, 14); -- Erotika
INSERT INTO KategorijaTrgovine VALUES (121, 20); -- Film in Glasba
INSERT INTO KategorijaTrgovine VALUES (121, 15); -- Knjige in revije
INSERT INTO KategorijaTrgovine VALUES (121, 3); -- Moda
INSERT INTO Trgovina VALUES (122, 3, 'Lotti', '', 'trgovina.lotti@gmail.com', '/', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (122, 3); -- Moda
INSERT INTO Trgovina VALUES (123, 3, 'Lovec', '01/585 17 99', 'info@koptex.com', 'http://www.koptex.com', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (123, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (123, 4); -- Šport in prosti čas
INSERT INTO KategorijaTrgovine VALUES (123, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (124, 3, 'M - Ultra', '01/585 16 15', 'multra@siol.net', 'http://www.multra.si/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (124, 3); -- Moda
INSERT INTO Trgovina VALUES (125, 3, 'Magic Shop', '01/585 15 50', 'magic.shop@btc-city.si', 'http://www.magicshop.si/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (125, 17); -- Vse za otroka
INSERT INTO Trgovina VALUES (126, 3, 'Mana BTC', '07/39 42 580', 'info@metro.si', 'http://www.mana.eu', '08:00', '20:00', '08:00', '13:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (126, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (126, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (127, 3, 'MBT', '01/585 22 46', 'btc@activeshoes.eu', 'http://www.mbt.com', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (127, 21); -- Lepota in zdravje
INSERT INTO KategorijaTrgovine VALUES (127, 3); -- Moda
INSERT INTO Trgovina VALUES (128, 3, 'Meblojogi salon', '/', 'salon.lj@meblojogi.si', 'http://www.meblojogi.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (128, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (129, 3, 'MF711', '01/585 18 66', '/', '/', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (129, 3); -- Moda
INSERT INTO Trgovina VALUES (130, 3, 'Mia Fashion', '01/585 17 97', 'mdtrade123@gmail.com', '/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (130, 3); -- Moda
INSERT INTO Trgovina VALUES (131, 3, 'Mistik', '01/810 90 68', 'mend.no22@gmail.com', 'http://www.facebook.com/profile.p...', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (131, 3); -- Moda
INSERT INTO Trgovina VALUES (132, 3, 'BTC City Ljubljana', '01/520 81 55', 'irena.gale@mk-trgovina.si', 'http://www.mladinska.com', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (132, 20); -- Film in Glasba
INSERT INTO KategorijaTrgovine VALUES (132, 15); -- Knjige in revije
INSERT INTO KategorijaTrgovine VALUES (132, 16); -- Računalništvo
INSERT INTO KategorijaTrgovine VALUES (132, 22); -- Šola in pisarna
INSERT INTO KategorijaTrgovine VALUES (132, 1); -- Tehnika
INSERT INTO KategorijaTrgovine VALUES (132, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (133, 3, 'MM TURIST', '01/244 25 30', 'info@mm-turist.si', 'http://www.mm-turist.si/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (133, 20); -- Film in Glasba
INSERT INTO KategorijaTrgovine VALUES (133, 19); -- Turizem
INSERT INTO Trgovina VALUES (134, 3, 'Mobiklinika', '01/523 13 49', 'mobiklinika@mobiklinika.com', 'http://www.mobiklinika.com', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (134, 8); -- Avtomobilizem
INSERT INTO KategorijaTrgovine VALUES (134, 1); -- Tehnika
INSERT INTO Trgovina VALUES (135, 3, 'Moda Darja', '01/585 26 44', '/', '/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (135, 3); -- Moda
INSERT INTO Trgovina VALUES (136, 3, 'Mode Italy', '01/585 15 48', '/', '/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (136, 3); -- Moda
INSERT INTO Trgovina VALUES (137, 3, 'MT FASHION', '01/585 18 04', 'Mtmarketing.doo@gmail.com', 'http://www.facebook.com/pages/MT-...', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (137, 3); -- Moda
INSERT INTO Trgovina VALUES (138, 3, 'Naja', '01/585 17 94', 'info@naja-fashion.si', 'http://www.naja-fashion.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (138, 3); -- Moda
INSERT INTO Trgovina VALUES (139, 3, 'ONAON', '01/585 16 16', '/', 'http://www.ona-on.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (139, 3); -- Moda
INSERT INTO Trgovina VALUES (140, 3, 'ONAON', '01/585 22 49', '/', 'http://www.ona-on.si/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (140, 3); -- Moda
INSERT INTO Trgovina VALUES (141, 3, 'Opidum', '01/585 18 32', '/', '/', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (141, 3); -- Moda
INSERT INTO Trgovina VALUES (142, 3, 'OVS Kids', '01/585 17 55', 'ovskidsbtc@colby.si', 'http://www.ovskids.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (142, 3); -- Moda
INSERT INTO Trgovina VALUES (143, 3, 'Pami', '01/520 54 94', 'info@pami.si', 'http://www.pami.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (143, 3); -- Moda
INSERT INTO Trgovina VALUES (144, 3, 'Panter Airsoft Shop', '030/253 283', 'info@panter-airsoftshop.com', 'http://www.panter-airsoftshop.com...', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (144, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (144, 4); -- Šport in prosti čas
INSERT INTO Trgovina VALUES (145, 3, 'Paprika', '01/520 54 90', 'info@pami.si', 'http://www.ars-paprika.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (145, 3); -- Moda
INSERT INTO Trgovina VALUES (146, 3, 'Peko', '059/089 020', 'NM.ljubljanska@peko-slo.com', 'http://www.peko.si', '08:00', '20:00', '08:00', '13:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (146, 3); -- Moda
INSERT INTO Trgovina VALUES (147, 3, 'Peko', '059/089 086', 'ljubljana.btc@peko.si', 'http://www.peko.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (147, 3); -- Moda
INSERT INTO Trgovina VALUES (148, 3, 'Petka', '01/585 27 37', 'bajtrade@gmail.com', '/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (148, 3); -- Moda
INSERT INTO Trgovina VALUES (149, 3, 'Planet mode', '01/810 95 33', 'hapis.doo@siol.net', '/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (149, 3); -- Moda
INSERT INTO Trgovina VALUES (150, 3, 'Pohodnik', '01/585 26 30', 'pohodnik@univet.si', 'http://www.pohodnik-si.com/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (150, 4); -- Šport in prosti čas
INSERT INTO Trgovina VALUES (151, 3, 'Police', '030/324 027', 'police@arturotrend.si', 'http://www.police-trgovina.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (151, 3); -- Moda
INSERT INTO Trgovina VALUES (152, 3, 'Popek', '070/233 255', 'info@popek.si', 'http://www.popek.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (152, 8); -- Avtomobilizem
INSERT INTO KategorijaTrgovine VALUES (152, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (152, 17); -- Vse za otroka
INSERT INTO Trgovina VALUES (153, 3, 'Potokar', '01/585 15 49', 'btc@potokar.si', 'http://www.potokar.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (153, 8); -- Avtomobilizem
INSERT INTO Trgovina VALUES (154, 3, 'Preli', '01/585 27 78', '/', '/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (154, 3); -- Moda
INSERT INTO Trgovina VALUES (155, 3, 'Pri Levčku', '01/585 16 19', 'lacara@siol.net', 'http://www.trgovina-pri-levcku.si...', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (155, 4); -- Šport in prosti čas
INSERT INTO Trgovina VALUES (156, 3, 'PrimaMusic', '01/810 95 30', 'info@primamusic.si', 'http://www.primamusic.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (156, 20); -- Film in Glasba
INSERT INTO Trgovina VALUES (157, 3, 'Princess Shop', '/', 'info@princess-shop.si', 'http://www.princess-shop.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (157, 3); -- Moda
INSERT INTO Trgovina VALUES (158, 3, 'Private Affairs mega erotika', '01/523 36 80', 'bu@btc-city.si', '/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (158, 14); -- Erotika
INSERT INTO Trgovina VALUES (159, 3, 'RDO Shop', '01/513 61 33', 'rdo.shop@rdo.si', 'http://www.rdo.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (159, 8); -- Avtomobilizem
INSERT INTO Trgovina VALUES (160, 3, 'Refan', ' 01/585 18 35', '/', 'http://www.refan.si/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (160, 21); -- Lepota in zdravje
INSERT INTO Trgovina VALUES (161, 3, 'Salon Creatina', '/', 'creatina@siol.net', 'http://www.creatina.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (161, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (161, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (162, 3, 'Saming', '01/585 17 47', 'btc@saming.si', 'http://www.saming.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (162, 8); -- Avtomobilizem
INSERT INTO Trgovina VALUES (163, 3, 'Sariko', '01/585 17 87', 'sariko.veber@siol.net', '/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (163, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (163, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (164, 3, 'Silver Stars', '01/585 26 11', 'info@empire.si', 'http://www.empire.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (164, 3); -- Moda
INSERT INTO Trgovina VALUES (165, 3, 'Slowatch', '/', 'slowatch.btclj@slowatch.si', 'http://www.slowatch.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (165, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (165, 4); -- Šport in prosti čas
INSERT INTO Trgovina VALUES (166, 3, 'Slowatch outlet', '/', 'outlet.btclj@slowatch.si', 'http://www.slowatch.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (166, 3); -- Moda
INSERT INTO Trgovina VALUES (167, 3, 'Spalni studio Vitapur', '01/585 20 46', 'salon-ljubljana@vitapur.si', 'http://www.vitapur.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (167, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (168, 3, 'Spar BTC', '01/523 39 20', 'sm50.btc@spar.si', 'http://www.spar.si', '09:00', '20:00', '08:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (168, 8); -- Avtomobilizem
INSERT INTO KategorijaTrgovine VALUES (168, 5); -- Gostinstvo in prehrana
INSERT INTO KategorijaTrgovine VALUES (168, 2); -- Hišni ljubljenčki
INSERT INTO KategorijaTrgovine VALUES (168, 15); -- Knjige in revije
INSERT INTO KategorijaTrgovine VALUES (168, 21); -- Lepota in zdravje
INSERT INTO KategorijaTrgovine VALUES (168, 3); -- Moda
INSERT INTO Trgovina VALUES (169, 3, 'Sportsdirect.com', '01/585 15 33', 'informacije@sportsdirect.com', 'http://www.sportsdirect.com', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (169, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (169, 4); -- Šport in prosti čas
INSERT INTO Trgovina VALUES (170, 3, 'BTC City Ljubljana', '01/585 26 01', 'info@sten.si', 'http://www.sten.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (170, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (170, 22); -- Šola in pisarna
INSERT INTO KategorijaTrgovine VALUES (170, 4); -- Šport in prosti čas
INSERT INTO KategorijaTrgovine VALUES (170, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (171, 3, 'BTC City Ljubljana', '01/585 26 04', 'info@sten.si', 'http://www.sten.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (171, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (171, 22); -- Šola in pisarna
INSERT INTO KategorijaTrgovine VALUES (171, 4); -- Šport in prosti čas
INSERT INTO KategorijaTrgovine VALUES (171, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (172, 3, 'Style', '01/585 18 31', 'have-style@hotmail.com', 'http://www.facebook.com/pages/Trg...', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (172, 3); -- Moda
INSERT INTO Trgovina VALUES (173, 3, 'Style', '01/585 18 31', 'have-style@hotmail.com', 'http://www.facebook.com/pages/Trg...', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (173, 3); -- Moda
INSERT INTO Trgovina VALUES (174, 3, 'Style', '01/585 20 14', 'have-style@hotmail.com', 'http://www.facebook.com/pages/Trg...', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (174, 3); -- Moda
INSERT INTO Trgovina VALUES (175, 3, 'Svilanit', '01/585 13 77', 'mp_btclj@btc-city.si', 'http://www.svilanit.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (175, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (175, 11); -- Vse za dom
INSERT INTO KategorijaTrgovine VALUES (175, 17); -- Vse za otroka
INSERT INTO Trgovina VALUES (176, 3, 'Šiša house', '01/585 22 98', 'shishahisa@gmail.com', '/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (176, 4); -- Šport in prosti čas
INSERT INTO Trgovina VALUES (177, 3, 'The Nutrition', '040/203 090', 'samo@the-nutrition.com', 'http://www.the-nutrition.com', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (177, 4); -- Šport in prosti čas
INSERT INTO Trgovina VALUES (178, 3, 'Tigga', '01/585 22 99', '/', '/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (178, 3); -- Moda
INSERT INTO Trgovina VALUES (179, 3, 'Tinkom', '01/585 26 22', 'tinkom@t-2.net', 'http://www.facebook.com/TinkomBTC', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (179, 3); -- Moda
INSERT INTO Trgovina VALUES (180, 3, 'Tkanina', '01/523 33 60', '/', '/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (180, 3); -- Moda
INSERT INTO Trgovina VALUES (181, 3, 'Toko', '01/523 32 03', 'pe03@toko.si', 'http://www.toko.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (181, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (181, 16); -- Računalništvo
INSERT INTO KategorijaTrgovine VALUES (181, 22); -- Šola in pisarna
INSERT INTO KategorijaTrgovine VALUES (181, 1); -- Tehnika
INSERT INTO Trgovina VALUES (182, 3, 'Tosama Bela štacunca Ljubljana', '01/32 05 709', 'belastacunca.lj@tosama.si', 'http://www.tosama.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (182, 21); -- Lepota in zdravje
INSERT INTO KategorijaTrgovine VALUES (182, 17); -- Vse za otroka
INSERT INTO Trgovina VALUES (183, 3, 'Transport Outlet', '01/585 14 37', 'transport-btc@t-2.net', 'http://www.transportfootwear.com/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (183, 3); -- Moda
INSERT INTO Trgovina VALUES (184, 3, 'Trend', '01/810 95 32', 'hapis.doo@siol.net', '/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (184, 3); -- Moda
INSERT INTO Trgovina VALUES (185, 3, 'Tušmobil', '070/33 44 22', 'hala-a@posrednik.tusmobil.si', 'http://www.tusmobil.si/', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (185, 16); -- Računalništvo
INSERT INTO KategorijaTrgovine VALUES (185, 6); -- Servis
INSERT INTO KategorijaTrgovine VALUES (185, 1); -- Tehnika
INSERT INTO Trgovina VALUES (186, 3, 'Two Way', '01/585 15 87', 'btc@twoway.si', 'http://www.twoway.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (186, 3); -- Moda
INSERT INTO Trgovina VALUES (187, 3, 'Ultra Store', '01/585 16 15', 'multra@siol.net', 'http://www.multra.si/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (187, 3); -- Moda
INSERT INTO Trgovina VALUES (188, 3, 'Uncle Sam', '030/259 326', '/', '/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (188, 3); -- Moda
INSERT INTO Trgovina VALUES (189, 3, 'Vestido', '01/810 90 67', 'vestido.moda@gmail.com', 'http://vestido.si/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (189, 3); -- Moda
INSERT INTO Trgovina VALUES (190, 3, 'Vikateks - Stil', '01/585 17 65', '/', '/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (190, 3); -- Moda
INSERT INTO Trgovina VALUES (191, 3, 'Vordor', '01/585 27 03', 'vordor@hotmail.com', 'http://www.nogavice.net/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (191, 21); -- Lepota in zdravje
INSERT INTO KategorijaTrgovine VALUES (191, 3); -- Moda
INSERT INTO Trgovina VALUES (192, 3, 'Watch Center', '01/549 33 49', 'info@heta.si', 'http://www.heta.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (192, 3); -- Moda
INSERT INTO Trgovina VALUES (193, 3, 'Yves Rocher', '01/810 90 39', 'yvesrocher.si@gmail.com', 'http://www.yves-rocher.com/', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (193, 21); -- Lepota in zdravje
INSERT INTO Trgovina VALUES (194, 3, 'Zavas', '01/561 04 28', 'prodaja@zavas.com', 'http://www.zavas.com', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (194, 3); -- Moda
INSERT INTO Trgovina VALUES (195, 3, 'Zelena trgovina', '01 810 90 32 ', 'info@zelenatrgovina.si', 'http://www.zelenatrgovina.si/', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (195, 21); -- Lepota in zdravje
INSERT INTO KategorijaTrgovine VALUES (195, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (195, 10); -- Prehrana
INSERT INTO KategorijaTrgovine VALUES (195, 11); -- Vse za dom
INSERT INTO KategorijaTrgovine VALUES (195, 17); -- Vse za otroka
INSERT INTO Trgovina VALUES (196, 3, 'Zlatarna Aura', '07/302 11 01', 'branka.btc@t-2.net', 'http://www.zlatarna-aura.si', '08:00', '20:00', '08:00', '13:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (196, 3); -- Moda
INSERT INTO Trgovina VALUES (197, 3, 'Zlatarstvo Močnik', '01/585 26 12', 'info@z-mocnik.si', 'http://www.zlatarna-mocnik.si/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (197, 3); -- Moda

-- Simobil (4) ------------------------------------------------------
INSERT INTO Trgovina VALUES (198, 4, 'Si.mobil Center Ljubljana BTC', '040 929 300', 'info@simobil.si', 'http://www.simobil.si', '09:00', '18:00', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (198, 16); -- Računalništvo
INSERT INTO KategorijaTrgovine VALUES (198, 1); -- Tehnika

-- Stolpnica (5) ------------------------------------------------------

-- Kristalna palača (6) ------------------------------------------------------
INSERT INTO Trgovina VALUES (199, 6, 'Babadu', '030/240 250', 'info@babadu.si', 'http://www.babadu.si/', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (199, 17); -- Vse za otroka
INSERT INTO Trgovina VALUES (200, 6, 'Espresso', '051/620 520', 'illy@espresso.si', '/', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (200, 10); -- Prehrana
INSERT INTO KategorijaTrgovine VALUES (200, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (201, 6, 'BTC City Ljubljana', '059/946 180', 'info@fplus.si', 'http://www.fplus.si/', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (201, 4); -- Šport in prosti čas
INSERT INTO Trgovina VALUES (202, 6, 'Galerija', '01/810 95 01', '/', '/', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (202, 3); -- Moda
INSERT INTO Trgovina VALUES (203, 6, 'Galerija IL Ambienti', '01/810 90 37', 'info@galerija-ilambienti.si', 'http://www.galerija-ilambienti.co...', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (203, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (204, 6, 'Garmin', '059/046 563', 'trgovina@garmin.si', 'http://www.garmin.si/', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (204, 8); -- Avtomobilizem
INSERT INTO KategorijaTrgovine VALUES (204, 4); -- Šport in prosti čas
INSERT INTO Trgovina VALUES (205, 6, 'Henri Lloyd', '059/033 380    ', 'info@henrilloyd.si', 'http://www.henrilloyd.si/', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (205, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (205, 4); -- Šport in prosti čas
INSERT INTO Trgovina VALUES (206, 6, 'iStyle Apple Premium Reseller', '01/231 40 10', 'info@istyle.si', 'http://www.istyle.si/', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (206, 16); -- Računalništvo
INSERT INTO Trgovina VALUES (207, 6, 'Jones', '01/585 18 85', 'jones.ljubljana@jones.at', 'http://www.jones.at/', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (207, 3); -- Moda
INSERT INTO Trgovina VALUES (208, 6, 'Steklarna Rogaška', '08/205 75 50', 'steklarna.rogaska.btc@gmail.com', '/', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (208, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (209, 6, 'Venera Shop Erotic Boutique', '01/810 95 00', 'info@venera-shop.si', 'http://www.venera-shop.si/', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (209, 14); -- Erotika
INSERT INTO Trgovina VALUES (210, 6, 'Yves Rocher', '01/810 90 39', 'yvesrocher.si@gmail.com', 'http://www.yves-rocher.com/', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (210, 21); -- Lepota in zdravje

-- Dvorana Mercurius (7) ------------------------------------------------------

-- Upravna stavba (8) ------------------------------------------------------

-- Dvorana 1 (9) ------------------------------------------------------
INSERT INTO Trgovina VALUES (211, 9, 'Alples studio BTC', '01/541 18 20', 'alples.studio@prevc.si', 'http://www.prevc.si', '09:00', '20:00', '09:00', '15:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (211, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (212, 9, 'Baby Center', '/', 'klub@baby-center.si', 'http://www.baby-center.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (212, 15); -- Knjige in revije
INSERT INTO KategorijaTrgovine VALUES (212, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (212, 17); -- Vse za otroka
INSERT INTO Trgovina VALUES (213, 9, 'Debitel', '059/ 923 141', 'center@debitel.si', 'http://www.debitel.si/', '09:00', '19:00', '09:00', '13:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (213, 16); -- Računalništvo
INSERT INTO KategorijaTrgovine VALUES (213, 1); -- Tehnika
INSERT INTO Trgovina VALUES (214, 9, 'BTC City Ljubljana', '01/560 50 55', 'outlet@svssport.si', 'http://www.fplus.si/', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (214, 4); -- Šport in prosti čas
INSERT INTO Trgovina VALUES (215, 9, 'Giga sport', '01/541 43 31', '/', 'http://www.gigasport.si/', '10:00', '20:00', '09:00', '19:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (215, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (215, 4); -- Šport in prosti čas
INSERT INTO Trgovina VALUES (216, 9, 'Hala 12', '01/585 20 86', '/', 'http://www.hala12.si', '09:30', '20:30', '09:00', '20:30', '', '');
INSERT INTO KategorijaTrgovine VALUES (216, 3); -- Moda
INSERT INTO Trgovina VALUES (217, 9, 'Impulz', '01/428 75 43', 'grega@gm3.si', 'http://www.gm3.si/', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (217, 4); -- Šport in prosti čas
INSERT INTO KategorijaTrgovine VALUES (217, 13); -- Šport in rekreacija
INSERT INTO Trgovina VALUES (218, 9, 'Inter Diskont', '01/546 40 82', 'interdiskont@siol.net', 'http://www.interdiskont.si', '09:00', '20:00', '08:00', '17:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (218, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (219, 9, 'BTC City Ljubljana', '01/541 18 15', 'info@kamm.si', 'http://www.kamm.si/', '09:00', '19:00', '09:00', '13:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (219, 4); -- Šport in prosti čas
INSERT INTO Trgovina VALUES (220, 9, 'Kemoplast', '01/541 90 01', 'info@kemoplast.si', 'http://www.kemoplast.si', '08:00', '20:00', '08:00', '15:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (220, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (221, 9, 'KiK Textilien', '01 5471 120', 'tatjana.zvikart@kik-textilien.com', 'http://www.kik-textilien.com/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (221, 3); -- Moda
INSERT INTO Trgovina VALUES (222, 9, 'La Vie', '01/541 17 53', 'info@lavie.si', 'http://www.lavie.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (222, 3); -- Moda
INSERT INTO Trgovina VALUES (223, 9, 'BTC City Ljubljana', '01/810 95 57', 'info@lux4kids.si', 'http://lux4kids.si/', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (223, 17); -- Vse za otroka
INSERT INTO Trgovina VALUES (224, 9, 'M Tehnika', '01/547 44 44', '110600@mtehnika.si', 'http://mtehnika.si/btc', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (224, 21); -- Lepota in zdravje
INSERT INTO KategorijaTrgovine VALUES (224, 4); -- Šport in prosti čas
INSERT INTO KategorijaTrgovine VALUES (224, 11); -- Vse za dom
INSERT INTO KategorijaTrgovine VALUES (224, 17); -- Vse za otroka
INSERT INTO Trgovina VALUES (225, 9, 'BTC City Ljubljana', '040/128 082', 'malamali@pedokinetika.si', 'http://www.malamali.si/', '10:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (225, 5); -- Gostinstvo in prehrana
INSERT INTO KategorijaTrgovine VALUES (225, 21); -- Lepota in zdravje
INSERT INTO KategorijaTrgovine VALUES (225, 4); -- Šport in prosti čas
INSERT INTO Trgovina VALUES (226, 9, 'BTC City Ljubljana', '01/520 08 16', 'info@merkur.si', 'http://www.merkur.si', '09:00', '20:00', '09:00', '20:00', '08:00', '13:00');
INSERT INTO KategorijaTrgovine VALUES (226, 20); -- Film in Glasba
INSERT INTO KategorijaTrgovine VALUES (226, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (226, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (227, 9, 'Mothercare', '01/585 18 23', 'slovenia@mothercare.gr', 'Mothercare Slovenia', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (227, 15); -- Knjige in revije
INSERT INTO KategorijaTrgovine VALUES (227, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (227, 17); -- Vse za otroka
INSERT INTO Trgovina VALUES (228, 9, 'Pittarello', '08/205 85 90', 'ljubljana@pittarellorosso.it', 'http://www.pittarellorosso.com', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (228, 3); -- Moda
INSERT INTO Trgovina VALUES (229, 9, 'Si.mobil Center Arena', '040/929 303', 'info@simobil.si', 'http://www.simobil.si', '09:00', '18:00', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (229, 16); -- Računalništvo
INSERT INTO KategorijaTrgovine VALUES (229, 1); -- Tehnika
INSERT INTO Trgovina VALUES (230, 9, 'BTC City Ljubljana', '01/541 60 60', 'btc.lj@vitacare.si', 'http://vitacare.si/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (230, 5); -- Gostinstvo in prehrana
INSERT INTO KategorijaTrgovine VALUES (230, 21); -- Lepota in zdravje
INSERT INTO KategorijaTrgovine VALUES (230, 10); -- Prehrana
INSERT INTO KategorijaTrgovine VALUES (230, 4); -- Šport in prosti čas
INSERT INTO KategorijaTrgovine VALUES (230, 11); -- Vse za dom
INSERT INTO KategorijaTrgovine VALUES (230, 17); -- Vse za otroka
INSERT INTO Trgovina VALUES (231, 9, 'BTC City Ljubljana', '01/547 75 21', 'btc@zakelj.si', 'http://www.zakelj.si', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (231, 11); -- Vse za dom

-- Dvorana 2 (10) ------------------------------------------------------
INSERT INTO Trgovina VALUES (232, 10, 'Jelovica', '01/541 22 55 ', 'CER@jelovica.si', 'http://www.jelovica.si', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (232, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (233, 10, 'JUB', '031/757 910', '/', 'http://www.jub.si/', '10:00', '18:00', '10:00', '18:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (233, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (234, 10, 'Knauf Insulation', '04/51 14 105', 'svetovanje@knaufinsulation.com', 'http://www.knaufinsulation.si/', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (234, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (235, 10, 'BTC City Ljubljana', '01/366 50 26', 'poslovalnica.btc@lip-bled.si', 'http://www.lip-bled.si/', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (235, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (236, 10, 'Salon Creatina', '/', 'creatina@siol.net', 'http://www.creatina.si', '09:00', '20:00', '09:00', '18:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (236, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (236, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (237, 10, 'Zelene energije', '08/205 94 70', 'info@zelene-energije.com', '/', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (237, 11); -- Vse za dom

-- Dvorana 3 (11) ------------------------------------------------------
INSERT INTO Trgovina VALUES (238, 11, 'Alpina', '01/547 16 70', 'tr0014@alpina.si', 'http://www.alpinashop.si/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (238, 3); -- Moda
INSERT INTO Trgovina VALUES (239, 11, 'Aquamania', '', 'info@aquamania.si', 'http://www.aquamania.si', '10:00', '20:00', '09:00', '17:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (239, 4); -- Šport in prosti čas
INSERT INTO KategorijaTrgovine VALUES (239, 13); -- Šport in rekreacija
INSERT INTO Trgovina VALUES (240, 11, 'Frizerska trgovina Estela', '01/585 28 90', 'estela.btc@gmail.com', 'http://www.estela.si', '08:00', '19:00', '09:00', '15:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (240, 21); -- Lepota in zdravje
INSERT INTO KategorijaTrgovine VALUES (240, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (240, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (241, 11, 'Gvant', '01/810 90 12', 'gvant@btc-city.si', 'http://www.gvant.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (241, 3); -- Moda
INSERT INTO Trgovina VALUES (242, 11, 'Iglu sport', '01/585 15 17', 'trgovina.btc@iglusport.si', 'http://www.iglusport.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (242, 4); -- Šport in prosti čas
INSERT INTO Trgovina VALUES (243, 11, 'BTC City Ljubljana', '04/58 11 600', 'info@mimovrste.si', 'http://www.mimovrste.com', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (243, 8); -- Avtomobilizem
INSERT INTO KategorijaTrgovine VALUES (243, 14); -- Erotika
INSERT INTO KategorijaTrgovine VALUES (243, 20); -- Film in Glasba
INSERT INTO KategorijaTrgovine VALUES (243, 9); -- Igre in konzole
INSERT INTO KategorijaTrgovine VALUES (243, 15); -- Knjige in revije
INSERT INTO KategorijaTrgovine VALUES (243, 21); -- Lepota in zdravje
INSERT INTO KategorijaTrgovine VALUES (243, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (243, 16); -- Računalništvo
INSERT INTO KategorijaTrgovine VALUES (243, 4); -- Šport in prosti čas
INSERT INTO KategorijaTrgovine VALUES (243, 1); -- Tehnika
INSERT INTO KategorijaTrgovine VALUES (243, 11); -- Vse za dom
INSERT INTO KategorijaTrgovine VALUES (243, 17); -- Vse za otroka
INSERT INTO Trgovina VALUES (244, 11, 'Mr. Pet', '01/545 10 50', '/', 'http://www.mrpet.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (244, 2); -- Hišni ljubljenčki
INSERT INTO KategorijaTrgovine VALUES (244, 1); -- Tehnika
INSERT INTO Trgovina VALUES (245, 11, 'Razstavni center Ralf Gartner', '01/600 32 53', 'btc@ralfgartner.si', 'http://www.ralfgartner.si', '09:00', '19:00', '09:00', '14:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (245, 1); -- Tehnika
INSERT INTO KategorijaTrgovine VALUES (245, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (246, 11, 'BTC City Ljubljana', '01/547 20 00', 'salon.citroen@avtomerkur.si', 'http://www.avtomerkur.si/', '09:00', '20:00', '09:00', '14:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (246, 8); -- Avtomobilizem

-- Dvorana 4 (12) ------------------------------------------------------
INSERT INTO Trgovina VALUES (247, 12, 'Kerin.Dom', '01/585 18 60', 'btc@kerin-povirk.si', 'http://www.kerin-dom.si', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (247, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (248, 12, 'Mana BTC', '01 585 25 03', 'info@metro.si', 'http://www.mana.eu', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (248, 14); -- Erotika
INSERT INTO KategorijaTrgovine VALUES (248, 20); -- Film in Glasba
INSERT INTO KategorijaTrgovine VALUES (248, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (248, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (249, 12, 'Optika Clarus', '01/585 20 00', 'info@clarus.si', 'http://www.clarus.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (249, 3); -- Moda
INSERT INTO Trgovina VALUES (250, 12, 'Studio Dormeo BTC', '01/518 9 002', 'trgovina.btc@studio-moderna.com', 'http://www.dormeo.net/', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (250, 11); -- Vse za dom

-- Dvorana 5 (13) ------------------------------------------------------
INSERT INTO Trgovina VALUES (251, 13, 'BeFOX', '030/645 299', 'befox.lj@gmail.com', 'http://www.foxracing.si/', '10:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (251, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (251, 7); -- Motociklizem
INSERT INTO KategorijaTrgovine VALUES (251, 22); -- Šola in pisarna
INSERT INTO KategorijaTrgovine VALUES (251, 4); -- Šport in prosti čas
INSERT INTO KategorijaTrgovine VALUES (251, 1); -- Tehnika
INSERT INTO Trgovina VALUES (252, 13, 'Big Bang', '01/309 37 68', 'potrosniki@bigbang.si', 'http://www.bigbang.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (252, 8); -- Avtomobilizem
INSERT INTO KategorijaTrgovine VALUES (252, 20); -- Film in Glasba
INSERT INTO KategorijaTrgovine VALUES (252, 9); -- Igre in konzole
INSERT INTO KategorijaTrgovine VALUES (252, 21); -- Lepota in zdravje
INSERT INTO KategorijaTrgovine VALUES (252, 16); -- Računalništvo
INSERT INTO KategorijaTrgovine VALUES (252, 22); -- Šola in pisarna
INSERT INTO KategorijaTrgovine VALUES (252, 1); -- Tehnika
INSERT INTO KategorijaTrgovine VALUES (252, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (253, 13, 'BTC City Ljubljana', '070/775 077', 'info@piercing-cult.si', 'http://www.piercing-cult.si/', '10:00', '20:00', '10:00', '19:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (253, 21); -- Lepota in zdravje
INSERT INTO KategorijaTrgovine VALUES (253, 3); -- Moda
INSERT INTO Trgovina VALUES (254, 13, 'Danza Dimensione', '01/585 20 16', 'info@danza.si', 'http://www.danza.si', '10:00', '20:00', '10:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (254, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (254, 22); -- Šola in pisarna
INSERT INTO KategorijaTrgovine VALUES (254, 4); -- Šport in prosti čas
INSERT INTO Trgovina VALUES (255, 13, 'Foto-klik.si', '041/722 884', 'info@foto-klik.si', 'http://foto-klik.si/', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (255, 1); -- Tehnika
INSERT INTO Trgovina VALUES (256, 13, 'BTC City Ljubljana', '/', 'info@logoplus.si', 'http://www.logoplus.si', '09:00', '20:00', '09:00', '15:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (256, 14); -- Erotika
INSERT INTO KategorijaTrgovine VALUES (256, 24); -- Ostalo
INSERT INTO Trgovina VALUES (257, 13, 'Mobiklinika', '01/523 13 49', 'mobiklinika@mobiklinika.com', 'http://www.mobiklinika.com', '09:00', '17:00', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (257, 8); -- Avtomobilizem
INSERT INTO KategorijaTrgovine VALUES (257, 1); -- Tehnika
INSERT INTO Trgovina VALUES (258, 13, 'Mueller Drogerija', '01/520 15 20', 'info@mueller.si', 'http://www.mueller.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (258, 14); -- Erotika
INSERT INTO KategorijaTrgovine VALUES (258, 20); -- Film in Glasba
INSERT INTO KategorijaTrgovine VALUES (258, 9); -- Igre in konzole
INSERT INTO KategorijaTrgovine VALUES (258, 15); -- Knjige in revije
INSERT INTO KategorijaTrgovine VALUES (258, 21); -- Lepota in zdravje
INSERT INTO KategorijaTrgovine VALUES (258, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (258, 10); -- Prehrana
INSERT INTO KategorijaTrgovine VALUES (258, 16); -- Računalništvo
INSERT INTO KategorijaTrgovine VALUES (258, 22); -- Šola in pisarna
INSERT INTO KategorijaTrgovine VALUES (258, 1); -- Tehnika
INSERT INTO KategorijaTrgovine VALUES (258, 11); -- Vse za dom
INSERT INTO KategorijaTrgovine VALUES (258, 17); -- Vse za otroka
INSERT INTO Trgovina VALUES (259, 13, 'Om Šiva Ezoterika', '01/585 24 06', 'info@om-ezoterika.com', 'http://www.om-ezoterika.com', '09:00', '19:00', '10:00', '19:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (259, 15); -- Knjige in revije
INSERT INTO KategorijaTrgovine VALUES (259, 21); -- Lepota in zdravje
INSERT INTO Trgovina VALUES (260, 13, 'Pro-kozmo', '01/585 24 03', 'info@prokozmo.si', 'http://www.prokozmo.si/', '10:00', '18:00', '09:00', '13:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (260, 21); -- Lepota in zdravje

-- Dvorana 6 (14) ------------------------------------------------------
INSERT INTO Trgovina VALUES (261, 14, 'GA BTC diskont', '051/382 666', 'diskont@ga.si', 'http://www.ga.si/diskont/', '10:00', '18:00', '09:00', '13:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (261, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (262, 14, 'INTERSPORT Ljubljana BTC', '01/520 37 91', '117770@intersport.si', 'http://www.intersport.si/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (262, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (262, 4); -- Šport in prosti čas
INSERT INTO KategorijaTrgovine VALUES (262, 13); -- Šport in rekreacija
INSERT INTO Trgovina VALUES (263, 14, 'Moto Center Laba', '031/789 400', 'ljubljana@motocenterlaba.com', 'http://www.motocenterlaba.com', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (263, 7); -- Motociklizem
INSERT INTO Trgovina VALUES (264, 14, 'Tukano ZOO&amp;vrt Ljubljana BTC', '01/585 20 98', 'trgovina.btc@tukano.si', 'http://www.tukano.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (264, 2); -- Hišni ljubljenčki

-- Dvorana 7 (15) ------------------------------------------------------
INSERT INTO Trgovina VALUES (265, 15, 'Mass blagovnica', '01/586 44 10', 'info@mass.si', 'http://www.mass.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (265, 3); -- Moda

-- Dvorana 8 (16) ------------------------------------------------------
INSERT INTO Trgovina VALUES (266, 16, 'BTC City Ljubljana', '01/545 15 00', 'mateja.seifert@dzs.si', 'http://www.dzs.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (266, 22); -- Šola in pisarna
INSERT INTO Trgovina VALUES (267, 16, 'Hofer', '01/834 66 00', '/', 'http://www.hofer.si/', '08:00', '20:00', '08:00', '20:00', '08:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (267, 8); -- Avtomobilizem
INSERT INTO KategorijaTrgovine VALUES (267, 20); -- Film in Glasba
INSERT INTO KategorijaTrgovine VALUES (267, 5); -- Gostinstvo in prehrana
INSERT INTO KategorijaTrgovine VALUES (267, 2); -- Hišni ljubljenčki
INSERT INTO KategorijaTrgovine VALUES (267, 15); -- Knjige in revije
INSERT INTO KategorijaTrgovine VALUES (267, 21); -- Lepota in zdravje
INSERT INTO KategorijaTrgovine VALUES (267, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (267, 24); -- Ostalo
INSERT INTO KategorijaTrgovine VALUES (267, 10); -- Prehrana
INSERT INTO KategorijaTrgovine VALUES (267, 16); -- Računalništvo
INSERT INTO KategorijaTrgovine VALUES (267, 22); -- Šola in pisarna
INSERT INTO KategorijaTrgovine VALUES (267, 4); -- Šport in prosti čas
INSERT INTO KategorijaTrgovine VALUES (267, 1); -- Tehnika
INSERT INTO KategorijaTrgovine VALUES (267, 11); -- Vse za dom
INSERT INTO KategorijaTrgovine VALUES (267, 17); -- Vse za otroka

-- Dvorana 9 (17) ------------------------------------------------------
INSERT INTO Trgovina VALUES (268, 17, 'Comshop', '01/620 78 11', 'lj2@comshop.si', 'http://www.comshop.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (268, 8); -- Avtomobilizem
INSERT INTO KategorijaTrgovine VALUES (268, 9); -- Igre in konzole
INSERT INTO KategorijaTrgovine VALUES (268, 16); -- Računalništvo
INSERT INTO KategorijaTrgovine VALUES (268, 22); -- Šola in pisarna
INSERT INTO KategorijaTrgovine VALUES (268, 1); -- Tehnika
INSERT INTO Trgovina VALUES (269, 17, 'DanKuchen Studio Ljubljana - BTC', '05/99 71 040', 'info@dankuchen-ljubljana.si', 'http://www.dankuchen-ljubljana.si...', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (269, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (270, 17, 'BTC City Ljubljana', '01/520 46 66', 'btc@ga-trgovina.si', 'http://www.gospodinjski-aparati.s...', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (270, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (271, 17, 'Golf Clarus', '01/200 09 18', 'golf@clarus.si', 'http://www.golfclarus.si', '08:00', '22:00', '08:00', '22:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (271, 4); -- Šport in prosti čas
INSERT INTO KategorijaTrgovine VALUES (271, 13); -- Šport in rekreacija
INSERT INTO Trgovina VALUES (272, 17, 'Kalček', '01/523 35 62', 'info@kalcek.si', 'http://www.kalcek.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (272, 10); -- Prehrana
INSERT INTO Trgovina VALUES (273, 17, 'Kolesarski center Bauer', '01/540 20 38', 'centerbauer@siol.net', 'http://www.centerbauer.com', '09:00', '20:00', '09:00', '19:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (273, 4); -- Šport in prosti čas
INSERT INTO Trgovina VALUES (274, 17, 'BTC City Ljubljana', '01/585 22 73', 'info@kommdata.info', 'http://www.mobitrgovina.com', '10:00', '19:00', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (274, 8); -- Avtomobilizem
INSERT INTO KategorijaTrgovine VALUES (274, 9); -- Igre in konzole
INSERT INTO KategorijaTrgovine VALUES (274, 16); -- Računalništvo
INSERT INTO KategorijaTrgovine VALUES (274, 1); -- Tehnika
INSERT INTO Trgovina VALUES (275, 17, 'Omara', '059/978 269', 'omara@elporo.si', 'http://www.facebook.com/pages/Trg...', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (275, 3); -- Moda
INSERT INTO Trgovina VALUES (276, 17, 'PC Trgovina Swedata', '01/585 22 73', 'info@swedata.info', 'http://www.pctrgovina.com/', '10:00', '19:00', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (276, 16); -- Računalništvo
INSERT INTO Trgovina VALUES (277, 17, 'BTC City Ljubljana', '01/620 55 07', 'info@salsa.si', 'http://www.salsa.si/', '09:00', '19:00', '10:00', '13:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (277, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (277, 13); -- Šport in rekreacija

-- Dvorana 10 (18) ------------------------------------------------------
INSERT INTO Trgovina VALUES (278, 18, 'Alples studio BTC', '01/541 18 20', 'alples.studio@prevc.si', 'http://www.prevc.si', '09:00', '20:00', '09:00', '15:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (278, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (279, 18, 'Inter Diskont', '01/546 40 82', 'interdiskont@siol.net', 'http://www.interdiskont.si', '09:00', '20:00', '08:00', '17:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (279, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (280, 18, 'BTC City Ljubljana', '01/541 18 15', 'info@kamm.si', 'http://www.kamm.si/', '09:00', '19:00', '09:00', '13:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (280, 4); -- Šport in prosti čas
INSERT INTO Trgovina VALUES (281, 18, 'Kemoplast', '01/541 90 01', 'info@kemoplast.si', 'http://www.kemoplast.si', '08:00', '20:00', '08:00', '15:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (281, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (282, 18, 'KiK Textilien', '01 5471 120', 'tatjana.zvikart@kik-textilien.com', 'http://www.kik-textilien.com/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (282, 3); -- Moda
INSERT INTO Trgovina VALUES (283, 18, 'BTC City Ljubljana', '01/810 95 57', 'info@lux4kids.si', 'http://lux4kids.si/', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (283, 17); -- Vse za otroka
INSERT INTO Trgovina VALUES (284, 18, 'BTC City Ljubljana', '040/128 082', 'malamali@pedokinetika.si', 'http://www.malamali.si/', '10:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (284, 5); -- Gostinstvo in prehrana
INSERT INTO KategorijaTrgovine VALUES (284, 21); -- Lepota in zdravje
INSERT INTO KategorijaTrgovine VALUES (284, 4); -- Šport in prosti čas
INSERT INTO Trgovina VALUES (285, 18, 'Mothercare', '01/585 18 23', 'slovenia@mothercare.gr', 'Mothercare Slovenia', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (285, 15); -- Knjige in revije
INSERT INTO KategorijaTrgovine VALUES (285, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (285, 17); -- Vse za otroka
INSERT INTO Trgovina VALUES (286, 18, 'BTC City Ljubljana', '01/547 75 21', 'btc@zakelj.si', 'http://www.zakelj.si', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (286, 11); -- Vse za dom

-- Dvorana 11 (19) ------------------------------------------------------
INSERT INTO Trgovina VALUES (287, 19, 'Baby Center', '/', 'klub@baby-center.si', 'http://www.baby-center.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (287, 15); -- Knjige in revije
INSERT INTO KategorijaTrgovine VALUES (287, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (287, 17); -- Vse za otroka
INSERT INTO Trgovina VALUES (288, 19, 'BTC City Ljubljana', '01/560 50 55', 'outlet@svssport.si', 'http://www.fplus.si/', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (288, 4); -- Šport in prosti čas
INSERT INTO Trgovina VALUES (289, 19, 'Impulz', '01/428 75 43', 'grega@gm3.si', 'http://www.gm3.si/', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (289, 4); -- Šport in prosti čas
INSERT INTO KategorijaTrgovine VALUES (289, 13); -- Šport in rekreacija
INSERT INTO Trgovina VALUES (290, 19, 'La Vie', '01/541 17 53', 'info@lavie.si', 'http://www.lavie.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (290, 3); -- Moda

-- Dvorana 12 (20) ------------------------------------------------------
INSERT INTO Trgovina VALUES (291, 20, 'Hala 12', '01/585 20 86', '/', 'http://www.hala12.si', '09:30', '20:30', '09:00', '20:30', '', '');
INSERT INTO KategorijaTrgovine VALUES (291, 3); -- Moda

-- Dvorana 17 (21) ------------------------------------------------------
INSERT INTO Trgovina VALUES (292, 21, 'Debitel', '059/ 923 141', 'center@debitel.si', 'http://www.debitel.si/', '09:00', '19:00', '09:00', '13:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (292, 16); -- Računalništvo
INSERT INTO KategorijaTrgovine VALUES (292, 1); -- Tehnika
INSERT INTO Trgovina VALUES (293, 21, 'BTC City Ljubljana', '01/520 08 16', 'info@merkur.si', 'http://www.merkur.si', '09:00', '20:00', '09:00', '20:00', '08:00', '13:00');
INSERT INTO KategorijaTrgovine VALUES (293, 20); -- Film in Glasba
INSERT INTO KategorijaTrgovine VALUES (293, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (293, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (294, 21, 'Pittarello', '08/205 85 90', 'ljubljana@pittarellorosso.it', 'http://www.pittarellorosso.com', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (294, 3); -- Moda

-- Dvorana 18 (22) ------------------------------------------------------
INSERT INTO Trgovina VALUES (295, 22, 'M Tehnika', '01/547 44 44', '110600@mtehnika.si', 'http://mtehnika.si/btc', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (295, 21); -- Lepota in zdravje
INSERT INTO KategorijaTrgovine VALUES (295, 4); -- Šport in prosti čas
INSERT INTO KategorijaTrgovine VALUES (295, 11); -- Vse za dom
INSERT INTO KategorijaTrgovine VALUES (295, 17); -- Vse za otroka
INSERT INTO Trgovina VALUES (296, 22, 'Si.mobil Center Arena', '040/929 303', 'info@simobil.si', 'http://www.simobil.si', '09:00', '18:00', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (296, 16); -- Računalništvo
INSERT INTO KategorijaTrgovine VALUES (296, 1); -- Tehnika
INSERT INTO Trgovina VALUES (297, 22, 'BTC City Ljubljana', '01/541 60 60', 'btc.lj@vitacare.si', 'http://vitacare.si/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (297, 5); -- Gostinstvo in prehrana
INSERT INTO KategorijaTrgovine VALUES (297, 21); -- Lepota in zdravje
INSERT INTO KategorijaTrgovine VALUES (297, 10); -- Prehrana
INSERT INTO KategorijaTrgovine VALUES (297, 4); -- Šport in prosti čas
INSERT INTO KategorijaTrgovine VALUES (297, 11); -- Vse za dom
INSERT INTO KategorijaTrgovine VALUES (297, 17); -- Vse za otroka

-- McDonalds (23) ------------------------------------------------------

-- Kolosej (24) ------------------------------------------------------
INSERT INTO Trgovina VALUES (298, 24, 'Garderoba', '/', '/', 'http://www.garderoba.si/', '14:00', '21:00', '14:00', '21:00', '14:00', '21:00');
INSERT INTO KategorijaTrgovine VALUES (298, 3); -- Moda
INSERT INTO Trgovina VALUES (299, 24, 'Knjigarna Felix', '01/523 31 91', 'kolosej.ljubljana@ucila.si', 'http://www.felix.si/', '10:00', '22:00', '10:00', '23:00', '10:00', '22:00');
INSERT INTO KategorijaTrgovine VALUES (299, 15); -- Knjige in revije
INSERT INTO Trgovina VALUES (300, 24, 'Madness', '01/ 541 21 43', 'madness.kolosej@gmail.com', 'http://www.madness-shop.com/', '13:00', '21:00', '11:00', '21:00', '11:00', '21:00');
INSERT INTO KategorijaTrgovine VALUES (300, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (300, 4); -- Šport in prosti čas

-- Plaza Hotel (25) ------------------------------------------------------

-- Tržnica (26) ------------------------------------------------------
INSERT INTO Trgovina VALUES (301, 26, 'Arvaj - mesnica in delikatesa', '01/585 28 17', '/', 'http://www.arvaj.com', '08:00', '19:00', '07:00', '16:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (301, 10); -- Prehrana
INSERT INTO Trgovina VALUES (302, 26, 'Babičina kuhinja', '051/801 238', '/', '/', '09:00', '19:00', '09:00', '18:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (302, 10); -- Prehrana
INSERT INTO Trgovina VALUES (303, 26, 'Čebelarstvo in zeliščarstvo Vasič', '041 209 332', '/', '/', '08:00', '19:00', '07:00', '16:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (303, 10); -- Prehrana
INSERT INTO Trgovina VALUES (304, 26, 'Delikatesa Dives', '041 670 644', '/', '/', '08:00', '19:00', '07:00', '18:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (304, 10); -- Prehrana
INSERT INTO Trgovina VALUES (305, 26, 'Eurospin', '05/338 36 00', 'tajnistvo@eurospineko.si', 'http://www.eurospin.it/index.cfm?...', '08:00', '19:00', '07:00', '18:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (305, 21); -- Lepota in zdravje
INSERT INTO KategorijaTrgovine VALUES (305, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (305, 10); -- Prehrana
INSERT INTO KategorijaTrgovine VALUES (305, 11); -- Vse za dom
INSERT INTO KategorijaTrgovine VALUES (305, 17); -- Vse za otroka
INSERT INTO Trgovina VALUES (306, 26, 'Gosenca - slovenska ekološka živila in živila brez silaže slovenskih ekoloških in hribovskih kmetij', '/', '/', '/', '08:00', '19:00', '07:00', '18:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (306, 10); -- Prehrana
INSERT INTO Trgovina VALUES (307, 26, 'Gosenca točilnica - vinska klet', '041 926 633', '/', '/', '08:00', '19:00', '07:00', '18:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (307, 10); -- Prehrana
INSERT INTO Trgovina VALUES (308, 26, 'Jablana', '/', 'info@jablana.net', 'http://www.jablana.net', '08:00', '19:00', '08:00', '18:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (308, 10); -- Prehrana
INSERT INTO Trgovina VALUES (309, 26, 'Kmetija Hudin Minka', '041/602 886', '/', '/', '08:00', '19:00', '07:00', '18:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (309, 10); -- Prehrana
INSERT INTO Trgovina VALUES (310, 26, 'Konoba - ribarnica in delikatesa ', '01/562 16 56', 'rival@rivaltrade.si', 'http://www.rivaltrade.si/', '09:00', '19:00', '09:00', '15:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (310, 5); -- Gostinstvo in prehrana
INSERT INTO KategorijaTrgovine VALUES (310, 10); -- Prehrana
INSERT INTO Trgovina VALUES (311, 26, 'Loške mesnine', '01/547 24 48', 'btc@loske-mesnine.si', '/', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (311, 10); -- Prehrana
INSERT INTO Trgovina VALUES (312, 26, 'Mlekomat Non Stop', '041/895 643', 'info@kmetija-jamsek.si', 'http://www.kmetija-jamsek.si/', '00:00', '24:00', '00:00', '24:00', '00:00', '24:00');
INSERT INTO KategorijaTrgovine VALUES (312, 10); -- Prehrana
INSERT INTO Trgovina VALUES (313, 26, 'North', '01 568 58 60', '/', 'http://north.si/', '08:00', '17:00', '07:00', '15:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (313, 21); -- Lepota in zdravje
INSERT INTO Trgovina VALUES (314, 26, 'Perutnina Ptuj - mesnica in delikatesa', '01/547 85 91', 'prodajalna.btc2@perutnina.eu', 'http://www.perutnina.si', '08:00', '19:00', '07:00', '16:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (314, 10); -- Prehrana
INSERT INTO Trgovina VALUES (315, 26, 'Trgo in sadje', '/', '/', '/', '08:00', '19:00', '07:00', '18:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (315, 10); -- Prehrana
INSERT INTO Trgovina VALUES (316, 26, 'Vinakras Sežana', '01/585 14 86', 'vinakras@siol.net', 'http://www.vinakras.si/', '08:00', '18:00', '08:00', '15:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (316, 10); -- Prehrana
INSERT INTO Trgovina VALUES (317, 26, 'Vinotoč Lajkovič', '041 740 215', '/', '/', '08:00', '19:00', '07:00', '18:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (317, 10); -- Prehrana
INSERT INTO Trgovina VALUES (318, 26, 'Vrtni center Kalia', '01/810 11 22 ', 'ljubljana-btc@kalia.si', 'http://www.kalia.si', '08:00', '19:00', '07:00', '18:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (318, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (319, 26, 'ZOO market', '01/541 22 21', '/', '/', '08:00', '20:00', '08:00', '18:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (319, 2); -- Hišni ljubljenčki

-- Kratochwill (27) ------------------------------------------------------

-- Lidl (28) ------------------------------------------------------
INSERT INTO Trgovina VALUES (320, 28, 'Lidl', '080/28 60', '/', 'http://www.lidl.si/', '08:00', '21:00', '08:00', '21:00', '08:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (320, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (320, 10); -- Prehrana
INSERT INTO KategorijaTrgovine VALUES (320, 11); -- Vse za dom

-- Diamant (29) ------------------------------------------------------
INSERT INTO Trgovina VALUES (321, 29, 'Domles', '01/547 65 12', 'domles.diamant@siol.net', 'http://www.domles-pohistvo.si/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (321, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (322, 29, 'Intra studio', '01/547 65 08', 'intrastudio@intra-lighting.com', 'http://www.intra-lighting.com', '10:00', '19:00', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (322, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (323, 29, 'Maxisport Čerin', '01/547 65 00', 'trgovina@maxisport.si', 'http://www.maxisport.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (323, 4); -- Šport in prosti čas
INSERT INTO Trgovina VALUES (324, 29, 'Rogaška Crystal Outlet', '/', 'rogaskaoutlet@siol.com', 'http://www.steklarna-rogaska.si/', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (324, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (325, 29, 'Sens', '01/547 65 02', 'diamant@sens.si', 'http://www.sens.si/', '10:00', '20:00', '10:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (325, 3); -- Moda
INSERT INTO Trgovina VALUES (326, 29, 'Si.mobil Center za poslovne uporabnike', '040/411 501', 'info@simobil.si', 'http://www.simobil.si/', '09:00', '18:00', '09:00', '13:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (326, 16); -- Računalništvo
INSERT INTO KategorijaTrgovine VALUES (326, 1); -- Tehnika
INSERT INTO Trgovina VALUES (327, 29, 'Zlatarna Celje', '01/547 48 80', 'lj.diamant@zlatarnacelje.si', 'http://www.zlatarna-celje.eu/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (327, 3); -- Moda

-- Emporium (30) ------------------------------------------------------
INSERT INTO Trgovina VALUES (328, 30, 'Conrad Electronic', '01/541 50 25', 'info@trgovina-conrad.si', 'http://www.trgovina-conrad.si', '09:00', '20:00', '09:00', '17:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (328, 8); -- Avtomobilizem
INSERT INTO KategorijaTrgovine VALUES (328, 1); -- Tehnika
INSERT INTO Trgovina VALUES (329, 30, 'Delko', '', 'info@delko.si', 'http://www.delko.si', '09:00', '20:00', '09:00', '17:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (329, 16); -- Računalništvo
INSERT INTO KategorijaTrgovine VALUES (329, 4); -- Šport in prosti čas
INSERT INTO KategorijaTrgovine VALUES (329, 1); -- Tehnika
INSERT INTO KategorijaTrgovine VALUES (329, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (330, 30, 'Emporium', '01/584 48 00', 'info@emporium.si', 'http://www.emporium.si', '10:00', '21:00', '09:00', '21:00', '10:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (330, 14); -- Erotika
INSERT INTO KategorijaTrgovine VALUES (330, 20); -- Film in Glasba
INSERT INTO KategorijaTrgovine VALUES (330, 3); -- Moda
INSERT INTO Trgovina VALUES (331, 30, 'Galeb svet perila', '01/585 25 66', 'info@galeb-trade.si', 'http://www.galeb-trade.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (331, 3); -- Moda
INSERT INTO Trgovina VALUES (332, 30, 'Izi Mobili', '01/585 25 52', 'projekt@izi-mobili.si', 'http://www.izi-mobili.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (332, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (333, 30, 'Jysk', '01/546 51 72', 'pomockupcem@jysk.com', 'http://www.jysk.si/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (333, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (333, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (334, 30, 'Kilometer', '01/585 16 89', 'metraza@kilometer.si', 'http://www.kilometer.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (334, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (334, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (335, 30, 'Lovski mojster', '01/585 17 41', 'impressum@siol.net', 'http://www.lovskimojster.com', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (335, 4); -- Šport in prosti čas
INSERT INTO Trgovina VALUES (336, 30, 'BTC City Ljubljana', '01 810 2015', 'info@makeit.si', 'http://www.makeit.si', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (336, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (336, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (337, 30, 'Massimo Dutti', '01 58 44 815', 'mdutti@magistrat.si', 'http://www.massimodutti.com', '10:00', '21:00', '09:00', '21:00', '10:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (337, 14); -- Erotika
INSERT INTO KategorijaTrgovine VALUES (337, 3); -- Moda
INSERT INTO Trgovina VALUES (338, 30, 'Mladi tehnik', '01/541 00 50', 'mladitehnik@siol.net', 'http://www.mladi-tehnik.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (338, 9); -- Igre in konzole
INSERT INTO KategorijaTrgovine VALUES (338, 15); -- Knjige in revije
INSERT INTO KategorijaTrgovine VALUES (338, 4); -- Šport in prosti čas
INSERT INTO KategorijaTrgovine VALUES (338, 1); -- Tehnika
INSERT INTO KategorijaTrgovine VALUES (338, 17); -- Vse za otroka
INSERT INTO Trgovina VALUES (339, 30, 'Odeja', '01/585 28 34', 'trg.btc@odeja.si', 'http://www.odeja.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (339, 21); -- Lepota in zdravje
INSERT INTO KategorijaTrgovine VALUES (339, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (339, 11); -- Vse za dom
INSERT INTO KategorijaTrgovine VALUES (339, 17); -- Vse za otroka
INSERT INTO Trgovina VALUES (340, 30, 'Outlet Clarus', '01/810 90 63', 'outlet@clarus.si', 'http://modna-ocala.si/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (340, 3); -- Moda
INSERT INTO Trgovina VALUES (341, 30, 'Pohištvo Forma', '01/585 27 07', 'info@pohistvo-forma.si', 'http://www.pohistvo-forma.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (341, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (342, 30, 'Pravi ribič', '01/585 16 17', '/', '/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (342, 4); -- Šport in prosti čas
INSERT INTO Trgovina VALUES (343, 30, 'Sailor', '01/810 95 05', 'sailor@navtronic.si', 'http://www.navtronic.si/', '08:00', '20:00', '08:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (343, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (343, 4); -- Šport in prosti čas
INSERT INTO Trgovina VALUES (344, 30, 'BTC City Ljubljana', '031/233 455', 'info@sanus-btc.si', 'http://www.sanus-btc.si/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (344, 21); -- Lepota in zdravje
INSERT INTO KategorijaTrgovine VALUES (344, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (345, 30, 'Target', '01/585 17 35', 'info@me-plast.com', 'http://www.me-plast.com', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (345, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (345, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (346, 30, 'Two way Outlet', '01/585 20 83', 'info@twoway.si', 'http://www.twoway.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (346, 3); -- Moda
INSERT INTO Trgovina VALUES (347, 30, 'Utva', '01/545 14 70', 'info@utva.si', 'http://www.utva.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (347, 3); -- Moda

-- Dvorana E (31) ------------------------------------------------------
INSERT INTO Trgovina VALUES (348, 31, 'Bershka', '01/308 41 60', '/', '/', '10:00', '21:00', '09:00', '21:00', '10:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (348, 14); -- Erotika
INSERT INTO KategorijaTrgovine VALUES (348, 3); -- Moda
INSERT INTO Trgovina VALUES (349, 31, 'C&amp;A', '/', '/', 'http://www.c-and-a.com/si/sl/corp...', '', '', '', '', '', '');
INSERT INTO KategorijaTrgovine VALUES (349, 3); -- Moda
INSERT INTO KategorijaTrgovine VALUES (349, 17); -- Vse za otroka
INSERT INTO Trgovina VALUES (350, 31, 'Eko stil', '01/585 17 66', 'ekostil@ekostil.si', 'http://www.ekostil.si', '09:00', '19:00', '09:00', '15:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (350, 11); -- Vse za dom
INSERT INTO Trgovina VALUES (351, 31, 'Pull and Bear', '01/308 41 65', '/', 'http://www.pullbear.com', '10:00', '21:00', '09:00', '21:00', '10:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (351, 14); -- Erotika
INSERT INTO KategorijaTrgovine VALUES (351, 3); -- Moda
INSERT INTO Trgovina VALUES (352, 31, 'Stradivarius', '01/308 41 55', '/', 'http://www.stradivarius.si', '10:00', '21:00', '09:00', '21:00', '10:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (352, 14); -- Erotika
INSERT INTO KategorijaTrgovine VALUES (352, 3); -- Moda
INSERT INTO Trgovina VALUES (353, 31, 'Zara', '01/308 41 80', '/', 'http://www.zara.com', '10:00', '21:00', '09:00', '21:00', '10:00', '15:00');
INSERT INTO KategorijaTrgovine VALUES (353, 14); -- Erotika
INSERT INTO KategorijaTrgovine VALUES (353, 3); -- Moda

-- Millenium (32) ------------------------------------------------------
INSERT INTO Trgovina VALUES (354, 32, 'Benetton Megastore', '01/5851874', '/', 'http://www.benetton.com/portal/we...', '10:00', '21:00', '09:00', '20:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (354, 3); -- Moda
INSERT INTO Trgovina VALUES (355, 32, 'S šport', '01/585 14 92', 'stojan.ssport@gmail.com', 'http://www.protenis.si', '09:00', '20:00', '09:00', '12:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (355, 4); -- Šport in prosti čas

-- Parkirna hiša BTC (33) ------------------------------------------------------
INSERT INTO Trgovina VALUES (356, 33, 'Parkirna hiša BTC', '/', 'info@btc.si', 'http://www.btc-city.com', '06:00', '00:00', '06:00', '00:00', '06:00', '00:00');
INSERT INTO KategorijaTrgovine VALUES (356, 1); -- Tehnika

-- Argentinska rest (34) ------------------------------------------------------

-- Atlantis (35) ------------------------------------------------------

-- Avtocenter (36) ------------------------------------------------------
INSERT INTO Trgovina VALUES (357, 36, 'Avtocenter Mazda', '01/585 27 90', '/', 'http://www.mazda.acosmos-btc.si/', '08:00', '18:00', '09:00', '13:00', '', '');
INSERT INTO KategorijaTrgovine VALUES (357, 8); -- Avtomobilizem

