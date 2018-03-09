1.  hotel=# SELECT guests.first_name, guests.last_name
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


    hotel=# SELECT guests.first_name, guests.last_name, reservations.check_in, COUNT(reservations.room_booked) AS Rooms
    hotel-# FROM guests
    hotel-# LEFT JOIN reservations ON guests.guest_email = reservations.res_email
    hotel-# GROUP BY guests.first_name, guests.last_name, reservations.check_in
    hotel-# HAVING COUNT(reservations.check_in) > 1;
     first_name | last_name |  check_in  | rooms
    ------------+-----------+------------+-------
     Helen      | Cain      | 2018-12-24 |     2
    (1 row)
