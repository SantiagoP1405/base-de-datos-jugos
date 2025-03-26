CREATE TABLE tb_identificacion(
ID INT AUTO_INCREMENT NOT NULL,
DESCRIPCION VARCHAR(50) NULL,
PRIMARY KEY(ID) 
);

SELECT * FROM tb_identificacion;

INSERT INTO tb_identificacion(DESCRIPCION)
VALUES('Cliente A');
INSERT INTO tb_identificacion(DESCRIPCION)
VALUES('Cliente B');
INSERT INTO tb_identificacion(DESCRIPCION)
VALUES('Cliente C');
INSERT INTO tb_identificacion(DESCRIPCION)
VALUES('Cliente D');
INSERT INTO tb_identificacion(DESCRIPCION)
VALUES('Cliente E');

DELETE FROM tb_identificacion WHERE ID = 4;

INSERT INTO tb_identificacion(DESCRIPCION)
VALUES('Cliente F');

INSERT INTO tb_identificacion(ID, DESCRIPCION)
VALUES(100, 'Cliente G');

INSERT INTO tb_identificacion(DESCRIPCION)
VALUES('Cliente H');