--ETL Project Tables

--DROP TABLE fast_food_datafiniti


CREATE TABLE fast_food_datafiniti (
name VARCHAR (75) NOT NULL,
address VARCHAR (100) NOT NULL,
city VARCHAR (50) NOT NULL,
country VARCHAR (10) NOT NULL,
latitude FLOAT NOT NULL,
longitude FLOAT NOT NULL,
postal_code VARCHAR (10) NOT NULL,
province VARCHAR (20) NOT NULL,
categories TEXT NOT NULL,
primary_categories VARCHAR (100) NOT NULL,
keys VARCHAR (250) NOT NULL,
sourceURL TEXT,
websites TEXT
);

SELECT * FROM fast_food_datafiniti

--DROP TABLE fast_food_yelp

CREATE TABLE fast_food_yelp (
alias VARCHAR (100) NOT NULL,
name VARCHAR (75) NOT NULL,
url TEXT,
latitude FLOAT NOT NULL,
longitude FLOAT NOT NULL,
address1 VARCHAR (250),
address2 VARCHAR (250),
city VARCHAR (50) NOT NULL,
zip_code VARCHAR (50) NOT NULL,
state VARCHAR (20) NOT NULL,
phone TEXT
);

SELECT * FROM fast_food_yelp;

--DROP TABLE population_by_zip

CREATE TABLE population_by_zip (
population INTEGER,
min_age INTEGER,
max_age INTEGER,
gender VARCHAR (10),
zip_code VARCHAR (10),
geo_id VARCHAR (50)
);

SELECT * FROM population_by_zip