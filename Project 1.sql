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
    ('Sheraton Hotels & Resorts.', '729 Goebel Ave', 8 ,'jcloyd@tdi-llc.net', '(613) 166-7456'),
    ('St. Regis Hotels & Resorts.', '8500 Tyspring St', 8 ,'fwgallant@aol.com', '(811) 034-9384'),
    ('Montage Hotels & Resorts.', '73 Main St', 8 ,'curras17@msn.com', '(613) 347-3283'),
    ('The Luxury Collection Hotels.', '8994 Alderson Ave', 8 ,'Ifilev@ivanfilev.com', '(833) 976-7077'),
    ('Westin Hotels & Resorts.', '7055 Paragon Rd', 8 ,'aaron.r.epstein@gmail.com', '(613) 263-0246');


CREATE TABLE hotel(
    hotel_ID SERIAL PRIMARY KEY ,--auto generating ID
    hotel_chain_name VARCHAR(255),
    name VARCHAR(50),
    star_category NUMERIC(1,0),
    room_amnt INT,
    hotel_adrs VARCHAR(255),
    email VARCHAR(255),
    phone_num VARCHAR (20),
    manager VARCHAR(25) NOT NULL,
    FOREIGN KEY (hotel_chain_name) REFERENCES hotel_chain(name)
);

UPDATE hotel
SET room_amnt=5
WHERE room_amnt=8;

-- 8 hotels in each chain
INSERT INTO hotel(hotel_chain_name,name, star_category, room_amnt, hotel_adrs, email, phone_num, manager)
VALUES
    ('Westin Hotels & Resorts.', 'Hotel The Pie', 4 , 6 , '160 Franklin St', 'adamn185@gmail.com', '(899) 129-0073', 'Antonios'),
    ('Westin Hotels & Resorts.', 'Whale Cave Inn', 4 , 6 , '6 Sonora Ct', 'amnieves09@gmail.com', '(613) 863-4259', 'Shaila'),
    ('Westin Hotels & Resorts.', 'Belmond', 4 , 5 , '3309 E Miraloma Ave, Ste 109', 'Sharon.Sawicki@dep.state.fl.us', '(613) 127-6534', 'Keonda'),
    ('Westin Hotels & Resorts.', 'Ritz-Carlton Hotel', 4 , 5 , '160 Franklin St', 'tlallathin@drmp.com', '(613) 625-2966', 'Francene'),
    ('Westin Hotels & Resorts.', 'The Stanley Hotel', 4 , 5 , '323 S Kingshighway St', 'sehlah@aol.com', '(833) 882-8152', 'Qasim'),
    ('Westin Hotels & Resorts.', 'Belmond', 3 , 7 , '168 SE 16th St', 'laureanoma70@gmail.com', '(833) 154-0856', 'Montrel'),
    ('Westin Hotels & Resorts.', 'Soft Petal Hotel', 5 , 7 , '506 S Oak Ave', 'j_sshow@bellsouth.net', '(844) 356-6901', 'Gisella'),
    ('Westin Hotels & Resorts.', 'Hotel Joy Stick', 3 , 7 , '2808 S Normal Ave', 'brentschrader@hotmail.com', '(833) 099-0017', 'Dilan'),

    ('The Luxury Collection Hotels.', 'Belmond', 5 , 7 , '233 S Loma Linda Dr', 'driveros1012@gmail.com', '(613) 367-5023', 'Malini'),
    ('The Luxury Collection Hotels.', 'W Hotel', 3 , 7 , '6 Sonora Ct', 'mthoele@brooksair.com', '(613) 034-9384', 'Bianka'),
    ('The Luxury Collection Hotels.', 'Antlers Hilton Hotel', 4 , 5 , '1307 W Lafayette St', 'jamiepolidora@gmail.com', '(613) 246-3921', 'Lauri'),
    ('The Luxury Collection Hotels.', 'Hotel Jolly', 5 , 5 , '4601 Sloan St', 'light.mr@gmail.com', '(613) 760-8234', 'Adreana'),
    ('The Luxury Collection Hotels.', 'Continental Hotel and Casino', 5 , 6 , '5391 Peru St, Apt 4', 'brbradley64@gmail.com', '(613) 379-5155', 'Joscelyn'),
    ('The Luxury Collection Hotels.', 'Soft Petal Hotel', 3 , 6 , '1434 W Argyle St', 'allen.vinson@hdrinc.com', '(613) 763-1135', 'Bronson'),
    ('The Luxury Collection Hotels.', 'Moss View Hotel', 3 , 5 , '124 Maple Ave', 'zednanrefe@gmail.com', '(613) 347-3283', 'Danuel'),
    ('The Luxury Collection Hotels.', 'Gotham Hotel', 3 , 5 , '1307 W Lafayette St', 'kgorak@rwa.com', '(613) 091-9879', 'Ivorie'),


    ('Sheraton Hotels & Resorts.', 'Farmerâ€™s Daughter Hotel', 5 , 7 , '1549 Sandpiper St, Apt 55', 'larry.anderson@hdrinc.com', '(833) 154-0856', 'Breann'),
    ('Sheraton Hotels & Resorts.', 'Country Charm Hotel', 5 , 6 , '25417 E Lincoln Dr', 'jcalhoun@vibengineering.com', '(613) 514-0403', 'Dannon'),
    ('Sheraton Hotels & Resorts.', 'W Hotel', 3 , 6 , '168 SE 16th St', 'gouldjh@bellsouth.net', '(822) 741-9257', 'Valissa'),
    ('Sheraton Hotels & Resorts.', 'Regency Hotel', 3 , 7 , '14710 Fourth St NE', 'rowan@fastmail.net', '(613) 127-6534', 'Nyshia'),
    ('Sheraton Hotels & Resorts.', 'Hotel Vitality', 4 , 6 , '8994 Alderson Ave', 'john_w_shaffer@fpl.com', '(613) 710-7774', 'Haden'),
    ('Sheraton Hotels & Resorts.', 'Antlers Hilton Hotel', 4 , 5 , '233 S Loma Linda Dr', 'tmmlclark@tds.net', '(811) 166-7456', 'Tashina'),
    ('Sheraton Hotels & Resorts.', 'Hotel Bond', 5 , 5 , '40020 Milkwood Ln', 'chris.brockmeier@stantec.com', '(855) 297-5571', 'Derica'),
    ('Sheraton Hotels & Resorts.', 'Whale Cave Inn', 4 , 6 , '131 S Alpine St', 'rsbrown@batelnet.bs', '(613) 710-7774', 'Tanera'),

    ('St. Regis Hotels & Resorts.', 'Belmond', 3 , 6 , '1208 E Main St', 'schererjh@lycos.com', '(613) 625-2966', 'Shenae'),
    ('St. Regis Hotels & Resorts.', 'Farmerâ€™s Daughter Hotel', 5 , 5 , '5391 Peru St, Apt 4', 'wwwtotten@gmail.com', '(899) 347-3283', 'Vanessamarie'),
    ('St. Regis Hotels & Resorts.', 'Bedrock N Roll', 5 , 5 , '294 Clarks Ferry Rd', 'pmodia@bellsouth.net', '(613) 166-7456', 'Tangie'),
    ('St. Regis Hotels & Resorts.', 'Sandy Bloom', 5 , 5 , '1354 Hancock St', 'rmcdaniel1975@hotmail.com', '(811) 500-6744', 'Ruperto'),
    ('St. Regis Hotels & Resorts.', 'Palace Hotel', 5 , 7 , '73 Main St', 'JKLUCYSHYN@GMAIL.COM', '(613) 976-7077', 'Angelito'),
    ('St. Regis Hotels & Resorts.', 'Hotel Jolly', 3 , 6 , '1405 Wilson Dr', 'dbogue@aluma.com', '(899) 246-3921', 'Golden'),
    ('St. Regis Hotels & Resorts.', 'Cosmopolitan of Las Vegas', 4 , 5 , '57 Dunlap St', 'jiashunhuang@yahoo.com', '(811) 796-7070', 'Reece'),
    ('St. Regis Hotels & Resorts.', 'Cable Car Hotel', 5 , 6 , '8994 Alderson Ave', 'jkjk1970@bellsouth.net', '(855) 951-3365', 'Michae'),


    ('Montage Hotels & Resorts.', 'Always Welcome', 3 , 5 , '5531 Cranbrook Way', 'mikealgaines@gmail.com', '(613) 710-7774', 'Zakaria'),
    ('Montage Hotels & Resorts.', 'Newhouse Hotel', 5 , 7 , '12324 S Benck Dr, Apt 104', 'mcdonnellwj@embarqmail.com', '(613) 055-1161', 'Chan'),
    ('Montage Hotels & Resorts.', 'El Rancho Casino', 5 , 5 , '3549 17th St', 'deedra.allen@mosaicco.com', '(613) 932-4904', 'Leeander'),
    ('Montage Hotels & Resorts.', 'Always Welcome', 3 , 7 , '9664 Hilltop Rd', 'JMEYER@MANDKENGINEERING.COM', '(822) 315-1994', 'Josette'),
    ('Montage Hotels & Resorts.', 'Fairview Hotel', 4 , 6 , '949 Clock Tower Dr', 'usfrasmith@gmail.com', '(899) 129-0073', 'Emmanuell'),
    ('Montage Hotels & Resorts.', 'The Welcome Mat', 4 , 6 , '172 Shaw St   12587 Aster Ct', 'dixonwe@yahoo.com', '(833) 099-0017', 'Megen'),
    ('Montage Hotels & Resorts.', 'Hotel Joy Stick', 3 , 6 , '3550 Cedar Creek Dr', 'rebeccarashkin@gmail.com', '(844) 763-1135', 'Asa'),
    ('Montage Hotels & Resorts.', 'Farmerâ€™s Daughter Hotel', 3 , 6 , '2683 Griffin Ave', 'joelmiller22@gmail.com', '(613) 091-9879', 'Megon');



