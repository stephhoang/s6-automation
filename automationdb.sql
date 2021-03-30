--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

-- Started on 2021-03-30 19:52:43

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3016 (class 1262 OID 16571)
-- Name: automationdb; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE automationdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';


ALTER DATABASE automationdb OWNER TO postgres;

\connect automationdb

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 200 (class 1259 OID 16572)
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    employee_id integer NOT NULL,
    firstname name COLLATE pg_catalog."default",
    lastname text,
    phone numeric(13,0),
    email text,
    office_id integer
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16627)
-- Name: handreciept; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.handreciept (
    reciept_id integer NOT NULL,
    item_id integer,
    employee_id integer
);


ALTER TABLE public.handreciept OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16645)
-- Name: inventory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.inventory (
    item_id integer NOT NULL,
    serialnumber character varying(255),
    product_id integer
);


ALTER TABLE public.inventory OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16580)
-- Name: office; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.office (
    office_id integer NOT NULL,
    unit text,
    address text,
    city text,
    zipcode numeric(10,0)
);


ALTER TABLE public.office OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16637)
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    product_id integer NOT NULL,
    product_name character varying(255),
    product_type character varying(255)
);


ALTER TABLE public.product OWNER TO postgres;

--
-- TOC entry 2868 (class 2606 OID 16579)
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (employee_id);


--
-- TOC entry 2873 (class 2606 OID 16631)
-- Name: handreciept handreciept_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.handreciept
    ADD CONSTRAINT handreciept_pkey PRIMARY KEY (reciept_id);


--
-- TOC entry 2877 (class 2606 OID 16649)
-- Name: inventory inventory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_pkey PRIMARY KEY (item_id);


--
-- TOC entry 2871 (class 2606 OID 16587)
-- Name: office office_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.office
    ADD CONSTRAINT office_pkey PRIMARY KEY (office_id);


--
-- TOC entry 2875 (class 2606 OID 16644)
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (product_id);


--
-- TOC entry 2869 (class 1259 OID 16598)
-- Name: fki_office_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_office_id ON public.employees USING btree (office_id);


--
-- TOC entry 2879 (class 2606 OID 16632)
-- Name: handreciept handreciept_employee_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.handreciept
    ADD CONSTRAINT handreciept_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES public.employees(employee_id);


--
-- TOC entry 2880 (class 2606 OID 16650)
-- Name: inventory inventory_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(product_id);


--
-- TOC entry 2878 (class 2606 OID 16615)
-- Name: employees office_id_to_employee; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT office_id_to_employee FOREIGN KEY (office_id) REFERENCES public.office(office_id);


--
-- TOC entry 3017 (class 0 OID 0)
-- Dependencies: 3016
-- Name: DATABASE automationdb; Type: ACL; Schema: -; Owner: postgres
--

GRANT CONNECT ON DATABASE automationdb TO automation_nco;


--
-- TOC entry 3018 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

GRANT USAGE ON SCHEMA public TO automation_nco;


-- Completed on 2021-03-30 19:52:44

--
-- PostgreSQL database dump complete
--

