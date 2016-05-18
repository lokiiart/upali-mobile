-- schema.sql

drop database if exists awesome;

create database awesome;

use awesome;

grant select, insert, update, delete on awesome.* to 'www-data'@'localhost' identified by 'www-data';

create table pagecounts (
`id` varchar(50) not null,
`view_index` int not null, 
`user_ip` varchar(50) not null,
`created_at` real not null,
key `idx_created_at` (`created_at`),
primary key (`id`)
) engine=innodb default charset=utf8;

create table users (
    `id` varchar(50) not null,
    `email` varchar(50) not null,
    `passwd` varchar(50) not null,
    `admin` bool not null,
    `name` varchar(50) not null,
    `image` varchar(500) not null,
    `created_at` real not null,
    unique key `idx_email` (`email`),
    key `idx_created_at` (`created_at`),
    primary key (`id`)
) engine=innodb default charset=utf8;

create table blogs (
    `id` varchar(50) not null,
    `user_id` varchar(50) not null,
    `user_name` varchar(50) not null,
    `user_image` varchar(500) not null,
    `name` varchar(50) not null,
    `summary` varchar(200) not null,
    `content` mediumtext not null,
    `created_at` real not null,
    key `idx_created_at` (`created_at`),
    primary key (`id`)
) engine=innodb default charset=utf8;

create table orders (
  `order_id` varchar(50) not null,
  `customer` varchar(50) not null,
  `price` varchar(50) not null,
  `payment` varchar(50) not null default "test",
  `address` varchar(500) not null default "test",
  `effictive` varchar(50) not null default "test",
  `flow` varchar(50) not null default "test",
  `notes` mediumtext not null default "test",
  `created_at` real not null,
  key `idx_created_at` (`created_at`),
  primary key (`order_id`)
) engine=innodb default charset=utf8;

create table comments (
    `id` varchar(50) not null,
    `blog_id` varchar(50) not null,
    `user_id` varchar(50) not null,
    `user_name` varchar(50) not null,
    `user_image` varchar(500) not null,
    `content` mediumtext not null,
    `created_at` real not null,
    key `idx_created_at` (`created_at`),
    primary key (`id`)
) engine=innodb default charset=utf8;
