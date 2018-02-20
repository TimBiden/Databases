CREATE TABLE adoptions (
    id smallint,
    adopter smallint,
    cat varchar,
    dog varchar,
    fee money,
    date date
);

INSERT INTO adoptions
    VALUES
    (001, 001, 'Walrus', NULL, 25, '6/1/15'),
    (002, 003, 'Seashell', NULL, 25, '10/18/17'),
    (003, 002, NULL, 'Willi', 45, '11/28/16'),
    (004, 004, NULL, 'Piglet', 45, '1/3/18'),
    (005, 005, 'Pixie', 'Walter', 70, '1/28/18'),
    (006, 007, 'Filter', NULL, 25, '2/6/18'),
    (007, 006, NULL, 'Vader', 45, '2/10/18');
