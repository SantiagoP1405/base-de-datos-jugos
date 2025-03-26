USE ventas_jugos;
CREATE TABLE tb_facturacion(
	FECHA DATE NULL,
    VENTA_TOTAL FLOAT 
);

SELECT * FROM tb_facturacion;

CREATE TABLE `tb_factura1` (
  `NUMERO` varchar(10) NOT NULL,
  `FECHA` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `DNI` varchar(20) NOT NULL,
  `MATRICULA` varchar(5) NOT NULL,
  `IMPUESTO` float DEFAULT NULL,
  PRIMARY KEY (`NUMERO`),
  KEY `DNI1` (`DNI`),
  KEY `MATRICULA1` (`MATRICULA`),
  CONSTRAINT `tb_factura_ibfk_1_1` FOREIGN KEY (`DNI`) REFERENCES `tb_cliente` (`DNI`),
  CONSTRAINT `tb_factura_ibfk_2_1` FOREIGN KEY (`MATRICULA`) REFERENCES `tb_vendedor` (`MATRICULA`)
);

CREATE TABLE `tb_items_facturas1` (
  `NUMERO` varchar(5) NOT NULL,
  `CODIGO` varchar(10) NOT NULL,
  `CANTIDAD` int DEFAULT NULL,
  `PRECIO` float DEFAULT NULL,
  PRIMARY KEY (`NUMERO`,`CODIGO`),
  KEY `CODIGO1` (`CODIGO`),
  CONSTRAINT `tb_items_facturas_ibfk_1_1` FOREIGN KEY (`NUMERO`) REFERENCES `tb_factura` (`NUMERO`),
  CONSTRAINT `tb_items_facturas_ibfk_2_1` FOREIGN KEY (`CODIGO`) REFERENCES `tb_producto` (`CODIGO`)
);

SET foreign_key_checks = 0;
SET SQL_SAFE_UPDATES = 0;


SELECT * FROM tb_items_facturas1;
SELECT * FROM jugos_ventas.facturas;
SELECT * FROM tb_factura1;
SELECT * FROM tb_factura;
SELECT * FROM tb_cliente;
SELECT * FROM tb_vendedor;
SELECT * FROM jugos_ventas.tabla_de_vendedores;
SELECT * FROM tb_producto;

INSERT INTO tb_factura1 VALUES(
'0100',
'2021-01-01',
'1471156710',
'235',
0.10
);

INSERT INTO tb_items_facturas1 VALUES(
'0100',
'1002767',
100,
25
),
(
'0100',
'1004327',
100,
25
),
(
'0100',
'1013793',
100,
25
);


SELECT A.FECHA, SUM(B.CANTIDAD * B.PRECIO) AS VENTA_TOTAL
FROM tb_factura1 A 
INNER JOIN tb_items_facturas1 B 
ON A.NUMERO = B.NUMERO
GROUP BY A.FECHA;  

DELIMITER // #Decirle al Trigger que se ejecutará todo lo que vaya después
CREATE TRIGGER TG_FACTURACION_INSERT
AFTER INSERT ON tb_items_facturas1
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

DELIMITER ;

INSERT INTO tb_factura1 VALUES(
'0102',
'2021-01-01',
'1471156710',
'235',
0.10
);

INSERT INTO tb_items_facturas1 VALUES(
'0102',
'1002767',
100,
25
),
(
'0102',
'1004327',
100,
25
),
(
'0102',
'1013793',
100,
25
);

INSERT INTO tb_factura1 VALUES(
'0103',
'2021-01-01',
'1471156710',
'235',
0.10
);

INSERT INTO tb_items_facturas1 VALUES(
'0103',
'1002767',
100,
25
),
(
'0103',
'1004327',
100,
25
),
(
'0103',
'1013793',
100,
25
);

INSERT INTO tb_factura1 VALUES(
'0104',
'2021-01-01',
'1471156710',
'235',
0.10
);

INSERT INTO tb_items_facturas1 VALUES(
'0104',
'1002767',
200,
25
),
(
'0104',
'1004327',
200,
25
),
(
'0104',
'1013793',
200,
25
);