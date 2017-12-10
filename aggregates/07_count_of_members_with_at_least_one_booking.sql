-- https://pgexercises.com/questions/aggregates/members1.html
-- Find the total number of members who have made at least one booking.

SELECT
    COUNT(DISTINCT (memid))
FROM
    cd.bookings;