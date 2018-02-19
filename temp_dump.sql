--
-- PostgreSQL database dump
--

-- Dumped from database version 10.1
-- Dumped by pg_dump version 10.1

-- Started on 2018-02-19 20:56:34

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 8 (class 2615 OID 16921)
-- Name: temp; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA temp;


ALTER SCHEMA temp OWNER TO postgres;

SET search_path = temp, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 243 (class 1259 OID 16922)
-- Name: activities; Type: TABLE; Schema: temp; Owner: postgres
--

CREATE TABLE activities (
    name text,
    contractor_name text,
    unit_cost double precision,
    total_planned_hours integer,
    project_name text,
    total_planned_units bigint,
    planned_start date,
    planned_end date,
    unit_name text,
    actual_start date,
    actual_end date,
    hourly_cost double precision,
    required_activities integer[]
);


ALTER TABLE activities OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 16947)
-- Name: activity_data; Type: TABLE; Schema: temp; Owner: postgres
--

CREATE TABLE activity_data (
    activity_name text,
    date date,
    actual_hours integer,
    actual_units integer,
    planned_hours bigint,
    planned_units double precision,
    updated timestamp(6) without time zone,
    created timestamp(6) without time zone
);


ALTER TABLE activity_data OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 17287)
-- Name: contractors; Type: TABLE; Schema: temp; Owner: postgres
--

CREATE TABLE contractors (
    name text,
    email text,
    phone text,
    pm_contact character varying
);


ALTER TABLE contractors OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 17263)
-- Name: projects; Type: TABLE; Schema: temp; Owner: postgres
--

CREATE TABLE projects (
    name text,
    start_dt date,
    end_dt date,
    workdays json,
    budget integer,
    bundle_title text,
    location_name text,
    contingency bigint
);


ALTER TABLE projects OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 16928)
-- Name: units; Type: TABLE; Schema: temp; Owner: postgres
--

CREATE TABLE units (
    name text
);


ALTER TABLE units OWNER TO postgres;

--
-- TOC entry 2959 (class 0 OID 16922)
-- Dependencies: 243
-- Data for Name: activities; Type: TABLE DATA; Schema: temp; Owner: postgres
--

COPY activities (name, contractor_name, unit_cost, total_planned_hours, project_name, total_planned_units, planned_start, planned_end, unit_name, actual_start, actual_end, hourly_cost, required_activities) FROM stdin;
Pile Driving	Sacramento Drilling	\N	\N	Bayshore A	\N	2017-08-14	2017-09-12	Piles	2017-08-13	2017-10-02	\N	\N
Torque Tube Rows Installed	Arraycon	\N	\N	Bayshore A	\N	2017-08-31	2017-09-25	Rows	2017-08-27	2017-10-10	\N	\N
Tracker Rows Completed	Arraycon	\N	\N	Bayshore A	\N	2017-09-01	2017-09-26	Rows	2017-08-27	2017-10-10	\N	\N
\.


--
-- TOC entry 2961 (class 0 OID 16947)
-- Dependencies: 245
-- Data for Name: activity_data; Type: TABLE DATA; Schema: temp; Owner: postgres
--

