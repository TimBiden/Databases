CREATE TABLE students (
    student_id serial,
    student_name varchar
);

INSERT INTO students
    VALUES
    (DEFAULT, 'Kisha Mcmullin'),
    (DEFAULT, 'Ashley Shott'),
    (DEFAULT, 'Lean Sippel'),
    (DEFAULT, 'Agatha Winebrenner'),
    (DEFAULT, 'Jill Scoles'),
    (DEFAULT, 'Nga Mcatee'),
    (DEFAULT, 'Frederic Ludlum'),
    (DEFAULT, 'Jerold Manwaring'),
    (DEFAULT, 'Sherlene Traver'),
    (DEFAULT, 'Rachelle Harlan'),
    (DEFAULT, 'Sarita Eliason'),
    (DEFAULT, 'Melodee Matteson'),
    (DEFAULT, 'Sue Sartin'),
    (DEFAULT, 'Dianna Copeland'),
    (DEFAULT, 'Carolee Lamberson'),
    (DEFAULT, 'Sherie Hodgdon'),
    (DEFAULT, 'Gerri Campas'),
    (DEFAULT, 'Gregory Amaral'),
    (DEFAULT, 'Geralyn Wilbanks'),
    (DEFAULT, 'Chad Coffey'),
    (DEFAULT, 'Carletta Halton'),
    (DEFAULT, 'Suzann Gilbert'),
    (DEFAULT, 'Emiko Parten'),
    (DEFAULT, 'Jame Cordon'),
    (DEFAULT, 'Jeanne Mcnamara'),
    (DEFAULT, 'Reggie Saba'),
    (DEFAULT, 'Madge Secor'),
    (DEFAULT, 'Edison Roberge'),
    (DEFAULT, 'Takisha Hoff'),
    (DEFAULT, 'Mirtha Fullen');


CREATE TABLE class_list (
    class_id    varchar,
    class_name  varchar
);

