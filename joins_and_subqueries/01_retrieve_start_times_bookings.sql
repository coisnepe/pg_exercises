-- https://pgexercises.com/questions/joins/simplejoin.html

SELECT
    b.starttime
FROM
    cd.bookings b
    INNER JOIN cd.members m ON m.memid = b.memid
    WHERE
        m.surname = 'Farrell'
        AND m.firstname = 'David';  