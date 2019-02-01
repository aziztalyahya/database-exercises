use adlister;

insert into users (email, password, first_name, last_name)
values (
         'aziz@codeup.com', 'password', 'Aziz', 'Alyahya'
       ),
       (
         'nathaniel@codeup.com', 'wordpass', 'Nathaniel', 'Gumbs'
       ),
       (
        'shawn@codeup.com', 'passTheWord', 'Shawn', 'Arnold'
       );

select * from users;


insert into ads(user_id, title, description, create_date, expire_date, item_price)
values (
        1, 'lumberjack NEEDED!!', 'We need a Paul Bunyan type person, with a beard
         and flannel overalls to cut down my neighbors tree which has become an
         iconvienence. Will not consider if under 6 ft 4 in', now(), null, 300.00
       ),
       (
        2, 'Fridgr', 'Works great cant show that is does sorry i cant deliver and i
        have the shelves for it negotiable on price', now(), null, 600.00
       ),
       (
        3,'Gaming PC', 'Selling gaming PC, 2080ti, 9800k cpu, 32gb RAM,
        Tube water cooling, 500GB SSD', now(), null, 1800.00
       ),
       (
        2, 'Genuine mink fur coat', ' full length dark mink coat. Smoke free home.
        1200 obo cash only', '2019-01-01 12:15:05', null, 1200.00
       );

select * from ads;

insert into categories(cate_name)
VALUES (
        'electronics'
       ),
       (
        'services'
       ),
       (
        'household'
       ),
       (
        'labor'
       ),
       (
        'clothing'
       );

select * from categories;

insert into ads_categories (ad_id, cata_id)
VALUES (1,4),
       (1,2),
       (2,3),
       (2,1),
       (3,1),
       (4,5);

select * from ads_categories;


-- For a given ad, what is the email address of the user that created it?
select email, title from users
join ads on users.id = ads.user_id;

-- For a given ad, what category, or categories, does it belong to?
select a.title, c.cate_name from ads as a
join ads_categories as ac on a.id = ac.ad_id
join categories c on ac.cata_id = c.id;

-- For a given category, show all the ads that are in that category.
select cate_name, count(ad_id) from categories as c
join ads_categories ac on c.id = ac.cata_id
group by cate_name;

-- For a given user, show all the ads they have posted.
select u.first_name, a.title, a.description, a.item_price from users as u
join ads a on u.id = a.user_id
where u.first_name = 'Aziz';
