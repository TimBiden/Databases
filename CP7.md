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

8.  

9.  

10.  
