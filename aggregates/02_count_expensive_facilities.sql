-- https://pgexercises.com/questions/aggregates/count2.html

SELECT
    count(*)
FROM
    cd.facilities
WHERE
    guestcost > 10