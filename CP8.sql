CREATE TABLE guests (
    first_name varchar,
    last_name varchar,
    guest_email varchar,
    phone varchar,
    address text
);

INSERT INTO guests
    VALUES
    ('Laura', 'Burton', 'tubes@yahoo.com', '(714) 878-9343', '503 Lakeshore Ave. Cape Coral, FL 33904'),
    ('Dallas', 'Jacobs', 'pthomsen@hotmail.com', '(519) 905-3626', '917 Lafayette Rd. Charleston, SC 29406'),
    ('Blanca', 'Lee', 'enintend@aol.com', '(525) 600-3387', '70 Hillside St. Canton, GA 30114'),
    ('Doyle', 'Love', 'nichoj@verizon.net', '(975) 986-6294', '68 Old Lantern Court Jamaica, NY 11432'),
    ('Loretta', 'Greene', 'sherzodr@yahoo.ca', '(498) 687-8155', '485 College St. Morganton, NC 28655'),
    ('Andrea', 'Lynch', 'brickbat@aol.com', '(813) 394-3306', '589 Spinnaker Dr. Marco Island, FL 34145'),
    ('Chelsea', 'Phelps', 'shedr@yahoo.ca', '(909) 993-9644', '7265 Schoolhouse Dr. San Antonio, TX 78213'),
    ('Van', 'Bryan', 'wmszeliga@msn.com', '(343) 695-6603', '8523 Mulberry Lane North Haven, CT 06473'),
    ('Ernestine', 'Ames', 'bcevc@live.com', '(360) 635-8308', '200 NE. Creekside Street Statesville, NC 28625'),
    ('Shane', 'Harvey', 'josephw@yahoo.ca', '(763) 610-1746', '54 Peachtree St. Glastonbury, CT 06033'),
    ('Heather', 'Phillips', 'sbmrjbr@live.com', '(273) 413-2236', '983 High Point St. Deerfield, IL 60015'),
    ('Isabel', 'Kelly', 'isaacson@outlook.com', '(225) 751-6434', '7001 Hillcrest Street Wilkes Barre, PA 18702'),
    ('Kate', 'Sandoval', 'jcholewa@mac.com', '(647) 614-6277', '966 Yukon Ave. Sykesville, MD 21784'),
    ('Phyllis', 'Gregory', 'nweaver@comcast.net', '(743) 451-8736', '138 Pennington Street Rockledge, FL 32955'),
    ('Shari', 'Fernandez', 'monkeydo@live.com', '(196) 845-4087', '307 Carpenter Rd. Rockville Centre, NY 11570'),
    ('Edwin', 'Rodriguez', 'maratb@msn.com', '(442) 498-3971', '379 Mechanic St. Casselberry, FL 32707'),
    ('Tom', 'Pope', 'world@mac.com', '(941) 327-1841', '7607A Aspen Rd. Lindenhurst, NY 11757'),
    ('Allan', 'Fox', 'frosal@verizon.net', '(592) 873-1938', '8185 Leatherwood Ave. Garfield, NJ 07026'),
    ('Bonnie', 'Webster', 'nelson@hotmail.com', '(299) 536-1892', '7319 Constitution Street Corona, NY 11368'),
    ('Anne', 'Wells', 'thassine@mac.com', '(315) 840-3393', '9543 Third St. Andover, MA 01810'),
    ('Constance', 'Norris', 'jbryan@msn.com', '(344) 954-7391', '8634 Sugar Road Torrington, CT 06790'),
    ('Helen', 'Cain', 'plover@verizon.net', '(630) 521-3850', '7263 Redwood Rd. Burke, VA 22015'),
    ('Leona', 'Watts', 'pdbaby@gmail.com', '(866) 395-6660', '198 College St. Edison, NJ 08817'),
    ('Darren', 'Moore', 'ianbuck@comcast.net', '(689) 837-2637', '696 Indian Spring Ave. Bethlehem, PA 18015'),
    ('Ken', 'Castillo', 'sacraver@sbcglobal.net', '(323) 808-6434', '456 Middle River Ave. Chester, PA 19013');

CREATE TABLE rooms (
    room_number integer,
    price_night money
);

INSERT INTO rooms
    VALUES
    (451, 501),
    (281, 503),
    (207, 401),
    (256, 593),
    (143, 145),
    (152, 431),
    (164, 424),
    (132, 570),
    (110, 416),
    (410, 598),
    (438, 568),
    (166, 440),
    (349, 424),
    (163, 518),
    (140, 589),
    (308, 498),
    (362, 458),
    (394, 489),
    (236, 422),
    (370, 533),
    (289, 488),
    (517, 550),
    (288, 424),
    (128, 380),
    (309, 315),
    (413, 423),
    (139, 470),
    (286, 286),
    (261, 450),
    (380, 392),
    (178, 440),
    (217, 412),
    (254, 478),
    (238, 544),
    (222, 534),
    (407, 529),
    (239, 350),
    (317, 459),
    (196, 403),
    (403, 501),
    (221, 261),
    (285, 498),
    (225, 270),
    (344, 460),
    (509, 562),
    (399, 491),
    (282, 500),
    (192, 336),
    (240, 258),
    (400, 437);

CREATE TABLE reservations (
    res_id integer,
    res_email varchar,
    check_in date,
    check_out date,
    room_booked integer
);

INSERT INTO reservations
    VALUES
    (101, 'tubes@yahoo.com', '3/26/2018', '3/29/2018', 451),
    (102, 'sbmrjbr@live.com', '4/11/2018', '4/21/2018', 281),
    (103, 'shedr@yahoo.ca', '4/13/2018', '4/15/2018', 207),
    (104, 'plover@verizon.net', '4/16/2018', '4/20/2018', 256),
    (105, 'enintend@aol.com', '4/29/2018', '5/3/2018', 207),
    (106, 'sacraver@sbcglobal.net', '6/17/2018', '6/24/2018', 143),
    (107, 'maratb@msn.com', '6/17/2018', '6/19/2018', 152),
    (108, 'jcholewa@mac.com', '7/18/2018', '7/24/2018', 164),
    (109, 'josephw@yahoo.ca', '8/16/2018', '8/18/2018', 132),
    (110, 'plover@verizon.net', '8/23/2018', '8/28/2018', 110),
    (111, 'monkeydo@live.com', '8/28/2018', '9/7/2018', 410),
    (112, 'bcevc@live.com', '9/1/2018', '9/6/2018', 166),
    (113, 'ianbuck@comcast.net', '10/7/2018', '10/15/2018', 163),
    (114, 'wmszeliga@msn.com', '10/7/2018', '10/17/2018', 140),
    (115, 'frosal@verizon.net', '10/30/2018', '11/3/2018', 362),
    (116, 'world@mac.com', '11/2/2018', '11/12/2018', 143),
    (117, 'maratb@msn.com', '11/22/2018', '11/25/2018', 256),
    (118, 'monkeydo@live.com', '11/25/2018', '11/29/2018', 410),
    (119, 'sacraver@sbcglobal.net', '11/27/2018', '11/28/2018', 517),
    (120, 'jcholewa@mac.com', '12/13/2018', '12/21/2018', 178),
    (121, 'plover@verizon.net', '12/24/2018', '12/27/2018', 238),
    (122, 'plover@verizon.net', '12/24/2018', '12/27/2018', 239),
    (123, 'thassine@mac.com', '12/27/2018', '1/1/2019', 222),
    (114, 'monkeydo@live.com', '12/28/2018', '1/5/2019', 410);
