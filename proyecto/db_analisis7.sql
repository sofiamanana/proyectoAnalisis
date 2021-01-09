--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4 (Ubuntu 12.4-1.pgdg20.04+1)
-- Dumped by pg_dump version 12.4 (Ubuntu 12.4-1.pgdg20.04+1)

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
-- Name: api_file; Type: TABLE; Schema: public; Owner: sofia
--

CREATE TABLE public.api_file (
    id integer NOT NULL,
    name character varying(500) NOT NULL,
    filepath character varying(100),
    username character varying(300) NOT NULL,
    version integer NOT NULL,
    plan integer NOT NULL
);


ALTER TABLE public.api_file OWNER TO sofia;

--
-- Name: api_file_id_seq; Type: SEQUENCE; Schema: public; Owner: sofia
--

CREATE SEQUENCE public.api_file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.api_file_id_seq OWNER TO sofia;

--
-- Name: api_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sofia
--

ALTER SEQUENCE public.api_file_id_seq OWNED BY public.api_file.id;


--
-- Name: api_mensajes; Type: TABLE; Schema: public; Owner: sofia
--

CREATE TABLE public.api_mensajes (
    id integer NOT NULL,
    mensaje character varying(1000) NOT NULL,
    fiscalizador character varying(300) NOT NULL
);


ALTER TABLE public.api_mensajes OWNER TO sofia;

--
-- Name: api_mensajes_id_seq; Type: SEQUENCE; Schema: public; Owner: sofia
--

CREATE SEQUENCE public.api_mensajes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.api_mensajes_id_seq OWNER TO sofia;

--
-- Name: api_mensajes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sofia
--

ALTER SEQUENCE public.api_mensajes_id_seq OWNED BY public.api_mensajes.id;


--
-- Name: api_plan; Type: TABLE; Schema: public; Owner: sofia
--

CREATE TABLE public.api_plan (
    id integer NOT NULL,
    nombre character varying(300) NOT NULL,
    reportador character varying(300) NOT NULL
);


ALTER TABLE public.api_plan OWNER TO sofia;

--
-- Name: api_plan_id_seq; Type: SEQUENCE; Schema: public; Owner: sofia
--

CREATE SEQUENCE public.api_plan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.api_plan_id_seq OWNER TO sofia;

--
-- Name: api_plan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sofia
--

ALTER SEQUENCE public.api_plan_id_seq OWNED BY public.api_plan.id;


--
-- Name: aplicaion_file; Type: TABLE; Schema: public; Owner: sofia
--

CREATE TABLE public.aplicaion_file (
    id integer NOT NULL,
    name character varying(500) NOT NULL,
    filepath character varying(100)
);


ALTER TABLE public.aplicaion_file OWNER TO sofia;

--
-- Name: aplicaion_file_id_seq; Type: SEQUENCE; Schema: public; Owner: sofia
--

CREATE SEQUENCE public.aplicaion_file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.aplicaion_file_id_seq OWNER TO sofia;

--
-- Name: aplicaion_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sofia
--

ALTER SEQUENCE public.aplicaion_file_id_seq OWNED BY public.aplicaion_file.id;


--
-- Name: aplicaion_reportador; Type: TABLE; Schema: public; Owner: sofia
--

CREATE TABLE public.aplicaion_reportador (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    clave character varying(100) NOT NULL
);


ALTER TABLE public.aplicaion_reportador OWNER TO sofia;

--
-- Name: aplicaion_reportador_id_seq; Type: SEQUENCE; Schema: public; Owner: sofia
--

CREATE SEQUENCE public.aplicaion_reportador_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.aplicaion_reportador_id_seq OWNER TO sofia;

--
-- Name: aplicaion_reportador_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sofia
--

ALTER SEQUENCE public.aplicaion_reportador_id_seq OWNED BY public.aplicaion_reportador.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: sofia
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO sofia;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: sofia
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO sofia;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sofia
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: sofia
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO sofia;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: sofia
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO sofia;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sofia
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: sofia
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO sofia;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: sofia
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO sofia;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sofia
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: sofia
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO sofia;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: sofia
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO sofia;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: sofia
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO sofia;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sofia
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: sofia
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO sofia;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sofia
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: sofia
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO sofia;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: sofia
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO sofia;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sofia
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: authtoken_token; Type: TABLE; Schema: public; Owner: sofia
--

CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.authtoken_token OWNER TO sofia;

--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: sofia
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO sofia;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: sofia
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO sofia;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sofia
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: sofia
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO sofia;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: sofia
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO sofia;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sofia
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: sofia
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO sofia;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: sofia
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO sofia;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sofia
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: sofia
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO sofia;

--
-- Name: api_file id; Type: DEFAULT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.api_file ALTER COLUMN id SET DEFAULT nextval('public.api_file_id_seq'::regclass);


--
-- Name: api_mensajes id; Type: DEFAULT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.api_mensajes ALTER COLUMN id SET DEFAULT nextval('public.api_mensajes_id_seq'::regclass);


--
-- Name: api_plan id; Type: DEFAULT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.api_plan ALTER COLUMN id SET DEFAULT nextval('public.api_plan_id_seq'::regclass);


--
-- Name: aplicaion_file id; Type: DEFAULT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.aplicaion_file ALTER COLUMN id SET DEFAULT nextval('public.aplicaion_file_id_seq'::regclass);


--
-- Name: aplicaion_reportador id; Type: DEFAULT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.aplicaion_reportador ALTER COLUMN id SET DEFAULT nextval('public.aplicaion_reportador_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: api_file; Type: TABLE DATA; Schema: public; Owner: sofia
--

COPY public.api_file (id, name, filepath, username, version, plan) FROM stdin;
8	lala	files/lala.txt	luxito	1	1
9	lala	files/lala_v2ZXpeF.txt	luxito	1	1
13	yuyoreport	files/lala_rZ86Uwh.txt	yuyo	1	1
14	patoreport	files/lala_84XBaUT.txt	pato	1	1
15	patoreport	files/lala_KOfXguY.txt		1	1
16	laañañña	files/lala_Hq2mgqK.txt		1	1
17	laañañña	files/lala_LrunwSd.txt		1	1
18	patoreport	files/ola.txt		1	1
19	patoreport	files/ola_BOZp3Nd.txt		1	1
20	patoreport	files/reporte_65icOMZ.odt		1	1
22	patoreport	files/ola_Exyy9YX.txt		1	1
23	patoreport	files/ola_pPE16QB.txt		1	1
24	laañañña	files/lala_SCnsVJS.txt		1	1
25	report1	files/lala_rhGmKJN.txt	yuyo	1	1
26	report2	files/wa_cKwIu29.txt	yuyo	1	1
27	report1	files/ola_22l6wIO.txt	yuyo	1	1
28	report1	files/ola_U6DtMsZ.txt	yuyo	1	1
1	HolaMundo	/home/ubuntu/Desktop	pato	1	1
2	ola.txt	/home/ubuntu/Desktop	pato	1	1
3	Waaaa	files/wa.txt	pato	1	1
4	Waaaa	files/wa_Dy1T0S1.txt	pato	1	1
5	ReporteWord	files/reporte.odt	pato	1	1
6	ReporteWord	files/reporte_JgEwLpj.odt	pato	1	1
7	reportewaaaaaaaaaaaaaa	files/holamundo_dd6F7EC.txt	pato	1	1
29	lalala	files/ola_2wxoS3N.txt	pato	1	1
30	lalala	files/ola_N9zzmuT.txt	pato	1	1
31	plan1		yuyo	1	1
32	plan1		yuyo	1	1
33	Reporte1	files/reporte1.odt	yuyo	1	2
34	Reporte3	files/reporte1_ErIQsRS.odt	yuyo	1	3
\.


--
-- Data for Name: api_mensajes; Type: TABLE DATA; Schema: public; Owner: sofia
--

COPY public.api_mensajes (id, mensaje, fiscalizador) FROM stdin;
1	Se a generado un cambio en el plan 1, ahora deben reportar nuevas medidas.	luxito
2	Se a generado un cambio en el plan 1, ahora deben reportar nuevas medidas.	luxito
3	Se a generado un cambio en el plan 1, ahora deben reportar nuevas medidas.	luxito
4	Este es un mensaje para las organizaciones.	luxito
\.


--
-- Data for Name: api_plan; Type: TABLE DATA; Schema: public; Owner: sofia
--

COPY public.api_plan (id, nombre, reportador) FROM stdin;
1	plan1	yuyo
2	plan3	luxito
3	plan5	yuyo
4	plan5	yuyo
5	plan5	yuyo
6	plan_nuevo	yuyo
\.


--
-- Data for Name: aplicaion_file; Type: TABLE DATA; Schema: public; Owner: sofia
--

COPY public.aplicaion_file (id, name, filepath) FROM stdin;
1	ola.txt	/home/ubuntu/Desktop
2	HolaMundo	files/holamundo.txt
3	HolaMundo	files/holamundo_WTACeLp.txt
4	HolaMundo	files/holamundo_RJX7Ovq.txt
5	HolaMundo	files/holamundo_BJvtQHE.txt
\.


--
-- Data for Name: aplicaion_reportador; Type: TABLE DATA; Schema: public; Owner: sofia
--

COPY public.aplicaion_reportador (id, name, clave) FROM stdin;
1	Alfred	yuyo
2	Sofia	sofia
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: sofia
--

COPY public.auth_group (id, name) FROM stdin;
1	reportador
2	fiscalizador
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: sofia
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
1	1	41
2	1	42
3	1	43
4	1	44
5	2	41
6	2	42
7	2	43
8	2	44
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: sofia
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add file	7	add_file
26	Can change file	7	change_file
27	Can delete file	7	delete_file
28	Can view file	7	view_file
29	Can add reportador	8	add_reportador
30	Can change reportador	8	change_reportador
31	Can delete reportador	8	delete_reportador
32	Can view reportador	8	view_reportador
33	Can add Token	9	add_token
34	Can change Token	9	change_token
35	Can delete Token	9	delete_token
36	Can view Token	9	view_token
37	Can add token	10	add_tokenproxy
38	Can change token	10	change_tokenproxy
39	Can delete token	10	delete_tokenproxy
40	Can view token	10	view_tokenproxy
41	Can add file	11	add_file
42	Can change file	11	change_file
43	Can delete file	11	delete_file
44	Can view file	11	view_file
45	Can add mensajes	12	add_mensajes
46	Can change mensajes	12	change_mensajes
47	Can delete mensajes	12	delete_mensajes
48	Can view mensajes	12	view_mensajes
49	Can add plan	13	add_plan
50	Can change plan	13	change_plan
51	Can delete plan	13	delete_plan
52	Can view plan	13	view_plan
53	Can add plan_rep	14	add_plan_rep
54	Can change plan_rep	14	change_plan_rep
55	Can delete plan_rep	14	delete_plan_rep
56	Can view plan_rep	14	view_plan_rep
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: sofia
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
2	alain	\N	f	alain				f	t	2020-11-20 19:00:12.833763+00
3	nandink	\N	f	nandink				f	t	2020-11-21 01:21:06.810112+00
4	pbkdf2_sha256$216000$A4AnRbiT3XLL$PZnlD/X15/lEF6T+6uKvWcRkrOT/lCBoFyMEbXiIZhc=	\N	f	lala				f	t	2020-11-21 18:32:22.847702+00
7	pbkdf2_sha256$216000$ScZHgZ9Ipv2w$+OTEfaW8Dnh2wxDKyzR3l/pQk2SBtL7RrrL+rGqIiqI=	\N	f	alancito				f	t	2020-12-13 19:05:58.970075+00
9	pbkdf2_sha256$216000$JG19DTWB8R0n$h4mCDH3noEHgxUD/WM9/u3Bz3Bp8m10AZGSsdQvGdT8=	2020-12-14 01:26:58.240037+00	f	pato				f	t	2020-12-13 19:06:39+00
1	pbkdf2_sha256$216000$GiwRdrtWOx34$MKa6RE5KR3WmdmhlS2sGViIU8HrPxpkYs7xY6GuL68w=	2021-01-07 19:41:20.470933+00	t	soofia			sofi.campus@gmail.com	t	t	2020-11-11 18:53:32.735313+00
5	pbkdf2_sha256$216000$YWpnd0H3JIhH$lOToyE9S+Wqkc5AxwKXVoPjg09uYWPccufOMB9KDh2M=	2021-01-09 00:42:41.348165+00	f	yuyo				f	t	2020-11-21 18:34:21+00
6	pbkdf2_sha256$216000$MTOkJxABcawq$YyToGmeSxEivcrBYnrRxa6FwaUXC3+q+6fQkbjbIKm4=	2021-01-09 00:43:35.051547+00	f	luxito				f	t	2020-11-21 18:37:29+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: sofia
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
1	6	2
2	5	1
3	9	1
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: sofia
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: sofia
--

COPY public.authtoken_token (key, created, user_id) FROM stdin;
fa04600f4580a507b6d60d3e01aecf8e3366518b	2020-11-19 19:47:38.91249+00	1
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: sofia
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2020-11-19 19:47:38.914533+00	1	fa04600f4580a507b6d60d3e01aecf8e3366518b	1	[{"added": {}}]	10	1
2	2020-11-21 19:37:41.950043+00	1	reportador	1	[{"added": {}}]	3	1
3	2020-11-21 19:38:02.917415+00	2	fiscalizador	1	[{"added": {}}]	3	1
4	2020-11-21 19:44:34.062273+00	6	luxito	2	[{"changed": {"fields": ["Groups"]}}]	4	1
5	2020-11-21 19:45:11.698003+00	5	yuyo	2	[{"changed": {"fields": ["password"]}}]	4	1
6	2020-11-21 19:45:21.302986+00	5	yuyo	2	[{"changed": {"fields": ["Groups"]}}]	4	1
7	2020-12-13 19:05:59.101031+00	7	alancito	1	[{"added": {}}]	4	1
8	2020-12-13 19:06:39.486862+00	9	pato	1	[{"added": {}}]	4	1
9	2020-12-13 19:06:51.211247+00	9	pato	2	[{"changed": {"fields": ["Groups"]}}]	4	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: sofia
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	aplicaion	file
8	aplicaion	reportador
9	authtoken	token
10	authtoken	tokenproxy
11	api	file
12	api	mensajes
13	api	plan
14	api	plan_rep
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: sofia
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-11-11 18:51:16.154967+00
2	auth	0001_initial	2020-11-11 18:51:16.399957+00
3	admin	0001_initial	2020-11-11 18:51:16.856588+00
4	admin	0002_logentry_remove_auto_add	2020-11-11 18:51:16.914822+00
5	admin	0003_logentry_add_action_flag_choices	2020-11-11 18:51:16.997404+00
6	aplicaion	0001_initial	2020-11-11 18:51:17.048846+00
7	contenttypes	0002_remove_content_type_name	2020-11-11 18:51:17.09581+00
8	auth	0002_alter_permission_name_max_length	2020-11-11 18:51:17.110195+00
9	auth	0003_alter_user_email_max_length	2020-11-11 18:51:17.12711+00
10	auth	0004_alter_user_username_opts	2020-11-11 18:51:17.139682+00
11	auth	0005_alter_user_last_login_null	2020-11-11 18:51:17.153938+00
12	auth	0006_require_contenttypes_0002	2020-11-11 18:51:17.179897+00
13	auth	0007_alter_validators_add_error_messages	2020-11-11 18:51:17.203564+00
14	auth	0008_alter_user_username_max_length	2020-11-11 18:51:17.305683+00
15	auth	0009_alter_user_last_name_max_length	2020-11-11 18:51:17.339277+00
16	auth	0010_alter_group_name_max_length	2020-11-11 18:51:17.373795+00
17	auth	0011_update_proxy_permissions	2020-11-11 18:51:17.406704+00
18	auth	0012_alter_user_first_name_max_length	2020-11-11 18:51:17.488773+00
19	sessions	0001_initial	2020-11-11 18:51:17.634+00
20	aplicaion	0002_reportador	2020-11-11 18:59:30.021904+00
21	authtoken	0001_initial	2020-11-19 19:43:21.689256+00
22	authtoken	0002_auto_20160226_1747	2020-11-19 19:43:21.863165+00
23	authtoken	0003_tokenproxy	2020-11-19 19:43:21.879879+00
24	api	0001_initial	2020-11-21 19:23:21.784392+00
25	api	0002_file_username	2020-12-13 15:44:58.671053+00
26	api	0003_file_version	2020-12-13 16:13:54.074819+00
27	api	0004_auto_20201213_2154	2020-12-13 21:54:37.131122+00
28	api	0005_mensajes	2021-01-07 19:32:08.470935+00
29	api	0006_plan	2021-01-07 21:05:43.644289+00
30	api	0007_plan_rep	2021-01-08 22:30:34.827768+00
31	api	0008_file_plan	2021-01-08 22:36:58.423842+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: sofia
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
4wwbxzdl33cms2day91wihsiowt0ss2d	.eJxVjEEOwiAQRe_C2pBBChSX7nsGMsNMpWpoUtqV8e7apAvd_vfef6mE21rS1mRJE6uLMur0uxHmh9Qd8B3rbdZ5rusykd4VfdCmh5nleT3cv4OCrXxrBDKU2VogNsGKC9iN0Ql1AL3NI4rx4uHsIEQxVhBQehRkcRTRefX-APdWOKI:1kgYop:2NCncdUM6yFImZc5zIbt2W5JESLt8fkjrFRioQS_AGE	2020-12-05 19:45:11.719644+00
8sh663hyulo6dla5p7pg349rdqov1nyy	.eJxVjEEOwiAQRe_C2pCBAhaX7j0DmWGoVA0kpV0Z7y5NutDtf--_twi4rTlsLS1hZnERVpx-N8L4TGUH_MByrzLWsi4zyV2RB23yVjm9rof7F8jYcn8POBI4MNE6AlLRE7Bxxg1M5wnZjqSdRlRdmjoCbyx66v0ECrQx4vMF5_o4AQ:1kgYwN:qr1BlN3TWlaLViscGihon3dyyPJO--BfNXs6Sugun9I	2020-12-05 19:52:59.207341+00
p3r658h98wzlfpf0ahi40fbpdxvh0mcn	e30:1kgw4e:leEiPqp2JeojfFc0sXW7xNzgi8b4AZ_FHmoELecmjqI	2020-12-06 20:35:04.607272+00
zkbnjttg8cxadhxdgx7geyl43bjba246	.eJxVjEEOwiAQRe_C2pCBAhaX7j0DmWGoVA0kpV0Z7y5NutDtf--_twi4rTlsLS1hZnERVpx-N8L4TGUH_MByrzLWsi4zyV2RB23yVjm9rof7F8jYcn8POBI4MNE6AlLRE7Bxxg1M5wnZjqSdRlRdmjoCbyx66v0ECrQx4vMF5_o4AQ:1kgyGY:9zwkVo14dHi4mTIoN2vtkESGzzuHkhfe0XIUoev3QIM	2020-12-06 22:55:30.691868+00
r36rt13j8xsv1m49caohow7i02g83b0h	.eJxVjEEOwiAQRe_C2pCBAhaX7j0DmWGoVA0kpV0Z7y5NutDtf--_twi4rTlsLS1hZnERVpx-N8L4TGUH_MByrzLWsi4zyV2RB23yVjm9rof7F8jYcn8POBI4MNE6AlLRE7Bxxg1M5wnZjqSdRlRdmjoCbyx66v0ECrQx4vMF5_o4AQ:1kocAC:uu1ffVBW0m7IA9MV08yIbiEnnUSo2pXRvhGpi1Ouf1w	2020-12-28 00:56:32.871124+00
xfwksyicwsjn7b389kdp3bp2oynp95bq	.eJxVjDkOwjAUBe_iGlmxsX9sSvqcIfqbSQA5UpYKcXeIlALaNzPvZXrc1qHfFp37UczFZHP63Qj5oXUHcsd6myxPdZ1HsrtiD7rYbhJ9Xg_372DAZfjWmB1oFo4OYk4g8ewxKXDrlVpIBYjVN8ShKZKLsoRQILbJeXKoks37A_EEOIQ:1kocde:HTb2rY9xPR54qFghtyFbeJhOfhGzcogTeWKeogWbr_Q	2020-12-28 01:26:58.262235+00
pvubqs9oqol7oh1e72wfpyjybx5tuao7	.eJxVjEEOwiAQRe_C2pBBChSX7nsGMsNMpWpoUtqV8e7apAvd_vfef6mE21rS1mRJE6uLMur0uxHmh9Qd8B3rbdZ5rusykd4VfdCmh5nleT3cv4OCrXxrBDKU2VogNsGKC9iN0Ql1AL3NI4rx4uHsIEQxVhBQehRkcRTRefX-APdWOKI:1kxb9s:KYnkmHwtCdXhUvLkYWVehmeE15N5xWWkZSJsfweMROM	2021-01-21 19:41:20.48342+00
oy9z5s2g6ebd5ylplbiumbw6qb8xygvz	.eJxVjDsOwjAQBe_iGlle_2Ap6TmDtd51cAA5UpxUiLtDpBTQvpl5L5VoXWpae5nTKOqsojr8bpn4UdoG5E7tNmme2jKPWW-K3mnX10nK87K7fweVev3WjgOQiLcGixgCYxizY5szOBccUAQRRHcabBR_RO8Bw1BCNBzJ5KDeH9ueN1w:1ky2Lv:tWlu2E4eST_UEIg3g8dtN-z8TRc8Egr8NL6c1TR-FfQ	2021-01-23 00:43:35.075654+00
\.


--
-- Name: api_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sofia
--

SELECT pg_catalog.setval('public.api_file_id_seq', 34, true);


--
-- Name: api_mensajes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sofia
--

SELECT pg_catalog.setval('public.api_mensajes_id_seq', 4, true);


--
-- Name: api_plan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sofia
--

SELECT pg_catalog.setval('public.api_plan_id_seq', 6, true);


--
-- Name: aplicaion_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sofia
--

SELECT pg_catalog.setval('public.aplicaion_file_id_seq', 5, true);


--
-- Name: aplicaion_reportador_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sofia
--

SELECT pg_catalog.setval('public.aplicaion_reportador_id_seq', 2, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sofia
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 2, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sofia
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 8, true);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sofia
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 56, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sofia
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 3, true);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sofia
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 9, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sofia
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sofia
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 9, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sofia
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sofia
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 31, true);


