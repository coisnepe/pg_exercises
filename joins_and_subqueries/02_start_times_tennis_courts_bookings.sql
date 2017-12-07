-- https://pgexercises.com/questions/joins/simplejoin2.html

SELECT
    b.starttime,
    f.name
FROM
    cd.bookings b
    JOIN cd.facilities f ON f.facid = b.facid
WHERE
    f.name LIKE '%Tennis Court%'
    AND b.starttime::date = '2012-09-21'
ORDER BY
    b.starttime