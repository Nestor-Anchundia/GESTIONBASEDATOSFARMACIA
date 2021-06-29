/*CONSULTAS*/
/*CONSULTA 1*/
/*vendedor con mayor experiencia en sucursal 1*/

select EMPLEADO.EMPLEADO_F_INGRESO_LABORAL, EMPLEADO.EMPLEADO_APELLIDO,
max(EMPLEADO_NOMBRE ) from sucursal inner join EMPLEADO on sucursal.sucursal_codigo=empleado.sucursal_codigo
where sucursal.sucursal_codigo=1
group by EMPLEADO_F_INGRESO_LABORAL,EMPLEADO.EMPLEADO_APELLIDO
limit 1;
/*vendedor con mayor experiencia en sucursal 2*/

select EMPLEADO.EMPLEADO_F_INGRESO_LABORAL, EMPLEADO.EMPLEADO_APELLIDO,
max(EMPLEADO_NOMBRE ) from sucursal inner join EMPLEADO on sucursal.sucursal_codigo=empleado.sucursal_codigo
where sucursal.sucursal_codigo=2
group by EMPLEADO_F_INGRESO_LABORAL,EMPLEADO.EMPLEADO_APELLIDO
limit 1;


/*vendedor con mayor experiencia en sucursal 3*/

select EMPLEADO.EMPLEADO_F_INGRESO_LABORAL, EMPLEADO.EMPLEADO_APELLIDO,
max(EMPLEADO_NOMBRE ) from sucursal inner join EMPLEADO on sucursal.sucursal_codigo=empleado.sucursal_codigo
where sucursal.sucursal_codigo=3
group by EMPLEADO_F_INGRESO_LABORAL,EMPLEADO.EMPLEADO_APELLIDO
limit 1;
/*vendedor con mayor experiencia en sucursal 4*/

select EMPLEADO.EMPLEADO_F_INGRESO_LABORAL, EMPLEADO.EMPLEADO_APELLIDO,
max(EMPLEADO_NOMBRE ) from sucursal inner join EMPLEADO on sucursal.sucursal_codigo=empleado.sucursal_codigo
where sucursal.sucursal_codigo=4
group by EMPLEADO_F_INGRESO_LABORAL,EMPLEADO.EMPLEADO_APELLIDO
limit 1;
/*======================================================================*/
/*CONSULTA 2*/
/*hay hermanos trabajando dentro de una sucursal*/
/*sucursal 1*/
select empleado.empleado_nombre, empleado.empleado_apellido, sucursal.sucursal_direccion, 
count(empleado.empleado_nombre)
from condicion_del_empleado inner join empleado on condicion_del_empleado.estado_id=empleado.estado_id
inner join sucursal on sucursal.sucursal_codigo= empleado.sucursal_codigo
where  sucursal.sucursal_codigo=1 and condicion_del_empleado.estado_id=2
group by EMPLEADO_NOMBRE,EMPLEADO_APELLIDO ,sucursal_direccion

select empleado.empleado_nombre, empleado.empleado_apellido, sucursal.sucursal_direccion, 
count(empleado.empleado_nombre)
from condicion_del_empleado inner join empleado on condicion_del_empleado.estado_id=empleado.estado_id
inner join sucursal on sucursal.sucursal_codigo= empleado.sucursal_codigo
where empleado.empleado_apellido='Anchundia Anchundia' and sucursal.sucursal_codigo=1 and condicion_del_empleado.estado_id=2
group by EMPLEADO_NOMBRE,EMPLEADO_APELLIDO ,sucursal_direccion 

/*sucursal 2*/
select empleado.empleado_nombre, empleado.empleado_apellido, sucursal.sucursal_direccion, 
count(empleado.empleado_nombre)
from condicion_del_empleado inner join empleado on condicion_del_empleado.estado_id=empleado.estado_id
inner join sucursal on sucursal.sucursal_codigo= empleado.sucursal_codigo
where  sucursal.sucursal_codigo=2 and condicion_del_empleado.estado_id=2
group by EMPLEADO_NOMBRE,EMPLEADO_APELLIDO ,sucursal_direccion

