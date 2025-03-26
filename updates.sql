SELECT * FROM tb_producto;

#Para actualizar el precio del id '1000889'
UPDATE tb_producto SET PRECIO_LISTA = 5 WHERE CODIGO = 1000889;

#Para actualizar el nombre, tamaño y envase del id '1000889'
UPDATE tb_producto SET DESCRIPCION = 'Sabor de la Montaña',
TAMAÑO = '1 Litro', ENVASE = 'Botella PET' WHERE CODIGO = 1000889;

SELECT * FROM tb_cliente;

#Para colocar el volumen de compra en litros, en lugar de decilitros
UPDATE tb_cliente SET VOLUMEN_COMPRA = VOLUMEN_COMPRA/10;