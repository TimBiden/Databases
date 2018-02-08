1.  SUM:        The total of a series of values that have been added.
    AVG:        Determines the average of a series of values.
    COUNT:      Gives you the number of rows in the specified table.
    MIN:        Returns the record with the lowest value in the columns requested.
    MAX:        Returns the record with the highest value in the columns requested.
    DISTINT:    Returns records with unique values for the columns requested.

2.  
iron-bank-foundation=# SELECT SUM(amount) FROM donations;
     sum
    -----
     993
    (1 row)

iron-bank-foundation=# SELECT SUM(amount) AS total_donated, donor FROM donations GROUP BY donor;
     total_donated |   donor    
    ---------------+------------
               173 | Daenerys
                33 | Sansa
                90 | Missandei
               120 | Margaery
                20 | Bronn
                20 | Theon
                60 | Arya
                25 | Jon
                 7 | Gilly
                30 | Ygritte
                50 | Tormund
                25 | Bran
                45 | Melisandre
                70 | Petyr
               120 | Tyrion
                75 | Brienne
                10 | Daario
                20 | Samwell
    (18 rows)

iron-bank-foundation=# SELECT AVG(amount) FROM donations;
             avg         
    ---------------------
     36.7777777777777778
    (1 row)

iron-bank-foundation=# SELECT amount FROM donations WHERE amount>100;
     amount
    --------
        102
        120
    (2 rows)

iron-bank-foundation=# SELECT MAX(amount) FROM donations;
     max
    -----
     120
    (1 row)

iron-bank-foundation=# SELECT MIN(amount) FROM donations;
     min
    -----
       5
    (1 row)

3.  SELECT SUM(amount) AS total_donated, donor FROM donations GROUP BY donor ORDER BY donor ASC;

4.  Where you want to see the similarities in the top 20 donors in comparison to the next 20 for data analysis.

5.  If you don't use ORDER BY when you limit results, you could be viewing alphabetically rather than viewing by most money donated. It would drastically change how data is interpreted.

6.  HAVING is used to filter the results when using GROUP BY.

7.  SELECT SUM (amount)
    FROM
     donations
    GROUP BY
     donor
    HAVING
     SUM (amount) > 200;

8.  SELECT * FROM cats ORDER BY intake ASC;

    SELECT cat, adopter, date FROM cats ORDER BY date DESC LIMIT 5;

    SELECT cat, age, sex FROM cats ORDER BY cat HAVING sex = 'F', age >= 2;

    SELECT SUM(amount) AS donated, donor FROM donations GROUP BY donor ORDER BY SUM(amount) DESC LIMIT 5;
     donated |   donor   
    ---------+-----------
         173 | Daenerys
         120 | Margaery
         120 | Tyrion
          90 | Missandei
          75 | Brienne
    (5 rows)

    SELECT SUM(amount) AS donated, donor FROM donations GROUP BY donor ORDER BY SUM(amount) DESC LIMIT 10 OFFSET 5;
     donated |   donor    
    ---------+------------
          70 | Petyr
          60 | Arya
          50 | Tormund
          45 | Melisandre
          33 | Sansa
          30 | Ygritte
          25 | Jon
          25 | Bran
          20 | Theon
          20 | Bronn
    (10 rows)