CREATE TABLE rooms(
    room_num INT,
    hotel_ID INT,
    price NUMERIC(10,3),
    amenities VARCHAR(255),
    room_cpsty INT,
    view_type VARCHAR (255),
    ext_poss VARCHAR(255),
    damages VARCHAR (255),
    status VARCHAR(20),
    FOREIGN KEY (hotel_ID) references hotel (hotel_ID)
);

INSERT INTO rooms(room_num,hotel_ID, price, amenities, room_cpsty, view_type, ext_poss, damages, status)
VALUES
    (1, 1 , 1210 ,'TV, air condition, wifi, Lounge, Non smoking rooms', 1 ,'sea view', 'one extra bed, Laundry', 'Missing linens', 'Occupied'),
    (2, 1 , 4335 ,'TV, air condition, wifi, 24-hour front desk, Parking free', 2 ,'sea view', 'Spa service', 'Cracked mirror', 'Available'),
    (3, 1 , 1454 ,'TV, air condition, wifi, Lounge, Non smoking rooms', 3 ,'sea view', 'wifi', 'Stained or damaged carpets', 'Occupied'),
    (4, 1 , 1781 ,'TV, air condition, wifi', 4 ,'sea view', 'none', 'Vandalism on walls or furniture.', 'Occupied'),
    (5, 1 , 2613 ,'TV, air condition, wifi', 5 ,'mountain view', 'Spa service', 'Stained or damaged carpets', 'Available'),

    (1, 2 , 3859 ,'TV, air condition, fridge, wifi', 4 ,'mountain view', 'wifi', 'Broken furniture tables, lamps', 'Occupied'),
    (2, 2 , 4842 ,'TV, air condition, wifi', 3 ,'mountain view', 'one extra bed, Laundry', 'Broken bathroom fixtures', 'Occupied'),
    (3, 2 , 2325 ,'TV, air condition, wifi, Swimming pool, Parking free', 2 ,'sea view', 'Room service, air condition', 'none', 'Available'),
    (4, 2 , 4275 ,'TV, air condition, wifi, 24-hour front desk, Parking free', 5 ,'sea view', 'one extra bed', 'Damaged room amenities', 'Occupied'),
    (5, 2 , 4049 ,'TV, air condition, wifi, Swimming pool, Pet friendly options', 1 ,'sea view', 'Fitness center, parking payed', 'Vandalism on walls or furniture.', 'Available'),

    (1, 3 , 1600 ,'TV, air condition, wifi, Lounge, Non smoking rooms', 5 ,'sea view', 'none', 'Stained or damaged carpets', 'Available'),
    (2, 3 , 2647 ,'TV, air condition, wifi, Swimming pool, Parking free', 3 ,'sea view', 'Spa service', 'Malfunctioning TV', 'Occupied'),
    (3, 3 , 3378 ,'TV, air condition, wifi', 2 ,'mountain view', 'Spa service, Fitness center, parking payed', 'none', 'Occupied'),
    (4, 3 , 1078 ,'TV, air condition, wifi, 24-hour front desk, Parking free', 1 ,'sea view', 'one extra bed, Laundry', 'Missing linens', 'Available'),
    (5, 3 , 1307 ,'TV, air condition, wifi, 24-hour front desk, Parking free', 4 ,'sea view', 'wifi', 'none', 'Available'),

    (1, 4 , 4233 ,'TV, air condition, fridge, wifi, Fitness center', 5 ,'mountain view', 'Spa service', 'none', 'Occupied'),
    (2, 4 , 4037 ,'TV, air condition, wifi, Swimming pool, Pet friendly options', 3 ,'mountain view', 'Spa service', 'Broken furniture lamps', 'Available'),
    (3, 4 , 2341 ,'TV, air condition, wifi, Lounge, Non smoking rooms', 1 ,'sea view', 'one extra bed, free wifi', 'none', 'Available'),
    (4, 4 , 2072 ,'TV, air condition, wifi, Lounge, Non smoking rooms', 4 ,'mountain view', 'Room service, air condition', 'none', 'Occupied'),
    (5, 4 , 3185 ,'TV, air condition, wifi, Swimming pool, Parking free', 2 ,'mountain view', 'Spa service', 'Water damage leak', 'Available'),

    (1, 5 , 2672 ,'TV, air condition, wifi', 3 ,'mountain view', 'Pet friendly policy, Handicap accessibility', 'Damaged walls (e.g. holes, scratches)', 'Available'),
    (2, 5 , 1584 ,'TV, air condition, wifi, Swimming pool, Parking free', 1 ,'mountain view', 'none', 'Water damage leak', 'Occupied'),
    (3, 5 , 3409 ,'TV, air condition, wifi, 24-hour front desk, Parking free', 4 ,'mountain view', 'Fitness center, parking payed', 'Malfunctioning TV', 'Available'),
    (4, 5 , 4109 ,'TV, air condition, wifi, Swimming pool, Parking free', 2 ,'sea view', 'one extra bed, free wifi', 'Damaged room amenities', 'Available'),
    (5, 5 , 2138 ,'TV, air condition, wifi', 5 ,'sea view', 'one extra bed, free wifi', 'Malfunctioning TV', 'Occupied'),

    (1, 6 , 4772 ,'TV, air condition, wifi, 24-hour front desk, Parking free', 4 ,'sea view', 'one extra bed, Laundry', 'Damaged room amenities', 'Occupied'),
    (2, 6 , 1055 ,'TV, air condition, fridge, wifi, Fitness center', 1 ,'mountain view', 'Pet friendly policy', 'Cracked mirror', 'Occupied'),
    (3, 6 , 4673 ,'TV, air condition, wifi, 24-hour front desk, Parking free', 2 ,'sea view', 'Spa service', 'Damaged walls (e.g. holes, scratches)', 'Available'),
    (4, 6 , 4283 ,'TV, air condition, wifi, Swimming pool, Parking free', 3 ,'sea view', 'Pet friendly policy', 'Broken bathroom fixtures', 'Occupied'),
    (5, 6 , 3208 ,'TV, air condition, wifi, Swimming pool, Pet friendly options', 5 ,'mountain view', 'Fitness center, parking payed', 'none', 'Available'),

    (1, 7 , 2412 ,'TV, air condition, wifi, Lounge, Non smoking rooms', 3 ,'sea view', 'Pet friendly policy', 'Damaged room amenities', 'Available'),
    (2, 7 , 3018 ,'TV, air condition, wifi', 1 ,'mountain view', 'Pet friendly policy', 'Stained or damaged carpets', 'Available'),
    (3, 7 , 4591 ,'TV, air condition, wifi, Swimming pool, Pet friendly options', 4 ,'mountain view', 'Pet friendly policy, Handicap accessibility', 'none', 'Available'),
    (4, 7 , 2529 ,'TV, air condition, wifi, Swimming pool, Parking free', 5 ,'sea view', 'TV, Laundry service', 'Stained or damaged rugs', 'Available'),
    (5, 7 , 4245 ,'TV, air condition, fridge, wifi, Fitness center', 2 ,'sea view', 'wifi', 'Broken bathroom fixtures', 'Occupied'),

    (1, 8 , 1499 ,'TV, air condition, wifi, 24-hour front desk, Parking free', 4 ,'mountain view', 'none', 'Malfunctioning TV', 'Available'),
    (2, 8 , 1769 ,'TV, air condition, wifi, Swimming pool, Parking free', 1 ,'mountain view', 'Spa service, Fitness center, parking payed', 'Vandalism on walls or furniture.', 'Occupied'),
    (3, 8 , 3265 ,'TV, air condition, wifi, 24-hour front desk, Parking free', 2 ,'sea view', 'Room service, air condition', 'Water damage leak', 'Available'),
    (4, 8 , 1492 ,'TV, air condition, wifi, Swimming pool, Parking free', 3 ,'sea view', 'one extra bed', 'none', 'Occupied'),
    (5, 8 , 2342 ,'TV, air condition, fridge, wifi', 5 ,'mountain view', 'one extra bed', 'Malfunctioning TV', 'Occupied'),


    (1, 9 , 1368 ,'TV, air condition, wifi, Swimming pool, Parking free', 3 ,'sea view', 'one extra bed, Laundry', 'none', 'Available'),
    (2, 9 , 2003 ,'TV, air condition, wifi, Swimming pool, Parking free', 1 ,'mountain view', 'Room service, air condition', 'none', 'Available'),
    (3, 9 , 2498 ,'TV, air condition, wifi, 24-hour front desk, Parking free', 1 ,'mountain view', 'one extra bed, free wifi', 'Damaged room amenities', 'Occupied'),
    (4, 9 , 4130 ,'TV, air condition, fridge, wifi', 1 ,'mountain view', 'TV, WiFi, Handicap accessibility', 'none', 'Available'),
    (5, 9 , 4450 ,'TV, air condition, wifi', 4 ,'sea view', 'one extra bed', 'none', 'Available'),


    (1, 10 , 4589 ,'TV, air condition, wifi', 1 ,'sea view', 'TV, WiFi, Handicap accessibility', 'Missing linens', 'Occupied'),
    (2, 10 , 2213 ,'TV, air condition, wifi, 24-hour front desk, Parking free', 2 ,'mountain view', 'one extra bed, free wifi', 'Broken furniture lamps', 'Available'),
    (3, 10 , 2475 ,'TV, air condition, wifi, Lounge, Non smoking rooms', 4 ,'sea view', 'Handicap accessibility', 'Damaged room amenities', 'Occupied'),
    (4, 10 , 2084 ,'TV, air condition, wifi, Lounge, Non smoking rooms', 2 ,'mountain view', 'TV, WiFi, Handicap accessibility', 'Broken furniture chairs, tables, lamps', 'Available'),
    (5, 10 , 4343 ,'TV, air condition, wifi', 5 ,'sea view', 'Pet friendly policy', 'Cracked mirror', 'Available'),


    (1, 11 , 2029 ,'TV, air condition, wifi, 24-hour front desk, Parking free', 5 ,'sea view', 'Pet friendly policy, Handicap accessibility', 'Damaged walls (e.g. holes, scratches)', 'Available'),
    (2, 11 , 3060 ,'TV, air condition, fridge, wifi, Fitness center', 3 ,'mountain view', 'Room service, air condition', 'Cracked mirror', 'Available'),
    (3, 11 , 2634 ,'TV, air condition, wifi, Lounge, Non smoking rooms', 3 ,'sea view', 'Handicap accessibility', 'Malfunctioning TV', 'Occupied'),
    (4, 11 , 2463 ,'TV, air condition, fridge, wifi', 2 ,'sea view', 'none', 'Vandalism on walls or furniture.', 'Occupied'),
    (5, 11 , 3838 ,'TV, air condition, wifi, Lounge, Non smoking rooms', 5 ,'sea view', 'one extra bed', 'Damaged walls (e.g. holes, scratches)', 'Occupied'),


    (1, 12 , 4353 ,'TV, air condition, wifi, 24-hour front desk, Parking free', 3 ,'sea view', 'Fitness center, parking payed', 'none', 'Available'),
    (2, 12 , 1791 ,'TV, air condition, wifi, Lounge, Non smoking rooms', 3 ,'sea view', 'Room service, air condition', 'Broken bathroom fixtures', 'Occupied'),
    (3, 12 , 4435 ,'TV, air condition, wifi', 2 ,'mountain view', 'none', 'none', 'Available'),
    (4, 12 , 1344 ,'TV, air condition, fridge, wifi, Fitness center', 4 ,'mountain view', 'wifi', 'Broken furniture chairs, tables, lamps', 'Occupied'),
    (5, 12 , 3980 ,'TV, air condition, wifi, Swimming pool, Parking free', 3 ,'mountain view', 'Pet friendly policy, Handicap accessibility', 'Water damage leak', 'Available'),


    (1, 13 , 2113 ,'TV, air condition, wifi, Lounge, Non smoking rooms', 3 ,'mountain view', 'Handicap accessibility', 'Broken furniture lamps', 'Occupied'),
    (2, 13 , 3609 ,'TV, air condition, wifi, Lounge, Non smoking rooms', 5 ,'mountain view', 'Room service, air condition', 'none', 'Occupied'),
    (3, 13 , 3306 ,'TV, air condition, wifi, 24-hour front desk, Parking free', 5 ,'sea view', 'TV, WiFi, Handicap accessibility', 'Missing linens', 'Occupied'),
    (4, 13 , 1353 ,'TV, air condition, wifi', 2 ,'mountain view', 'TV, WiFi, Handicap accessibility', 'Damaged room amenities', 'Occupied'),
    (5, 13 , 3634 ,'TV, air condition, fridge, wifi, Fitness center', 1 ,'mountain view', 'Pet friendly policy', 'Broken furniture chairs, tables, lamps', 'Occupied'),

    (1, 14 , 3727 ,'TV, air condition, wifi', 2 ,'sea view', 'TV, WiFi, Handicap accessibility', 'Malfunctioning TV', 'Occupied'),
    (2, 14 , 1707 ,'TV, air condition, wifi', 3 ,'sea view', 'TV, WiFi, Handicap accessibility', 'Vandalism on walls or furniture.', 'Available'),
    (3, 14 , 2574 ,'TV, air condition, wifi, 24-hour front desk, Parking free', 4 ,'sea view', 'Handicap accessibility', 'Broken furniture tables, lamps', 'Occupied'),
    (4, 14 , 2600 ,'TV, air condition, wifi', 1 ,'mountain view', 'one extra bed', 'Broken furniture tables, lamps', 'Available'),
    (5, 14 , 4267 ,'TV, air condition, fridge, wifi', 2 ,'mountain view', 'one extra bed, Laundry', 'Water damage leak', 'Occupied'),


    (1, 15 , 1923 ,'TV, air condition, wifi, 24-hour front desk, Parking free', 4 ,'sea view', 'Handicap accessibility', 'Malfunctioning TV', 'Available'),
    (2, 15 , 4112 ,'TV, air condition, fridge, wifi, Fitness center', 4 ,'sea view', 'Pet friendly policy', 'Broken furniture chairs, tables, lamps', 'Available'),
    (3, 15 , 2159 ,'TV, air condition, wifi, 24-hour front desk, Parking free', 5 ,'mountain view', 'Pet friendly policy, Handicap accessibility', 'Damaged room amenities', 'Occupied'),
    (4, 15 , 1836 ,'TV, air condition, wifi, Lounge, Non smoking rooms', 5 ,'mountain view', 'Fitness center, parking payed', 'none', 'Available'),
    (5, 15 , 1976 ,'TV, air condition, wifi, Lounge, Non smoking rooms', 4 ,'mountain view', 'Handicap accessibility', 'Malfunctioning TV', 'Occupied'),

    (1, 16 , 1973 ,'TV, air condition, fridge, wifi', 1 ,'sea view', 'Pet friendly policy, Handicap accessibility', 'Damaged room amenities', 'Occupied'),
    (2, 16 , 3574 ,'TV, air condition, wifi, 24-hour front desk, Parking free', 4 ,'sea view', 'TV, Laundry service', 'Broken bathroom fixtures', 'Available'),
    (3, 16 , 3466 ,'TV, air condition, wifi', 1 ,'mountain view', 'TV, WiFi, Handicap accessibility', 'Missing linens', 'Occupied'),
    (4, 16 , 4612 ,'TV, air condition, fridge, wifi, Fitness center', 3 ,'mountain view', 'Spa service, Fitness center, parking payed', 'Water damage leak', 'Occupied'),
    (5, 16 , 4831 ,'TV, air condition, fridge, wifi, Fitness center', 1 ,'mountain view', 'Handicap accessibility', 'Missing linens', 'Occupied'),


    (1, 17 , 3509 ,'TV, air condition, fridge, wifi', 3 ,'mountain view', 'one extra bed, free wifi', 'Broken bathroom fixtures', 'Available'),
    (2, 17 , 4601 ,'TV, air condition, wifi', 1 ,'mountain view', 'Pet friendly policy', 'Stained or damaged carpets', 'Available'),
    (3, 17 , 3059 ,'TV, air condition, wifi, Swimming pool, Pet friendly options', 2 ,'sea view', 'Spa service, Fitness center, parking payed', 'Broken furniture chairs, tables, lamps', 'Occupied'),
    (4, 17 , 4075 ,'TV, air condition, fridge, wifi', 3 ,'mountain view', 'Handicap accessibility', 'Water damage leak', 'Occupied'),
    (5, 17 , 4509 ,'TV, air condition, fridge, wifi', 2 ,'sea view', 'TV, Laundry service', 'Broken furniture chairs, tables, lamps', 'Available'),


    (1, 18 , 4611 ,'TV, air condition, fridge, wifi', 5 ,'sea view', 'Pet friendly policy', 'none', 'Occupied'),
    (2, 18 , 3052 ,'TV, air condition, wifi, Swimming pool, Parking free', 1 ,'sea view', 'wifi', 'Broken furniture lamps', 'Occupied'),
    (3, 18 , 4248 ,'TV, air condition, fridge, wifi, Fitness center', 2 ,'mountain view', 'Spa service', 'Broken furniture tables, lamps', 'Available'),
    (4, 18 , 2710 ,'TV, air condition, wifi', 3 ,'mountain view', 'Handicap accessibility', 'Broken furniture lamps', 'Available'),
    (5, 18 , 2260 ,'TV, air condition, fridge, wifi', 4 ,'sea view', 'Fitness center, parking payed', 'none', 'Occupied'),

    (1, 19 , 1183 ,'TV, air condition, wifi, Swimming pool, Parking free', 3 ,'mountain view', 'Fitness center, parking payed', 'none', 'Occupied'),
    (2, 19 , 4791 ,'TV, air condition, wifi, Swimming pool, Pet friendly options', 2 ,'sea view', 'Pet friendly policy, Handicap accessibility', 'Stained or damaged carpets', 'Available'),
    (3, 19 , 3982 ,'TV, air condition, wifi, Swimming pool, Pet friendly options', 3 ,'mountain view', 'wifi', 'Stained or damaged rugs', 'Available'),
    (4, 19 , 2993 ,'TV, air condition, fridge, wifi', 4 ,'sea view', 'Pet friendly policy', 'Damaged walls (e.g. holes, scratches)', 'Occupied'),
    (5, 19 , 1762 ,'TV, air condition, wifi, 24-hour front desk, Parking free', 1 ,'mountain view', 'none', 'Cracked mirror', 'Available'),

    (1, 20 , 3180 ,'TV, air condition, fridge, wifi', 1 ,'mountain view', 'Spa service', 'none', 'Occupied'),
    (2, 20 , 1343 ,'TV, air condition, wifi, 24-hour front desk, Parking free', 3 ,'mountain view', 'Pet friendly policy', 'Missing linens', 'Occupied'),
    (3, 20 , 2230 ,'TV, air condition, wifi, 24-hour front desk, Parking free', 2 ,'mountain view', 'Room service, air condition', 'Broken furniture lamps', 'Available'),
    (4, 20 , 2029 ,'TV, air condition, wifi, 24-hour front desk, Parking free', 4 ,'sea view', 'wifi', 'none', 'Available'),
    (5, 20 , 2342 ,'TV, air condition, wifi, Lounge, Non smoking rooms', 5 ,'sea view', 'wifi', 'none', 'Available'),

    (1, 21 , 3882 ,'TV, air condition, fridge, wifi', 2 ,'sea view', 'TV, WiFi, Handicap accessibility', 'Broken furniture lamps', 'Available'),
    (2, 21 , 1694 ,'TV, air condition, fridge, wifi', 1 ,'mountain view', 'Fitness center, parking payed', 'Damaged room amenities', 'Occupied'),
    (3, 21 , 3817 ,'TV, air condition, wifi', 4 ,'sea view', 'Pet friendly policy', 'none', 'Available'),
    (4, 21 , 4978 ,'TV, air condition, fridge, wifi', 5 ,'sea view', 'Spa service', 'Water damage leak', 'Occupied'),
    (5, 21 , 1953 ,'TV, air condition, wifi, Lounge, Non smoking rooms', 3 ,'sea view', 'one extra bed, free wifi', 'Stained or damaged carpets', 'Available'),

    (1, 22 , 3087 ,'TV, air condition, wifi, Lounge, Non smoking rooms', 3 ,'sea view', 'Pet friendly policy, Handicap accessibility', 'Broken furniture chairs, tables, lamps', 'Available'),
    (2, 22 , 3412 ,'TV, air condition, wifi', 4 ,'sea view', 'one extra bed', 'Stained or damaged carpets', 'Occupied'),
    (3, 22 , 2517 ,'TV, air condition, wifi, Lounge, Non smoking rooms', 2 ,'sea view', 'one extra bed', 'Stained or damaged rugs', 'Available'),
    (4, 22 , 2491 ,'TV, air condition, fridge, wifi', 5 ,'mountain view', 'one extra bed', 'Water damage leak', 'Available'),
    (5, 22 , 1722 ,'TV, air condition, wifi, Swimming pool, Parking free', 1 ,'mountain view', 'Spa service', 'Broken furniture chairs, tables, lamps', 'Available'),

    (1, 23 , 3977 ,'TV, air condition, wifi, Swimming pool, Parking free', 1 ,'mountain view', 'TV, Laundry service', 'none', 'Available'),
    (2, 23 , 2946 ,'TV, air condition, wifi, Swimming pool, Pet friendly options', 4 ,'sea view', 'Spa service, Fitness center, parking payed', 'Stained or damaged rugs', 'Occupied'),
    (3, 23 , 2392 ,'TV, air condition, wifi, 24-hour front desk, Parking free', 3 ,'sea view', 'Pet friendly policy, Handicap accessibility', 'Broken furniture lamps', 'Occupied'),
    (4, 23 , 4980 ,'TV, air condition, wifi', 5 ,'sea view', 'Handicap accessibility', 'none', 'Available'),
    (5, 23 , 1493 ,'TV, air condition, wifi, Lounge, Non smoking rooms', 2 ,'mountain view', 'one extra bed, Laundry', 'Missing linens', 'Available'),

    (1, 24 , 2058 ,'TV, air condition, fridge, wifi', 5 ,'sea view', 'Pet friendly policy', 'none', 'Available'),
    (2, 24 , 3323 ,'TV, air condition, fridge, wifi, Fitness center', 1 ,'mountain view', 'Pet friendly policy', 'Cracked mirror', 'Occupied'),
    (3, 24 , 4219 ,'TV, air condition, wifi, Swimming pool, Pet friendly options', 3 ,'mountain view', 'none', 'Broken furniture chairs, tables, lamps', 'Occupied'),
    (4, 24 , 2724 ,'TV, air condition, wifi, 24-hour front desk, Parking free', 2 ,'sea view', 'Pet friendly policy, Handicap accessibility', 'none', 'Available'),
    (5, 24 , 3909 ,'TV, air condition, wifi, Lounge, Non smoking rooms', 4 ,'sea view', 'wifi', 'Broken bathroom fixtures', 'Available'),

    (1, 25 , 4508 ,'TV, air condition, wifi, Swimming pool, Pet friendly options', 5 ,'sea view', 'Pet friendly policy, Handicap accessibility', 'Broken furniture tables, lamps', 'Occupied'),
    (2, 25 , 1687 ,'TV, air condition, wifi, Swimming pool, Pet friendly options', 4 ,'sea view', 'none', 'Broken furniture lamps', 'Occupied'),
    (3, 25 , 4455 ,'TV, air condition, fridge, wifi', 3 ,'sea view', 'one extra bed, Laundry', 'Broken furniture lamps', 'Available'),
    (4, 25 , 2529 ,'TV, air condition, wifi', 2 ,'sea view', 'none', 'none', 'Available'),
    (5, 25 , 1768 ,'TV, air condition, fridge, wifi, Fitness center', 1 ,'sea view', 'wifi', 'none', 'Available'),

    (1, 26 , 4320 ,'TV, air condition, wifi, Swimming pool, Pet friendly options', 2 ,'sea view', 'Handicap accessibility', 'Damaged room amenities', 'Occupied'),
    (2, 26 , 1868 ,'TV, air condition, wifi, 24-hour front desk, Parking free', 3 ,'mountain view', 'TV, WiFi, Handicap accessibility', 'Missing linens', 'Occupied'),
    (3, 26 , 2285 ,'TV, air condition, wifi, Lounge, Non smoking rooms', 1 ,'sea view', 'one extra bed, Laundry', 'Vandalism on walls or furniture.', 'Available'),
    (4, 26 , 2847 ,'TV, air condition, fridge, wifi, Fitness center', 5 ,'sea view', 'TV, WiFi, Handicap accessibility', 'Water damage leak', 'Available'),
    (5, 26 , 1988 ,'TV, air condition, wifi', 4 ,'mountain view', 'TV, Laundry service', 'Stained or damaged rugs', 'Available'),

    (1, 27 , 3260 ,'TV, air condition, wifi, Lounge, Non smoking rooms', 2 ,'mountain view', 'TV, WiFi, Handicap accessibility', 'Missing linens', 'Occupied'),
    (2, 27 , 1682 ,'TV, air condition, wifi, Lounge, Non smoking rooms', 4 ,'mountain view', 'Pet friendly policy', 'Vandalism on walls or furniture.', 'Occupied'),
    (3, 27 , 3891 ,'TV, air condition, wifi, Swimming pool, Pet friendly options', 3 ,'mountain view', 'Spa service', 'Missing linens', 'Occupied'),
    (4, 27 , 2345 ,'TV, air condition, wifi, Swimming pool, Parking free', 5 ,'sea view', 'Spa service, Fitness center, parking payed', 'Broken furniture chairs, tables, lamps', 'Occupied'),
    (5, 27 , 2955 ,'TV, air condition, wifi, Lounge, Non smoking rooms', 1 ,'mountain view', 'TV, Laundry service', 'Vandalism on walls or furniture.', 'Occupied'),

    (1, 28 , 4808 ,'TV, air condition, wifi, 24-hour front desk, Parking free', 2 ,'mountain view', 'one extra bed, Laundry', 'Stained or damaged carpets', 'Available'),
    (2, 28 , 2477 ,'TV, air condition, wifi, Swimming pool, Parking free', 4 ,'sea view', 'Handicap accessibility', 'Water damage leak', 'Available'),
    (3, 28 , 4893 ,'TV, air condition, wifi, Lounge, Non smoking rooms', 5 ,'sea view', 'TV, WiFi, Handicap accessibility', 'Broken furniture lamps', 'Occupied'),
    (4, 28 , 3231 ,'TV, air condition, wifi, Lounge, Non smoking rooms', 1 ,'sea view', 'none', 'Damaged room amenities', 'Occupied'),
    (5, 28 , 4776 ,'TV, air condition, wifi, 24-hour front desk, Parking free', 3 ,'mountain view', 'TV, Laundry service', 'Water damage leak', 'Available'),

    (1, 29 , 3398 ,'TV, air condition, wifi, Swimming pool, Pet friendly options', 5 ,'mountain view', 'Spa service, Fitness center, parking payed', 'Malfunctioning TV', 'Occupied'),
    (2, 29 , 3994 ,'TV, air condition, fridge, wifi, Fitness center', 3 ,'mountain view', 'one extra bed, free wifi', 'none', 'Available'),
    (3, 29 , 3687 ,'TV, air condition, wifi, Swimming pool, Parking free', 2 ,'sea view', 'Pet friendly policy', 'none', 'Available'),
    (4, 29 , 3479 ,'TV, air condition, fridge, wifi, Fitness center', 4 ,'sea view', 'Spa service', 'Water damage leak', 'Occupied'),
    (5, 29 , 2008 ,'TV, air condition, fridge, wifi', 1 ,'sea view', 'TV, WiFi, Handicap accessibility', 'none', 'Available'),

    (1, 30 , 3760 ,'TV, air condition, wifi', 1 ,'sea view', 'one extra bed, Laundry', 'Broken furniture tables, lamps', 'Available'),
    (2, 30 , 2490 ,'TV, air condition, wifi, Lounge, Non smoking rooms', 5 ,'mountain view', 'Pet friendly policy', 'none', 'Available'),
    (3, 30 , 3818 ,'TV, air condition, wifi, 24-hour front desk, Parking free', 4 ,'sea view', 'Pet friendly policy, Handicap accessibility', 'Malfunctioning TV', 'Occupied'),
    (4, 30 , 2512 ,'TV, air condition, wifi, Swimming pool, Pet friendly options', 2 ,'sea view', 'one extra bed, free wifi', 'Malfunctioning TV', 'Occupied'),
    (5, 30 , 3437 ,'TV, air condition, wifi, Swimming pool, Pet friendly options', 3 ,'mountain view', 'wifi', 'Vandalism on walls or furniture.', 'Occupied'),

    (1, 31 , 4276 ,'TV, air condition, fridge, wifi', 5 ,'sea view', 'one extra bed, Laundry', 'Malfunctioning TV', 'Occupied'),
    (2, 31 , 2373 ,'TV, air condition, wifi', 2 ,'sea view', 'wifi', 'none', 'Occupied'),
    (3, 31 , 2486 ,'TV, air condition, fridge, wifi, Fitness center', 3 ,'mountain view', 'Pet friendly policy, Handicap accessibility', 'Stained or damaged rugs', 'Available'),
    (4, 31 , 3637 ,'TV, air condition, wifi, Swimming pool, Pet friendly options', 1 ,'mountain view', 'one extra bed, Laundry', 'none', 'Occupied'),
    (5, 31 , 4342 ,'TV, air condition, wifi', 4 ,'mountain view', 'Pet friendly policy', 'none', 'Occupied'),

    (1, 32 , 3238 ,'TV, air condition, fridge, wifi', 2 ,'mountain view', 'Fitness center, parking payed', 'none', 'Available'),
    (2, 32 , 4432 ,'TV, air condition, wifi, Swimming pool, Parking free', 1 ,'sea view', 'one extra bed, free wifi', 'Broken bathroom fixtures', 'Available'),
    (3, 32 , 3168 ,'TV, air condition, wifi, Swimming pool, Pet friendly options', 5 ,'mountain view', 'Pet friendly policy', 'Damaged walls (e.g. holes, scratches)', 'Available'),
    (4, 32 , 4787 ,'TV, air condition, wifi, 24-hour front desk, Parking free', 3 ,'sea view', 'none', 'none', 'Available'),
    (5, 32 , 3487 ,'TV, air condition, wifi, Swimming pool, Pet friendly options', 4 ,'sea view', 'TV, Laundry service', 'Broken furniture tables, lamps', 'Available'),

    (1, 33 , 3476 ,'TV, air condition, wifi, 24-hour front desk, Parking free', 1 ,'sea view', 'Spa service, Fitness center, parking payed', 'Vandalism on walls or furniture.', 'Available'),
    (2, 33 , 2689 ,'TV, air condition, wifi, Lounge, Non smoking rooms', 5 ,'sea view', 'Handicap accessibility', 'Stained or damaged carpets', 'Occupied'),
    (3, 33 , 3116 ,'TV, air condition, wifi, Lounge, Non smoking rooms', 2 ,'sea view', 'one extra bed, free wifi', 'Broken furniture lamps', 'Occupied'),
    (4, 33 , 3792 ,'TV, air condition, wifi, Swimming pool, Pet friendly options', 4 ,'sea view', 'Handicap accessibility', 'Damaged room amenities', 'Available'),
    (5, 33 , 1801 ,'TV, air condition, fridge, wifi', 3 ,'sea view', 'Fitness center, parking payed', 'none', 'Available'),

    (1, 34 , 4883 ,'TV, air condition, fridge, wifi', 5 ,'sea view', 'Fitness center, parking payed', 'Stained or damaged carpets', 'Occupied'),
    (2, 34 , 2225 ,'TV, air condition, wifi, Swimming pool, Pet friendly options', 4 ,'sea view', 'one extra bed, Laundry', 'Cracked mirror', 'Occupied'),
    (3, 34 , 3345 ,'TV, air condition, wifi, Swimming pool, Pet friendly options', 2 ,'mountain view', 'one extra bed', 'none', 'Occupied'),
    (4, 34 , 1515 ,'TV, air condition, fridge, wifi, Fitness center', 3 ,'sea view', 'Spa service', 'none', 'Occupied'),
    (5, 34 , 4200 ,'TV, air condition, wifi, 24-hour front desk, Parking free', 1 ,'sea view', 'one extra bed, free wifi', 'Damaged room amenities', 'Available'),

    (1, 35 , 2972 ,'TV, air condition, wifi, 24-hour front desk, Parking free', 4 ,'mountain view', 'wifi', 'none', 'Available'),
    (2, 35 , 3432 ,'TV, air condition, wifi, Lounge, Non smoking rooms', 1 ,'mountain view', 'TV, WiFi, Handicap accessibility', 'Cracked mirror', 'Occupied'),
    (3, 35 , 3778 ,'TV, air condition, fridge, wifi', 2 ,'sea view', 'Pet friendly policy, Handicap accessibility', 'Broken bathroom fixtures', 'Occupied'),
    (4, 35 , 2599 ,'TV, air condition, fridge, wifi, Fitness center', 5 ,'sea view', 'Handicap accessibility', 'none', 'Occupied'),
    (5, 35 , 1651 ,'TV, air condition, wifi, 24-hour front desk, Parking free', 5 ,'sea view', 'one extra bed, Laundry', 'Water damage leak', 'Occupied'),

    (1, 36 , 1035 ,'TV, air condition, wifi, Swimming pool, Parking free', 5 ,'mountain view', 'TV, Laundry service', 'Missing linens', 'Occupied'),
    (2, 36 , 4152 ,'TV, air condition, fridge, wifi, Fitness center', 4 ,'mountain view', 'TV, Laundry service', 'Missing linens', 'Occupied'),
    (3, 36 , 3049 ,'TV, air condition, fridge, wifi, Fitness center', 3 ,'mountain view', 'wifi', 'Malfunctioning TV', 'Available'),
    (4, 36 , 2790 ,'TV, air condition, fridge, wifi', 1 ,'mountain view', 'Room service, air condition', 'Vandalism on walls or furniture.', 'Occupied'),
    (5, 36 , 4161 ,'TV, air condition, fridge, wifi, Fitness center', 2 ,'mountain view', 'Pet friendly policy', 'Broken furniture tables, lamps', 'Occupied'),

    (1, 37 , 3385 ,'TV, air condition, wifi, 24-hour front desk, Parking free', 2 ,'sea view', 'one extra bed, Laundry', 'Broken furniture chairs, tables, lamps', 'Available'),
    (2, 37 , 4945 ,'TV, air condition, wifi, Swimming pool, Parking free', 4 ,'sea view', 'Fitness center, parking payed', 'none', 'Available'),
    (3, 37 , 4440 ,'TV, air condition, wifi, Swimming pool, Pet friendly options', 1 ,'sea view', 'TV, Laundry service', 'Damaged walls (e.g. holes, scratches)', 'Available'),
    (4, 37 , 4216 ,'TV, air condition, wifi', 1 ,'mountain view', 'one extra bed, free wifi', 'Broken bathroom fixtures', 'Available'),
    (5, 37 , 2462 ,'TV, air condition, wifi, 24-hour front desk, Parking free', 5 ,'mountain view', 'Spa service', 'Malfunctioning TV', 'Available'),

    (1, 38 , 1189 ,'TV, air condition, fridge, wifi, Fitness center', 3 ,'mountain view', 'Spa service, Fitness center, parking payed', 'Damaged room amenities', 'Occupied'),
    (2, 38 , 3677 ,'TV, air condition, wifi, Swimming pool, Pet friendly options', 1 ,'sea view', 'Handicap accessibility', 'none', 'Available'),
    (3, 38 , 2286 ,'TV, air condition, wifi, Swimming pool, Pet friendly options', 2 ,'sea view', 'TV, WiFi, Handicap accessibility', 'Water damage leak', 'Available'),
    (4, 38 , 1629 ,'TV, air condition, fridge, wifi, Fitness center', 4 ,'mountain view', 'Spa service, Fitness center, parking payed', 'Water damage leak', 'Available'),
    (5, 38 , 4707 ,'TV, air condition, fridge, wifi', 5 ,'mountain view', 'Pet friendly policy, Handicap accessibility', 'Cracked mirror', 'Occupied'),

    (1, 39 , 4817 ,'TV, air condition, wifi, Lounge, Non smoking rooms', 4 ,'sea view', 'Pet friendly policy', 'Broken furniture chairs, tables, lamps', 'Occupied'),
    (2, 39 , 3857 ,'TV, air condition, wifi, Lounge, Non smoking rooms', 5 ,'sea view', 'one extra bed, Laundry', 'none', 'Available'),
    (3, 39 , 3504 ,'TV, air condition, fridge, wifi, Fitness center', 3 ,'mountain view', 'none', 'Broken bathroom fixtures', 'Available'),
    (4, 39 , 2052 ,'TV, air condition, wifi, 24-hour front desk, Parking free', 1 ,'sea view', 'TV, WiFi, Handicap accessibility', 'Water damage leak', 'Occupied'),
    (5, 39 , 3007 ,'TV, air condition, wifi, Swimming pool, Parking free', 2 ,'sea view', 'none', 'Malfunctioning TV', 'Available'),

    (1, 40 , 1946 ,'TV, air condition, fridge, wifi, Fitness center', 3 ,'mountain view', 'none', 'none', 'Available'),
    (2, 40 , 3466 ,'TV, air condition, wifi, 24-hour front desk, Parking free', 4 ,'mountain view', 'Pet friendly policy', 'Vandalism on walls or furniture.', 'Available'),
    (3, 40 , 2532 ,'TV, air condition, wifi, 24-hour front desk, Parking free', 2 ,'mountain view', 'one extra bed, Laundry', 'Stained or damaged rugs', 'Available'),
    (4, 40 , 4416 ,'TV, air condition, fridge, wifi, Fitness center', 5 ,'mountain view', 'TV, Laundry service', 'Water damage leak', 'Occupied'),
    (5, 40 , 4263 ,'TV, air condition, wifi, 24-hour front desk, Parking free', 1 ,'sea view', 'Handicap accessibility', 'Stained or damaged carpets', 'Available');


