1.  SELECT author
    FROM library
    WHERE title LIKE '%Rubyist%';

2.  SELECT FROM WHERE... So Freaking What...

3.  pets=# SELECT name, gender, age FROM dogs WHERE breed LIKE '%labrador%';
      name  | gender | age
    --------+--------+-----
     Boujee | F      |   3
     Marley | M      |   0
    (2 rows)

    pets=# SELECT id FROM dogs WHERE age<1;
      id   
    -------
     10002
     10004
    (2 rows)

    pets=# SELECT name, age FROM dogs WHERE gender='F' AND weight>35;
      name  | age
    --------+-----
     Boujee |   3
    (1 row)

    pets=# SELECT * FROM dogs WHERE breed NOT LIKE '%shepherd%';
      id   |   name    | gender | age | weight |       breed        | intake_date | in_foster  
    -------+-----------+--------+-----+--------+--------------------+-------------+------------
     10001 | Boujee    | F      |   3 |     36 | labrador poodle    | 2017-06-22  |
     10002 | Munchkin  | F      |   0 |      8 | dachsund chihuahua | 2017-01-13  | 2017-01-31
     10004 | Marley    | M      |   0 |     10 | labrador           | 2017-05-04  | 2016-06-20
     10006 | Marmaduke | M      |   7 |    150 | great dane         | 2016-03-22  | 2016-05-15
     10007 | Rosco     | M      |   5 |    180 | rottweiler         | 2017-04-01  |
    (5 rows)

    pets=# SELECT id, age, weight, breed FROM dogs WHERE weight>60 OR breed='great dane';
      id   | age | weight |   breed    
    -------+-----+--------+------------
     10006 |   7 |    150 | great dane
     10007 |   5 |    180 | rottweiler
    (2 rows)

4.     name    | intake_date
    -----------+-------------
     Mushi     | 2016-03-22
     Seashell  |
     Azul      | 2016-04-17
     Victoire  | 2016-09-01
     Nala      |
    (5 rows)

    name    | intake_date
     -----------+-------------
      Mushi     | 1
      Seashell  | 7
      Azul      | 3
      Victoire  | 7
      Nala      | 1
     (5 rows)

5.  SELECT * FROM cats;

    SELECT id, name FROM cats GROUP BY age;

    SELECT name FROM cats;

6.  < When you need to find results that are lower numerically or alphabetically than the value after the <.
    SELECT name FROM cats WHERE age<7;

    > When you need to find results that are higher numerically or alphabetically than the value after the >
    SELECT name FROM cats WHERE age>2;

    <= When you need to find results that are lower than or equal to the value after the <=
    SELECT name FROM cats WHERE age<=4;

    >= When you need to find results that are greater than or equal to the value after the <=
    SELECT name FROM cats WHERE age>=2;

    != When you need to find results that are not equal to the value after the !=
    SELECT name FROM cats WHERE age!=0;

    = When you need to find results that are exactly equal to the value after the !=
    SELECT name FROM cats WHERE age=3;


7.  name
     ------------------------
      Seashell
      Nala
     (2 rows)

     name
      ------------------------
       Mushi
       Seashell
       Victoire
       Nala
      (4 rows)

      None. `ID` is capitalized.
