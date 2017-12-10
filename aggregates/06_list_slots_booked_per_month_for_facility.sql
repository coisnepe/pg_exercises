-- https://pgexercises.com/questions/aggregates/fachoursbymonth2.html

-- Produce a list of the total number of slots booked per facility per month in the year of 2012. Produce an output table consisting of facility id and slots, sorted by the id and month.

SELECT
    facid,
    extract(month FROM starttime) AS month,
    sum(slots) AS "Total Slots"
FROM
    cd.bookings
WHERE
    starttime <= '2012-12-31 23:59:59'
    AND starttime >= '2012-01-01 00:00:00'
GROUP BY
    month,
    facid
ORDER BY
    facid,
    month