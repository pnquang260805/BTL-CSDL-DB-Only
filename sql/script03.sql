-- Hiển thị khách hàng có độ tuổi từ 20 - 30
SELECT customer_id,
    first_name,
    last_name,
    phone_number,
    (YEAR(NOW()) - YEAR(date_of_birth)) AS age
FROM customers
WHERE (YEAR(NOW()) - YEAR(date_of_birth)) >= 20
    AND (YEAR(NOW()) - YEAR(date_of_birth)) <= 30