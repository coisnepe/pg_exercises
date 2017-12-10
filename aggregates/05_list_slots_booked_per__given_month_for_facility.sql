-- https://pgexercises.com/questions/aggregates/fachoursbymonth.html

SELECT
    facid,
    sum(slots) AS "Total Slots"
FROM
    cd.bookings
WHERE
    starttime <= '2012-09-30 23:59:59'
    AND starttime >= '2012-09-01 00:00:00'
GROUP BY
    facid
ORDER BY
    sum(slots)
