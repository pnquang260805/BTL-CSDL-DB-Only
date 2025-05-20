-- Tìm kiến khách hàng có giá trị hóa đơn cao nhất
SELECT c.customer_id, c.first_name, c.last_name, SUM(o.total_amount) as total
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total DESC;