--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

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
-- Name: Sessions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Sessions" (
    sid character varying(36) NOT NULL,
    expires timestamp with time zone,
    data text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Sessions" OWNER TO postgres;

--
-- Name: coba; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.coba (
    datas character varying(100)
);


ALTER TABLE public.coba OWNER TO postgres;

--
-- Name: datas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.datas (
    id integer,
    nama character varying(100),
    age character varying(100)
);


ALTER TABLE public.datas OWNER TO postgres;

--
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    id integer NOT NULL,
    uuid character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    price integer NOT NULL,
    "userId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.product OWNER TO postgres;

--
-- Name: product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_id_seq OWNER TO postgres;

--
-- Name: product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;


--
-- Name: tblbookcategories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tblbookcategories (
    pk_categoryid character varying(20) NOT NULL,
    category_name character varying(50) NOT NULL
);


ALTER TABLE public.tblbookcategories OWNER TO postgres;

--
-- Name: tblbookcontent; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tblbookcontent (
    page integer NOT NULL,
    book_content text,
    pk_bookdetail character varying(20) NOT NULL
);


ALTER TABLE public.tblbookcontent OWNER TO postgres;

--
-- Name: tblbookdetail; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tblbookdetail (
    pk_bookdetail character varying(20) NOT NULL,
    title character varying(100) NOT NULL,
    creator character varying(50) NOT NULL,
    subject character varying(100) NOT NULL,
    description text NOT NULL,
    publisher character varying(100) NOT NULL,
    contributor character varying(100),
    tanggal_terbit character varying(100) NOT NULL,
    resource_identifier character varying(100) NOT NULL,
    source character varying(100) NOT NULL,
    rights boolean NOT NULL,
    pages integer,
    pk_categoryid character varying(20),
    pk_subcategoryid character varying(20)
);


ALTER TABLE public.tblbookdetail OWNER TO postgres;

--
-- Name: tblbooksubcategories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tblbooksubcategories (
    pk_subcategoryid character varying(20) NOT NULL,
    sub_category_name character varying(50) NOT NULL,
    pk_categoryid character varying(20)
);


ALTER TABLE public.tblbooksubcategories OWNER TO postgres;

--
-- Name: tblofcontent; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tblofcontent (
    pk_bookdetail character varying(20),
    pk_tblofcontent character varying(20),
    text character varying(150) NOT NULL,
    page integer,
    sub text
);