drop table customers

CREATE TABLE customers (
    customer_ID SERIAL PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    address VARCHAR(255),
    sin INT,
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
    employee_ID SERIAL PRIMARY KEY ,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    address VARCHAR(255),
    sin INT,
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
    customer_ID SERIAL NOT NULL ,
    employee_ID SERIAL,
    check_in BOOLEAN,
    rstart_date VARCHAR(10),
    FOREIGN KEY (customer_ID) references customers (customer_ID),
    FOREIGN KEY (employee_ID) references employees (employee_ID)
);

INSERT INTO history(check_in, rstart_date)
VALUES
    ( False ,'12-01-1984'),
    ( False ,'15-01-2055'),
    ( False ,'20-03-1935'),
    ( False ,'29-11-2060'),
    ( True ,'04-02-1966'),
    ( True ,'31-03-1906'),
    ( True ,'15-08-2065'),
    ( False ,'28-03-1991'),
    ( True ,'21-05-2082'),
    ( False ,'16-05-1987');
 
 /* Indexes: */
/* This index can be used by customers (users) to efficiently find all rooms currently available */
/* Also, employees can use this index to find all rooms currently booked/occupied. */
create index room_status on rooms(status);

/* This index is intended for efficiently locating the information of a specific customer. */
/* Employees can use it to pull up the profile of a customer */
create index customerID_index on customers(customer_ID);

/* This index locates the information of a specific employee given the ID number. */
/* Managers can use it to pull up the profile of an employee and check their roles and hotel assignments. */
create index employeeID_index on employees(employee_ID);

/* This index locates the information of all hotels in a given location or area. */
/* This index is intended mostly for users so they can see all hotels in a required town/city, province, or street. */
create index hotelarea_index on hotel(hotel_adrs);

/* This index locates the information of all hotels of a given star category, allowing users to efficiently find all hotels of a desired rating.  */
create index star_index on hotel(star_category);

/* Views: */
/* 1) Number of rooms available per area */
create view rooms_avail as
		select count (*)
		from rooms
		where status = ‘available’ 
group by hotel_adrs in (select hotel_adrs
			from hotel);     
/* group by area could be more defined…*/
			 
/* 2) Capacity of all rooms in a specific hotel */
create view capacity as
		select room_cpsty
		from rooms
		group by hotel_ID; 








