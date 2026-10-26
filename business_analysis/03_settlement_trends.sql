-- Task 3: The collections problem

SELECT channel,
    COUNT(invoice_no) AS total_invoices,
    SUM(CASE WHEN invoice_amount = amount_settled THEN 1 ELSE 0 END) AS settled_invoices,
    SUM(CASE WHEN invoice_amount > amount_settled THEN 1 ELSE 0 END) AS open_invoices,
    AVG(CASE WHEN invoice_amount > 0 THEN DATEDIFF(day, invoice_date, due_date) END) AS avg_days_to_settle,
    ROUND(SUM(invoice_amount - amount_settled), 2) AS total_outstanding_value
FROM dbacademy.default.sizwe_customers c
INNER JOIN dbacademy.default.sizwe_ar_ledger al ON c.customer_id = al.customer_id
GROUP BY channel;

-- Answer: The average settlement days for Wholesale is 53 days while the average settlement days for Subscription is 30 days. This means customers are settling their accounts within their payment terms. However, there are 3,410 more open invoices in Wholesale. Management should investigate the reason why there are more open invoices in Wholesale than in Subscription.
