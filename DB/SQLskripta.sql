--==============================================================
-- DBMS name:      ANSI Level 2
-- Created on:     2.12.2013 20:44:47
--==============================================================


drop index Hala_PK;

drop table Hala cascade;

drop index Kategorija_PK;

drop table Kategorija cascade;

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

drop index prodaja_izdelke_kategorije2_FK;

drop index prodaja_izdelke_kategorije_FK;

drop index prodaja_izdelke_kategorije_PK;

drop table prodaja_izdelke_kategorije cascade;

--==============================================================
-- Table: Hala
--==============================================================
create table Hala (
IDHale               INTEGER              not null,
ImeHale              VARCHAR(20)          not null,
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
ImeKategorije        VARCHAR(100)         not null,
primary key (IDKategorije)
);

--==============================================================
-- Index: Kategorija_PK
--==============================================================
create unique index Kategorija_PK on Kategorija (
IDKategorije ASC
);

--==============================================================
-- Table: VrstaPOI
--==============================================================
create table VrstaPOI (
IDVrste              INTEGER              not null,
Vrsta                VARCHAR(50)          not null,
primary key (IDVrste)
);

--==============================================================
-- Table: POI
--==============================================================
create table POI (
IDPoi                INTEGER              not null,
IDVrste              INTEGER              not null,
Lokacija             VARCHAR(50)          not null,
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
-- Table: Trgovina
--==============================================================
create table Trgovina (
IDTrgovine           INTEGER              not null,
IDHale               INTEGER              not null,
ImeTrgovine          VARCHAR(50)          not null,
Telefon              VARCHAR(50),
Email                VARCHAR(50),
SpletnaStran         VARCHAR(50),
PonPetOd             TIME                 not null,
PonPetDo             TIME                 not null,
SobOd                TIME                 not null,
SobDo                TIME                 not null,
NedOd                TIME                 not null,
NedDo                TIME                 not null,
primary key (IDTrgovine),
foreign key (IDHale)
      references Hala (IDHale)
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
Lokacija             VARCHAR(50)          not null,
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
-- Table: prodaja_izdelke_kategorije
--==============================================================
create table prodaja_izdelke_kategorije (
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
create unique index prodaja_izdelke_kategorije_PK on prodaja_izdelke_kategorije (
IDTrgovine ASC,
IDKategorije ASC
);

--==============================================================
-- Index: prodaja_izdelke_kategorije_FK
--==============================================================
create  index prodaja_izdelke_kategorije_FK on prodaja_izdelke_kategorije (
IDTrgovine ASC
);

--==============================================================
-- Index: prodaja_izdelke_kategorije2_FK
--==============================================================
create  index prodaja_izdelke_kategorije2_FK on prodaja_izdelke_kategorije (
IDKategorije ASC
);

