CREATE TABLE hotel_chain(
    name VARCHAR(255) PRIMARY KEY,
    address VARCHAR(255),
    hotel_num INT,
    email_adrs VARCHAR (255),
    phone_num VARCHAR (20)
);

-- 5 hotel chains
INSERT INTO hotel_chain
VALUES
    ('Sheraton Hotels & Resorts.', '729 Goebel Ave', 7 ,'jcloyd@tdi-llc.net', '(613) 166-7456'),
    ('St. Regis Hotels & Resorts.', '8500 Tyspring St', 2 ,'fwgallant@aol.com', '(811) 034-9384'),
    ('Montage Hotels & Resorts.', '73 Main St', 8 ,'curras17@msn.com', '(613) 347-3283'),
    ('The Luxury Collection Hotels.', '8994 Alderson Ave', 13 ,'Ifilev@ivanfilev.com', '(833) 976-7077'),
    ('Westin Hotels & Resorts.', '7055 Paragon Rd', 20 ,'aaron.r.epstein@gmail.com', '(613) 263-0246');


CREATE TABLE hotel(
    hotel_ID SERIAL ,--auto generating ID
    name VARCHAR(50),
    star_category NUMERIC(1,0),
    room_amnt INT,
    hotel_adrs VARCHAR(255),
    email VARCHAR(255),
    phone_num VARCHAR (20),
    manager VARCHAR(25) NOT NULL
);

-- 8 hotles in each chain
INSERT INTO hotel(name, star_category, room_amnt, hotel_adrs, email, phone_num, manager)
VALUES
    ('Quick Stop Hotel ', 4 , 118 , '2683 Griffin Ave', 'matt.doan@tetratech.com', '(833) 595-9280', 'Laneshia'),
    ('Familiar Inn ', 3 , 76 , '4650 Cushing Pkwy', 'rgarman@ewingcole.com', '(613) 105-3001', 'Nikko'),
    ('Farmerâ€™s Daughter Hotel ', 5 , 187 , '6424 Barberry Dr', 'gregwrighteng@gmail.com', '(613) 315-1994', 'Nadiyah'),
    ('Clarion Hotel and Casino ', 5 , 67 , '729 Goebel Ave', 'dmm301@gmail.com', '(613) 321-6689', 'Alaina'),
    ('Hotel Joy Stick ', 4 , 167 , '3549 17th St', 'rick.genday@lrkimball.com', '(613) 614-8237', 'Tommi'),
    ('Fort Harrison Hotel ', 3 , 187 , '2843 Diavila Ct', 'oreilly042@verizon.net', '(844) 763-1135', 'Avrohom'),
    ('Hotel Bond ', 4 , 89 , '1434 W Argyle St', 'kenn910@comcast.net', '(855) 297-5571', 'Rebeccah'),
    ('Hotel Happy Springs ', 4 , 141 , '17728 Red Oak Dr', 'justin.stamper@jacobs.com', '(844) 055-1161', 'Ida');


CREATE TABLE rooms(
    room_num INT,
    hotel_ID INT,
    price NUMERIC(10,3),
    amenities VARCHAR(255),
    room_cpsty VARCHAR(255),
    view_type VARCHAR (255),
    ext_poss BOOLEAN,
    damages VARCHAR (255),
    status VARCHAR(20),
    FOREIGN KEY (hotel_ID) references hotel (hotel_ID)
);

CREATE TABLE customers (
    customer_ID SERIAL8,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    address VARCHAR(255),
    sin INT PRIMARY KEY ,
    rgstr_date VARCHAR(20)
);

INSERT INTO customers(first_name, last_name, address, sin, rgstr_date)
VALUES
('Alfonzo', 'SCHAP', '729 Goebel Ave', 24112078 ,'07-05-2034'),
('Wlliam', 'FAIRHURST', '61 Carlton Ave', 19041902 ,'15-08-2065'),
('Neysha', 'COLEE', '1415 McDowell Rd', 1112004 ,'15-01-2055'),
('Hannan', 'CALOCA', '1415 McDowell Rd', 7112034 ,'25-09-2096'),
('Len', 'DARGATZ', '614 W Moyamensing Ave', 16092065 ,'02-09-2029'),
('Jene', 'FREGOE', '233 S Loma Linda Dr', 18022024 ,'08-07-2066'),
('Rafiq', 'YONEOKA', '5531 Cranbrook Way', 11072078 ,'09-04-1992'),
('Apryll', 'MUSTAFAA', '3309 E Miraloma Ave, Ste 109', 3092019 ,'06-12-1902'),
('Herbie', 'TISDELL', '3309 E Miraloma Ave, Ste 109', 9101986 ,'20-02-2059'),
('Aryan', 'FILHIOL', '4634 Waterwood Pass Dr', 29102072 ,'12-01-1994');

CREATE TABLE employees (
    employee_ID BIGSERIAL ,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    address VARCHAR(255),
    sin INT PRIMARY KEY,
    role VARCHAR(50)
);


INSERT INTO employees(first_name,last_name, address, sin, role)
VALUES
('Britnei', 'PREVOT', '1023 Cherrywood Cir', 4112079 ,'Executive conference manager'),
('Shawnna', 'GUILBEAULT', '505 E Old Shakopee Rd', 10091922 ,'Spa manager'),
('Salote', 'ZELLER', '1108 Race St', 25052040 ,'Director of housekeeping'),
('Lamara', 'ROSECRANS', '252 Sheats Ln', 12101951 ,'Purchasing manager'),
('Geneve', 'MARCELLI', '441 Mohonk Rd', 29102030 ,'Director of housekeeping'),
('Denyce', 'REINING', '1307 W Lafayette St', 15062045 ,'Executive conference manager'),
('Akia', 'REINSVOLD', '9642 Sharon St', 6021935 ,'Wedding sales manager'),
('Autry', 'MAGALLANEZ', '4828 Orchard Ln', 23062069 ,'Spa manager'),
('Shahara', 'BALANCIA', '2427 Meadow Rd', 5051998 ,'Wedding sales manager'),
('Nicloe', 'EMONS', '3575 Audubon Rd', 7121911 ,'Meeting specialist');


CREATE TABLE history (
    customer_ID INT NOT NULL ,
    employee_ID INT,
    check_in BOOLEAN,
    rstart_date VARCHAR(10),
    FOREIGN KEY (customer_ID) references customers (customer_ID),
    FOREIGN KEY (employee_ID) references employees (employee_ID)
);






