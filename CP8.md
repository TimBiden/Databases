1.  A)  hotel=# SELECT guests.first_name, guests.last_name
        hotel-# FROM guests
        hotel-# LEFT JOIN reservations
        hotel-#   ON guests.guest_email = reservations.res_email
        hotel-# WHERE reservations.res_email IS NULL;
         first_name | last_name
        ------------+-----------
         Dallas     | Jacobs
         Doyle      | Love
         Loretta    | Greene
         Andrea     | Lynch
         Isabel     | Kelly
         Bonnie     | Webster
         Constance  | Norris
         Leona      | Watts
        (8 rows)


    B)  hotel=# SELECT guests.first_name, guests.last_name, reservations.check_in, COUNT(reservations.room_booked) AS Rooms
        hotel-# FROM guests
        hotel-# LEFT JOIN reservations ON guests.guest_email = reservations.res_email
        hotel-# GROUP BY guests.first_name, guests.last_name, reservations.check_in
        hotel-# HAVING COUNT(reservations.check_in) > 1;
         first_name | last_name |  check_in  | rooms
        ------------+-----------+------------+-------
         Helen      | Cain      | 2018-12-24 |     2
        (1 row)


    C)  hotel=# select rooms.room_number, guests.first_name, guests.last_name, COUNT(reservations.room_booked) AS "stays in room"
        hotel-# FROM guests
        hotel-# JOIN reservations on guests.guest_email = reservations.res_email
        hotel-# JOIN rooms on rooms.room_number = reservations.room_booked
        hotel-# GROUP BY rooms.room_number, guests.first_name, guests.last_name
        hotel-# HAVING COUNT(reservations.room_booked) > 1;
         room_number | first_name | last_name | stays in room
        -------------+------------+-----------+---------------
                 410 | Shari      | Fernandez |             3
        (1 row)


    D)  hotel=# SELECT reservations.room_booked AS room, COUNT(reservations.room_booked) AS "times booked"
        FROM guests
        LEFT JOIN reservations ON guests.guest_email = reservations.res_email
        GROUP BY reservations.room_booked
        HAVING COUNT(DISTINCT reservations.room_booked) > 0;
         room | times booked
        ------+--------------
          110 |            1
          132 |            1
          140 |            1
          143 |            2
          152 |            1
          163 |            1
          164 |            1
          166 |            1
          178 |            1
          207 |            2
          222 |            1
          238 |            1
          239 |            1
          256 |            2
          281 |            1
          362 |            1
          410 |            3
          451 |            1
          517 |            1
        (19 rows)

2.  A)  OK.

    B)  student Table:
        student_name    varchar
        student_id      serial

        classes_taken Table:
        class_id        varchar(7)
        class_name      varchar
        student_id      integer
        grade           varchar(1)

    C)   OK.

    D)  Image file is: DB Tables.png
        Located at: https://github.com/TimBiden/Databases/commit/c2dac9b6b3f38077a5d366526603288a856a76f2#diff-a33717762d3c2c23e5a68b2683111349

