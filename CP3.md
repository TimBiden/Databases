1.  Adding: As I'm not sure whether you're talking about adding rows or columns, I'll give you both.
    Row:        INSERT INTO databasename VALUES (data1, data2, data3);
    column:     ALTER TABLE databasename ADD COLUMN columnname datatype;
    Updating:   UPDATE databasename SET column=data WHERE column=data;
    Deleting:   DELETE FROM databasename WHERE column=data;

2.  Row:        INSERT INTO databasename VALUES (data1, data2, data3);
                `INSERT INTO` command name precedes the database name, then the data follows the `VALUES` operator.

    column:     ALTER TABLE databasename ADD COLUMN columnname datatype;
                `ALTER TABLE` command name precedes the database name, then the column name and data type follow the `ADD COLUMN` operator.

    Updating:   UPDATE databasename SET column=data WHERE column=data;
                `UPDATE` command name precedes the database name, then the data after `SET` alerts the database what column the data is to be inserted into and what is to be inserted there, and `WHERE` specifies the rows that will be updated.

    Deleting:   DELETE FROM databasename WHERE column=data;
                `DELETE FROM` command precedes the database name, then the `WHERE` operator alerts the database what column (in this case) will be deleted.

3.  Smallint:   32000
    Decimal:    97653498.324892348
    Serial:     Auto incrementing, Starts at 1 and goes up to 2147483647
    Money:      876897.32
    Text:       The hardest things teach you the most important lessons. If you can get over the challenge, you’ll enter another stage of life, a better one.
    Timestamp:  '1999-10-15 06:17:02'
    Cidr:       192.168.1.1/25

4.  First: varchar(30)
    Last:  varchar(30)
    RSVP:       boolean
    Adults:     smallint
    Children:   smallint
    Meals:      smallint
    Thanks:     boolean
    Table:      smallint

    CREATE TABLE guests (
            first varchar(30),
            last varchar(30),
            rsvp boolean,
            adults smallint,
            children smallint,
            meals smallint
        );

    ALTER TABLE guests ADD COLUMN thanks boolean;

    ALTER TABLE guests DROP COLUMN meals;

    ALTER TABLE guests ADD COLUMN table smallint;

    DROP TABLE guests;

5.  CREATE TABLE books (
            isbn bigint,
            title char(250),
            author char(100),
            genre char(25),
            published date,
            copies smallint,
            available smallint
        );

    INSERT INTO books (isbn, title, author, genre, published, copies, available)
        VALUES
         (0735619670, 'Code Complete: A Practical Handbook of Software Construction, Second Edition 2nd Edition', 'Steve McConnell', 'Computer Science', June 19, 2004, 6, 3),
         (1572937378, 'My Utmost for His Highest', 'Oswald Chambers', 'Religion', August 1, 2012, 2, 2),
         (1784289906, 'Everyone Can Draw: The book that proves that you can be an artist', 'Barrington Barber', 'Art', September 15, 2017, 7, 1);

    UPDATE books SET available=2 WHERE isbn=0735619670;

    DELETE FROM books WHERE isbn=1572937378;

6.  CREATE TABLE spacecrafts (
        id serial,
        name char(50),
        year smallint,
        country char(50),
        description char(250),
        orbiting char(25),
        operating boolean,
        milesaway bigint
    );

    INSERT INTO spacecrafts (id, name, year, country, description, orbiting, operating, milesaway)
        VALUES
        (DEFAULT, 'Opus', 2004, 'Portugal', 'Our first successful space launch!', Saturn, true, 745645430),
        (DEFAULT, 'Midi', 2016, 'Canada', 'Spying on Bloc students since 2016', Earth, true, 124300),
        (DEFAULT, 'Tolstoy', 2018, 'Belarus', 'Party in Space!', Moon, true, 249000);

    DELETE FROM spacecrafts WHERE name='Midi';

    UPDATE spacecrafts SET operating=false WHERE country='Belarus'

7.  CREATE TABLE emails (
        id serial,
        subject char(250),
        sender char(100),
        recipients text[],
        body text,
        timesent timestamp,
        read boolean,
        chain integer
    );

    INSERT INTO emails (id, subject, sender, recipients, body, timesent, read, chain)
        VALUES
        (DEFAULT, 'hey!', 'noone@gmail.com', [], "Where you been lately? Haven't seen you in forever!", 2004-10-19 10:23:54, true, nil),
        (DEFAULT, 'Meeting at noon tomorrow', 'yourboss@gmail.com', [], "Be there. Or get fired. The choice is yours. ;-)", 2017-11-9 17:31:04, false, nil),
        (DEFAULT, 'Almonds', 'healthfood@gmail.com', [], "What Are Almonds?
        Almonds are the seeds of the fruits cultivated from the almond tree. The scientific name of these dry fruits is Prunus dulcis and they are native to the Middle East, India, and North Africa. They are now found in places like Iran, Saudi Arabia, Lebanon, Turkey, Syria, Jordan, and Israel as well. The taste of almonds ranges from sweet to bitter and both are readily available in markets.

        Sweet almonds are edible, while bitter ones are used for making oil, a common oil that is used to add flavor to the food. They are usually eaten raw, but many people also add them as ingredients in salads, casseroles, and other dishes. Almond milk is also a delicious beverage and is an alternative to less nutritious cow’s milk. You can eat almonds directly, preferably on an empty stomach to increase and speed up the absorption of their nutrients. You can soak them in water overnight so you can eat them the next morning. Crushed almonds are also a wonderful garnish for a number of dishes.", 2017-12-24 07:54:12, true, nil);

        DELETE FROM emails WHERE subject='Almonds';

        UPDATE emails SET read=false WHERE sender='noone@gmail.com'
