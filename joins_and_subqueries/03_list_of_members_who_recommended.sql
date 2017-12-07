-- https://pgexercises.com/questions/joins/self.html

SELECT
    DISTINCT (cdmem.firstname),
    cdmem.surname
FROM
    cd.members mem
    INNER JOIN cd.members cdmem ON mem.recommendedby = cdmem.memid
    ORDER BY
        surname,
        firstname;