drop database if exists adlister_db;
create database adlister_db;

use adlister_db;

drop table if exists users;
drop table if exists ads;
drop table if exists ad_cat;
drop table if exists category;

create table users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  username varchar(20) NOT NULL unique,
  email varchar(40) not null unique,
  pass varchar(24) NOT NULL unique,
  PRIMARY KEY (id)
);

create table ads (
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
user_id INT UNSIGNED NOT NULL,
title varchar(40) not null,
description varchar(500) NOT NULL,
PRIMARY KEY (id),
foreign key (user_id) references users (id)
);

create table category (
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
category_name varchar(40),
primary key (id)
);

create table ad_cat (
  ad_id INT UNSIGNED NOT NULL,
  category_id INT UNSIGNED NOT NULL,
  foreign key (ad_id) references ads (id),
  foreign key (category_id) references category (id)
);