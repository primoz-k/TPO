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
-- ...

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

-- Trgovina(IDTrgovine, IDHale, ImeTrgovine, Telefon, Email, SpetnaStran, PonPetOd, PonPetDo, SobOd, SobDo, NedOd, NedDo)
-- obratovalni cas je lahko tut NULL
INSERT INTO Trgovina VALUES (1, 1, 'Accessorize', '01/320 08 45', 'accessorize.lj1@acron-trgovina.si', 'http://www.acron-trgovina.si/', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (2, 1, 'Adidas', '01/320 81 40', 'adidasshop-ljubljana@afp.si', '/', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (3, 1, 'After Leonardo', '01/547 10 92', 'after.citypark@leonardo.si', 'http://www.leonardo.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (4, 1, 'Art', '01/541 00 46', 'info@art-lj.si', 'http://www.art-lj.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (5, 1, 'Bags&More', '01 620 87 36', 'Bags.morelj5@acron-trgovina.si', 'http://www.acron-trgovina.si/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO Trgovina VALUES (6, 1, 'Bata Superstore', '051/658 562', 'bata.citypark@sportina.si', 'http://www.sportina.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (7, 1, 'bauMax', '01/548 44 44', 'info-si@baumax.com', 'http://www.baumax.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (8, 1, 'Bazilica - zel', '01/541 00 54', 'bazilica.zel@gmail.com', 'http://www.bazilica.com', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (9, 1, 'Big Bang', '01/520 09 00', 'potrosniki@bigbang.si', 'http://bigbang.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (10, 1, 'Camper', '059 07 56 63', 'camper.city@cloudy.si', '/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO Trgovina VALUES (11, 1, 'Comma', '01/520 11 91', 'cityparkcomma@soliver.si', 'http://www.comma-fashion.com', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (12, 1, 'Crocs', '0599/577 37', 'crocs.citypark@gmail.com', '/', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (13, 1, 'Deichmann', '01/ 520 13 71', 'deichmann-obutev@deichmann.com', 'http://www.deichmann.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (14, 1, 'Diddl Shop', '0599 / 26 192', 'info@diddlshop.si', 'www.diddlshop.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (15, 1, 'Direndaj', '01/ 620 77 46', 'direndaj.ljubljana-city@orbico.si', 'http://www.direndaj.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (16, 1, 'DM Drogerie markt', '01/5415300', 'info@dm-drogeriemarkt.si', 'http://www.dm-drogeriemarkt.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO Trgovina VALUES (17, 1, 'Dollar', '01/520 93 00', 'trgovina.ljubljana@dollar.si', 'http://www.dollar.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (18, 1, 'Florentina dežela balonov', '041 412 162', 'florentina@siol.net', 'http://www.florentina.si ', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO Trgovina VALUES (19, 1, 'G-Star', '051/658 517', 'gstar.citypark@sportina.si', 'http://www.sportina.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (20, 1, 'Guess Accessories Store', '0599/28 876', 'guessbtc@sanis.si', 'https://www.facebook.com/guess.l....', '', '', '', '', '', '');
INSERT INTO Trgovina VALUES (21, 1, 'H&M', '01/547 18 60', '/', '/', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (22, 1, 'Hervis', '01/587 48 10', 'hm08-300.ljubljana@hervis.si', 'http://www.hervis.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (23, 1, 'Hiša čokolade Rustika', '01/430 17 94', 'cokoladnica_lj@rustika.eu', '/', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (24, 1, 'Humanic', '01/524 00 37', 'bracic.petra@lsag.com', 'http://www.shoemanic.com', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (25, 1, 'iStore', '/', 'istore@fmc.si', 'http://www.i-store.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (26, 1, 'Kastner&Ohler', '01/ 755 47 01', 'kontakt@kastner-oehler.si', 'http://www.kastner-oehler.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (27, 1, 'Kelih', '01/541 18 18', '/', '/', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (28, 1, 'Leonardo', '01/547 10 90', 'leonardo@leonardo-ce.si', '/', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (29, 1, 'Limoni', '01/523 35 31', 'cityparklj@limoni.si', '/', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (30, 1, 'L-Occitane', '01/523 34 66', 'info@loccitane.si', 'http://www.loccitane.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (31, 1, 'Marks & Spencer', '01/520 49 00', 'marinopoulos@siol.net', 'http://www.marksandspencer.com', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (32, 1, 'Megamarket Interspar', '01/587 30 10', 'im.01@spar.si', 'http://www.spar.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (33, 1, 'Melvita', '01/320 48 47', 'info@melvita.si', 'http://www.melvita.si', '09:00', '21:00', '09:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (34, 1, 'Mladinska knjiga trgovina', '01 520 81 61', 'skupnicitypark@mk-trgovina.si', 'http://www.mk-trgovina.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (35, 1, 'Mura', '01/547 29 90', '/', 'http://www.mura.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (36, 1, 'Naracamicie', '/', 'info@naracamicie.si', 'http://naracamicie.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (37, 1, 'New Yorker', '01/548 35 91', '/', '/', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (38, 1, 'Okaidi', '/', '/', '/', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (39, 1, 'Orsay', '051/658 518', 'Orsay.citypark@sportina.si', 'http://www.sportina.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (40, 1, 'Palmers', '01/523 35 28', 'palmers-citypark@krokodil.si', 'http://www.krokodil.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (41, 1, 'Promod', '/', '/', '/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO Trgovina VALUES (42, 1, 'Rifle', '01/541 95 20', '/', '/', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (43, 1, 's.Oliver', '01/520 11 92', 'citypark@soliver.si', 'http://www.soliver.de', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (44, 1, 's.Oliver Junior', '01/520 11 90', 'cityparkkids@soliver.si', 'http://www.soliver.de', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (45, 1, 's.Oliver Selection', '01 520 11 92', 'cityparkselection@soliver.si', 'http://www.soliver.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO Trgovina VALUES (46, 1, 'Sanolabor', '01/521 12 88', 'mp.lj-citypark@sanolabor.si', '/', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (47, 1, 'Sariko', '01 / 236 20 28', '/', '/', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO Trgovina VALUES (48, 1, 'Six', '051/658 523', 'six.citypark@sportina.si', 'http://www.sportina.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (49, 1, 'Sten time', '01/546 52 13', 'info@sten.si', 'http://www.sten.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (50, 1, 'Sten Time Exclusive', '030/321 121', 'info@sten.si', 'http://www.sten.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (51, 1, 'Stenders', '01 / 620 87 78', 'prodaja@stenders.si', 'http://www.stenders.si', '09:00', '20:00', '09:00', '20:00', '', '');
INSERT INTO Trgovina VALUES (52, 1, 'Swarovski', '01/523 34 90', '/', '/', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (53, 1, 'Swatch', '/', 'info@sten.si', 'http://www.sten.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (54, 1, 'Tally Weijl', '051/658 577', 'TW.citypark@sportina.si', 'http://www.sportina.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (55, 1, 'Tele Mobiltel', '01/523 34 63', '/', '/', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (56, 1, 'Telekom Slovenije', '01/541 05 00', '/', 'http://www.telekom.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (57, 1, 'Tisoč in en dar', '01/541 17 30', 'info@pro-92.si', 'http://www.tisocinendar.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (58, 1, 'Tkanina', '01/541 00 42', 'tkanina.cermelj@siol.net', '/', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (59, 1, 'Toko', '01/524 00 31', 'Pe10@toko.si', 'http://www.toko.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (60, 1, 'Tom Tailor', '051/658 546', 'TomTailor.citypark@sportina.si', 'http://www.sportina.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (61, 1, 'Tomas sport', '01/523 34 98', 'spar.ts@amis.net', '/', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (62, 1, 'Transport', '/', 'transport-btc@t-2.net', 'http://www.transportshoes.com', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (63, 1, 'Triumph', '01 / 54 11 761', 'triumph.lj-citypark@siol.net', 'http://www.triumph.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (64, 1, 'Two way', '01/ 511 64 49', 'citypark@twoway.si', 'http://www.twoway.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (65, 1, 'Vinoteka Istenič', '/', 'office@istenic.si', 'http://www.istenic.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (66, 1, 'Vovko', '01/523 35 13', 'citypark@vovko.si', 'http://www.vovko.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (67, 1, 'xyz', '051/658 535', 'xyz.citypark@sportina.si', 'http://www.xyzstyleideas.com', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');
INSERT INTO Trgovina VALUES (68, 1, 'Zootic', '01/541 02 57', 'zootic.citypark@zootic.si', 'http://www.zootic.si', '09:00', '21:00', '08:00', '21:00', '09:00', '15:00');

-- DONE Hala CityPark

-- KategorijaTrgovine(IDTrgovine, IDKategorije)
INSERT INTO KategorijaTrgovine VALUES (1, 1);
INSERT INTO KategorijaTrgovine VALUES (1, 4);
-- ...

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