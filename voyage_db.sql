--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 14.1 (Ubuntu 14.1-2.pgdg20.04+1)

-- Started on 2022-01-27 16:05:20 WAT

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
-- TOC entry 203 (class 1259 OID 16493)
-- Name: avion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.avion (
    id integer NOT NULL,
    compagnie character varying(100),
    modele character varying(100),
    capacite character varying(100)
);


ALTER TABLE public.avion OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16491)
-- Name: avion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.avion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.avion_id_seq OWNER TO postgres;

--
-- TOC entry 3000 (class 0 OID 0)
-- Dependencies: 202
-- Name: avion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.avion_id_seq OWNED BY public.avion.id;


--
-- TOC entry 205 (class 1259 OID 16501)
-- Name: horaire; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.horaire (
    id integer NOT NULL,
    villedepart character varying(100),
    villearrivee character varying(100),
    heuredepart time(6) without time zone,
    heurearrivee time(6) without time zone
);


ALTER TABLE public.horaire OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16499)
-- Name: horaire_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.horaire_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.horaire_id_seq OWNER TO postgres;

--
-- TOC entry 3001 (class 0 OID 0)
-- Dependencies: 204
-- Name: horaire_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.horaire_id_seq OWNED BY public.horaire.id;


--
-- TOC entry 207 (class 1259 OID 16509)
-- Name: vol; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vol (
    id integer NOT NULL,
    jour date NOT NULL,
    avion_id integer NOT NULL,
    horaire_id integer NOT NULL
);


ALTER TABLE public.vol OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16507)
-- Name: vol_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vol_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vol_id_seq OWNER TO postgres;

--
-- TOC entry 3002 (class 0 OID 0)
-- Dependencies: 206
-- Name: vol_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vol_id_seq OWNED BY public.vol.id;


--
-- TOC entry 2852 (class 2604 OID 16496)
-- Name: avion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.avion ALTER COLUMN id SET DEFAULT nextval('public.avion_id_seq'::regclass);


--
-- TOC entry 2853 (class 2604 OID 16504)
-- Name: horaire id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.horaire ALTER COLUMN id SET DEFAULT nextval('public.horaire_id_seq'::regclass);


--
-- TOC entry 2854 (class 2604 OID 16512)
-- Name: vol id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vol ALTER COLUMN id SET DEFAULT nextval('public.vol_id_seq'::regclass);


--
-- TOC entry 2990 (class 0 OID 16493)
-- Dependencies: 203
-- Data for Name: avion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.avion (id, compagnie, modele, capacite) FROM stdin;
1	Quatz	Ion	Liza Rosentholer
2	Wikizz	Explorer	Elianore Cruwys
3	Realcube	Turbo Firefly	Elaine Rickets
4	Cogilith	Impala	Corney Manhood
5	Jazzy	GTO	Maury Haire
6	Kayveo	SLK55 AMG	Letta Quarry
7	Agivu	A6	Linnea Vaines
8	Feednation	Express 2500	Dirk Tremellier
9	Photojam	Trans Sport	Hale Remmer
10	Fivebridge	Jetta	Jacklin Bennough
11	Realmix	Riviera	Twila Gartside
12	Yotz	V70	Yuri Shovel
13	Reallinks	Mazda5	Urson Wabersinke
14	Layo	XK	Ulla Almond
15	Bubblebox	E150	Roxy Jovovic
16	Eidel	Milan	Gabey Cammocke
17	Jabbercube	Legacy	Dulcie Cromly
18	Divape	Roadmaster	Vidovic Houliston
19	Einti	Ram Van 2500	Paolo Johnys
20	Ailane	Ranger	Kale Henrion
\.


--
-- TOC entry 2992 (class 0 OID 16501)
-- Dependencies: 205
-- Data for Name: horaire; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.horaire (id, villedepart, villearrivee, heuredepart, heurearrivee) FROM stdin;
1	Lachowice	Jifarong	02:41:00	02:00:00
2	Karanglo	Jaguaruana	18:12:00	05:50:00
3	Iwanai	Rozkishne	05:54:00	05:17:00
4	Razan	Dongsheng	23:11:00	23:05:00
5	Jaguaribe	Songying	18:17:00	15:16:00
6	Hrabyně	Utkivka	01:06:00	02:50:00
7	Montbéliard	Zhougang	00:16:00	12:29:00
8	Yanshou	Évodoula	00:26:00	07:54:00
9	Velyka Pysarivka	Botevgrad	09:34:00	09:34:00
10	Leonídio	Krajan Kerjo	22:06:00	21:27:00
11	Barueri	Nova Granada	07:40:00	11:23:00
12	Muritiba	Caçador	07:26:00	00:54:00
13	Kedian	Ḩabīl al Jabr	06:30:00	12:15:00
14	Ngaoundéré	Apoya	19:49:00	18:26:00
15	Vrtojba	La Ronge	20:40:00	01:46:00
16	Mangas	Nangkapayung	14:06:00	01:04:00
17	Shikeng	Kočevje	07:14:00	11:10:00
18	Horizonte	Sakata	05:13:00	22:34:00
19	Faisalābād	Pitangui	00:42:00	06:29:00
20	Předměřice nad Labem	Oubei	12:17:00	07:59:00
\.


--
-- TOC entry 2994 (class 0 OID 16509)
-- Dependencies: 207
-- Data for Name: vol; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vol (id, jour, avion_id, horaire_id) FROM stdin;
1	2021-12-31	11	19
2	2021-02-06	13	17
3	2021-03-21	6	4
4	2021-05-04	8	18
5	2021-07-10	16	10
6	2021-03-13	17	16
7	2021-03-03	11	9
8	2021-06-30	14	9
9	2021-04-22	9	18
10	2021-05-15	19	20
11	2021-06-27	8	11
12	2021-04-16	7	1
13	2021-11-10	8	10
14	2021-05-26	8	14
15	2021-03-27	2	10
16	2021-07-29	7	6
17	2021-04-01	13	12
18	2021-11-08	11	7
19	2021-02-02	19	3
20	2021-03-28	9	6
\.


--
-- TOC entry 3003 (class 0 OID 0)
-- Dependencies: 202
-- Name: avion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.avion_id_seq', 1, false);


--
-- TOC entry 3004 (class 0 OID 0)
-- Dependencies: 204
-- Name: horaire_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.horaire_id_seq', 1, false);


--
-- TOC entry 3005 (class 0 OID 0)
-- Dependencies: 206
-- Name: vol_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vol_id_seq', 1, false);


--
-- TOC entry 2856 (class 2606 OID 16498)
-- Name: avion avion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.avion
    ADD CONSTRAINT avion_pkey PRIMARY KEY (id);


--
-- TOC entry 2858 (class 2606 OID 16506)
-- Name: horaire horaire_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.horaire
    ADD CONSTRAINT horaire_pkey PRIMARY KEY (id);


--
-- TOC entry 2860 (class 2606 OID 16514)
-- Name: vol vol_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vol
    ADD CONSTRAINT vol_pkey PRIMARY KEY (id);


--
-- TOC entry 2861 (class 2606 OID 16515)
-- Name: vol vol_avion_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vol
    ADD CONSTRAINT vol_avion_id_fkey FOREIGN KEY (avion_id) REFERENCES public.avion(id);


--
-- TOC entry 2862 (class 2606 OID 16520)
-- Name: vol vol_horaire_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vol
    ADD CONSTRAINT vol_horaire_id_fkey FOREIGN KEY (horaire_id) REFERENCES public.horaire(id);


-- Completed on 2022-01-27 16:05:21 WAT

--
-- PostgreSQL database dump complete
--

