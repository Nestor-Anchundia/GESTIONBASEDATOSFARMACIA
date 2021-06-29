  /*EMPRESA*/
insert into EMPRESA values(1234567890, 'Farmacias Amaia Moreira',0987654321,'MANTA');

/*SUCURSALES*/

insert into SUCURSAL values(001, 1234567890, 'Montecristi',0981261673);
insert into SUCURSAL values(002, 1234567890, 'Manta',0981261673);
insert into SUCURSAL values(003, 1234567890, 'Portoviejo',0981261673);
insert into SUCURSAL values(004, 1234567890, 'Guayaquil', 0192837465);

/*condicion_del empleado*/
insert into CONDICION_DEL_EMPLEADO values(1,'Retirado');
insert into CONDICION_DEL_EMPLEADO values(2,'Trabajando');

/*EMPLEADO*/
insert into EMPLEADO values(02,null,002,2,'Henry Lauro', 'Anchundia Anchundia', '1994/12/16', '2015/03/12',0982625662, 'henryanchundia@gmail.com');
insert into EMPLEADO values(08,null,004,2,'Rosa Margarita', 'Palma Lopez', '1999/03/19', '2019/09/20', 0995656222, 'rosapalma@gmail.com');
insert into EMPLEADO values(01,02,001,2,'Jennifer Vanessa', 'Anchundia Lopez', '2001/06/18', '2020/04/01', 0991965656 , 'jenniferanchundia@gmail.com');
insert into EMPLEADO values(03,02,003,2,'Nesthor Alexy', 'Anchundia Anchundia', '2000/05/25', '2020/03/20',0989261673, 'nes_anchundia25@gmail.com');
insert into EMPLEADO values(04,08,004,2,'Luis Miguel', 'Alvia Lucas', '1999/03/11', '2020/01/10',0923783829, 'luismiAlvia@gmail.com');
insert into EMPLEADO values(05,02,001,1,'Rita Angelica', 'Davila Santillan', '2000/09/20', '2021/04/21',0987654477, 'davilarita@gmail.com');
insert into EMPLEADO values(06,08,002,2,'Kerly Elizabeth', 'Jaramillo Zamora','2000/03/17', '2019/04/01',0987653561, 'kerlyjaramillo@gmail.com');
insert into EMPLEADO values(07,02,003,2,'Alan Alair', 'Zambrano Cardenas', '2001/03/19', '2019/02/18',0923466334, 'alanzambrano@gmail.com');
insert into EMPLEADO values(09,02,002,2,'Marcos Raul', 'Pico Pico', '2001/06/18', '2021/04/01',0991912342, 'marcopico@gmail.com');

/*PROVEEDORES*/


insert into PROVEEDOR values (0001,'FARMARAPID', 'Av. San Jorge y calle 10ma ',2690768,'farmarapid.ec@gmail.com' );
insert into PROVEEDOR values (0002,'CEDIMED', '9 De Octubre Ramirez Davalos.',2560170,'saludexpress1@hotmail.com' );
insert into PROVEEDOR values (0003,'Nueva Selecta', 'Manuel Galecio 222 y Boyaca',22300682,'recetasele@selecta.com');
insert into PROVEEDOR values (0004,'PROVEFARMA', 'VALLE LOS CHILLOS,AV.LOSSHYRIS',2337732,'msriveram@corporacion.com');

/*sucursales_proveedores*/

insert into SUCURSAL_PROVEEDORES values (001,001,0001);
insert into SUCURSAL_PROVEEDORES values (002,002,0001);
insert into SUCURSAL_PROVEEDORES values (003,003,0002);
insert into SUCURSAL_PROVEEDORES values (004,004,0002);
insert into SUCURSAL_PROVEEDORES values (005,004,0003);
insert into SUCURSAL_PROVEEDORES values (006,003,0003);
insert into SUCURSAL_PROVEEDORES values (007,002,0004);
insert into SUCURSAL_PROVEEDORES values (008,001,0004);

