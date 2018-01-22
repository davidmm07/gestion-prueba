-- Database generated with pgModeler (PostgreSQL Database Modeler).
-- pgModeler  version: 0.9.1-alpha1
-- PostgreSQL version: 10.0
-- Project Site: pgmodeler.com.br
-- Model Author: ---


-- Database creation must be done outside an multicommand file.
-- These commands were put in this file only for convenience.
-- -- object: "gestion-prueba" | type: DATABASE --
-- -- DROP DATABASE IF EXISTS "gestion-prueba";
-- CREATE DATABASE "gestion-prueba"
-- ;
-- -- ddl-end --
-- 

-- object: public.cliente | type: TABLE --
-- DROP TABLE IF EXISTS public.cliente CASCADE;
CREATE TABLE public.cliente(
	id_cliente integer NOT NULL,
	tipo_documento character varying,
	num_documento integer,
	primer_nombre character varying(15),
	segundo_nombre character varying(15),
	primer_apellido character varying(15),
	segundo_apellido character varying(15),
	telefono integer,
	celular integer,
	email character varying,
	CONSTRAINT id_cliente_pk PRIMARY KEY (id_cliente)

);
-- ddl-end --
ALTER TABLE public.cliente OWNER TO postgres;
-- ddl-end --

-- object: public.factura | type: TABLE --
-- DROP TABLE IF EXISTS public.factura CASCADE;
CREATE TABLE public.factura(
	id_factura integer NOT NULL,
	num_factura integer,
	fecha date,
	total_factura integer,
	id_cliente_cliente integer,
	CONSTRAINT id_factura_pk PRIMARY KEY (id_factura)

);
-- ddl-end --
ALTER TABLE public.factura OWNER TO postgres;
-- ddl-end --

-- object: public.producto | type: TABLE --
-- DROP TABLE IF EXISTS public.producto CASCADE;
CREATE TABLE public.producto(
	id_producto integer NOT NULL,
	plu_producto integer,
	nombre_producto character varying(15),
	valor_unitario integer,
	cantidad integer,
	CONSTRAINT id_producto_pk PRIMARY KEY (id_producto)

);
-- ddl-end --
ALTER TABLE public.producto OWNER TO postgres;
-- ddl-end --

-- object: public.factura_producto | type: TABLE --
-- DROP TABLE IF EXISTS public.factura_producto CASCADE;
CREATE TABLE public.factura_producto(
	id_factura_producto integer NOT NULL,
	id_factura_factura integer NOT NULL,
	id_producto_producto integer NOT NULL,
	CONSTRAINT id_factura_producto_pk PRIMARY KEY (id_factura_producto)

);
-- ddl-end --
ALTER TABLE public.factura_producto OWNER TO postgres;
-- ddl-end --

-- object: cliente_fk | type: CONSTRAINT --
-- ALTER TABLE public.factura DROP CONSTRAINT IF EXISTS cliente_fk CASCADE;
ALTER TABLE public.factura ADD CONSTRAINT cliente_fk FOREIGN KEY (id_cliente_cliente)
REFERENCES public.cliente (id_cliente) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: factura_fk | type: CONSTRAINT --
-- ALTER TABLE public.factura_producto DROP CONSTRAINT IF EXISTS factura_fk CASCADE;
ALTER TABLE public.factura_producto ADD CONSTRAINT factura_fk FOREIGN KEY (id_factura_factura)
REFERENCES public.factura (id_factura) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: producto_fk | type: CONSTRAINT --
-- ALTER TABLE public.factura_producto DROP CONSTRAINT IF EXISTS producto_fk CASCADE;
ALTER TABLE public.factura_producto ADD CONSTRAINT producto_fk FOREIGN KEY (id_producto_producto)
REFERENCES public.producto (id_producto) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --


