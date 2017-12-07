-- https://pgexercises.com/questions/basic/date.html

SELECT
    memid,
    surname,
    firstname,
    joindate
FROM
    cd.members m
WHERE
    m.joindate >= '2012-09-01';