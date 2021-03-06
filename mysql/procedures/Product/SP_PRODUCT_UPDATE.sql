DROP PROCEDURE IF EXISTS SP_PRODUCT_UPDATE;
DELIMITER $
CREATE PROCEDURE SP_PRODUCT_UPDATE(
    IN _id INT,
    IN _idProductCategory INT,
    IN _name VARCHAR(64),
    IN _price BIGINT,
    IN _photo LONGTEXT)
BEGIN
    UPDATE Product SET
        Id_ProductCategory = _idProductCategory,
        Name = _name,
        Price = _price,
        Photo = _photo
    WHERE Id = _id;
END $
DELIMITER ;
