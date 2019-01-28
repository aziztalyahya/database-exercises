USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums (
 id int(10) unsigned NOT NULL AUTO_INCREMENT,
 artist VARCHAR(100) NOT NULL,
 name VARCHAR(100) NOT NULL,
 release_date INT(4) NOT NULL,
 sales FLOAT(4) NOT NULL,
 genre VARCHAR(100) NOT NULL,
 PRIMARY KEY (id)
);