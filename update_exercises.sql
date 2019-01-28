use codeup_test_db;

select name from albums
select sales from albums;
update albums set sales = (sales / 10);
select sales from albums;
select name from albums where release_date < 1980;
select release_date from albums;
update albums set release_date = 1800 where release_date < 1980;
select name from albums where artist = 'Peter Jackson';