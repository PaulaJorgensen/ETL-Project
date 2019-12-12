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