/*PRODUCTOS*/
insert into PRODUCTO values(001,0004,'temnpra tabletas', 10.00, 12.34,'2024/12/01', 50, '500mg');
insert into PRODUCTO values(002,0004,'Bronquial forte jarabe', 17.00, 22.40,'2024/11/11', 50, '10gr');
insert into PRODUCTO values(003,0004,'Lemonflu sobres', 2.00, 3.06,'2024/12/01', 50, '10gr');
insert into PRODUCTO values(004,0004,'Buscapina OTC', 4.05, 5.60,'2024/12/01', 50, '10mg');
insert into PRODUCTO values(005,0004,'Omeprazol', 1.50, 2.88,'2024/12/01', 50, '20mg');
insert into PRODUCTO values(006,0002,'Tamoxifeno', 10.00, 11.34,'2024/12/01', 50, '20mg');
insert into PRODUCTO values(007,0002,'Metotrexato', 9.00, 12.34,'2024/12/01', 50, '50mg/2ml');
insert into PRODUCTO values(008,0002,'Mercaptopurine', 11.00, 13.40,'2024/12/01', 50, '20mg');
insert into PRODUCTO values(009,0002,'Metotrexato', 10.00, 11.60,'2024/12/01', 50, '2,5 mg');
insert into PRODUCTO values(010,0002,'HYarun Plus', 12.00, 14.30,'2024/12/01', 50, '10mg');
insert into PRODUCTO values(011,0001,'Fluxius', 5.00, 7.75,'2024/12/01', 50, '10mg');
insert into PRODUCTO values(012,0001,'Lutamidal', 3.00, 4.90,'2024/12/01', 50, '50mg');
insert into PRODUCTO values(013,0001,'Femara', 1.00, 2.34,'2024/12/01', 50, '2,5mg');
insert into PRODUCTO values(014,0001,'Idelara', 12.00, 15.63,'2024/12/01', 50, '2,5mg');
insert into PRODUCTO values(015,0001,'Arimidex', 15.00, 19.34,'2024/12/01', 50, '1mg');
insert into PRODUCTO values(016,0003,'Analgan', 1.00, 2.50,'2024/12/01', 50, '1 gr');
insert into PRODUCTO values(017,0003,'Avodart', 0.50, 1.34,'2024/12/01', 50, '0.5 mg');
insert into PRODUCTO values(018,0003,'Sildenafil', 1.90, 3.03,'2024/12/01', 50, '50mg');
insert into PRODUCTO values(019,0003,'Kufer Q-R', 10.00, 15.00,'2024/12/01', 50, '170mg');
insert into PRODUCTO values(020,0003,'kufer-Q forte', 9.00, 10.34,'2024/12/01', 50, '170mg');

begin;
insert into CLIENTE values(001,'Daniela Monserrate','Anchundia Lopez','Montecristi-Los Bajos',098534578,'2002/10/26','femenino','daniela@gmail.com' );
insert into venta values(001,001,01,'2020/11/21');
insert into detalle_venta values(1,001,1,12,12.34,0.0,'20/10/2020',0.10);
update detalle_venta set total=(cant_producto*precio_producto)-(precio_producto*venta_descuento) where DV_ID=1;
update producto set producto_stock=producto_stock-12 where producto_codigo=1;
commit;

begin;
insert into CLIENTE values(002,'Genessis Damaris ','Palma Anchundia','Montecristi-Los Bajos',0976345689,'2001/03/06','femenino','damaris@gmail.com' );
insert into venta values(002,002,01,'2019/11/20');
insert into detalle_venta values(2,002,011,21,7.75,0.0,'20/11/2019',0.12);
update detalle_venta set total=(cant_producto*precio_producto)-(precio_producto*venta_descuento) where DV_ID=2;
update producto set producto_stock=producto_stock-21 where producto_codigo=11;
commit;

begin;
insert into CLIENTE values(003,'Veronica Gabriela','Alvia Anchundia','Montecristi',0946734578,'2000/03/29','femenino','gabriela@gmail.com' );
insert into venta values(003,003,3,'2018/01/20');
insert into detalle_venta values(3,003,16,25,2.50,0.0,'20/01/2018',0.15);
update detalle_venta set total=(cant_producto*precio_producto)-(precio_producto*venta_descuento) where DV_ID=3;
update producto set producto_stock=producto_stock-25 where producto_codigo=16;
commit;

begin;
insert into CLIENTE values(004,'Evelyn Katherine','Avila Mora','Montecristi',0954232378,'1997/08/26','femenino','evelyn@gmail.com' );
insert into venta values(004,004,06,'2020/11/21');
insert into detalle_venta values(4,004,16,11,2.50,0.0,'21/11/2020',0.14);
update detalle_venta set total=(cant_producto*precio_producto)-(precio_producto*venta_descuento) where DV_ID=4;
update producto set producto_stock=producto_stock-11 where producto_codigo=16;
commit;

begin;
insert into CLIENTE values(005,'Jhofre Daniel','Zambrano Robalino','Manta',0987654321,'2000/11/22','masculino','daniel@gmail.com' );
insert into venta values(005,005,08,'2019/12/20');
insert into detalle_venta values(5,005,16,1,2.50,0.0,'20/12/2019',0.12);
update detalle_venta set total=(cant_producto*precio_producto)-(precio_producto*venta_descuento) where DV_ID=5;
update producto set producto_stock=producto_stock-1 where producto_codigo=16;
commit;