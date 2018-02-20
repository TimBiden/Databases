
CREATE TABLE dogs (
    id smallint,
    name varchar,
    gender varchar,
    age smallint,
    weight smallint,
    intake_date date,
    breed varchar,
    in_foster boolean
);

INSERT INTO dogs
    VALUES
    (001, 'Piglet', 'Male', 8, 34, '12/12/17', 'Boxer Dachshund mix', true),
    (002, 'Shelby', 'Female', 5, 45, '2/9/18', 'Boxer mix', false),
    (003, 'Walter', 'Male', 1, 120, '9/13/17', 'Newfoundland', true),
    (004, 'Shelly', 'Female', 5, 45, '4/28/17', 'Pitbull', false),
    (006, 'Fratello', 'Male', 8, 50, '2/1/18', 'Irish Setter', false),
    (007, 'Houdini', 'Male', 5, 12, '9/13/17', 'Chihuahua Boston Terrier mix', true),
    (008, 'Vader', 'Male', 14, 22, '2/1/18', 'Boston Terrier mix', false),
    (009, 'Willi', 'Female', 3, 12, '10/15/16', 'Chihuahua', true);