select empleado.empleado_nombre, empleado.empleado_apellido, sucursal.sucursal_direccion, 
count(empleado.empleado_nombre)
from condicion_del_empleado inner join empleado on condicion_del_empleado.estado_id=empleado.estado_id
inner join sucursal on sucursal.sucursal_codigo= empleado.sucursal_codigo
where empleado.empleado_apellido='Anchundia Anchundia' and sucursal.sucursal_codigo=2 and condicion_del_empleado.estado_id=2
group by EMPLEADO_NOMBRE,EMPLEADO_APELLIDO ,sucursal_direccion 

/*sucursal 3*/
select empleado.empleado_nombre, empleado.empleado_apellido, sucursal.sucursal_direccion, 
count(empleado.empleado_nombre)
from condicion_del_empleado inner join empleado on condicion_del_empleado.estado_id=empleado.estado_id
inner join sucursal on sucursal.sucursal_codigo= empleado.sucursal_codigo
where  sucursal.sucursal_codigo=3 and condicion_del_empleado.estado_id=2
group by EMPLEADO_NOMBRE,EMPLEADO_APELLIDO ,sucursal_direccion

select empleado.empleado_nombre, empleado.empleado_apellido, sucursal.sucursal_direccion, 
count(empleado.empleado_nombre)
from condicion_del_empleado inner join empleado on condicion_del_empleado.estado_id=empleado.estado_id
inner join sucursal on sucursal.sucursal_codigo= empleado.sucursal_codigo
where empleado.empleado_apellido='Anchundia Anchundia' and sucursal.sucursal_codigo=3 and condicion_del_empleado.estado_id=2
group by EMPLEADO_NOMBRE,EMPLEADO_APELLIDO ,sucursal_direccion 

/*sucursal 4*/
select empleado.empleado_nombre, empleado.empleado_apellido, sucursal.sucursal_direccion, 
count(empleado.empleado_nombre)
from condicion_del_empleado inner join empleado on condicion_del_empleado.estado_id=empleado.estado_id
inner join sucursal on sucursal.sucursal_codigo= empleado.sucursal_codigo
where  sucursal.sucursal_codigo=4 and condicion_del_empleado.estado_id=2
group by EMPLEADO_NOMBRE,EMPLEADO_APELLIDO ,sucursal_direccion

select empleado.empleado_nombre, empleado.empleado_apellido, sucursal.sucursal_direccion, 
count(empleado.empleado_nombre)
from condicion_del_empleado inner join empleado on condicion_del_empleado.estado_id=empleado.estado_id
inner join sucursal on sucursal.sucursal_codigo= empleado.sucursal_codigo
where empleado.empleado_apellido='Anchundia Anchundia' and sucursal.sucursal_codigo=4 and condicion_del_empleado.estado_id=2
group by EMPLEADO_NOMBRE,EMPLEADO_APELLIDO ,sucursal_direccion  

 
/*hay hermanos dentro de la cadena de farmcia*/
select empleado.empleado_nombre, empleado.empleado_apellido, sucursal.sucursal_direccion, 
count(empleado.empleado_nombre)
from condicion_del_empleado inner join empleado on condicion_del_empleado.estado_id=empleado.estado_id
inner join sucursal on sucursal.sucursal_codigo= empleado.sucursal_codigo
where empleado.empleado_apellido='Anchundia Anchundia' 
group by EMPLEADO_NOMBRE,EMPLEADO_APELLIDO ,sucursal_direccion 


/*CONSULTA 3*/
--¿Cuáles medicamentos se venden más por sucursal y en qué cantidad? 
--sucursal 1
select producto.PRODUCTO_NOMBRE, detalle_venta.CANT_PRODUCTO, 
count(detalle_venta.CANT_PRODUCTO) from venta
inner join detalle_venta on venta.venta_id=detalle_venta.venta_id
inner join producto on producto.producto_codigo=detalle_venta.producto_codigo 
inner join empleado on empleado.empleado_codigo = venta.empleado_codigo
inner join sucursal on sucursal.sucursal_codigo = empleado.sucursal_codigo
where sucursal.sucursal_codigo=1
group by producto.producto_nombre , detalle_venta.cant_producto
order by detalle_venta.cant_producto desc
limit 1;

