-- Task 2: Where the profit actually comes from

SELECT product_line,
    ROUND(SUM(line_revenue), 2) AS total_revenue,
    ROUND(SUM(cogs), 2) AS total_cogs,
    ROUND(SUM(line_revenue) - SUM(cogs), 2) AS gross_profit,
    ROUND(CASE WHEN SUM(line_revenue) = 0 THEN 0
         ELSE (SUM(line_revenue)- SUM(cogs)) / SUM(line_revenue) * 100
    END, 2) AS gross_margin_pct
FROM dbacademy.default.sizwe_sales_lines sl
JOIN dbacademy.default.sizwe_products p ON sl.sku = p.sku
GROUP BY product_line;

-- Answer: The product line that generates the most profit is Single Orignin, generating a gross profit of R75,312,800.87. Moreover, it earns the highest profit margin of 44.27%, compared to other product lines.
