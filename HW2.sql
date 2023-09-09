
/* Задания 1-2 */

SELECT count_product,
CASE
	WHEN  count_product < 100
		THEN "Маленький заказ"
	WHEN  count_product > 100 AND count_product < 300
		THEN "Средний заказ"
	WHEN  count_product > 300
		THEN "Большой заказ"
END AS oder_type
FROM sales

/* Задание 3 */

SELECT id, employee_id, amount, order_status,
CASE
	WHEN  order_status = "OPEN"
		THEN "Order is in open state"
	WHEN  order_status = "CLOSED"
		THEN "Order is closed"
	WHEN  order_status = "CANCELLED"
		THEN "Order is cancelled"
END AS full_order_status
FROM orders


