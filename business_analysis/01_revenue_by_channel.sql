-- Task 1: Channel performance
SELECT channel,
    ROUND(SUM(CASE WHEN order_date BETWEEN '2023-07-01' AND '2024-06-30' THEN line_revenue ELSE 0 END), 2) AS FY2024,
    ROUND(SUM(CASE WHEN order_date BETWEEN '2024-07-01' AND '2025-06-30' THEN line_revenue ELSE 0 END), 2) AS FY2025,
    ROUND(CASE WHEN SUM(CASE WHEN order_date BETWEEN '2023-07-01' AND '2024-06-30' THEN line_revenue ELSE 0 END) = 0 THEN NULL
    ELSE((SUM(CASE WHEN order_date BETWEEN '2024-07-01' AND '2025-06-30' THEN line_revenue ELSE 0 END) - 
    SUM(CASE WHEN order_date BETWEEN '2023-07-01' AND '2024-06-30' THEN line_revenue ELSE 0 END))
    / SUM(CASE WHEN order_date BETWEEN '2023-07-01' AND '2024-06-30' THEN line_revenue ELSE 0 END))*100 END, 2) AS growth_rate_pct
FROM dbacademy.default.sizwe_sales_orders so
JOIN dbacademy.default.sizwe_sales_lines sl ON so.order_id = sl.order_id
WHERE order_date >= '2023-07-01' AND order_date < '2025-06-30'
GROUP BY channel
ORDER BY channel;
-- Answer:  Wholesale has a sligtly higer growth rate of 0.01% than Subscription. Therefore, the growth rate from FY2024 to FY2025 between the two Channels is more or less the same.
