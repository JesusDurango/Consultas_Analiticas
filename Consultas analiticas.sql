select MIN(precio_unitario) as Precio_Minimo
from producto p ;

select MAX(precio_unitario) as Precio_Maximo
from producto p ;

select AVG(precio_unitario) as Precio_Promedio
from producto p ;

select sucursal_id, SUM(cantidad) as Cntidad_Total_Stock
from stock s 
group by sucursal_id ;

select cliente_id, SUM(total) as Cantidad_Total_Ventas
from orden o 
group by cliente_id ;