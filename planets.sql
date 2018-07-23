create database solar_system;

create table planets(
    id serial4 primary key,
    name varchar(200),
    diameter integer not null,
    distance_fr_sun integer not null,
    image_url text not null
);

insert into planets (name, diameter, distance_fr_sun, image_url) values ('mercury', 4878, 57900000, 'https://3c1703fe8d.site.internapcdn.net/newman/gfx/news/hires/2015/whatsimporta.jpg');
insert into planets (name, diameter, distance_fr_sun, image_url) values ('venus', 12104, 108160000, 'https://cosmos-images1.imgix.net/file/spina/photo/14590/180403-venus-full.jpg?ixlib=rails-2.1.4&auto=format&ch=Width%2CDPR&fit=max&w=835');
insert into planets (name, diameter, distance_fr_sun, image_url) values ('earth', 12756, 149600000, 'https://3c1703fe8d.site.internapcdn.net/newman/gfx/news/hires/2014/whatpercento.jpg');
insert into planets (name, diameter, distance_fr_sun, image_url) values ('mars', 6794, 227936640, 'https://vignette.wikia.nocookie.net/killzone/images/9/98/Marstotal_123.jpg/revision/latest?cb=20130616224722');
insert into planets (name, diameter, distance_fr_sun, image_url) values ('jupiter', 142984, 778369000, 'https://c.slashgear.com/wp-content/uploads/2018/07/Jupiter.jpg');
insert into planets (name, diameter, distance_fr_sun, image_url) values ('saturn', 120536, 1427034000, 'http://www.nasa.gov/sites/default/files/images/171395main_image_feature_778_ys_full.jpg');
insert into planets (name, diameter, distance_fr_sun, image_url) values ('uranus', 51118, 2870658186, 'https://www.worldatlas.com/r/w728-h425-c728x425/upload/eb/32/7d/shutterstock-508294324.jpg');
insert into planets (name, diameter, distance_fr_sun, image_url) values ('neptune', 49532, 4496976000, 'https://www.thefactsite.com/wp-content/uploads/2012/11/neptune-facts.jpg');


--https://www.walldevil.com/wallpapers/w02/765473-little-planets-solar-system.jpg

-- could potentially add: 
-- time to orbit sun (a year), avg temperature, contents of atmosphere...

-- add moon later
create table moons (
    id serial4 primary key,
    planet_id integer not null,
    name varchar(200),
    diameter integer not null
);