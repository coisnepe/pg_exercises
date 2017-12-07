-- https://pgexercises.com/questions/basic/where4.html

SELECT
    *
FROM
    cd.facilities
WHERE
    facid IN (1, 5);