--sucursal 2
select producto.PRODUCTO_NOMBRE, detalle_venta.CANT_PRODUCTO, 
count(detalle_venta.CANT_PRODUCTO) from venta
inner join detalle_venta on venta.venta_id=detalle_venta.venta_id
inner join producto on producto.producto_codigo=detalle_venta.producto_codigo 
inner join empleado on empleado.empleado_codigo = venta.empleado_codigo
inner join sucursal on sucursal.sucursal_codigo = empleado.sucursal_codigo
where sucursal.sucursal_codigo=2
group by producto.producto_nombre , detalle_venta.cant_producto
order by detalle_venta.cant_producto desc
limit 1;

--sucursal 3
select producto.PRODUCTO_NOMBRE, detalle_venta.CANT_PRODUCTO, 
count(detalle_venta.CANT_PRODUCTO) from venta
inner join detalle_venta on venta.venta_id=detalle_venta.venta_id
inner join producto on producto.producto_codigo=detalle_venta.producto_codigo 
inner join empleado on empleado.empleado_codigo = venta.empleado_codigo
inner join sucursal on sucursal.sucursal_codigo = empleado.sucursal_codigo
where sucursal.sucursal_codigo=3
group by producto.producto_nombre , detalle_venta.cant_producto
order by detalle_venta.cant_producto desc
limit 1;

--sucursal 4
select producto.PRODUCTO_NOMBRE, detalle_venta.CANT_PRODUCTO, 
count(detalle_venta.CANT_PRODUCTO) from venta
inner join detalle_venta on venta.venta_id=detalle_venta.venta_id
inner join producto on producto.producto_codigo=detalle_venta.producto_codigo 
inner join empleado on empleado.empleado_codigo = venta.empleado_codigo
inner join sucursal on sucursal.sucursal_codigo = empleado.sucursal_codigo
where sucursal.sucursal_codigo=4
group by producto.producto_nombre , detalle_venta.cant_producto
order by detalle_venta.cant_producto desc
limit 1;

--¿Cuáles medicamentos se venden más por toda la cadena de farmacias y en qué cantidad?
select producto.producto_nombre,
sum(detalle_venta.cant_producto) from venta 
inner join detalle_venta on venta.venta_id=detalle_venta.venta_id
inner join producto on producto.producto_codigo=detalle_venta.producto_codigo 
group by producto.producto_nombre
order by producto.producto_nombre 
limit 1;

/*CONSULTA 4*/
---	¿Qué cantidad de personas a supervisado cada empleado de cada sucursal?
select empleado.EMP_EMPLEADO_CODIGO,
count(empleado.emp_EMPLEADO_CODIGO)
from empleado
group by empleado.EMP_EMPLEADO_CODIGO


/*cantidad de personas que siguen trabajando*/
select condicion_del_empleado.estado_nombre,
count(empleado.empleado_nombre)
from condicion_del_empleado 
inner join empleado on condicion_del_empleado.estado_id=empleado.estado_id where condicion_del_empleado.estado_id=2
group by estado_nombre

/* cantidad de personas que han sido retirados*/
select condicion_del_empleado.estado_nombre,
count(condicion_del_empleado.estado_id)
from condicion_del_empleado inner join empleado on condicion_del_empleado.estado_id=empleado.estado_id
where condicion_del_empleado.estado_id=1
group by estado_nombre



/*cantidad de personas que siguen trabajando y han sido retirado*/
select condicion_del_empleado.estado_nombre,
count(empleado.empleado_nombre)
from condicion_del_empleado 
inner join empleado on condicion_del_empleado.estado_id=empleado.estado_id where condicion_del_empleado.estado_id=2
group by estado_nombre
union
select condicion_del_empleado.estado_nombre,
count(condicion_del_empleado.estado_id)
from condicion_del_empleado inner join empleado on condicion_del_empleado.estado_id=empleado.estado_id
where condicion_del_empleado.estado_id=1
group by estado_nombre
