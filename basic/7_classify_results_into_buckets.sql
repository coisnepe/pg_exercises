-- https://pgexercises.com/questions/basic/classify.html

SELECT
    name,
    CASE WHEN (monthlymaintenance > 100) THEN
        'expensive'
    ELSE
        'cheap'
    END AS COST
FROM
    cd.facilities;