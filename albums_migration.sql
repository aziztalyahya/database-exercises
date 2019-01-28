USE codeup_test_db;

DROP TABLE IF EXISTS albums;
DROP TABLE IF EXISTS movies;


CREATE TABLE IF NOT EXISTS albums (
  id int(10) unsigned NOT NULL AUTO_INCREMENT,
  artist VARCHAR(100) NOT NULL,
  name VARCHAR(100) NOT NULL,
  release_date INT(4) NOT NULL,
  sales FLOAT(4) NOT NULL,
  genre VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS movies (
  id int(10) unsigned NOT NULL AUTO_INCREMENT,
  movieName VARCHAR(100) NOT NULL,
  release_date INT(4) NOT NULL,
  rating INT(2) NOT NULL,
  director VARCHAR(100) NOT NULL,
  genre VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);