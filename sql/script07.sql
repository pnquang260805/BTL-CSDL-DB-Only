-- Thống kê tổng số đơn hàng theo trạng thái
SELECT status, COUNT(order_id) AS number_of_orders
FROM orders
GROUP BY status;