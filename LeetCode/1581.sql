WITH CustomerVisits AS (
    SELECT DISTINCT v.customer_id, v.visit_id
    FROM Visits v
    LEFT JOIN Transactions t ON v.visit_id = t.visit_id
)
SELECT cv.customer_id, 
    COUNT(cv.visit_id) AS count_no_trans
FROM CustomerVisits cv
LEFT JOIN Transactions t ON cv.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY cv.customer_id
