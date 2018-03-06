1.  Use an Inner Join to compare data.

2.  CROSS JOIN:
                         Returns records with every row from Table A combined with every row from Table B.

                         This just seems like a kludge fest and I really can't see a reason for this.

    INNER JOIN:
                        Records that have matching values in both tables are returned.

                        Credit reports with credit data and Social Security Numbers.

    LEFT OUTER JOIN:
                        Every record from the left table is returned along with matching records from the right table.

                        List of employees on the left, with records of who was late this past week on the right.

    RIGHT OUTER JOIN:
                        Every record from the right table is returned along with matching records from the left table.

                        list of people who checked out library books last month is on the right. The library books are on the left and details of only the books that were checked out are returned.

    FULL OUTER JOIN:
                        Return records from both tables when there is a match in the right or left table.

                        Looking for orphaned or mismatched data.

3.  A Primary Key is a column in 1 table where every value is unique.
    A Foreign Key is a key from another table that corresponds to data in the current table.

    An example could be using SSNs as a Primary Key in a credit score database. An example of a Foreign Key would be the list of SSNs in a database of credit inquiries and status reports. The SSNs are compared and the inquiries and status reports for the specified SSN are compiled, some calculations are done, and a credit score is returned as in a credit report.

4.  Shortening table names by using the `AS` command.

5.  SELECT p.name, c.salary, c.vacation_days
    FROM professor AS p
    JOIN compensation AS c
    ON p.id = c.professor_id;

6.  Use a NATURAL join to only show each column once.

    A postal database may have 2-10 people living at the same address. If you have a table of every house in a zipcode and a table of each person in the city who has received mail, you wouldn't need to show the `house number` and `street name` columns twice.

7.  workschedule=# SELECT * FROM employees;                                      
     id  |     first_name      
    -----+---------------------
     001 |  Pinski Dwayne
     002 |  Kellerman Collette
     003 |  Steelgrave Allen
     004 |  Branski Mike
     005 |  Alvarez German
     006 |  Yamaguchi Emiko
     007 |  Schmidt Clint
     008 |  Rubio Estrella
     009 |  Marley R. N.
    (9 rows)

    workschedule=# SELECT * FROM shifts;
        day    
    -----------
     Monday
     Tuesday
     Wednesday
     Thursday
     Friday
    (5 rows)

    workschedule=# SELECT * FROM employees CROSS JOIN shifts;                                      
     id  |     first_name      |    day    
    -----+---------------------+-----------
     001 |  Pinski Dwayne      | Monday
     002 |  Kellerman Collette | Monday
     003 |  Steelgrave Allen   | Monday
     004 |  Branski Mike       | Monday
     005 |  Alvarez German     | Monday
     006 |  Yamaguchi Emiko    | Monday
     007 |  Schmidt Clint      | Monday
     008 |  Rubio Estrella     | Monday
     009 |  Marley R. N.       | Monday
     001 |  Pinski Dwayne      | Tuesday
     002 |  Kellerman Collette | Tuesday
     003 |  Steelgrave Allen   | Tuesday
     004 |  Branski Mike       | Tuesday
     005 |  Alvarez German     | Tuesday
     006 |  Yamaguchi Emiko    | Tuesday
     007 |  Schmidt Clint      | Tuesday
     008 |  Rubio Estrella     | Tuesday
     009 |  Marley R. N.       | Tuesday
     001 |  Pinski Dwayne      | Wednesday
     002 |  Kellerman Collette | Wednesday
     003 |  Steelgrave Allen   | Wednesday
     004 |  Branski Mike       | Wednesday
     005 |  Alvarez German     | Wednesday
     006 |  Yamaguchi Emiko    | Wednesday
     007 |  Schmidt Clint      | Wednesday
     008 |  Rubio Estrella     | Wednesday
     009 |  Marley R. N.       | Wednesday
     001 |  Pinski Dwayne      | Thursday
     002 |  Kellerman Collette | Thursday
     003 |  Steelgrave Allen   | Thursday
     004 |  Branski Mike       | Thursday
     005 |  Alvarez German     | Thursday
     006 |  Yamaguchi Emiko    | Thursday
     007 |  Schmidt Clint      | Thursday
     008 |  Rubio Estrella     | Thursday
     009 |  Marley R. N.       | Thursday
     001 |  Pinski Dwayne      | Friday
     002 |  Kellerman Collette | Friday
     003 |  Steelgrave Allen   | Friday
     004 |  Branski Mike       | Friday
     005 |  Alvarez German     | Friday
     006 |  Yamaguchi Emiko    | Friday
     007 |  Schmidt Clint      | Friday
     008 |  Rubio Estrella     | Friday
     009 |  Marley R. N.       | Friday
    (45 rows)

