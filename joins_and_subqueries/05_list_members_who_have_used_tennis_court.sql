-- https://pgexercises.com/questions/joins/threejoin.html

SELECT
    DISTINCT (m.firstname || ' ' || m.surname) AS member,
    f.name
FROM
    cd.members m
    JOIN cd.bookings b ON b.memid = m.memid
    JOIN cd.facilities f ON f.facid = b.facid
WHERE
    f.name LIKE 'Tennis%'
ORDER BY
    member;