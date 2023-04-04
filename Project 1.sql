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
    hotel_ID INT PRIMARY KEY ,
    name VARCHAR(50),
    star_category NUMERIC(1,0),
    room_amnt INT,
    hotel_adrs VARCHAR(255),
    email VARCHAR(255),
    phone_num VARCHAR (20),
    manager VARCHAR(25) NOT NULL
);

-- 8 hotles in each chain

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
    customer_ID INT PRIMARY KEY,
    name VARCHAR(20),
    address VARCHAR(255),
    sin INT PRIMARY KEY ,
    rgstr_date VARCHAR(20)
);

CREATE TABLE employees (
    employee_ID INT PRIMARY KEY ,
    name VARCHAR(20),
    address VARCHAR(255),
    sin INT PRIMARY KEY,
    role VARCHAR(20)
);

CREATE TABLE history (
    customer_ID INT NOT NULL ,
    employee_ID INT,
    check_in BOOLEAN,
    rstart_date VARCHAR(10),
    FOREIGN KEY (customer_ID) references customers (customer_ID),
    FOREIGN KEY (employee_ID) references employees (employee_ID)
);

