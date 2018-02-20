CREATE TABLE cats (
    id smallint,
    adopter smallint,
    cat varchar,
    gender varchar,
    age smallint,
    intake_date date,
    adoption_date date
);

INSERT INTO cats
    VALUES
    (1, 3, 'Seashell', 'Female', 12, '9/23/17', '10/18/17'),
    (2, 1, 'Walrus', 'Male', 4, '3/4/15', '6/1/15'),
    (3, NULL, 'Target', 'Male', 13, '2/8/18', NULL),
    (4, 7, 'Filter', 'Female', 7, '2/1/18', '2/6/18'),
    (5, 5, 'Pixie', 'Female', 3, '12/18/17', '1/28/18'),
    (6, NULL, 'Ralph', 'Male', 8, '2/16/18', NULL);
