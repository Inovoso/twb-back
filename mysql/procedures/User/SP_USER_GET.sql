DROP PROCEDURE IF EXISTS SP_USER_GET;
DELIMITER $
CREATE PROCEDURE SP_USER_GET(
    IN _id INT)
BEGIN
    SELECT * FROM User WHERE Id = _id;
END $
DELIMITER ;