COPY activity_data (activity_name, date, actual_hours, actual_units, planned_hours, planned_units, updated, created) FROM stdin;
Pile Installation	2017-08-13	\N	0	\N	\N	\N	\N
Pile Installation	2017-08-14	\N	0	\N	\N	\N	\N
Pile Installation	2017-08-15	\N	0	\N	\N	\N	\N
Pile Installation	2017-08-16	\N	0	\N	\N	\N	\N
Pile Installation	2017-08-17	\N	0	\N	\N	\N	\N
Pile Installation	2017-08-18	\N	0	\N	\N	\N	\N
Pile Installation	2017-08-19	\N	0	\N	\N	\N	\N
Pile Installation	2017-08-20	\N	0	\N	\N	\N	\N
Pile Installation	2017-08-21	\N	0	\N	\N	\N	\N
Pile Installation	2017-08-22	\N	0	\N	\N	\N	\N
Pile Installation	2017-08-23	\N	0	\N	\N	\N	\N
Pile Installation	2017-08-24	\N	0	\N	\N	\N	\N
Pile Installation	2017-08-25	\N	0	\N	\N	\N	\N
Pile Installation	2017-08-26	\N	0	\N	\N	\N	\N
Pile Installation	2017-08-27	\N	0	\N	\N	\N	\N
Pile Installation	2017-08-28	\N	0	\N	\N	\N	\N
Pile Installation	2017-08-29	\N	0	\N	\N	\N	\N
Pile Installation	2017-08-30	\N	0	\N	\N	\N	\N
Pile Installation	2017-08-31	\N	0	\N	\N	\N	\N
Pile Installation	2017-09-01	\N	0	\N	\N	\N	\N
Pile Installation	2017-09-02	\N	0	\N	\N	\N	\N
Pile Installation	2017-09-03	\N	0	\N	\N	\N	\N
Pile Installation	2017-09-04	\N	0	\N	\N	\N	\N
Pile Installation	2017-09-05	\N	0	\N	\N	\N	\N
Pile Installation	2017-09-06	\N	524	\N	\N	\N	\N
Pile Installation	2017-09-07	\N	1026	\N	\N	\N	\N
Pile Installation	2017-09-08	\N	1487	\N	\N	\N	\N
Pile Installation	2017-09-08	\N	1487	\N	\N	\N	\N
Pile Installation	2017-09-09	\N	1487	\N	\N	\N	\N
Pile Installation	2017-09-10	\N	1487	\N	\N	\N	\N
Pile Installation	2017-09-11	\N	2153	\N	\N	\N	\N
Pile Installation	2017-09-11	\N	2153	\N	\N	\N	\N
Pile Installation	2017-09-12	\N	3039	\N	\N	\N	\N
Pile Installation	2017-09-12	\N	3039	\N	\N	\N	\N
Pile Installation	2017-09-13	\N	3951	\N	\N	\N	\N
Pile Installation	2017-09-13	\N	3951	\N	\N	\N	\N
Pile Installation	2017-09-13	\N	3951	\N	\N	\N	\N
Pile Installation	2017-09-13	\N	3951	\N	\N	\N	\N
Pile Installation	2017-09-14	\N	4795	\N	\N	\N	\N
Pile Installation	2017-09-14	\N	4795	\N	\N	\N	\N
Pile Installation	2017-09-15	\N	5859	\N	\N	\N	\N
Pile Installation	2017-09-15	\N	5859	\N	\N	\N	\N
Pile Installation	2017-09-16	\N	5859	\N	\N	\N	\N
Pile Installation	2017-09-17	\N	5859	\N	\N	\N	\N
Pile Installation	2017-09-18	\N	6694	\N	\N	\N	\N
Pile Installation	2017-09-18	\N	6694	\N	\N	\N	\N
Pile Installation	2017-09-19	\N	7628	\N	\N	\N	\N
Pile Installation	2017-09-19	\N	7628	\N	\N	\N	\N
Pile Installation	2017-09-20	\N	8362	\N	\N	\N	\N
Pile Installation	2017-09-20	\N	8362	\N	\N	\N	\N
Pile Installation	2017-09-21	\N	9170	\N	\N	\N	\N
Pile Installation	2017-09-21	\N	9170	\N	\N	\N	\N
Pile Installation	2017-09-21	\N	9170	\N	\N	\N	\N
Pile Installation	2017-09-22	\N	10047	\N	\N	\N	\N
Pile Installation	2017-09-22	\N	10047	\N	\N	\N	\N
Pile Installation	2017-09-22	\N	10047	\N	\N	\N	\N
Pile Installation	2017-09-22	\N	10047	\N	\N	\N	\N
Pile Installation	2017-09-23	\N	10047	\N	\N	\N	\N
Pile Installation	2017-09-24	\N	10047	\N	\N	\N	\N
Pile Installation	2017-09-25	\N	10839	\N	\N	\N	\N
Pile Installation	2017-09-25	\N	10839	\N	\N	\N	\N
Pile Installation	2017-09-26	\N	11387	\N	\N	\N	\N
Pile Installation	2017-09-27	\N	11387	\N	\N	\N	\N
Pile Installation	2017-09-28	\N	11387	\N	\N	\N	\N
Pile Installation	2017-09-29	\N	11387	\N	\N	\N	\N
Pile Installation	2017-09-30	\N	11387	\N	\N	\N	\N
Pile Installation	2017-10-01	\N	11387	\N	\N	\N	\N
Pile Installation	2017-10-02	\N	11420	\N	\N	\N	\N
Torque Tube Rows Installed	2017-08-27	\N	0	\N	\N	\N	\N
Torque Tube Rows Installed	2017-08-28	\N	0	\N	\N	\N	\N
Torque Tube Rows Installed	2017-08-29	\N	0	\N	\N	\N	\N
Torque Tube Rows Installed	2017-08-30	\N	0	\N	\N	\N	\N
Torque Tube Rows Installed	2017-08-31	\N	0	\N	\N	\N	\N
Torque Tube Rows Installed	2017-09-01	\N	0	\N	\N	\N	\N
Torque Tube Rows Installed	2017-09-02	\N	0	\N	\N	\N	\N
Torque Tube Rows Installed	2017-09-03	\N	0	\N	\N	\N	\N
Torque Tube Rows Installed	2017-09-04	\N	0	\N	\N	\N	\N
Torque Tube Rows Installed	2017-09-05	\N	0	\N	\N	\N	\N
Torque Tube Rows Installed	2017-09-06	\N	0	\N	\N	\N	\N
Torque Tube Rows Installed	2017-09-07	\N	0	\N	\N	\N	\N
Torque Tube Rows Installed	2017-09-08	\N	0	\N	\N	\N	\N
Torque Tube Rows Installed	2017-09-09	\N	0	\N	\N	\N	\N
Torque Tube Rows Installed	2017-09-10	\N	0	\N	\N	\N	\N
Torque Tube Rows Installed	2017-09-11	\N	0	\N	\N	\N	\N
Torque Tube Rows Installed	2017-09-12	\N	0	\N	\N	\N	\N
Torque Tube Rows Installed	2017-09-13	\N	0	\N	\N	\N	\N
Torque Tube Rows Installed	2017-09-14	\N	0	\N	\N	\N	\N
Torque Tube Rows Installed	2017-09-15	\N	0	\N	\N	\N	\N
Torque Tube Rows Installed	2017-09-16	\N	0	\N	\N	\N	\N
Torque Tube Rows Installed	2017-09-17	\N	0	\N	\N	\N	\N
Torque Tube Rows Installed	2017-09-18	\N	0	\N	\N	\N	\N
Torque Tube Rows Installed	2017-09-19	\N	0	\N	\N	\N	\N
Torque Tube Rows Installed	2017-09-20	\N	0	\N	\N	\N	\N
Torque Tube Rows Installed	2017-09-21	\N	75	\N	\N	\N	\N
Torque Tube Rows Installed	2017-09-21	\N	75	\N	\N	\N	\N
Torque Tube Rows Installed	2017-09-22	\N	186	\N	\N	\N	\N
Torque Tube Rows Installed	2017-09-22	\N	186	\N	\N	\N	\N
Torque Tube Rows Installed	2017-09-23	\N	186	\N	\N	\N	\N
Torque Tube Rows Installed	2017-09-24	\N	186	\N	\N	\N	\N
Torque Tube Rows Installed	2017-09-25	\N	313	\N	\N	\N	\N
Torque Tube Rows Installed	2017-09-25	\N	313	\N	\N	\N	\N
Torque Tube Rows Installed	2017-09-25	\N	313	\N	\N	\N	\N
Torque Tube Rows Installed	2017-09-26	\N	437	\N	\N	\N	\N
Torque Tube Rows Installed	2017-09-26	\N	437	\N	\N	\N	\N
Torque Tube Rows Installed	2017-09-26	\N	437	\N	\N	\N	\N
Torque Tube Rows Installed	2017-09-27	\N	516	\N	\N	\N	\N
Torque Tube Rows Installed	2017-09-27	\N	516	\N	\N	\N	\N
Torque Tube Rows Installed	2017-09-28	\N	617	\N	\N	\N	\N
Torque Tube Rows Installed	2017-09-28	\N	617	\N	\N	\N	\N
Torque Tube Rows Installed	2017-09-29	\N	680	\N	\N	\N	\N
Torque Tube Rows Installed	2017-09-29	\N	680	\N	\N	\N	\N
Torque Tube Rows Installed	2017-09-30	\N	680	\N	\N	\N	\N
Torque Tube Rows Installed	2017-10-01	\N	680	\N	\N	\N	\N
Torque Tube Rows Installed	2017-10-02	\N	768	\N	\N	\N	\N
Torque Tube Rows Installed	2017-10-02	\N	768	\N	\N	\N	\N
Torque Tube Rows Installed	2017-10-03	\N	848	\N	\N	\N	\N
Torque Tube Rows Installed	2017-10-04	\N	848	\N	\N	\N	\N
Torque Tube Rows Installed	2017-10-05	\N	848	\N	\N	\N	\N
Torque Tube Rows Installed	2017-10-06	\N	848	\N	\N	\N	\N
Torque Tube Rows Installed	2017-10-07	\N	848	\N	\N	\N	\N
Torque Tube Rows Installed	2017-10-08	\N	848	\N	\N	\N	\N
Torque Tube Rows Installed	2017-10-09	\N	870	\N	\N	\N	\N
Torque Tube Rows Installed	2017-10-09	\N	870	\N	\N	\N	\N
Torque Tube Rows Installed	2017-10-10	\N	870	\N	\N	\N	\N
Tracker Rows Completed	2017-08-27	\N	0	\N	\N	\N	\N
Tracker Rows Completed	2017-08-28	\N	0	\N	\N	\N	\N
Tracker Rows Completed	2017-08-29	\N	0	\N	\N	\N	\N
Tracker Rows Completed	2017-08-30	\N	0	\N	\N	\N	\N
Tracker Rows Completed	2017-08-31	\N	0	\N	\N	\N	\N
Tracker Rows Completed	2017-09-01	\N	0	\N	\N	\N	\N
Tracker Rows Completed	2017-09-02	\N	0	\N	\N	\N	\N
Tracker Rows Completed	2017-09-03	\N	0	\N	\N	\N	\N
Tracker Rows Completed	2017-09-04	\N	0	\N	\N	\N	\N
Tracker Rows Completed	2017-09-05	\N	0	\N	\N	\N	\N
Tracker Rows Completed	2017-09-06	\N	0	\N	\N	\N	\N
Tracker Rows Completed	2017-09-07	\N	0	\N	\N	\N	\N
Tracker Rows Completed	2017-09-08	\N	0	\N	\N	\N	\N
Tracker Rows Completed	2017-09-09	\N	0	\N	\N	\N	\N
Tracker Rows Completed	2017-09-10	\N	0	\N	\N	\N	\N
Tracker Rows Completed	2017-09-11	\N	0	\N	\N	\N	\N
Tracker Rows Completed	2017-09-12	\N	0	\N	\N	\N	\N
Tracker Rows Completed	2017-09-13	\N	0	\N	\N	\N	\N
Tracker Rows Completed	2017-09-14	\N	0	\N	\N	\N	\N
Tracker Rows Completed	2017-09-15	\N	0	\N	\N	\N	\N
Tracker Rows Completed	2017-09-16	\N	0	\N	\N	\N	\N
Tracker Rows Completed	2017-09-17	\N	0	\N	\N	\N	\N
Tracker Rows Completed	2017-09-18	\N	0	\N	\N	\N	\N
Tracker Rows Completed	2017-09-19	\N	0	\N	\N	\N	\N
Tracker Rows Completed	2017-09-20	\N	0	\N	\N	\N	\N
Tracker Rows Completed	2017-09-21	\N	0	\N	\N	\N	\N
Tracker Rows Completed	2017-09-22	\N	0	\N	\N	\N	\N
Tracker Rows Completed	2017-09-23	\N	0	\N	\N	\N	\N
Tracker Rows Completed	2017-09-24	\N	0	\N	\N	\N	\N
Tracker Rows Completed	2017-09-25	\N	73	\N	\N	\N	\N
Tracker Rows Completed	2017-09-25	\N	73	\N	\N	\N	\N
Tracker Rows Completed	2017-09-26	\N	153	\N	\N	\N	\N
Tracker Rows Completed	2017-09-27	\N	258	\N	\N	\N	\N
Tracker Rows Completed	2017-09-27	\N	258	\N	\N	\N	\N
Tracker Rows Completed	2017-09-28	\N	352	\N	\N	\N	\N
Tracker Rows Completed	2017-09-28	\N	352	\N	\N	\N	\N
Tracker Rows Completed	2017-09-29	\N	430	\N	\N	\N	\N
Tracker Rows Completed	2017-09-29	\N	430	\N	\N	\N	\N
Tracker Rows Completed	2017-09-30	\N	430	\N	\N	\N	\N
Tracker Rows Completed	2017-10-01	\N	430	\N	\N	\N	\N
Tracker Rows Completed	2017-10-02	\N	503	\N	\N	\N	\N
Tracker Rows Completed	2017-10-02	\N	503	\N	\N	\N	\N
Tracker Rows Completed	2017-10-02	\N	503	\N	\N	\N	\N
Tracker Rows Completed	2017-10-03	\N	588	\N	\N	\N	\N
Tracker Rows Completed	2017-10-03	\N	588	\N	\N	\N	\N
Tracker Rows Completed	2017-10-04	\N	660	\N	\N	\N	\N
Tracker Rows Completed	2017-10-04	\N	660	\N	\N	\N	\N
Tracker Rows Completed	2017-10-04	\N	660	\N	\N	\N	\N
Tracker Rows Completed	2017-10-05	\N	725	\N	\N	\N	\N
Tracker Rows Completed	2017-10-05	\N	725	\N	\N	\N	\N
Tracker Rows Completed	2017-10-05	\N	725	\N	\N	\N	\N
Tracker Rows Completed	2017-10-06	\N	799	\N	\N	\N	\N
Tracker Rows Completed	2017-10-06	\N	799	\N	\N	\N	\N
Tracker Rows Completed	2017-10-07	\N	799	\N	\N	\N	\N
Tracker Rows Completed	2017-10-08	\N	799	\N	\N	\N	\N
Tracker Rows Completed	2017-10-09	\N	826	\N	\N	\N	\N
Tracker Rows Completed	2017-10-10	\N	826	\N	\N	\N	\N
\.


--
-- TOC entry 2963 (class 0 OID 17287)
-- Dependencies: 247
-- Data for Name: contractors; Type: TABLE DATA; Schema: temp; Owner: postgres
--

COPY contractors (name, email, phone, pm_contact) FROM stdin;
Arraycon	arraycon@gmail.com	6461241234	6461234567
\.


--
-- TOC entry 2962 (class 0 OID 17263)
-- Dependencies: 246
-- Data for Name: projects; Type: TABLE DATA; Schema: temp; Owner: postgres
--

COPY projects (name, start_dt, end_dt, workdays, budget, bundle_title, location_name, contingency) FROM stdin;
Bayshore-A	2018-04-19	2018-08-21	["M", "T", "W", "Th", "F"]	400	\N	CA	\N
\.


--
-- TOC entry 2960 (class 0 OID 16928)
-- Dependencies: 244
-- Data for Name: units; Type: TABLE DATA; Schema: temp; Owner: postgres
--

COPY units (name) FROM stdin;
\.


-- Completed on 2018-02-19 20:56:35

--
-- PostgreSQL database dump complete
--

