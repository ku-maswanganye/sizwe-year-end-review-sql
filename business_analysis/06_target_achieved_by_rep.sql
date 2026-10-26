-- Task 6: Are the sale representative hitting target

SELECT r.rep_id, rep_name, territory, target_monthly,
    ROUND(COALESCE(SUM(line_revenue), 0) / 12.0, 2) AS FY2025_monthly_avg,
CASE WHEN target_monthly > 0 THEN ROUND((COALESCE(SUM(line_revenue), 0) / 12.0) / target_monthly * 100, 2) ELSE 0 END AS percentage_of_target
FROM dbacademy.default.sizwe_reps r
LEFT JOIN dbacademy.default.sizwe_sales_orders so ON r.rep_id = so.rep_id
LEFT JOIN dbacademy.default.sizwe_sales_lines sl ON so.order_id = sl.order_id
WHERE so.order_date >= '2024-07-01' AND so.order_date < '2025-06-30'
GROUP BY r.rep_id, rep_name, territory, target_monthly
ORDER BY percentage_of_target DESC;

