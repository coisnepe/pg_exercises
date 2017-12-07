-- https://pgexercises.com/questions/aggregates/count.html

SELECT
    facid, (
        SELECT
            count(*)
        FROM
            cd.facilities)
    FROM
        cd.facilities