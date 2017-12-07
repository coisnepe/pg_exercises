-- https://pgexercises.com/questions/aggregates/fachours.html

SELECT
    cd.facilities.facid,
    sum(cd.bookings.slots) AS "Total Slots"
FROM
    cd.facilities
    JOIN cd.bookings ON cd.bookings.facid = cd.facilities.facid
GROUP BY
    cd.facilities.facid
ORDER BY
    facid ASC