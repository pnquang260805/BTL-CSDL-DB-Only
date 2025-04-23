-- Tìm kiếm sản phẩm bán chạy nhất (có nhiều lượt order nhất)
SELECT p.product_id, p.product_name, p.price, COUNT(op.order_id) AS number_of_orders
FROM products p
JOIN order_product op
ON p.product_id = op.product_id
GROUP BY p.product_id, p.product_name, p.price
ORDER BY number_of_orders DESC;