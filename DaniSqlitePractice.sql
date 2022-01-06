/* 1 crea tabla curso con sus atributos */
CREATE TABLE curso (
  id INT PRIMARY KEY NOT NULL,
  nombre VARCHAR(50) NOT NULL,
  descripcion VARCHAR(100) NOT NULL,
  turno VARCHAR(20) NOT NULL);
  
/* 2 Agrega campo cupo */
ALTER TABLE curso ADD cupo INT;

/* 3 inserta datos en tabla curso */
INSERT INTO curso (id, nombre, descripcion, turno, cupo) 
VALUES  
    (101, 'Algoritmos','Algoritmos y Estructuras de Datos','Mañana',35),
    (102, 'Matemática Discreta','','Tarde',30);
    
/* 4 intenta enviar nulo para comprobar funcionamiento */
INSERT INTO curso (id, nombre, descripcion, turno, cupo)
VALUES (103, NULL,'','',35);

/* 5 Intenta enviar id repetido en registro para comprobar constraint */
INSERT INTO curso (id, nombre, descripcion, turno, cupo)
VALUES (102, '' ,'' ,'' ,35);

/*6 Actualizar cupo =25 en todos registros tabla curso*/
UPDATE curso SET cupo = 25

/*7 borrar por id curso algoritmo*/
DELETE FROM curso WHERE id = 101
		
