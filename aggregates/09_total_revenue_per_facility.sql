-- https://pgexercises.com/questions/aggregates/facrev.html

-- Produce a list of facilities along with their total revenue. The output table should consist of facility name and revenue, sorted by revenue. Remember that there's a different cost for guests and members!

SELECT
    f.name,
    sum(b.slots * 
      CASE WHEN (m.firstname = 'GUEST') THEN
            f.guestcost
           WHEN m.firstname != 'GUEST' THEN
            f.membercost
      END) AS revenue
FROM
    cd.facilities f
    INNER JOIN cd.bookings b ON b.facid = f.facid
    INNER JOIN cd.members m ON m.memid = b.memid
    GROUP BY
        f.name
    ORDER BY
        revenue ASC