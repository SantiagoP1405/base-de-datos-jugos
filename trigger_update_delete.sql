SELECT * FROM tb_facturacion;
SELECT * FROM tb_factura1;
SELECT * FROM tb_items_facturas1;

UPDATE tb_items_facturas1 SET CANTIDAD = 800 WHERE NUMERO = '0102' AND CODIGO = '1002767';

DELETE FROM tb_items_facturas1 WHERE NUMERO = '0103' AND CODIGO = '1002767';

DELIMITER // #Decirle al Trigger que se ejecutará todo lo que vaya después
CREATE TRIGGER TG_FACTURACION_DELETE
AFTER DELETE ON tb_items_facturas1
FOR EACH ROW 
BEGIN
    DELETE FROM tb_facturacion;
    
    INSERT INTO tb_facturacion 
    SELECT A.FECHA, SUM(B.CANTIDAD * B.PRECIO) AS VENTA_TOTAL
    FROM tb_factura1 A 
    INNER JOIN tb_items_facturas1 B 
    ON A.NUMERO = B.NUMERO
    GROUP BY A.FECHA;  

END;
//


DELIMITER // #Decirle al Trigger que se ejecutará todo lo que vaya después
CREATE TRIGGER TG_FACTURACION_UPDATE
AFTER UPDATE ON tb_items_facturas1
FOR EACH ROW 
BEGIN
    DELETE FROM tb_facturacion;
    
    INSERT INTO tb_facturacion 
    SELECT A.FECHA, SUM(B.CANTIDAD * B.PRECIO) AS VENTA_TOTAL
    FROM tb_factura1 A 
    INNER JOIN tb_items_facturas1 B 
    ON A.NUMERO = B.NUMERO
    GROUP BY A.FECHA;  

END;
//
