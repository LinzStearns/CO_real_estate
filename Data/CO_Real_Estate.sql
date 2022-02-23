-- Creating tables for CO-Real_Estate
CREATE TABLE list_prices (
	sale_year INT NOT NULL,
	sale_prices INT NOT NULL
);

-- Create table for Denver list prices
SELECT * FROM list_prices;

CREATE TABLE Denver_prices (
	SALE_YEAR INT NOT NULL,
	SALE_PRICE INT NOT NULL
);

SELECT * FROM denver_prices;

-- Create table for MEDandLIST_Denver
CREATE TABLE MEDandLIST_Denver (
	Date_1 DATE,
	AverageListPrice INT NOT NULL,
	MedianListPrice INT NOT NULL,
	RegionName VARCHAR
	);

SELECT * FROM MEDandLIST_Denver;

-- Create table for Clean Housing

CREATE TABLE clean_housing_v2 (
	schedum VARCHAR,
	situs_city VARCHAR,
	situs_state VARCHAR,
	appraised_total_value INT NOT NULL,
	d_class_cn VARCHAR,
	sale_year INT NOT NULL,
	sale_price INT NOT NULL
	);

SELECT * FROM clean_housing_v2;