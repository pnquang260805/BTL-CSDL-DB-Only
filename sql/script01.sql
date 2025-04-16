-- Lấy ra top 5 quốc gia có số tổng thanh toán order nhiều nhất

USE e_commerce;

SELECT co.country_name, sum(o.total_amount) as total
FROM countries co
JOIN addresses a 
ON co.country_id = a.country_id
JOIN customer_address ca 
ON ca.address_id = a.address_id
JOIN customers cu
ON cu.customer_id = ca.customer_id 
JOIN orders o
ON o.customer_id = cu.customer_id
GROUP BY co.country_name
ORDER BY total DESC
LIMIT 5;