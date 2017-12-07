-- https://pgexercises.com/questions/joins/self2.html

SELECT
    mem.firstname AS memfname,
    mem.surname AS memsname,
    rec.firstname AS recfname,
    rec.surname AS recsname
FROM
    cd.members mem
    LEFT JOIN cd.members rec ON mem.recommendedby = rec.memid
ORDER BY
    mem.surname,
    mem.firstname