INSERT INTO class_list
    VALUES
    ('ADJU-1', 'The Administration of Justice System'),
    ('ADJU-5', 'Community Relations'),
    ('ADJU-50', 'Introduction to Forensics for Criminal Justice'),
    ('AERO-100', 'Primary Pilot Ground School'),
    ('AERO-256', 'Flight Instructor Ground School'),
    ('AGHE-60', 'Medical Nursing and Animal Care'),
    ('AGPE-71', 'Canine Management'),
    ('AGPE-72', 'Feline Management'),
    ('AGPE-76', 'Aviculture - Cage and Aviary Birds'),
    ('AIRT-251', 'Air Traffic Control Team Skills'),
    ('AD-1', 'Alcohol/Drug Dependency'),
    ('AD-2', 'Physiological Effects of Alcohol/Drugs'),
    ('AD-9', 'Family Counseling'),
    ('ANTH-1', 'Biological Anthropology'),
    ('ANTH-3', 'Archaeology'),
    ('ARAB-1', 'Elementary Arabic'),
    ('ARAB-2', 'Continuing Elementary Arabic'),
    ('ARTG-20', 'Art, Artists and Society'),
    ('ASTR-5', 'Introduction to Astronomy'),
    ('ASTR-7', 'Geology of the Solar System'),
    ('BUSM-66', 'Small Business Management'),
    ('BUSS-33', 'Advertising and Promotion'),
    ('CISP-21L', 'Programming in Java Laboratory'),
    ('CISP-31L', 'Programming in C++ Laboratory'),
    ('CISP-34', 'Advanced C++ Programming'),
    ('CISS-21', 'Network Vulnerabilities and Countermeasures'),
    ('CISP-54', 'Programming for Android Devices');


    CREATE TABLE classes_taken (
    class_id       varchar,
    student_id     integer,
    grade          varchar(1)
    );

    INSERT INTO classes_taken
        VALUES
        ('ADJU-1', 25, 'B'),
        ('ADJU-5', 6, 'A'),
        ('ADJU-50', 11, 'C'),
        ('AERO-100', 21, 'D'),
        ('AERO-256', 11, 'F'),
        ('AGHE-60', 21, 'F'),
        ('AGPE-71', 20, 'D'),
        ('AGPE-72', 28, 'C'),
        ('AGPE-76', 17, 'F'),
        ('AIRT-251', 28, 'C'),
        ('AD-1', 14, 'D'),
        ('AD-2', 2, 'D'),
        ('AD-9', 21, 'B'),
        ('ANTH-1', 20, 'F'),
        ('ANTH-3', 7, 'F'),
        ('ARAB-1', 18, 'C'),
        ('ARAB-2', 19, 'A'),
        ('ARTG-20', 30, 'C'),
        ('ASTR-5', 10, 'A'),
        ('ASTR-7', 10, 'B'),
        ('BUSM-66', 20, 'A'),
        ('BUSS-33', 9, 'D'),
        ('CISP-21L', 25, 'B'),
        ('CISP-54', 26, 'B'),
        ('CISP-34', 9, 'D'),
        ('CISS-21', 10, 'C'),
        ('CISP-54', 30, 'A'),
        ('ADJU-1' ,18, 'B'),
        ('ADJU-5', 6, 'B'),
        ('ADJU-50', 4, 'F'),
        ('AERO-100', 24, 'A'),
        ('AERO-256', 30, 'F'),
        ('AGHE-60', 15, 'D'),
        ('AGPE-71', 12, 'C'),
        ('AGPE-72', 20, 'D'),
        ('AGPE-76', 10, 'F'),
        ('AIRT-251', 1, 'C'),
        ('AD-1', 8, 'D'),
        ('AD-2', 8, 'B'),
        ('AD-9', 29, 'A'),
        ('ANTH-1', 21, 'D'),
        ('ANTH-3', 17, 'A'),
        ('ARAB-1', 5, 'A'),
        ('ARAB-2', 20, 'F'),
        ('ARTG-20', 3, 'D'),
        ('ASTR-5', 22, 'A'),
        ('ASTR-7', 2, 'C'),
        ('BUSM-66', 13, 'B'),
        ('BUSS-33', 26, 'B'),
        ('CISP-21L', 17, 'D'),
        ('CISP-31L', 9, 'D'),
        ('CISP-34', 1, 'A'),
        ('CISS-21', 17, 'B'),
        ('CISP-54', 19, 'D'),
        ('ADJU-1', 2, 'C'),
        ('ADJU-5', 29, 'A'),
        ('ADJU-50', 28, 'A'),
        ('AERO-100', 8, 'F'),
        ('AERO-256', 30, 'B'),
        ('AGHE-60', 14, 'D'),
        ('AGPE-71', 24, 'D'),
        ('AGPE-72', 14, 'D'),
        ('CISP-54', 11, 'D'),
        ('AIRT-251', 9, 'D'),
        ('AD-1', 12, 'B'),
        ('AD-2', 12, 'D'),
        ('AD-9', 12, 'C'),
        ('ANTH-1', 12, 'D'),
        ('ANTH-3', 21, 'D'),
        ('ARAB-1', 22, 'B'),
        ('ARAB-2', 21, 'B'),
        ('ARTG-20', 9, 'B'),
        ('ASTR-5', 17, 'B'),
        ('ASTR-7', 28, 'A'),
        ('BUSM-66', 16, 'B'),
        ('BUSS-33', 11, 'B'),
        ('CISP-21L', 16, 'A'),
        ('CISP-31L', 13, 'F'),
        ('CISP-34', 26, 'D'),
        ('CISS-21', 26, 'C'),
        ('CISP-54', 25, 'B'),
        ('ADJU-1', 30, 'B'),
        ('ADJU-5', 28, 'B'),
        ('ADJU-50', 11, 'C'),
        ('AERO-100', 6, 'A'),
        ('AERO-256', 23, 'D'),
        ('AGHE-60', 9, 'C'),
        ('AGPE-71', 21, 'C'),
        ('AGPE-72', 18, 'D'),
        ('AGPE-76', 2, 'F'),
        ('AIRT-251', 20, 'D'),
        ('AD-1', 14, 'A'),
        ('AD-2', 26, 'D'),
        ('AD-9', 2, 'B'),
        ('ANTH-1', 15, 'D'),
        ('ANTH-3', 8, 'B'),
        ('ARAB-1', 8, 'C'),
        ('ARAB-2', 25, 'D'),
        ('ARTG-20', 28, 'F'),
        ('ASTR-5', 15, 'D'),
        ('ASTR-7', 17, 'A'),
        ('BUSM-66', 12, 'D'),
        ('BUSS-33', 30, 'B'),
        ('CISP-21L', 24, 'B'),
        ('CISP-31L', 24, 'A'),
        ('CISP-34', 20, 'C'),
        ('CISS-21', 1, 'B'),
        ('CISP-54', 4, 'B'),
        ('ADJU-1', 8, 'D'),
        ('ADJU-5', 9, 'B'),
        ('ADJU-50', 5, 'A'),
        ('AERO-100', 8, 'C'),
        ('AERO-256', 17, 'A'),
        ('AGHE-60', 27, 'D'),
        ('AGPE-71', 30, 'A'),
        ('AGPE-72', 2, 'A'),
        ('AGPE-76', 8, 'B'),
        ('AIRT-251', 4, 'A'),
        ('AD-1', 17, 'C'),
        ('AD-2', 29, 'A'),
        ('AD-9', 29, 'C'),
        ('ANTH-1', 12, 'C'),
        ('ANTH-3', 10, 'D'),
        ('ARAB-1', 17, 'C'),
        ('ARAB-2', 18, 'A'),
        ('ARTG-20', 4, 'D'),
        ('ASTR-5', 22, 'B'),
        ('ASTR-7', 18, 'A'),
        ('BUSM-66', 2, 'D'),
        ('BUSS-33', 30, 'A'),
        ('CISP-21L', 10, 'D'),
        ('CISP-31L', 29, 'D'),
        ('CISP-34', 4, 'A'),
        ('CISS-21', 12, 'A'),
        ('CISP-54', 2, 'B'),
        ('ADJU-1', 21, 'A'),
        ('ADJU-5', 16, 'A'),
        ('ADJU-50', 24, 'B'),
        ('AERO-100', 4, 'B'),
        ('AERO-256', 7, 'C'),
        ('AGHE-60', 3, 'D'),
        ('AGPE-71', 15, 'D'),
        ('AGPE-72', 19, 'B'),
        ('AGPE-76', 25, 'F'),
        ('AIRT-251', 8, 'D'),
        ('AD-1', 25, 'C'),
        ('AD-2', 14, 'C'),
        ('AD-9', 7, 'D'),
        ('ANTH-1', 30, 'C'),
        ('ANTH-3', 25, 'B'),
        ('ARAB-1', 8, 'D'),
        ('ARAB-2', 6, 'F'),
        ('ARTG-20', 16, 'C'),
        ('ASTR-5', 22, 'A'),
        ('ASTR-7', 7, 'A'),
        ('BUSM-66', 8, 'B'),
        ('BUSS-33', 23, 'D'),
        ('CISP-21L', 21, 'A'),
        ('CISP-31L', 8, 'A'),
        ('CISP-34', 13, 'A'),
        ('CISS-21', 22, 'D'),
        ('CISP-54', 20, 'D'),
        ('ADJU-1', 30, 'A'),
        ('ADJU-5', 9, 'C'),
        ('ADJU-50', 6, 'A'),
        ('AERO-100', 22, 'B'),
        ('AERO-256', 19, 'D'),
        ('AGHE-60', 18, 'B'),
        ('AGPE-71', 5, 'B'),
        ('AGPE-72', 21, 'A'),
        ('AGPE-76', 13, 'D'),
        ('AIRT-251', 4, 'C'),
        ('AD-1', 30, 'B'),
        ('AD-2', 5, 'C'),
        ('AD-9', 12, 'C'),
        ('ANTH-1', 4, 'A'),
        ('ANTH-3', 30, 'B'),
        ('ARAB-1', 5, 'A'),
        ('ARAB-2', 23, 'F'),
        ('ARTG-20', 3, 'C'),
        ('ASTR-5', 12, 'D'),
        ('ASTR-7', 7, 'D'),
        ('BUSM-66', 24, 'A'),
        ('BUSS-33', 12, 'C'),
        ('CISP-21L', 28, 'C'),
        ('CISP-31L', 5, 'B'),
        ('CISP-34', 7, 'B'),
        ('CISS-21', 11, 'A'),
        ('CISP-54', 23, 'B'),
        ('ADJU-1', 10, 'B'),
        ('ADJU-5', 20, 'A'),
        ('ADJU-50', 22, 'A'),
        ('AERO-100', 21, 'A'),
        ('AERO-256', 25, 'D'),
        ('AGHE-60', 5, 'A'),
        ('AGPE-71', 25, 'B'),
        ('AGPE-72', 22, 'D'),
        ('AGPE-76', 5, 'F'),
        ('AIRT-251', 20, 'D'),
        ('AD-1', 5, 'A');
