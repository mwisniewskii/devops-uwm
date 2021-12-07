CREATE TABLE IF NOT EXISTS public.cars
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    mark character varying COLLATE pg_catalog."default" NOT NULL,
    model character varying COLLATE pg_catalog."default" NOT NULL,
    price numeric NOT NULL,
    CONSTRAINT cars_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.cars
    OWNER to postgres;

INSERT INTO public.cars(
	mark, model, price)
	VALUES
	('Audi', 'A6', 130000),
	('Volkswagen', 'Tiguan', 60900),
	('BMW', 'X5', 80000),
	('Honda', 'Civic', 70900),
	('Opel', 'Astra IV', 43900),
	('Seat', 'Toledo', 39900);