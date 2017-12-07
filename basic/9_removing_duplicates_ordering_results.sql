-- https://pgexercises.com/questions/basic/unique.html

SELECT
    surname
FROM
    cd.members
GROUP BY
    surname
ORDER BY
    surname
    limit 10;