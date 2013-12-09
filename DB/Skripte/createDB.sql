--==============================================================
-- DBMS name:      ANSI Level 2
-- Created on:     9.12.2013 14:03:35
--==============================================================


drop index Hala_PK;

drop table Hala cascade;

drop index Kategorija_PK;

drop table Kategorija cascade;

drop index prodaja_izdelke_kategorije2_FK;

drop index prodaja_izdelke_kategorije_FK;

drop index prodaja_izdelke_kategorije_PK;

drop table KategorijaTrgovine cascade;

drop index je_vrste_FK;

drop index POI_PK;

drop table POI cascade;

drop index ima_trgovine_FK;

drop index Trgovina_PK;

drop table Trgovina cascade;

drop index ima_vhode_FK;

drop index Vhod_PK;

drop table Vhod cascade;

drop index VrstaPOI_PK;

drop table VrstaPOI cascade;

drop table android_metadata cascade;

--==============================================================
-- Table: Hala
--==============================================================
create table Hala (
IDHale               INTEGER              not null,
ImeHale              TEXT                 not null,
primary key (IDHale)
);

--==============================================================
-- Index: Hala_PK
--==============================================================
create unique index Hala_PK on Hala (
IDHale ASC
);

--==============================================================
-- Table: Kategorija
--==============================================================
create table Kategorija (
IDKategorije         INTEGER              not null,
ImeKategorije        TEXT                 not null,
primary key (IDKategorije)
);

--==============================================================
-- Index: Kategorija_PK
--==============================================================
create unique index Kategorija_PK on Kategorija (
IDKategorije ASC
);

--==============================================================
-- Table: Trgovina
--==============================================================
create table Trgovina (
IDTrgovine           INTEGER              not null,
IDHale               INTEGER              not null,
ImeTrgovine          TEXT                 not null,
Telefon              TEXT,
Email                TEXT,
SpletnaStran         TEXT,
PonPetOd             TEXT,
PonPetDo             TEXT,
SobOd                TEXT,
SobDo                TEXT,
NedOd                TEXT,
NedDo                TEXT,
primary key (IDTrgovine),
foreign key (IDHale)
      references Hala (IDHale)
);

--==============================================================
-- Table: KategorijaTrgovine
--==============================================================
create table KategorijaTrgovine (
IDTrgovine           INTEGER              not null,
IDKategorije         INTEGER              not null,
primary key (IDTrgovine, IDKategorije),
foreign key (IDTrgovine)
      references Trgovina (IDTrgovine),
foreign key (IDKategorije)
      references Kategorija (IDKategorije)
);

--==============================================================
-- Index: prodaja_izdelke_kategorije_PK
--==============================================================
create unique index prodaja_izdelke_kategorije_PK on KategorijaTrgovine (
IDTrgovine ASC,
IDKategorije ASC
);

--==============================================================
-- Index: prodaja_izdelke_kategorije_FK
--==============================================================
create  index prodaja_izdelke_kategorije_FK on KategorijaTrgovine (
IDTrgovine ASC
);

--==============================================================
-- Index: prodaja_izdelke_kategorije2_FK
--==============================================================
create  index prodaja_izdelke_kategorije2_FK on KategorijaTrgovine (
IDKategorije ASC
);

--==============================================================
-- Table: VrstaPOI
--==============================================================
create table VrstaPOI (
IDVrste              INTEGER              not null,
Vrsta                TEXT                 not null,
primary key (IDVrste)
);

--==============================================================
-- Table: POI
--==============================================================
create table POI (
IDPoi                INTEGER              not null,
IDVrste              INTEGER              not null,
LokacijaLat          REAL                 not null,
LokacijaLong         REAL,
primary key (IDPoi),
foreign key (IDVrste)
      references VrstaPOI (IDVrste)
);

--==============================================================
-- Index: POI_PK
--==============================================================
create unique index POI_PK on POI (
IDPoi ASC
);

--==============================================================
-- Index: je_vrste_FK
--==============================================================
create  index je_vrste_FK on POI (
IDVrste ASC
);

--==============================================================
-- Index: Trgovina_PK
--==============================================================
create unique index Trgovina_PK on Trgovina (
IDTrgovine ASC
);

--==============================================================
-- Index: ima_trgovine_FK
--==============================================================
create  index ima_trgovine_FK on Trgovina (
IDHale ASC
);

--==============================================================
-- Table: Vhod
--==============================================================
create table Vhod (
IDVhoda              INTEGER              not null,
IDHale               INTEGER,
LokacijaLat          REAL                 not null,
LokacijaLong         REAL                 not null,
primary key (IDVhoda),
foreign key (IDHale)
      references Hala (IDHale)
);

--==============================================================
-- Index: Vhod_PK
--==============================================================
create unique index Vhod_PK on Vhod (
IDVhoda ASC
);

--==============================================================
-- Index: ima_vhode_FK
--==============================================================
create  index ima_vhode_FK on Vhod (
IDHale ASC
);

--==============================================================
-- Index: VrstaPOI_PK
--==============================================================
create unique index VrstaPOI_PK on VrstaPOI (
IDVrste ASC
);

--==============================================================
-- Table: android_metadata
--==============================================================
create table android_metadata (
locale               TEXT
);

