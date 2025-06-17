DROP FUNCTION IF EXISTS Custom_division;

DELIMITER //

CREATE FUNCTION Custom_division(input_number FLOAT, input_value FLOAT)
RETURNS FLOAT
DETERMINISTIC
NO SQL
BEGIN
	DECLARE result INT DEFAULT 0;
    SET result = input_number / input_value;
    RETURN result;
END //

DELIMITER ;