1.  A Clockwork Orange:     Varchar
    42:                     Smallint
    09/02/1945:             Date
    98.7:                   Numeric
    15.99:                  Numeric

2.  A database OR textfile could be used when you need to store, retrieve, or manipulate data from different computing sessions and only 1 person will be manipulating the data at one time. A database needs to be used when there may be multiple users manipulating the data simultaneously.

3.  SQL requires you define what you want to find, store, or change, without you having to define how it gets done. With standard (procedural) programming languages, you have to write the code that defines the steps that must be taken to create the desired result.

4.  In a database, there are rows and columns, and cells at all the different levels of each row and column, that house the data. SQL (Structured Query Language) allows you to search any/every cell for the data you need to find, depending on how you write your query. If, for example, you're looking for a person born on a specific day, you can create a query that asks for a person's name and search by birthdates. The database will then search the database columns for that birthdate and return the name of the desired person, or multiple if there are more than 1.

5.  Table:  The entire croup of available columns, rows, cells, and values in a database.
    Row:    Horizontal lines of cells that data on each entry.
    Column: Vertical lines of cells that hold a specific kind of data for each entry.
    Value:  The data in a given cell.

6.  Char, Text, Smallint

7.  SELECT date, amount
    FROM payments;

        Find and return the date and amount of each payment in the register.
        5/1/2016	1500.00
        5/10/2016	37.00
        5/15/2016	124.93
        5/23/2016	54.72

    SELECT amount
    FROM payments
    WHERE amount > 500;

        Find and return the amount of each payment in the register that's over $500.
        1500.00

    SELECT *
    FROM payments
    WHERE payee = "Mega Foods";

        Find and return all information about of each payment to Mega Foods.
        5/15/2016	Mega Foods	124.93	Groceries

8.  Select the email and sign-up date for the user named DeAndre Data.

        SELECT email, signup
        FROM name
        WHERE name = "DeAndre Data

        datad@comcast.net, 2008-01-20

    Select the user ID for the user with email 'aleesia.algorithm@uw.edu'.

        SELECT userid
        FROM email
        WHERE email = "aleesia.algorithm@uw.edu"

        1

    Select all the columns for the user ID equal to 4.

        SELECT *
        FROM userid
        WHERE userid = 4

        4, Brandy Boolean, bboolean@nasa.gov, 1999-10-15
