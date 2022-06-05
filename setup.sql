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

create table paintings (
  id int not null auto_increment,
  -- cena 
  title varchar(100) not null,
  `desc` text not null,
  paint_type int,
  paint_brand int,
  height int,
  width int,
  depth int,
  PRIMARY KEY (id),
  foreign key (paint_type) references paint_types(id),
  foreign key (paint_brand) references brands(id)
);

create table purchases (
  id int not null,
  /* TODO: #1 add some addresses and such */
  PRIMARY KEY (id),
  CONSTRAINT fk_purchase_painting
  FOREIGN KEY (id) references paintings(id)
  -- 1 - 1
);

create table tags (
  id int not null auto_increment,
  `name` varchar(30) not null,
  PRIMARY KEY (id),
  UNIQUE (`name`)
);

create table painting_tags (
  painting int not null,
  tag int not null,
  PRIMARY KEY (painting, tag),
  FOREIGN KEY (painting) references paintings(id),
  FOREIGN KEY (tag) references tags(id)
);

insert into tags(name) values ('portret');
insert into tags(name) values ('krajobraz');
insert into tags(name) values ('architektura');
