CREATE DATABASE quadratic_equation;
USE quadratic_equation;

CREATE TABLE root_quadratic_equation (
	id INT PRIMARY KEY AUTO_INCREMENT,
	a FLOAT,
	b FLOAT,
	c FLOAT,
	delta FLOAT,
	root_1 FLOAT,
	root_2 FLOAT
);

DELIMITER //

CREATE PROCEDURE calc_delta (IN a FLOAT, IN b FLOAT, IN c FLOAT, OUT delta FLOAT)
BEGIN
	SET delta = POW(b,2)-(4*a*c);
END //

CREATE PROCEDURE calc_roots (IN a FLOAT, IN b FLOAT, IN delta FLOAT, OUT root_1 FLOAT, OUT root_2 FLOAT)
BEGIN
	IF (delta >= 0) THEN
		SET root_1 = (-b + SQRT(delta)) / (2*a);
		SET root_2 = (-b - SQRT(delta)) / (2*a);
	END IF;
END //

CREATE PROCEDURE calc_root_quadratic_equation (IN a FLOAT, IN b FLOAT, IN c FLOAT)
BEGIN
	DECLARE root_1 FLOAT;
	DECLARE root_2 FLOAT;
	DECLARE delta FLOAT;

	CALL calc_delta (a, b, c, delta);
	CALL calc_roots (a, b, delta, root_1, root_2);
	
	IF (delta >= 0) THEN
		INSERT INTO root_quadratic_equation(a, b, c, delta, root_1, root_2) VALUES (a, b, c, delta, root_1, root_2);
		SELECT 'As raízes foram inseridas no banco com sucesso.';
	ELSE
		SELECT 'A função informada não possui raízes reais.';
	END IF;
END //

DELIMITER ;

CALL calc_root_quadratic_equation(1,-6,9);
