CREATE TABLE `tb_producto_2` (
  `CODIGO` varchar(10) NOT NULL,
  `DESCRIPCION` varchar(100) DEFAULT NULL,
  `SABOR` varchar(50) DEFAULT NULL,
  `TAMAÑO` varchar(50) DEFAULT NULL,
  `ENVASE` varchar(50) DEFAULT NULL,
  `PRECIO_LISTA` float DEFAULT NULL,
  PRIMARY KEY (`CODIGO`)
);

SELECT * FROM tb_producto_2;

#Copia todos los registros de la tabla de productos original a la nueva
INSERT INTO tb_producto_2 SELECT * FROM tb_producto;

#Aumenta el precio de los productos en un 15%
UPDATE tb_producto_2 SET PRECIO_LISTA = PRECIO_LISTA*1.15;

#Borra todos los registros de la tabla 
DELETE FROM tb_producto_2;