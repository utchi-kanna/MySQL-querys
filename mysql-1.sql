CREATE DATABASE IF NOT EXISTS cfu;

USE cfu;

CREATE TABLE IF NOT EXISTS countries (
country_id VARCHAR(2),
country_name VARCHAR(40),
region_id decimal(10,0)
);

ALTER TABLE countries 
add country_code varchar(3);

ALTER TABLE countries 
DROP country_code ;

INSERT INTO countries (country_id,country_name)
values ('12','india');




select*
from countries; 

describe countries;