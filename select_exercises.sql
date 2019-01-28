use codeup_test_db;

select * from albums where artist = 'Pink Floyd';
select release_date from albums where name = 'Sgt.Peppers Lonely Hearts Club Band';
select genre from albums where name = 'nevermind';
select name from albums where release_date between '1990' and '1999';
select name from albums where sales >= 20;
select name from albums where genre = 'rock';

