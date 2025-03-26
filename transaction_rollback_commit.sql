INSERT INTO `ventas_jugos`.`tb_vendedor`
(`MATRICULA`,
`NOMBRE`,
`BARRIO`,
`COMISION`,
`FECHA_ADMISION`,
`DE_VACACIONES`)
VALUES
('256',
'Mario Alejandro',
'Real de Mondongo',
'0.1',
'2015-06-14',
0);

SELECT * FROM tb_vendedor;

START TRANSACTION; #Al comenzar una transacción, se establece
#un punto de estado en la base de datos, lo que significa que 
#cualquier cambio que realices (como INSERT, UPDATE o DELETE) 
#no se guardará de forma permanente hasta que ejecutes un COMMIT.

INSERT INTO `ventas_jugos`.`tb_vendedor`
(`MATRICULA`,
`NOMBRE`,
`BARRIO`,
`COMISION`,
`FECHA_ADMISION`,
`DE_VACACIONES`)
VALUES
('257',
'Mario Rojas',
'Oblatos',
'0.1',
'2015-06-14',
0);

INSERT INTO `ventas_jugos`.`tb_vendedor`
(`MATRICULA`,
`NOMBRE`,
`BARRIO`,
`COMISION`,
`FECHA_ADMISION`,
`DE_VACACIONES`)
VALUES
('258',
'Davis Prieto',
'Del Valle',
'0.15',
'2015-06-14',
0);

UPDATE tb_vendedor SET COMISION = COMISION * 1.05;

ROLLBACK; #Regresa la tabla a como estaba antes de la TRANSACTION 

COMMIT; # Confirma los cambios de la transacción