8.  petadoptions=# SELECT volunteers.name, dogs.name
    petadoptions-# FROM volunteers
    petadoptions-# JOIN dogs
    petadoptions-# ON volunteers.foster_id = dogs.id;
           name       |  name   
    ------------------+---------
      Claudia Randall |  Piglet
      Alice Uphus     |  Willi
      Roger Waltman   |  Walter
    (3 rows)

    petadoptions=# SELECT adopter, dog FROM adoptions                                                        
    WHERE date >= NOW() - interval '1 month';
        adopter     |   dog   
    ----------------+---------
      David Gilmour |  Walter
      Jason Brown   |  Vader
    (2 rows)

    petadoptions=# SELECT adopters.first_name, adopters.last_name, dogs.name
    petadoptions-# FROM adoptions
    petadoptions-# RIGHT JOIN adopters ON adopters.id = adoptions.adopter
    petadoptions-# CROSS JOIN dogs
    petadoptions-# WHERE adoptions.dog IS NULL AND adoptions.adopter IS NULL;
     first_name | last_name |   name   
    ------------+-----------+----------
     Wilson     | Matt      | Piglet
     Benitez    | Gio       | Piglet
     Wilson     | Matt      | Shelby
     Benitez    | Gio       | Shelby
     Wilson     | Matt      | Walter
     Benitez    | Gio       | Walter
     Wilson     | Matt      | Shelly
     Benitez    | Gio       | Shelly
     Wilson     | Matt      | Fratello
     Benitez    | Gio       | Fratello
     Wilson     | Matt      | Houdini
     Benitez    | Gio       | Houdini
     Wilson     | Matt      | Vader
     Benitez    | Gio       | Vader
     Wilson     | Matt      | Willi
     Benitez    | Gio       | Willi
    (16 rows)

    petadoptions=# SELECT dogs.name, cats.cat
    petadoptions-# FROM adoptions
    petadoptions-# RIGHT JOIN dogs ON dogs.name = adoptions.dog
    petadoptions-# FULL OUTER JOIN cats on cats.cat = adoptions.cat
    petadoptions-# WHERE cats.adoption_date IS NULL
    petadoptions-# AND adoptions.dog IS NULL;
       name   |  cat   
    ----------+--------
     Shelly   |
     Fratello |
     Shelby   |
     Houdini  |
              | Ralph
              | Target
    (6 rows)

    petadoptions=# SELECT volunteers.name AS fosters, dogs.name AS dogs
    petadoptions-# FROM volunteers
    petadoptions-# FULL OUTER JOIN dogs ON volunteers.foster_id = dogs.id
    petadoptions-# WHERE available_to_foster IS TRUE
    petadoptions-# OR dogs.in_foster IS FALSE;
         fosters     |   dogs   
    -----------------+----------
     Claudia Randall | Piglet
     Marie Fields    | Walter
     Alice Uphus     | Houdini
     Roger Waltman   | Willi
     Jason Brown     |
                     | Shelby
                     | Vader
                     | Fratello
                     | Shelly
    (9 rows)

9.  petadoptions=# SELECT first_name AS "First Name", last_name AS "Last Name"
    petadoptions-# FROM adopters
    petadoptions-# INNER JOIN adoptions ON adopters.id = adoptions.adopter
    petadoptions-# INNER JOIN cats ON adoptions.adopter = cats.adopter
    petadoptions-# WHERE cats.cat = 'Seashell';
     First Name | Last Name
    ------------+-----------
     Marie      | Fields
    (1 row)

