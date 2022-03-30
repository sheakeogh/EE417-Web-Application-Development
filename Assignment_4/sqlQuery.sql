CREATE TABLE LISTINGS
(ADDRESS VARCHAR(1000) NOT NULL,
BRAND VARCHAR(50) NOT NULL,
COLOR VARCHAR(50) NOT NULL,
CONDTION VARCHAR(50) DEFAULT 'Good',
DECRIPTION VARCHAR(1000),
IMAGEFILE VARCHAR(500) DEFAULT 'No Image',
PRICE INTEGER NOT NULL,
STYLE VARCHAR(50) NOT NULL,
TITLE VARCHAR(50) NOT NULL,
PRIMARY KEY (PRICE));

insert into LISTINGS values 
('189 Shanowen Road, Santry, Dublin, Ireland', 'Rick Owens', 
'Black', 'New', 'New Rick Owens X Converse for Sale', 'C:\\fakepath\\ROXCvrse.jpg', 
350, 'Shoes', 'Rick Owens X Converse');
insert into LISTINGS values 
('63 Conquer Hill Road, Clontarf, Dublin, Ireland', 'Collusion', 
'Grey', 'New', 'New Grey Collusion Jumper for Sale', 'C:\\fakepath\\CollusionJumper.jpg', 
55, 'Oversized', 'Collusion Crew');
insert into LISTINGS values 
('77 Ferrycarrig Drive, Priorswood, Dublin, Ireland', 'Nike', 
'White', '', 'Vintage White Nike Jumper for Sale', 'C:\\fakepath\\NikeJumper.jpg', 
80, 'Vintage', 'Vintage Nike');
insert into LISTINGS values 
('10 Ardara Avenue, Donaghmede, Dublin, Ireland', 'Reebok', 
'White', 'Old', 'Old Reebok Classics for Sale', 'C:\\fakepath\\ReebokClassics.jpg', 
30, 'Worn', 'Reebok Classics');
insert into LISTINGS values 
('25 Crump Street, Mortdale NSW, Australia', 'Ferrari', 
'Red', 'New', 'New Red Ferrari F1 Cap for Sale', '', 
25, 'F1', 'Ferrari Cap');

CREATE TABLE CONTACT
(CONTACTADDRESS VARCHAR(1000) NOT NULL,
CONTACTDESCRIPTION VARCHAR(1000) NOT NULL,
EMAIL VARCHAR(50) NOT NULL,
FNAME VARCHAR(25) DEFAULT 'Customer',
LNAME VARCHAR(25),
SUBJECTMATTER VARCHAR(100) DEFAULT 'See Description',
PRIMARY KEY (FNAME));

insert into CONTACT values 
('189 Shanowen Road, Santry, Dublin, Ireland', 
'Hello, my item has been all damaged. How can you refund me?', 'shealmk@gmail.com', 'Shea', 
'Keogh', 'Issue with Item');
insert into CONTACT values 
('63 Conquer Hill Road, Clontarf, Dublin, Ireland', 
'Hello, my item never arrived. How can you help me?', 'shea.keogh36@mail.dcu.ie', 'Liam', 
'Keogh', 'Issue with Delivery');
insert into CONTACT values 
('77 Ferrycarrig Drive, Priorswood, Dublin, Ireland', 
'Hello, I was charged twice for my item. How can you refund me?', 'orlaithwren@gmail.com', 'Orlaith', 
'Wren', 'Issue with Payment');
insert into CONTACT values 
('10 Ardara Avenue, Donaghmede, Dublin, Ireland', 
'Hello, my item has arrived and its the wrong size. How can you help me?', 
'orlaithwren2@mail.dcu.ie', 'Maria', 'Wren', 'Issue with Item');
insert into CONTACT values 
('25 Crump Street, Mortdale NSW, Australia', 
'Hello, my account is having issues with login. How can you help me?', 'okeoghs@gmail.com', 
'Kevin', 'Keogh', 'Issue with Account');
