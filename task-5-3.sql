SELECT AVG(quantity), order_id
FROM (SELECT quantity, order_id FROM order_details WHERE order_details.quantity > 10) as temp_table
GROUP BY temp_table.order_id