3.  A)  college=# SELECT class_list.class_name, classes_taken.student_id, students.student_name
        college-# FROM class_list
        college-# JOIN classes_taken ON class_list.class_id = classes_taken.class_id
        college-# JOIN students ON classes_taken.student_id = students.student_id
        college-# WHERE classes_taken.class_id = 'CISP-54';
                   class_name            | student_id |    student_name    
        ---------------------------------+------------+--------------------
         Programming for Android Devices |          2 | Ashley Shott
         Programming for Android Devices |          4 | Agatha Winebrenner
         Programming for Android Devices |         19 | Geralyn Wilbanks
         Programming for Android Devices |         20 | Chad Coffey
         Programming for Android Devices |         23 | Emiko Parten
         Programming for Android Devices |         25 | Jeanne Mcnamara
         Programming for Android Devices |         30 | Mirtha Fullen
        (7 rows)

    B)  college=# SELECT class_list.class_name, classes_taken.grade, COUNT(classes_taken.grade)
        college-# FROM class_list
        college-# JOIN classes_taken ON class_list.class_id = classes_taken.class_id
        college-# GROUP BY class_list.class_name, classes_taken.grade
        college-# ORDER BY class_list.class_name, classes_taken.grade;
                           class_name                   | grade | count
        ------------------------------------------------+-------+-------
         Advanced C++ Programming                       | A     |     3
         Advanced C++ Programming                       | B     |     1
         Advanced C++ Programming                       | C     |     1
         Advanced C++ Programming                       | D     |     2
         Advertising and Promotion                      | A     |     1
         Advertising and Promotion                      | B     |     3
         Advertising and Promotion                      | C     |     1
         Advertising and Promotion                      | D     |     2
         Air Traffic Control Team Skills                | A     |     1
         Air Traffic Control Team Skills                | C     |     3
         Air Traffic Control Team Skills                | D     |     4
         Alcohol/Drug Dependency                        | A     |     2
         Alcohol/Drug Dependency                        | B     |     2
         Alcohol/Drug Dependency                        | C     |     2
         Alcohol/Drug Dependency                        | D     |     2
         Archaeology                                    | A     |     1
         Archaeology                                    | B     |     3
         Archaeology                                    | D     |     2
         Archaeology                                    | F     |     1
         Art, Artists and Society                       | B     |     1
         Art, Artists and Society                       | C     |     3
         Art, Artists and Society                       | D     |     2
         Art, Artists and Society                       | F     |     1
         Aviculture - Cage and Aviary Birds             | B     |     1
         Aviculture - Cage and Aviary Birds             | D     |     2
         Aviculture - Cage and Aviary Birds             | F     |     5
         Biological Anthropology                        | A     |     1
         Biological Anthropology                        | C     |     2
         Biological Anthropology                        | D     |     3
         Biological Anthropology                        | F     |     1
         Canine Management                              | A     |     1
         Canine Management                              | B     |     2
         Canine Management                              | C     |     2
         Canine Management                              | D     |     3
         Community Relations                            | A     |     4
         Community Relations                            | B     |     3
         Community Relations                            | C     |     1
         Continuing Elementary Arabic                   | A     |     2
         Continuing Elementary Arabic                   | B     |     1
         Continuing Elementary Arabic                   | D     |     1
         Continuing Elementary Arabic                   | F     |     3
         Elementary Arabic                              | A     |     2
         Elementary Arabic                              | B     |     1
         Elementary Arabic                              | C     |     3
         Elementary Arabic                              | D     |     1
         Family Counseling                              | A     |     1
         Family Counseling                              | B     |     2
         Family Counseling                              | C     |     3
         Family Counseling                              | D     |     1
         Feline Management                              | A     |     2
         Feline Management                              | B     |     1
         Feline Management                              | C     |     1
         Feline Management                              | D     |     4
         Flight Instructor Ground School                | A     |     1
         Flight Instructor Ground School                | B     |     1
         Flight Instructor Ground School                | C     |     1
         Flight Instructor Ground School                | D     |     3
         Flight Instructor Ground School                | F     |     2
         Geology of the Solar System                    | A     |     4
         Geology of the Solar System                    | B     |     1
         Geology of the Solar System                    | C     |     1
         Geology of the Solar System                    | D     |     1
         Introduction to Astronomy                      | A     |     3
         Introduction to Astronomy                      | B     |     2
         Introduction to Astronomy                      | D     |     2
         Introduction to Forensics for Criminal Justice | A     |     4
         Introduction to Forensics for Criminal Justice | B     |     1
         Introduction to Forensics for Criminal Justice | C     |     2
         Introduction to Forensics for Criminal Justice | F     |     1
         Medical Nursing and Animal Care                | A     |     1
         Medical Nursing and Animal Care                | B     |     1
         Medical Nursing and Animal Care                | C     |     1
         Medical Nursing and Animal Care                | D     |     4
         Medical Nursing and Animal Care                | F     |     1
         Network Vulnerabilities and Countermeasures    | A     |     2
         Network Vulnerabilities and Countermeasures    | B     |     2
         Network Vulnerabilities and Countermeasures    | C     |     2
         Network Vulnerabilities and Countermeasures    | D     |     1
         Physiological Effects of Alcohol/Drugs         | A     |     1
         Physiological Effects of Alcohol/Drugs         | B     |     1
         Physiological Effects of Alcohol/Drugs         | C     |     2
         Physiological Effects of Alcohol/Drugs         | D     |     3
         Primary Pilot Ground School                    | A     |     3
         Primary Pilot Ground School                    | B     |     2
         Primary Pilot Ground School                    | C     |     1
         Primary Pilot Ground School                    | D     |     1
         Primary Pilot Ground School                    | F     |     1
         Programming for Android Devices                | A     |     1
         Programming for Android Devices                | B     |     4
         Programming for Android Devices                | D     |     2
         Programming in C++ Laboratory                  | A     |     2
         Programming in C++ Laboratory                  | B     |     2
         Programming in C++ Laboratory                  | D     |     2
         Programming in C++ Laboratory                  | F     |     1
         Programming in Java Laboratory                 | A     |     2
         Programming in Java Laboratory                 | B     |     2
         Programming in Java Laboratory                 | C     |     1
         Programming in Java Laboratory                 | D     |     2
         Small Business Management                      | A     |     2
         Small Business Management                      | B     |     3
         Small Business Management                      | D     |     2
         The Administration of Justice System           | A     |     2
         The Administration of Justice System           | B     |     4
         The Administration of Justice System           | C     |     1
         The Administration of Justice System           | D     |     1
        (105 rows)

    C)  college=# SELECT class_list.class_name, COUNT(classes_taken.class_id)
        FROM class_list
        JOIN classes_taken ON class_list.class_id = classes_taken.class_id
        GROUP BY class_list.class_name
        ORDER BY class_list.class_name;
                           class_name                   | count
        ------------------------------------------------+-------
         Advanced C++ Programming                       |     7
         Advertising and Promotion                      |     7
         Air Traffic Control Team Skills                |     8
         Alcohol/Drug Dependency                        |     8
         Archaeology                                    |     7
         Art, Artists and Society                       |     7
         Aviculture - Cage and Aviary Birds             |     7
         Biological Anthropology                        |     7
         Canine Management                              |     8
         Community Relations                            |     8
         Continuing Elementary Arabic                   |     7
         Elementary Arabic                              |     7
         Family Counseling                              |     7
         Feline Management                              |     8
         Flight Instructor Ground School                |     8
         Geology of the Solar System                    |     7
         Introduction to Astronomy                      |     7
         Introduction to Forensics for Criminal Justice |     8
         Medical Nursing and Animal Care                |     8
         Network Vulnerabilities and Countermeasures    |     7
         Physiological Effects of Alcohol/Drugs         |     7
         Primary Pilot Ground School                    |     8
         Programming for Android Devices                |     9
         Programming in C++ Laboratory                  |     6
         Programming in Java Laboratory                 |     7
         Small Business Management                      |     7
         The Administration of Justice System           |     8
        (27 rows)

    D)  college=# SELECT class_list.class_name AS my_name, COUNT(classes_taken.class_id) AS my_count
        college-# FROM class_list
        college-# JOIN classes_taken ON class_list.class_id = classes_taken.class_id
        college-# GROUP BY class_list.class_name
        college-# ORDER BY class_list.class_name
        college-# LIMIT 1;
                 my_name          | my_count
        --------------------------+----------
         Advanced C++ Programming |        7
        (1 row)
