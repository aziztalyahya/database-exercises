create database if not exists adlister;

use adlister;

create table if not exists users(
    id int unsigned  not null auto_increment primary key,
    email VARCHAR(100) NOT NULL unique,
    password VARCHAR(32) NOT NULL,
    first_name varchar(100) not null,
    last_name varchar(100) not null
);




create table if not exists ads(
    id int unsigned not null auto_increment primary key,
    user_id int unsigned not null,
    title varchar(255),
    description text,
    create_date datetime not null,
    expire_date datetime,
    FOREIGN key (user_id) references users (id)
);

create table if not exists categories(
     id  int unsigned not null auto_increment primary key,
     cate_name varchar(255)
);


create table if not exists ads_categories(
    ad_id int unsigned not null,
    cata_id int unsigned not null,
    foreign key (ad_id) references ads (id),
    foreign key (cata_id) references categories (id)
    -- adNum
    -- category

);

