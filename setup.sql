create database `art-shop`;

use `art-shop`;
-- Yes I'm going to unapolegetically mix languages

-- Some names are quoted to prevent syntax highlighting

create table paint_types (
  id int not null auto_increment,
  `name` varchar(50) not null,
  PRIMARY KEY (id)
);

create table canvases (
  id int not null auto_increment,
  `name` varchar(50) not null,
  PRIMARY KEY (id)
);

-- Brands of paint
create table brands (
  id int not null auto_increment,
  `name` varchar(100) not null,
  PRIMARY KEY (id)
);

create table artists (
  id int not null auto_increment,
  pseudonym varchar(100) not null,
  `desc` text not null,
  PRIMARY KEY (id)
);

-- Account for putting up sales
create table vendors (
  id int not null auto_increment,
  `login` varchar(20) not null,
  email varchar(255) not null,
  pass_hash char(60) not null, -- bcrypt bcrypt bcrypt
  artist int,
  PRIMARY KEY (id)
);

create table paintings (
  id int not null auto_increment,
  -- cena 
  title varchar(100) not null,
  `desc` text not null,
  paint_type int,
  paint_brand int,
  artist int,
  vendor -- don't show to buyers
    int NOT NULL, -- _SOMEONE_ has to put the paintings on sale
  height int,
  width int,
  depth int,
  PRIMARY KEY (id),
  foreign key (paint_type) references paint_types(id),
  foreign key (paint_brand) references brands(id),
  foreign key (artist) references artists(id),
  foreign key (vendor) references vendors(id)
  -- FOREIGN KEY REFERENCES paint_types(id)
);

create table purchases (
  id int not null,
  /* TODO: #1 add some addresses and such */
  PRIMARY KEY (id),
  CONSTRAINT fk_purchase_painting
  FOREIGN KEY (id) references paintings(id)
  -- 1 - 1
);