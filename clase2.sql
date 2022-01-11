

/* Cantidad de pasajeros por país */

SELECT a.nombre, COUNT(p.idpais)
from pais a INNER join pasajero p on  a.idpais=p.idpais
GROUP by a.nombre

/* Suma de todos los pagos realizados */
SELECT SUM(monto) from pago

/* Suma de todos los pagos realizados por un pasajero */
SELECT p.nombre, SUM(monto) as 'monto pagado'
from pago a INNER JOIN pasajero p on a.idpasajero=p.idpasajero
GROUP by p.nombre

/* promedio de pago de un pasajero*/
SELECT p.nombre, AVG(monto) as 'monto pagado'
from pago a INNER JOIN pasajero p on a.idpasajero=p.idpasajero
GROUP by p.nombre
