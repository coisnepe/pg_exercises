SELECT
  DISTINCT(mem.firstname || ' ' || mem.surname) AS member,
  (rec.firstname || ' ' || rec.surname) AS recommender
FROM cd.members mem
LEFT JOIN cd.members rec
    ON mem.recommendedby = rec.memid
ORDER BY  member;