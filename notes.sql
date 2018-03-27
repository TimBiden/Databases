CREATE TABLE airplanes (
  "model"         VARCHAR(16),
  "seat_capacity" INTEGER,
  "range"         INTEGER,

  PRIMARY KEY ("model")
);

CREATE TABLE flights (
  "flight_number"  INTEGER,
  "origin"         VARCHAR(32),
  "destination"    VARCHAR(32),
  "company"        VARCHAR(32),
  "distance"       INTEGER,
  "flight_time"    INTEGER,
  "airplane_model" VARCHAR(16),

  PRIMARY KEY ("flight_number"),

  FOREIGN KEY ("airplane_model")
    REFERENCES "airplanes" ("model")
    ON DELETE CASCADE
);

CREATE TABLE transactions (
  "id"             INTEGER,
  "seats_sold"     INTEGER,
  "total_revenue"  DECIMAL(19,4),
  "total_cost"     DECIMAL(19,4),
  "flight_number"  INTEGER,
  "date" DATE,

  PRIMARY KEY ("id"),

  FOREIGN KEY ("flight_number")
    REFERENCES "flights" ("flight_number")
    ON DELETE CASCADE
);

-- Find the total revenue of any flight (not time restricted) arriving at or departing from Singapore (SIN).\

SELECT flights.flight_number AS flight_number, flights.origin AS origin, flights.destination AS destination
FROM flights
WHERE flights.origin = 'SIN' OR flights.destination = 'SIN';

SELECT DISTINCT data.flight_number, data.origin, data.destination, transactions.total_revenue
FROM transactions, flights, (
    SELECT DISTINCT flights.flight_number AS flight_number, flights.origin AS origin, flights.destination AS destination
    FROM flights
    WHERE flights.origin = 'SIN' OR flights.destination = 'SIN'
) AS data
WHERE data.flight_number = flights.flight_number AND transactions.flight_number = flights.flight_number;
