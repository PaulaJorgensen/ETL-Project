drop table population_by_zip;
CREATE TABLE population_by_zip (
population integer,
min_age integer,
max_age integer,
gender varchar (10),
zip_code varchar (5),
geo_id varchar (50)
);

-- Import population_by_zip file
-- Aggregate population data by zip code. Drop gender and age info
create table pop_zip_agg as (
select zip_code
	, sum(population) population
from public.population_by_zip
group by zip_code
order by zip_code);

-- Clean fast_food_datafiniti to trim zip codes longer than 5 characters
update public.fast_food_datafiniti
set postal_code = left(postal_code, 5) 
where length(postal_code) > 5;

--Join to fast food datafiniti dataset and create new table
-- (28 don't match becasue the population/zip data is census based and over 9 years old)
create table fast_food_population_base as (
select ff.name
	, ff.address
	, ff.city
	, ff.province "state"
	, ff.postal_code
	, ff.websites "website"
	, p.population
from public.fast_food_datafiniti ff
		join pop_zip_agg p on ff.postal_code = p.zip_code
order by 1,3);

--new table output
select *
from fast_food_population_base;

--Join to fast food yelp dataset and create new table
create table fast_food_population_base_yelp as (
select y.name
	, y.address1
	, y.city
	, y.state
	, y.zip_code
	, y.url "website"
	, p.population
from public.fast_food_yelp y
		join pop_zip_agg p on y.zip_code = p.zip_code
order by 1,3);

--new table output
select *
from fast_food_population_base_yelp;
