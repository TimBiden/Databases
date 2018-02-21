CREATE TABLE volunteers (
    id smallint,
    name varchar,
    address text,
    phone_number varchar,
    available_to_foster boolean,
    foster_id smallint
);

INSERT INTO volunteers
    VALUES
    (001, 'Claudia Randall', '987 138th Ave N. Pomona CA 91766', '909-570-1739', TRUE, 001),
    (002, 'Rose Pena', '565 Chester Pl Pomona CA 91768', '909-231-9815', FALSE, NULL),
    (003, 'Marie Fields', '1010 E. Mission Blvd Ontario CA 91761', '909-947-3517', TRUE, 003),
    (004, 'Alice Uphus', '8201 Day Creek Blvd Rancho Cucamonga CA 91739', '909-463-5670', TRUE, 007),
    (005, 'Roger Waters', '709 N. La Brea Ave Los Angeles CA 90038', '323-931-4223', FALSE, NULL),
    (006, 'Roger Waltman', '580 W 1st St Claremont CA 91711', '909-445-8875', TRUE, 009),
    (007, 'Jason Brown', '3289 Florence Ave Fullerton CA 92831', '714-842-1984', TRUE, NULL);