10. library=# SELECT patrons.name, holds.rank
    library-# FROM holds
    library-# INNER JOIN books ON holds.isbn = books.isbn
    library-# INNER JOIN patrons ON holds.user_id = patrons.id
    library-# WHERE books.title = 'Harry Potter and the Sorcerers Stone'
    library-# ORDER BY holds.rank;
           name       | rank
    ------------------+------
     Larue Lafountain |    1
     Leontine Roma    |    2
     Lori A. Coleman  |    3
    (3 rows)

    library=# SELECT books.title AS Book,
    library-#     CASE
    library-#         WHEN transactions.checked_in_date IS NULL
    library-#             THEN 'Yes'
    library-#             ELSE 'No'
    library-#         END
    library-#     AS Checked_Out
    library-# FROM books
    library-# INNER JOIN transactions ON books.isbn = transactions.isbn
    library-# ORDER BY books.title;
                                 book                             | checked_out
    --------------------------------------------------------------+-------------
     Audio Engineering 101: A Beginners Guide to Music Production | No
     Benny Comes Home                                             | No
     Benny Comes Home                                             | No
     Brave New World                                              | Yes
     Catch-22                                                     | No
     Food of the Gods                                             | No
     Food of the Gods                                             | No
     Harry Potter and the Sorcerers Stone                         | No
     Harry Potter and the Sorcerers Stone                         | No
     Loudspeakers: For music recording and reproduction           | Yes
     Loudspeakers: For music recording and reproduction           | No
     Loudspeakers: For music recording and reproduction           | No
     Rubiks Cube Best Algorithms: Top 5 Speedcubing Methods       | No
     Rubiks Cube Best Algorithms: Top 5 Speedcubing Methods       | Yes
     Rubiks Cube Best Algorithms: Top 5 Speedcubing Methods       | No
     SQL Queries for Mere Mortals                                 | No
     SQL Queries for Mere Mortals                                 | No
     SQL Queries for Mere Mortals                                 | No
     The 1-Page Marketing Plan                                    | No
     The 1-Page Marketing Plan                                    | No
     The 1-Page Marketing Plan                                    | Yes
     The Great Gatsby                                             | Yes
     The Lord of the Rings                                        | Yes
     The Lord of the Rings                                        | No
     The Lord of the Rings                                        | No
     The New Rules of Marketing and PR                            | Yes
     The New Rules of Marketing and PR                            | Yes
     The New Rules of Marketing and PR                            | No
     The Two Towers                                               | No
     The Two Towers                                               | No
    (30 rows)

    library=# SELECT books.title AS books, books.author AS author, age(transactions.checked_in_date, transactions.checked_out_date) AS Days
    library-# FROM books
    library-# RIGHT JOIN transactions ON books.isbn = transactions.isbn
    library-# WHERE transactions.checked_out_date > CURRENT_DATE - INTERVAL '1 month' AND transactions.checked_in_date IS NOT NULL
    library-# ORDER BY age(transactions.checked_in_date, transactions.checked_out_date) DESC;
                   books               |       author        |  days   
    -----------------------------------+---------------------+---------
     Food of the Gods                  | Terence McKenna     | 13 days
     The Two Towers                    | J.R.R. Tolkien      | 10 days
     The New Rules of Marketing and PR | David Meerman Scott | 4 days
    (3 rows)

    library=# SELECT books.title AS books, books.author AS author, transactions.checked_out_date AS checked_out
    library-# FROM books
    library-# LEFT JOIN transactions ON books.isbn = transactions.isbn
    library-# WHERE transactions.checked_out_date IS NULL OR transactions.checked_out_date < CURRENT_DATE - INTERVAL '5 years' AND books.isbn NOT IN (
    library(#     SELECT transactions.isbn
    library(#     FROM transactions
    library(#     WHERE transactions.checked_out_date > CURRENT_DATE - INTERVAL '5 years'
    library(# )
    library-# ORDER BY books.title;
                                books                             |    author    | checked_out
    --------------------------------------------------------------+--------------+-------------
     Audio Engineering 101: A Beginners Guide to Music Production | Tim Dittmar  | 2012-11-06
     Italian with Ease                                            | Ruby Assimil |
    (2 rows)

    library=# SELECT patrons.name, books.title
    library-# FROM transactions
    library-# JOIN books ON (books.isbn = transactions.isbn AND transactions.checked_out_date IS NOT NULL AND transactions.checked_in_date IS NULL)
    library-# RIGHT OUTER JOIN patrons ON transactions.user_id = patrons.id
    library-# GROUP BY patrons.name, books.title
    library-# ORDER BY patrons.name;
             name         |                         title                          
    ----------------------+--------------------------------------------------------
     Alease Grider        |
     Alecia Chalfant      | Brave New World
     Arlie Glickman       |
     Belen Wysong         |
     Berneice Rodenberger |
     Carita Tardugno      |
     Christi S. Reese     |
     Darlene N. Halliday  |
     Fredda Liang         |
     Harry Abernethy      | The Lord of the Rings
     Jolie Engram         | Rubiks Cube Best Algorithms: Top 5 Speedcubing Methods
     Josh Mitten          |
     Judie Heffron        | Art of Coloring Star Wars
     Larue Lafountain     |
     Lawanna Dey          |
     Leontine Roma        | The New Rules of Marketing and PR
     Lori A. Coleman      | The Great Gatsby
     Nathaniel Winker     |
     Nicki Steffenson     | The 1-Page Marketing Plan
     Nikita Berge         | The New Rules of Marketing and PR
     Nohemi Headlee       |
     Sherita Alberico     |
     Stan Brossard        |
     Wendi Borgen         |
     Willian Pellot       |
    (25 rows)
