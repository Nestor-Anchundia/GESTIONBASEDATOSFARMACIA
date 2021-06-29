/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   CLIENTE_CODIGO       INT4                 not null,
   CLIENTE_NOMBRE       VARCHAR(30)          not null,
   CLIENTE_APELLIDOS    VARCHAR(30)          not null,
   CLIENTE_DIRECCION    VARCHAR(30)          not null,
   CLIENTE_TELEFONO     INT4                 not null,
   CLIENTE_FECHANACIMIENTO DATE                 not null,
   CLIENTE_GENERO       VARCHAR(30)          not null,
   CLIENTE_CORREO       VARCHAR(30)          not null,
   constraint PK_CLIENTE primary key (CLIENTE_CODIGO)
);


/*==============================================================*/
/* Table: CONDICION_DEL_EMPLEADO                                */
/*==============================================================*/
create table CONDICION_DEL_EMPLEADO (
   ESTADO_ID            INT4                 not null,
   ESTADO_NOMBRE        VARCHAR(30)          not null,
   constraint PK_CONDICION_DEL_EMPLEADO primary key (ESTADO_ID)
);

/*==============================================================*/
/* Table: DETALLE_VENTA                                         */
/*==============================================================*/
create table DETALLE_VENTA (
   DV_ID                INT4                 not null,
   VENTA_ID             INT4                 null,
   PRODUCTO_CODIGO      INT4                 null,
   CANT_PRODUCTO        INT4                 not null,
   PRECIO_PRODUCTO      DECIMAL              not null,
   TOTAL                DECIMAL              not null,
   FECHA_VENTA          DATE                 not null,
   VENTA_DESCUENTO      INT4                 not null,
   constraint PK_DETALLE_VENTA primary key (DV_ID)
);


/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO (
   EMPLEADO_CODIGO      INT4                 not null,
   EMP_EMPLEADO_CODIGO  INT4                 null,
   SUCURSAL_CODIGO      INT4                 null,
   ESTADO_ID            INT4                 null,
   EMPLEADO_NOMBRE      VARCHAR(30)          not null,
   EMPLEADO_APELLIDO    VARCHAR(30)          not null,
   EMPLEADO_F_NACIMIENTO DATE                 not null,
   EMPLEADO_F_INGRESO_LABORAL DATE                 not null,
   EMPLEADO_TELEFONO    INT4                 not null,
   EMPLEADO_CORREO      VARCHAR(30)          not null,
   constraint PK_EMPLEADO primary key (EMPLEADO_CODIGO)
);


/*==============================================================*/
/* Table: EMPRESA                                               */
/*==============================================================*/
create table EMPRESA (
   RUC_RISE_EMPRESA     INT4                 not null,
   NOMBRE_EMPRESA       VARCHAR(30)          not null,
   TELEFONO_EMPRESA     INT4                 not null,
   DIRECCION_EMPRESA    VARCHAR(30)          not null,
   constraint PK_EMPRESA primary key (RUC_RISE_EMPRESA)
);

/*==============================================================*/
/* Table: PRODUCTO                                              */
/*==============================================================*/
create table PRODUCTO (
   PRODUCTO_CODIGO      INT4                 not null,
   PROVEEDOR_CODIGO     INT4                 null,
   PRODUCTO_NOMBRE      VARCHAR(30)          not null,
   PRODUCTO_COSTO       DECIMAL              not null,
   PRODUCTO_PRECIO      DECIMAL              not null,
   PRODUCTO_FECHA_VENCIMIENTO DATE                 not null,
   PRODUCTO_STOCK       INT4                 not null,
   PRODUCTO_UNIDAD      VARCHAR(30)          not null,
   constraint PK_PRODUCTO primary key (PRODUCTO_CODIGO)
);
/*==============================================================*/
/* Table: PROVEEDOR                                             */
/*==============================================================*/
create table PROVEEDOR (
   PROVEEDOR_CODIGO     INT4                 not null,
   PROVEEDOR_NOMBRE     VARCHAR(30)          not null,
   PROVEEDOR_DIRECCION  VARCHAR(30)          not null,
   PROVEEDOR_TELEFONO   INT4                 not null,
   PROVEEDOR_CORREO     VARCHAR(30)          not null,
   constraint PK_PROVEEDOR primary key (PROVEEDOR_CODIGO)
);

