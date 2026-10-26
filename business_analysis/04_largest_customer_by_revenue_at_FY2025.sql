-- Task 4: The ten accounts that matter most

SELECT trading_name, segment, province,
    COALESCE(rep_name, 'No Rep Assigned') AS sales_rep_name,
    ROUND(SUM(CASE WHEN order_date BETWEEN '2024-07-01' AND '2025-06-30' THEN line_revenue ELSE 0 END), 2) AS total_revenue_2025
FROM dbacademy.default.sizwe_customers c
JOIN dbacademy.default.sizwe_sales_orders so ON c.customer_id = so.customer_id
JOIN dbacademy.default.sizwe_sales_lines sl ON so.order_id = sl.order_id
LEFT JOIN dbacademy.default.sizwe_reps r ON c.rep_id = r.rep_id
WHERE order_date >= '2024-07-01' AND order_date < '2025-06-30'
GROUP BY c.customer_id, trading_name, segment, province, rep_name
ORDER BY total_revenue_2025 DESC
LIMIT 10

