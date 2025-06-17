WITH temp_table AS(
	SELECT quantity, order_id 
	FROM order_details 
	WHERE order_details.quantity > 10
)
SELECT AVG(quantity), order_id
FROM temp_table
GROUP BY order_id