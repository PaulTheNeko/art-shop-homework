create database `art-shop`;

use `art-shop`;
-- Yes I'm going to unapolegetically mix languages
/* TODO: #2 don't mix languages */


create table Farby (
  id int not null auto_increment,
  nazwa varchar(50) not null,
  PRIMARY KEY (id)
);

create table Powierzchnie (
  id int not null auto_increment,
  nazwa varchar(50) not null,
  PRIMARY KEY (id)
);

create table Firma (
  id int not null auto_increment,
  nazwa varchar(100) not null auto_increment,
  PRIMARY KEY (id)
);

create table Artysci (
  id int not null auto_increment,
  pseudonim varchar(100) not null auto_increment,
  opis text not null auto_increment,
  PRIMARY KEY (id)
);

create table Wystawiajacy (
  id int not null auto_increment,
  `login` varchar(20) not null,
  email varchar(255) not null,
  artysta int,
  PRIMARY KEY (id)
);

create table Obrazy (
  id int not null auto_increment,
  -- cena 
  tytul varchar not null,
  opis text not null,
  rodzaj_farb int FOREIGN KEY REFERENCES Rodzaje(id),
  firma_farb int FOREIGN KEY REFERENCES Firmy(id),
  artysta int FOREIGN KEY REFERENCES Artysci(id),
  wystawiajacy int -- don't show to buyers
    NOT NULL -- _SOMEONE_ has to put the paintings up
    FOREIGN KEY REFERENCES Wystawiajacy(id),
  
  height int,
  width int,
  depth int,
  PRIMARY KEY (id)
);

create table Zakup (
  id int not null,
  /* TODO: #1 add some addresses and such */
  PRIMARY KEY (id),
  CONSTRAINT fk_Zakup_Obrazy
  FOREIGN KEY (id) references Obrazy(id)
);