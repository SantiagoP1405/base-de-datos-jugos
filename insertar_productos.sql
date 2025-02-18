USE ventas_jugos;
INSERT INTO tb_producto (CODIGO, DESCRIPCION, SABOR, TAMAÑO, ENVASE, PRECIO_LISTA) 
VALUES ('1040107', 'LIGHT', 'Sandía', '350 ml', 'Lata', 4.56);

INSERT INTO tb_producto (CODIGO, DESCRIPCION, SABOR, TAMAÑO, ENVASE, PRECIO_LISTA) 
VALUES ('1040108', 'LIGHT', 'Guanábana', '350 ml', 'Lata', 4.00);

INSERT INTO tb_producto VALUES ('1040109', 'LIGHT', 'Asaí', '350 ml', 'Lata', 4.56);

INSERT INTO tb_producto VALUES 
('1040110', 'LIGHT', 'Manzana', '350 ml', 'Lata', 6.00),
('1040111', 'LIGHT', 'Mango', '350 ml', 'Lata', 3.50);

SELECT * FROM tb_producto;