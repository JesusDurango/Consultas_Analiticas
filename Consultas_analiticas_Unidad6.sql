select c.nombre as Categoria, AVG(p.precio_unitario) as Precio_promedio_categoria
from producto p 
join categoria c on p.categoria_id =c.id 
group by c.nombre;

select c.nombre  as categoria, SUM(s.cantidad) as Cantidad_total_categoria
from categoria c 
join stock s  on c.id  = s.id  
group by  c.nombre;

SELECT c.nombre, SUM(s.cantidad) AS cantidad_total_stock
FROM categoria c
left JOIN producto p ON c.id = p.categoria_id 
right JOIN stock s ON p.id = s.producto_id 
GROUP BY c.id
order by cantidad_total_stock desc;


select s.nombre as sucursal, SUM(o.total) as Total_Ventas
from orden o 
join sucursal s on o.sucursal_id = s.id 
group by s.nombre 
order by s.nombre;

select c.nombre  as Cliente, sum(o.total) as Monto_maximo_compras
from orden o 
join cliente c on o.cliente_id  = c.id
group by c.nombre
order by count(*)desc,c.nombre asc
limit 1;