--
-- Name: api_file api_file_pkey; Type: CONSTRAINT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.api_file
    ADD CONSTRAINT api_file_pkey PRIMARY KEY (id);


--
-- Name: api_mensajes api_mensajes_pkey; Type: CONSTRAINT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.api_mensajes
    ADD CONSTRAINT api_mensajes_pkey PRIMARY KEY (id);


--
-- Name: api_plan api_plan_pkey; Type: CONSTRAINT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.api_plan
    ADD CONSTRAINT api_plan_pkey PRIMARY KEY (id);


--
-- Name: aplicaion_file aplicaion_file_pkey; Type: CONSTRAINT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.aplicaion_file
    ADD CONSTRAINT aplicaion_file_pkey PRIMARY KEY (id);


--
-- Name: aplicaion_reportador aplicaion_reportador_pkey; Type: CONSTRAINT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.aplicaion_reportador
    ADD CONSTRAINT aplicaion_reportador_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: authtoken_token authtoken_token_pkey; Type: CONSTRAINT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);


--
-- Name: authtoken_token authtoken_token_user_id_key; Type: CONSTRAINT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: sofia
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: sofia
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: sofia
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: sofia
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: sofia
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: sofia
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: sofia
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: sofia
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: sofia
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: authtoken_token_key_10f0b77e_like; Type: INDEX; Schema: public; Owner: sofia
--

CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: sofia
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: sofia
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: sofia
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: sofia
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authtoken_token authtoken_token_user_id_35299eff_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sofia
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

