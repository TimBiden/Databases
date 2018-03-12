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
