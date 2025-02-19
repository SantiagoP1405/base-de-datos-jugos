USE ventas_jugos;

SELECT * FROM tb_cliente;

INSERT INTO `ventas_jugos`.`tb_cliente` 
(`DNI`, `NOMBRE`, `DIRECCION`, `BARRIO`, 
`CIUDAD`, `ESTADO`, `CP`, `FECHA_NACIMIENTO`, 
`EDAD`, `SEXO`, `LIMITE_CREDITO`, `VOLUMEN_COMPRA`, 
`PRIMERA_COMPRA`) VALUES ('1471156710', 'Érica Carvajo', 
'Heriberto Frías 1107', 'Del Valle', 'CDMX', 
'CDMX', '80012212', '1990-03-01', '35', 'F', 
'170000', '245000', b'1');

SELECT * FROM jugos_ventas.tabla_de_clientes;


SELECT DNI, NOMBRE, DIRECCION_1 AS DIRECCION, BARRIO, 
CIUDAD, ESTADO, CP, FECHA_DE_NACIMIENTO AS FECHA_NACIMIENTO,
EDAD, SEXO, LIMITE_DE_CREDITO AS LIMITE_CREDITO, 
VOLUMEN_DE_COMPRA AS VOLUMEN_COMPRA, PRIMERA_COMPRA FROM jugos_ventas.tabla_de_clientes
WHERE DNI NOT IN (SELECT DNI FROM tb_cliente);

ALTER TABLE tb_cliente  
MODIFY COLUMN CIUDAD VARCHAR(50);

INSERT INTO tb_cliente 
SELECT DNI, NOMBRE, DIRECCION_1 AS DIRECCION, BARRIO, 
CIUDAD, ESTADO, CP, FECHA_DE_NACIMIENTO AS FECHA_NACIMIENTO,
EDAD, SEXO, LIMITE_DE_CREDITO AS LIMITE_CREDITO, 
VOLUMEN_DE_COMPRA AS VOLUMEN_COMPRA, PRIMERA_COMPRA FROM jugos_ventas.tabla_de_clientes
WHERE DNI NOT IN (SELECT DNI FROM tb_cliente);

SELECT * FROM tb_cliente;