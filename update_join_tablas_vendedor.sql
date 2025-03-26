SELECT * FROM tb_vendedor;

SELECT * FROM jugos_ventas.tabla_de_vendedores;

#Para unir ambas tablas
SELECT * FROM tb_vendedor A INNER JOIN jugos_ventas.tabla_de_vendedores B
ON A.MATRICULA = SUBSTRING(B.MATRICULA,3,3); #se utiliza 
#para extraer una parte específica de la cadena de texto 
#que se encuentra en el campo MATRICULA de la tabla B.

#Crea una columna en la tabla A, copiando las VACACIONES de la tabla B
UPDATE tb_vendedor A INNER JOIN jugos_ventas.tabla_de_vendedores B
ON A.MATRICULA = SUBSTRING(B.MATRICULA,3,3) SET A.DE_VACACIONES = B.VACACIONES;

SELECT * FROM tb_vendedor;