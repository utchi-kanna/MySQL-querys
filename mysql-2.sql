CREATE DATABASE IF NOT EXISTS project;

USE project;

/*
CREATE TABLE tablename (
column1 COLUMN1_DATATYPE(size) CONSTRAINTS,
column2 COLUMN2_DATATYPE(size) CONSTRAINTS,
);
*/

CREATE TABLE IF NOT EXISTS user (
username VARCHAR(50) PRIMARY KEY,
password VARCHAR(50),
dob DATE,
phone VARCHAR(20),
email VARCHAR(100) not null,
first_name VARCHAR(50) not null,
last_name VARCHAR(50) not null
);

DESCRIBE user;

/*
Numbers : INT, BIGINT
Decimal numbers (eg. 3.14) : DOUBLE
Strings: 
		-- if fixed length: CHAR(2)
        -- if variable length: VARCHAR(255)
Date: DATE
Datetime: DATETIME
Boolean: TINYINT
*/

-- 1.Add a new column 'whatsapp_no' with datatype int

describe user;
ALTER TABLE user
add whatsapp_no int;

-- 2. Update the 'whatsapp_no' column datatype from int to varchar(20)

ALTER TABLE user
modify column whatsapp_no varchar(20);


-- 3.Delete the 'whatsapp_no' column

	ALTER TABLE user
	drop whatsapp_no;



-- 4.rename the 'dob' column to 'date_of_birth' 

describe user;
ALTER TABLE user
rename COLUMN dob to  date_of_birth  ;

-- 5.Insert 10 rows into your user table.
INSERT INTO user 
VALUES ('kanna00', '1234567' , '2003-08-31' , '1234567890', 'kanna@gmail' , 'kanna' , 'utchi'),
('sathy00', '1234567' , '1990-09-01' , '78434299292', 'sathy@gmail' , 'sathy' , 'ips'),
('vector12', '1234567' , '2000-01-31' , '9876654221', 'vector@gmail' , 'vector' , 'das'),
('karthick90', '1234567' , '2005-06-30' , '8989890088', 'karthick@gmail' , 'karthick' , 'paneer'),
('rolex85', '1234567' , '1985-03-07' , '1234567890', 'rolex@gmail' , 'rolex' , 'surya'),
('leo67', '1234567' , '1987-06-27' , '1234567890', 'leo67@gmail' , 'leo' , 'thalapathy'),
('dilli01', '1234567' , '1990-02-19' , '1234567890', 'dilli01@gmail' , 'dilli' , 'siva'),
('anbe03', '1234567' , '2003-05-20' , '1234567890', 'anbe03@gmail' , 'anbe' , 'arsu'),
('rajan00', '1234567' , '1999-10-22' , '1234567890', 'rajan00@gmail' , 'rajan' , 'ravi'),
('guna06', '1234567' , '2000-12-29' , '1234567890', 'guna06@gmail' , 'guna' , 'kumar'),
('thambi', '1234567' , '2001-11-19' , '1234567890', 'thambi@gmail' , 'thambi' , 'raj');
describe user;

select*
from user;

-- 6.Update few values in the inserted values.
update user
set first_name = 'dilli'
where username = 'dilli01'

-- 7.Delete 3 rows from the inserted values



