1.  Use an Inner Join to compare data.

2.  CROSS JOIN:         

    INNER JOIN:         Records that have matching values in both tables are returned.
                        Credit reports with credit data and Social Security Numbers.

    LEFT OUTER JOIN:    Every record from the left table is returned along with matching records from the right table.
                        List of employees on the left, with records of who was late this past week on the right.

    RIGHT OUTER JOIN:   Every record from the right table is returned along with matching records from the left table.
                        list of people who checked out library books last month is on the right. The library books are on the left and details of only the books that were checked out are returned.

    FULL OUTER JOIN:    

3.  A Primary Key is a column in 1 table where every value is unique.
    A Foreign Key is a key from another table that corresponds to data in the current table.

    An example could be using SSNs as a Primary Key in a credit score database. An example of a Foreign Key would be the list of SSNs in a database of credit inquiries and status reports. The SSNs are compared and the inquiries and status reports for the specified SSN are compiled, some calculations are done, and a credit score is returned as in a credit report.

4.  

5.  SELECT p.name, c.salary, c.vacation_days
    FROM professor AS p
    JOIN compensation AS c
    ON p.id = c.professor_id;

6.  

7.  

8.  

9.  

10.  
