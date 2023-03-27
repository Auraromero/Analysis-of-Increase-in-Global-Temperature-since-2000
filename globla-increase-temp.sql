--Create table to import data from csv file

CREATE TABLE global_tempeture (
ObjectId INTEGER,
Country  VARCHAR(250),
Unit VARCHAR(100),
Change VARCHAR(250),
year1970 NUMERIC,
year1971 NUMERIC,
year1972 NUMERIC,
year1973 NUMERIC,
year1974 NUMERIC,
year1975 NUMERIC,
year1976 NUMERIC, 
year1977 NUMERIC,
year1978 NUMERIC,
year1979 NUMERIC,
year1980 NUMERIC,
year1981 NUMERIC,
year1982 NUMERIC,
year1983 NUMERIC,
year1984 NUMERIC,
year1985 NUMERIC,
year1986 NUMERIC,
year1987 NUMERIC,
year1988 NUMERIC,
year1989 NUMERIC,
year1990 NUMERIC,
year1991 NUMERIC,
year1992 NUMERIC,
year1993 NUMERIC,
year1994 NUMERIC,
year1995 NUMERIC,
year1996 NUMERIC,
year1997 NUMERIC,
year1998 NUMERIC,
year1999 NUMERIC,
year2000 NUMERIC,
year2001 NUMERIC,
year2002 NUMERIC,
year2003 NUMERIC,
year2004 NUMERIC,
year2005 NUMERIC,
year2006 NUMERIC,
year2007 NUMERIC,
year2008 NUMERIC,
year2009 NUMERIC,
year2010 NUMERIC,
year2011 NUMERIC,
year2012 NUMERIC,
year2013 NUMERIC,
year2014 NUMERIC,
year2015 NUMERIC,
year2016 NUMERIC,
year2017 NUMERIC,
year2018 NUMERIC,
year2019 NUMERIC,
year2020 NUMERIC,
year2021 NUMERIC
);

-- Check Data
SELECT *
FROM global_tempeture;
---- Again from scratch 
SELECT *
FROM global_tempeture;

-- Create backup table
CREATE TABLE globaltemperature AS
SELECT *
FROM global_tempeture;

-- Looking for null values
SELECT *
FROM globaltemperature
WHERE NOT (globaltemperature IS NOT NULL);

-- Deleting null values
DELETE FROM globaltemperature
WHERE NOT (globaltemperature IS NOT NULL);

SELECT *
FROM globaltemperature;

-- Deleting columns (we are gonna use only information genrated sin 2000)

ALTER TABLE globaltemperature
DROP COLUMN year1979, DROP COLUMN year1980, DROP COLUMN year1981,  
DROP COLUMN year1982,DROP COLUMN year1983, DROP COLUMN year1984, 
DROP COLUMN year1985, DROP COLUMN year1986, DROP COLUMN year1987, 
DROP COLUMN year1988, DROP COLUMN year1989, DROP COLUMN year1990,
DROP COLUMN year1991, DROP COLUMN year1992,   
DROP COLUMN year1993,DROP COLUMN year1994, 
DROP COLUMN year1995, DROP COLUMN year1996, DROP COLUMN year1997, 
DROP COLUMN year1998, DROP COLUMN year1999;

ALTER TABLE globaltemperature
DROP COLUMN year1970, DROP COLUMN year1971, DROP COLUMN year1972,
DROP COLUMN year1973, DROP COLUMN year1974, DROP COLUMN year1975,
DROP COLUMN year1976, DROP COLUMN year1977, DROP COLUMN year1978;

SELECT *
FROM globaltemperature;

-- Column Change is not gonna be use in our final report so 
-- it eill be drop

ALTER TABLE globaltemperature
DROP COLUMN Change;

-- Export clean data for visualization
SELECT *
FROM globaltemperature;




