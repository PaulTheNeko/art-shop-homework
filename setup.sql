create database `art-shop`;

use `art-shop`;
-- Yes I'm going to unapolegetically mix languages
/* TODO: #2 don't mix languages */

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
  `name` varchar(100) not null auto_increment,
  PRIMARY KEY (id)
);

create table artists (
  id int not null auto_increment,
  pseudonym varchar(100) not null auto_increment,
  `desc` text not null auto_increment,
  PRIMARY KEY (id)
);

-- Account for putting up sales
create table vendor (
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
  title varchar not null,
  `desc` text not null,
  paint_type int FOREIGN KEY REFERENCES paint_types(id),
  paint_brand int FOREIGN KEY REFERENCES brands(id),
  artist int FOREIGN KEY REFERENCES artist(id),
  vendor int -- don't show to buyers
    NOT NULL -- _SOMEONE_ has to put the paintings up
    FOREIGN KEY REFERENCES vendor(id),
  
  height int,
  width int,
  depth int,
  PRIMARY KEY (id)
);

create table purchases (
  id int not null,
  /* TODO: #1 add some addresses and such */
  PRIMARY KEY (id),
  CONSTRAINT fk_purchase_painting
  FOREIGN KEY (id) references paintings(id)
  -- 1 - 1
);