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

CREATE TABLE cats (
    id smallint,
    name varchar,
    gender varchar,
    age smallint,
    intake_date date,
    adoption_date date
    );

CREATE TABLE adoptions (
    id smallint,
    adopter smallint,
    cat boolean,
    dog boolean,
    fee money,
    date date
    );

CREATE TABLE adopters (
    id smallint,
    first_name varchar,
    last_name varchar,
    address text,
    phone_number varchar
    );

CREATE TABLE volunteers (
    id smallint,
    name varchar,
    address text,
    phone_number varchar,
    available_to_foster boolean,
    foster_id smallint
    );
