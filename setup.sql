create database `art-shop`;

use `art-shop`;
-- Yes I'm going to unapolegetically mix languages

-- Some names are quoted to prevent syntax highlighting

create table paintings (
  id int not null auto_increment,
  title varchar(100) not null,
  `desc` text not null,
  image text not null,
  PRIMARY KEY (id)
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
