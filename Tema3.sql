/* 1. Nombre, apellido y fecha de nacimiento de todos los empleados, ordenado por fecha de nacimiento ascendente. */
SELECT nombre, apellido, fecha_nacimiento FROM profesor
ORDER by fecha_nacimiento ASC

/* 2. Todos los profesores cuyo salario sea mayor o igual a 65000.*/
SELECT * FROM profesor WHERE salario >= 65000

/* 3. Todos los profesores que nacieron en la década del 80.*/
SELECT * FROM profesor WHERE fecha_nacimiento
BETWEEN '1980' and '1990'

/* 4. 5 registros*/
SELECT * FROM profesor limit 5

/* 5. Todos los profesores cuyo apellido inicie con la letra “P”*/
SELECT * from profesor WHERE apellido LIKE 'p%'

/* 6. Los profesores que nacieron en la década del 80 y tienen un salario mayor a 80000*/
SELECT * FROM profesor WHERE salario >= 80000
AND fecha_nacimiento
BETWEEN '1980' AND '1990'