ALTER TABLE public.tblofcontent OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    uuid character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    role character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: product id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: Sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Sessions" (sid, expires, data, "createdAt", "updatedAt") FROM stdin;
6kA11jUXY40t5EAXd8NWfotdWsBNwRK3	2023-05-09 17:51:04.883+07	{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"},"userId":"dca065d7-ea08-43d5-8291-0fbc8a922db4"}	2023-05-08 17:50:51.317+07	2023-05-08 17:51:04.884+07
kQH4-Ch9DlnzdnX7Z3d8Uj2zSKgFx0na	2023-05-09 17:50:33.171+07	{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}	2023-05-07 18:12:13.812+07	2023-05-08 17:50:33.171+07
ikg0oa3kGd7lPgIIMAG8ENxA8MYii_tK	2023-05-09 17:50:51.29+07	{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}	2023-05-08 17:50:51.298+07	2023-05-08 17:50:51.298+07
Rfdm4z1UfXaqKKF6bAHsWTX2WfrpHL9_	2023-05-09 17:50:53.719+07	{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}	2023-05-08 17:50:53.721+07	2023-05-08 17:50:53.721+07
TvlR2egbhGRkGqbrLivF8HA1aYk71pal	2023-05-09 17:50:59.059+07	{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}	2023-05-08 17:50:59.063+07	2023-05-08 17:50:59.063+07
LniOogS1277OhiNdJTSqltt7QZ1evo0O	2023-05-09 17:49:11.71+07	{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}	2023-05-08 17:49:11.716+07	2023-05-08 17:49:11.716+07
jmhjNN9cJdIz6JpwVp3KI8kNhvIAiCuG	2023-05-09 17:50:51.301+07	{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}	2023-05-08 17:50:51.305+07	2023-05-08 17:50:51.305+07
1rR0N8PEKYU9o60uoaYGcWD4qep1EnT_	2023-05-09 17:50:51.308+07	{"cookie":{"originalMaxAge":null,"expires":null,"secure":false,"httpOnly":true,"path":"/"}}	2023-05-08 17:50:51.311+07	2023-05-08 17:50:51.311+07
\.


--
-- Data for Name: coba; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.coba (datas) FROM stdin;
\.


--
-- Data for Name: datas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.datas (id, nama, age) FROM stdin;
\N	rizky	23
\N	rizky	23
494	rizky	23
390	rizky	23
829	rizky	23
592	yasing	53
606	april	30
374	valdi	24
957	icha	3
657	wido	75
\.


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product (id, uuid, name, price, "userId", "createdAt", "updatedAt") FROM stdin;
3	32dbeeac-c28d-4ef5-a1c8-546fea856504	kondom	50	3	2023-01-27 23:17:00.425+07	2023-01-27 23:17:00.425+07
4	1d8a0250-1fec-4ad8-ac7c-4fc20346bf63	otak	150	3	2023-01-27 23:17:08.11+07	2023-01-27 23:17:08.11+07
5	18f3f496-2554-4d86-ae7d-5dc82accf6ee	otak	150	3	2023-01-27 23:37:58.646+07	2023-01-27 23:37:58.646+07
6	312db266-720d-496d-be7e-908764c22a90	otak	150	3	2023-01-28 00:00:41.678+07	2023-01-28 00:00:41.678+07
\.


--
-- Data for Name: tblbookcategories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tblbookcategories (pk_categoryid, category_name) FROM stdin;
Fiqi52	Fiqih
asdf	asu
\.


--
-- Data for Name: tblbookcontent; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tblbookcontent (page, book_content, pk_bookdetail) FROM stdin;
6	<p><q style="box-sizing: border-box; border: 0px solid rgb(229, 231, 235); --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246/0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-bottom: 0.75rem; display: block; text-align: justify; font-style: italic; color: rgb(51, 65, 85); font-family: Poppins, sans-serif; font-size: medium; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(248, 250, 252); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">Definisi yang benar tentang air mutlak yaitu air yang terbebas dari tambahan-tambahan nama yang baku</q><p style="box-sizing: border-box; border: 0px solid rgb(229, 231, 235); --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246/0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 0px 0px 0.75rem; text-align: justify; text-indent: 2rem; font-size: medium; line-height: 1.5rem; color: rgb(51, 65, 85); font-family: Poppins, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(248, 250, 252); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">Maksud dari tamabahan nama yang baku adalah air tersebut tidak bisa lepas dari tambahan nama di belakangnya. Contohnya air kopi, ketika air dicampur dengan bubuk kopi, maka air tersebut berubah namanya menjadi air kopi, bukan air murni lagi. Tidak bisa orang menyebut air yang dicampur bubuk kopi sebagai air saja, pasti mereka menyebutnya air kopi. Maka air kopi ini bukan air mutlak, karena ada tambahan nama yang baku di belakangnya.</p><p style="box-sizing: border-box; border: 0px solid rgb(229, 231, 235); --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246/0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 0px 0px 0.75rem; text-align: justify; text-indent: 2rem; font-size: medium; line-height: 1.5rem; color: rgb(51, 65, 85); font-family: Poppins, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(248, 250, 252); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">Berbeda halnya apabila tambahan nama tersebut tidak baku, misalnya air sumur. Air sumur meskipun ada tambahan nama dibelakangnya yaitu sumur, namun orang tetap dapat menyebut air tersebut sebagai air saja.</p><p style="box-sizing: border-box; border: 0px solid rgb(229, 231, 235); --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246/0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 0px 0px 0.75rem; text-align: justify; text-indent: 2rem; font-size: medium; line-height: 1.5rem; --tw-text-opacity:1; color: rgb(15 23 42/var(--tw-text-opacity)); font-family: Poppins, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(248, 250, 252); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">Air mutlak ini ada yang berasal dari langit dan ada yang berasal dari bumi, yang berasal dari langit ada tiga; air hujan, air salju dan air barod2 yang keduanya sudah mencair. Sedangkan air yang berasal dari bumi ada empat; air laut, air sungai, air sumur dan air dari mata air. Abu Syuja yaitu Syihabudin al-Asfahani (w 593 H) dalam kitab matannya mengatakan:</p><br></p>	Huku984
24	<p>ASDFASDF<br></p>	cont118
7	<h1>A.\nPenyucian Hati Dari Sifat Tercela\n</h1><h2>1.\nBersihkan Hati\n</h2><p>Pertama,\nhendaknya membersihkan hati dari segala perbuatan curang, kotor, benci, dengki,\nakidah yang buruk dan perangai (budi pekerti) yang tidak baik; hal itu\ndilakukan untuk memperbaiki dalam menerima ilmu, menjaganya serta mengulas\nmakna-maknanya secara detail dan hakikat-hakikatnya yang samar.\n</p><h2>2.\nKedudukan Ilmu</h2><p>"Karena\nsebagaimana yang disampaikan oleh sebagian ulama bahwa ilmu itu adalah shalat\nyang tersembunyi, ibadah hati dan kedekatan batin"</p><h2>3. Syarat\nMenimba Ilmu</h2>	Adab928
5	<h1 style="box-sizing: border-box; border: 0px solid rgb(229, 231, 235); --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246/0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: 1.25rem; font-weight: 700; margin: 0px 0px 0.5rem; display: block; text-indent: 0px; line-height: 1.75rem; --tw-text-opacity:1; color: rgb(15 23 42/var(--tw-text-opacity)); font-family: Poppins, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(248, 250, 252); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">HUKUM-HUKUM TERKAIT AIR DALAM MADZHAB SYAFI'I</h1><p style="box-sizing: border-box; border: 0px solid rgb(229, 231, 235); --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246/0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 0px 0px 0.75rem; text-align: justify; text-indent: 2rem; font-size: medium; line-height: 1.5rem; color: rgb(51, 65, 85); font-family: Poppins, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(248, 250, 252); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">Ulama Syafi’iyah umumnya mengawali bab Thaharah dengan membahas air. Mengingat pentingnya air sebagai media thaharah yang menyebabkan sah tidaknya suatu ibadah, maka para ulama khususnya ulama syafi’iyah sangat ketat dalam aturan terkait air ini.</p><p style="box-sizing: border-box; border: 0px solid rgb(229, 231, 235); --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246/0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 0px 0px 0.75rem; text-align: justify; text-indent: 2rem; font-size: medium; line-height: 1.5rem; color: rgb(51, 65, 85); font-family: Poppins, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(248, 250, 252); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">Air dalam kaitannya dengan bersuci ada empat jenis; suci menyucikan, suci menyucikan namun makruh menggunakannya, suci namun tidak menyucikan dan mutanajis. Berikut penjelasan masing-masingnya.</p><h1 style="box-sizing: border-box; border: 0px solid rgb(229, 231, 235); --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246/0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: 1.25rem; font-weight: 700; margin: 0px 0px 0.5rem; display: block; text-indent: 0px; line-height: 1.75rem; --tw-text-opacity:1; color: rgb(15 23 42/var(--tw-text-opacity)); font-family: Poppins, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(248, 250, 252); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">Suci Menyucikan</h1><p style="box-sizing: border-box; border: 0px solid rgb(229, 231, 235); --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246/0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 0px 0px 0.75rem; text-align: justify; text-indent: 2rem; font-size: medium; line-height: 1.5rem; --tw-text-opacity:1; color: rgb(15 23 42/var(--tw-text-opacity)); font-family: Poppins, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(248, 250, 252); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">Air suci menyucikan adalah air yang suci dzatnya dan dapat digunakan untuk menyucikan badan baik dari hadats ataupun dari najis.</p><p><strong style="box-sizing: border-box; border: 0px solid rgb(229, 231, 235); --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246/0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-weight: bolder; display: block; text-indent: 0px; font-size: 1.125rem; line-height: 1.75rem; --tw-text-opacity:1; color: rgb(15 23 42/var(--tw-text-opacity)); font-family: Poppins, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(248, 250, 252); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">Air Mutlak</strong></p><p style="box-sizing: border-box; border: 0px solid rgb(229, 231, 235); --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgb(59 130 246/0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin: 0px 0px 0.75rem; text-align: justify; text-indent: 2rem; font-size: medium; line-height: 1.5rem; color: rgb(51, 65, 85); font-family: Poppins, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(248, 250, 252); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">Air yang suci dan dapat menyucikan adalah air mutlak, yaitu air murni yang terlepas dari tambahantambahan nama yang baku di belakangnya. Imam Nawawi (w 676 H) dalam kitab al-Majmu’ mengatakan</p>	Huku984
\.


--
-- Data for Name: tblbookdetail; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tblbookdetail (pk_bookdetail, title, creator, subject, description, publisher, contributor, tanggal_terbit, resource_identifier, source, rights, pages, pk_categoryid, pk_subcategoryid) FROM stdin;
Huku984	Hukum-hukum Terkait Air Dalam Madzab Syafi’i	Galih Maulana, Lc	air	-	-	-	1945-02-22	-	https://www.rumahfiqih.com/pdf/z.php?id=346	t	34	Fiqi52	subFiqi313
mant425	Mantap	siapa	saiap	siap	sadfa	asdfas	2023-04-20	123	213	f	123123	Fiqi52	subFiqi313
\.


--
-- Data for Name: tblbooksubcategories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tblbooksubcategories (pk_subcategoryid, sub_category_name, pk_categoryid) FROM stdin;
subFiqi313	Fiqih Ibadah	Fiqi52
\.


--
-- Data for Name: tblofcontent; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tblofcontent (pk_bookdetail, pk_tblofcontent, text, page, sub) FROM stdin;
Huku984	root-bab-481	BAB 1. Suci Menyucikan	5	[{"parentID":"root-bab-481","id":1,"text":"Air Mutlak","page":5,"sub":[{"parentId":1,"id":"2-subsubbab","text":"Air hujan, air salju dan air barod","page":7},{"parentId":1,"id":"3-subsubbab","text":"Air Laut","page":8},{"parentId":1,"id":"4-subsubbab","text":"Air Sumur","page":8},{"parentId":1,"id":"5-subsubbab","text":"Air Sungai dan Mata Air","page":9}]}]
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, uuid, name, email, password, role, "createdAt", "updatedAt") FROM stdin;
3	dca065d7-ea08-43d5-8291-0fbc8a922db4	Muhammad Rizky Yuhari	yuharimuhammadrizky@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$5tyPj3PhH16KJ11V2x00Bw$+Jpk/JzEfne62utIfym0O4wkJfUo4P0IqjBcSyMHQW4	Super Admin	2023-01-20 06:05:46.475+07	2023-01-20 06:05:46.475+07
11	615126a4-2291-4b01-bfbd-671381536931	admin	admin@gmail.com	$argon2id$v=19$m=65536,t=3,p=4$aGFOjFyRfUjqmxRjR4fs9w$Hpwm3ClCvL7wkTdxCt5k/Fs1SJudzuVsIkiQgY4ikSU	Admin	2023-02-01 13:32:45.024+07	2023-02-01 13:32:45.024+07
\.