/*==============================================================*/
/* Table: SUCURSAL                                              */
/*==============================================================*/
create table SUCURSAL (
   SUCURSAL_CODIGO      INT4                 not null,
   RUC_RISE_EMPRESA     INT4                 null,
   SUCURSAL_DIRECCION   VARCHAR(30)          not null,
   SUCURSAL_TELEFONO    INT4                 not null,
   constraint PK_SUCURSAL primary key (SUCURSAL_CODIGO)
);

/*==============================================================*/
/* Table: SUCURSAL_PROVEEDORES                                  */
/*==============================================================*/
create table SUCURSAL_PROVEEDORES (
   ID                   INT4                 not null,
   SUCURSAL_CODIGO      INT4                 null,
   PROVEEDOR_CODIGO     INT4                 null,
   constraint PK_SUCURSAL_PROVEEDORES primary key (ID)
);

/*==============================================================*/
/* Table: VENTA                                                 */
/*==============================================================*/
create table VENTA (
   VENTA_ID             INT4                 not null,
   CLIENTE_CODIGO       INT4                 null,
   EMPLEADO_CODIGO      INT4                 null,
   FECHA_VENTA          DATE                 not null,
   constraint PK_VENTA primary key (VENTA_ID)
);

alter table DETALLE_VENTA
   add constraint FK_DETALLE__CONTIENE_VENTA foreign key (VENTA_ID)
      references VENTA (VENTA_ID)
      on delete restrict on update restrict;

alter table DETALLE_VENTA
   add constraint FK_DETALLE__ESTA_PRODUCTO foreign key (PRODUCTO_CODIGO)
      references PRODUCTO (PRODUCTO_CODIGO)
      on delete restrict on update restrict;

alter table EMPLEADO
   add constraint FK_EMPLEADO_EETIENE_CONDICIO foreign key (ESTADO_ID)
      references CONDICION_DEL_EMPLEADO (ESTADO_ID)
      on delete restrict on update restrict;

alter table EMPLEADO
   add constraint FK_EMPLEADO_POSEE_SUCURSAL foreign key (SUCURSAL_CODIGO)
      references SUCURSAL (SUCURSAL_CODIGO)
      on delete restrict on update restrict;

alter table EMPLEADO
   add constraint FK_EMPLEADO_SUPERVISA_EMPLEADO foreign key (EMP_EMPLEADO_CODIGO)
      references EMPLEADO (EMPLEADO_CODIGO)
      on delete restrict on update restrict;

alter table PRODUCTO
   add constraint FK_PRODUCTO_ECONTIENE_PROVEEDO foreign key (PROVEEDOR_CODIGO)
      references PROVEEDOR (PROVEEDOR_CODIGO)
      on delete restrict on update restrict;

alter table SUCURSAL
   add constraint FK_SUCURSAL_TIENE_EMPRESA foreign key (RUC_RISE_EMPRESA)
      references EMPRESA (RUC_RISE_EMPRESA)
      on delete restrict on update restrict;

alter table SUCURSAL_PROVEEDORES
   add constraint FK_SUCURSAL_ETIENE_SUCURSAL foreign key (SUCURSAL_CODIGO)
      references SUCURSAL (SUCURSAL_CODIGO)
      on delete restrict on update restrict;

alter table SUCURSAL_PROVEEDORES
   add constraint FK_SUCURSAL_MESTA_PROVEEDO foreign key (PROVEEDOR_CODIGO)
      references PROVEEDOR (PROVEEDOR_CODIGO)
      on delete restrict on update restrict;

alter table VENTA
   add constraint FK_VENTA_HACE_CLIENTE foreign key (CLIENTE_CODIGO)
      references CLIENTE (CLIENTE_CODIGO)
      on delete restrict on update restrict;

alter table VENTA
   add constraint FK_VENTA_REALIZA_EMPLEADO foreign key (EMPLEADO_CODIGO)
      references EMPLEADO (EMPLEADO_CODIGO)
      on delete restrict on update restrict;

