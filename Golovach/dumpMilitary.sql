--
-- PostgreSQL database dump
--

-- Dumped from database version 13.6
-- Dumped by pg_dump version 13.6

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
-- Name: branch; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.branch (
    id_branch integer NOT NULL,
    number_of_part integer NOT NULL,
    location_id_location integer NOT NULL
);


ALTER TABLE public.branch OWNER TO postgres;

--
-- Name: branch_id_branch_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.branch_id_branch_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.branch_id_branch_seq OWNER TO postgres;

--
-- Name: branch_id_branch_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.branch_id_branch_seq OWNED BY public.branch.id_branch;


--
-- Name: company; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.company (
    id_company integer NOT NULL,
    name_company character varying(75) NOT NULL,
    quantity_of_people integer NOT NULL,
    branch_id_branch integer NOT NULL,
    type_id_type_company integer NOT NULL
);


ALTER TABLE public.company OWNER TO postgres;

--
-- Name: company_has_personnel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.company_has_personnel (
    company_id_company integer NOT NULL,
    personnel_id_personel integer NOT NULL
);


ALTER TABLE public.company_has_personnel OWNER TO postgres;

--
-- Name: company_id_company_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.company_id_company_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.company_id_company_seq OWNER TO postgres;

--
-- Name: company_id_company_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.company_id_company_seq OWNED BY public.company.id_company;


--
-- Name: location; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.location (
    id_location integer NOT NULL,
    country character varying(50) NOT NULL,
    city character varying(50) NOT NULL,
    address character varying(75) NOT NULL,
    square double precision NOT NULL
);


ALTER TABLE public.location OWNER TO postgres;

--
-- Name: location_id_location_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.location_id_location_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.location_id_location_seq OWNER TO postgres;

--
-- Name: location_id_location_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.location_id_location_seq OWNED BY public.location.id_location;


--
-- Name: personnel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.personnel (
    id_personnel integer NOT NULL,
    surname character varying(50) NOT NULL,
    name_personell character varying(50) NOT NULL,
    post character varying(40) NOT NULL,
    dofb timestamp without time zone NOT NULL,
    year_of_admission date NOT NULL,
    length_od_service integer NOT NULL,
    rewards character varying(75),
    participation_in_military_events character varying(150)
);


ALTER TABLE public.personnel OWNER TO postgres;

--
-- Name: personnel_id_personnel_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.personnel_id_personnel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.personnel_id_personnel_seq OWNER TO postgres;

--
-- Name: personnel_id_personnel_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.personnel_id_personnel_seq OWNED BY public.personnel.id_personnel;


--
-- Name: type_company; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.type_company (
    id_type integer NOT NULL,
    name_type character varying(50) NOT NULL
);


ALTER TABLE public.type_company OWNER TO postgres;

--
-- Name: type_company_id_type_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.type_company_id_type_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.type_company_id_type_seq OWNER TO postgres;

--
-- Name: type_company_id_type_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.type_company_id_type_seq OWNED BY public.type_company.id_type;


--
-- Name: branch id_branch; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.branch ALTER COLUMN id_branch SET DEFAULT nextval('public.branch_id_branch_seq'::regclass);


--
-- Name: company id_company; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company ALTER COLUMN id_company SET DEFAULT nextval('public.company_id_company_seq'::regclass);


--
-- Name: location id_location; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.location ALTER COLUMN id_location SET DEFAULT nextval('public.location_id_location_seq'::regclass);


--
-- Name: personnel id_personnel; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personnel ALTER COLUMN id_personnel SET DEFAULT nextval('public.personnel_id_personnel_seq'::regclass);


--
-- Name: type_company id_type; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.type_company ALTER COLUMN id_type SET DEFAULT nextval('public.type_company_id_type_seq'::regclass);


--
-- Data for Name: branch; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.branch (id_branch, number_of_part, location_id_location) FROM stdin;
\.


--
-- Data for Name: company; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.company (id_company, name_company, quantity_of_people, branch_id_branch, type_id_type_company) FROM stdin;
\.


--
-- Data for Name: company_has_personnel; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.company_has_personnel (company_id_company, personnel_id_personel) FROM stdin;
\.


--
-- Data for Name: location; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.location (id_location, country, city, address, square) FROM stdin;
\.


--
-- Data for Name: personnel; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.personnel (id_personnel, surname, name_personell, post, dofb, year_of_admission, length_od_service, rewards, participation_in_military_events) FROM stdin;
\.


--
-- Data for Name: type_company; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.type_company (id_type, name_type) FROM stdin;
\.


--
-- Name: branch_id_branch_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.branch_id_branch_seq', 1, false);


--
-- Name: company_id_company_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.company_id_company_seq', 1, false);


--
-- Name: location_id_location_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.location_id_location_seq', 1, false);


--
-- Name: personnel_id_personnel_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.personnel_id_personnel_seq', 1, false);


--
-- Name: type_company_id_type_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.type_company_id_type_seq', 1, false);


--
-- Name: branch branch_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.branch
    ADD CONSTRAINT branch_pkey PRIMARY KEY (id_branch);


--
-- Name: company company_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company
    ADD CONSTRAINT company_pkey PRIMARY KEY (id_company);


--
-- Name: location location_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.location
    ADD CONSTRAINT location_pkey PRIMARY KEY (id_location);


--
-- Name: personnel personnel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (id_personnel);


--
-- Name: type_company type_company_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.type_company
    ADD CONSTRAINT type_company_pkey PRIMARY KEY (id_type);


--
-- Name: company fk_company_branch; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company
    ADD CONSTRAINT fk_company_branch FOREIGN KEY (branch_id_branch) REFERENCES public.branch(id_branch);


--
-- Name: company_has_personnel fk_company_company; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company_has_personnel
    ADD CONSTRAINT fk_company_company FOREIGN KEY (company_id_company) REFERENCES public.company(id_company);


--
-- Name: branch fk_location_branch; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.branch
    ADD CONSTRAINT fk_location_branch FOREIGN KEY (location_id_location) REFERENCES public.location(id_location);


--
-- Name: company_has_personnel fk_personnel_personnel; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company_has_personnel
    ADD CONSTRAINT fk_personnel_personnel FOREIGN KEY (personnel_id_personel) REFERENCES public.personnel(id_personnel);


--
-- Name: company fk_type_company; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.company
    ADD CONSTRAINT fk_type_company FOREIGN KEY (type_id_type_company) REFERENCES public.type_company(id_type);


--
-- PostgreSQL database dump complete
--