--
-- Name: product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_id_seq', 6, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 12, true);


--
-- Name: Sessions Sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Sessions"
    ADD CONSTRAINT "Sessions_pkey" PRIMARY KEY (sid);


--
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- Name: tblbookcategories tblbookcategories_category_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tblbookcategories
    ADD CONSTRAINT tblbookcategories_category_name_key UNIQUE (category_name);


--
-- Name: tblbookcategories tblbookcategories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tblbookcategories
    ADD CONSTRAINT tblbookcategories_pkey PRIMARY KEY (pk_categoryid);


--
-- Name: tblbookdetail tblbookdetail_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tblbookdetail
    ADD CONSTRAINT tblbookdetail_pkey PRIMARY KEY (pk_bookdetail);


--
-- Name: tblbookdetail tblbookdetail_title_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tblbookdetail
    ADD CONSTRAINT tblbookdetail_title_key UNIQUE (title);


--
-- Name: tblbooksubcategories tblbooksubcategories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tblbooksubcategories
    ADD CONSTRAINT tblbooksubcategories_pkey PRIMARY KEY (pk_subcategoryid);


--
-- Name: tblbooksubcategories tblbooksubcategories_sub_category_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tblbooksubcategories
    ADD CONSTRAINT tblbooksubcategories_sub_category_name_key UNIQUE (sub_category_name);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: product product_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT "product_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: tblbookdetail tblbookdetail_pk_categoryid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tblbookdetail
    ADD CONSTRAINT tblbookdetail_pk_categoryid_fkey FOREIGN KEY (pk_categoryid) REFERENCES public.tblbookcategories(pk_categoryid) ON DELETE CASCADE;


--
-- Name: tblbookdetail tblbookdetail_pk_subcategoryid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tblbookdetail
    ADD CONSTRAINT tblbookdetail_pk_subcategoryid_fkey FOREIGN KEY (pk_subcategoryid) REFERENCES public.tblbooksubcategories(pk_subcategoryid) ON DELETE CASCADE;


--
-- Name: tblbooksubcategories tblbooksubcategories_pk_categoryid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tblbooksubcategories
    ADD CONSTRAINT tblbooksubcategories_pk_categoryid_fkey FOREIGN KEY (pk_categoryid) REFERENCES public.tblbookcategories(pk_categoryid) ON DELETE CASCADE;


--
-- Name: tblofcontent tblofcontent_pk_bookdetail_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tblofcontent
    ADD CONSTRAINT tblofcontent_pk_bookdetail_fkey FOREIGN KEY (pk_bookdetail) REFERENCES public.tblbookdetail(pk_bookdetail) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

