1.  In your own words, explain the benefits of normalization. Include a real-world scenario where normalization is necessary.

    A)  Normalization speeds up times in writing data to a database. It also helps to reduce data inaccuracies due to having duplicate data.

    B)  Imagine a database owned by a company that owns multiple car dealerships. To have every car, with information about the dealership, VIN, color, engine type, transmission, accessories, price, rebates... in 1 database would be lunacy! You could easily break that down into a dealership table, a car table with VIN as the primary key, a rebates table that references VINs or models and years...

2.  List and explain the different normal forms and how they relate to one another, with regard to your real-world scenario in the first question.

    1NF)    Cornerstone of the Normal Forms. All others come after 1NF. You can't have multiple values in a single cell. If you do, it's necessary to break them up and probably create a new table.

    2NF)	First it must conform to 1NF. After that, remove partial dependencies where there is a composite primary key.

    3NF)	First it must conform to 2NF. Here we remove transitive dependencies where a column depends on another dependent of the table's primary key.

    BCNF)	First it must conform to 3NF. For this, candidate keys can't be dependent on any other keys.

3.  This student_records table contains students and their grades in different subjects. The schema is already in first normal form (1NF). Convert this schema to the third normal form (3NF) using the techniques you learned in this checkpoint.

    http://sqlfiddle.com/#!17/b959f

4. In your own words, explain the potential disadvantages of normalizing the data above. What are its trade-offs? Submit your findings in the submission table and discuss them with your mentor in your next session.

    The DB we worked on is woefully incomplete. It lacks having thousands of students with a couple hundred professors, multiple professors per course, students retaking courses for a better grade, and many other things. I could easily add a few more tables to make it a real-life scenario that is 3NF compliant. And with approximately 6 tables, retrieving data would be a nightmare. At this point in my education, I couldn't begin to write a Join statement like that.

    The normalized database may be easy and fast to write data to, but to retrieve it would take a lot longer, not just to access but writing the queries would take exponentially longer.

5.  Looking at the tables you have normalized. If you need to denormalize to improve query performance or speed up reporting, how would you carry out denormalization for this database design? Submit potential strategies in the submission tab and discuss them with your mentor in your next session.

    To denormalize this specific database, I probably wouldn't. It's extremely small and manageable. However, if it was considerably larger, I would consider:

    A)  Reincorporating the professor_id column and use that ID with the classes_taken table.
    B)  Adding more columns to the student_records table to include "subject", "professor_id", "grade" for multiple courses.

6.  Explore the trade-offs between data normalization and denormalization in this scenario, submit your findings in the submission tab, and discuss them with your mentor in your next session.

    This database is too small to see any real benefits from either normalization or denormalization. However, as it grows, finding a nice balance between normalization and denormalization will be absolutely necessary. Pulling grades and running transcripts is a normal database function at a college and it will have to be done quite often. This means that having a fast read time and reasonable Join statements are crucial.

    The school will also need to input tons of grades so being able to write quickly without error or heavy duplication is also necessary. No one will want to work for a school that requires professors to input data multiple times for each student in a class.

    Without being a DBA jedi, I think the balance will probably be found at 2NF. That should satisfy both the professors and counselors.
