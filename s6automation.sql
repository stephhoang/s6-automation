--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

-- Started on 2021-03-30 19:56:43

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
-- TOC entry 3021 (class 1262 OID 16571)
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

--
-- TOC entry 3011 (class 0 OID 16572)
-- Dependencies: 200
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.employees (employee_id, firstname, lastname, phone, email, office_id) VALUES (1, 'Tyler', 'Frazier', 7328916677, 'tyler.frazier.mil@mail.mil', 2);
INSERT INTO public.employees (employee_id, firstname, lastname, phone, email, office_id) VALUES (2, 'Georgia', 'Varoucha', 7327846655, 'georgia.varoucha.mil@mail.mil', 2);
INSERT INTO public.employees (employee_id, firstname, lastname, phone, email, office_id) VALUES (3, 'Ralph', 'Bird', 6098275566, 'ralph.bird.mil@mail.mil', 1);


--
-- TOC entry 3013 (class 0 OID 16627)
-- Dependencies: 202
-- Data for Name: handreciept; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.handreciept (reciept_id, item_id, employee_id) VALUES (1, 1, 1);
INSERT INTO public.handreciept (reciept_id, item_id, employee_id) VALUES (2, 2, 1);


--
-- TOC entry 3015 (class 0 OID 16645)
-- Dependencies: 204
-- Data for Name: inventory; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.inventory (item_id, serialnumber, product_id) VALUES (1, 'E897URL9', 1);
INSERT INTO public.inventory (item_id, serialnumber, product_id) VALUES (2, 'JYFQVHTA', 1);


--
-- TOC entry 3012 (class 0 OID 16580)
-- Dependencies: 201
-- Data for Name: office; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.office (office_id, unit, address, city, zipcode) VALUES (1, 'Army ROTC', '157 College Ave', 'New Brunswick', 8901);
INSERT INTO public.office (office_id, unit, address, city, zipcode) VALUES (2, '1-114 INF', '625 Main Street', 'Fords', 8863);


--
-- TOC entry 3014 (class 0 OID 16637)
-- Dependencies: 203
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.product (product_id, product_name, product_type) VALUES (1, 'Apple Iphone XS', 'Phone');
INSERT INTO public.product (product_id, product_name, product_type) VALUES (2, 'Dell 2350dn', 'Printer');
INSERT INTO public.product (product_id, product_name, product_type) VALUES (3, 'Dell Latitude 7220', 'Tablet
');


-- Completed on 2021-03-30 19:56:43

--
-- PostgreSQL database dump complete
--

