-- https://pgexercises.com/questions/aggregates/fachours1a.html

-- Produce a list of facilities with more than 1000 slots booked. Produce an output table consisting of facility id and hours, sorted by facility id.

SELECT
    facid,
    sum(slots)
FROM
    cd.bookings
GROUP BY
    facid
HAVING
    sum(slots) >= 1000
ORDER BY
    facid