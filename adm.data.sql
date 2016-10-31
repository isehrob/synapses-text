--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.3
-- Dumped by pg_dump version 9.5.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: branch_branch; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE branch_branch (
    id integer NOT NULL,
    name character varying(255),
    code integer NOT NULL,
    description text,
    block_1_id integer,
    block_2_id integer,
    block_3_id integer
);


ALTER TABLE branch_branch OWNER TO postgres;

--
-- Name: branch_branch_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE branch_branch_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE branch_branch_id_seq OWNER TO postgres;

--
-- Name: branch_branch_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE branch_branch_id_seq OWNED BY branch_branch.id;


--
-- Name: branch_faculty; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE branch_faculty (
    id integer NOT NULL,
    branch_id integer NOT NULL,
    college_id integer NOT NULL,
    status character varying(255) NOT NULL,
    entrance_type character varying(255) NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE branch_faculty OWNER TO postgres;

--
-- Name: branch_faculty_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE branch_faculty_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE branch_faculty_id_seq OWNER TO postgres;

--
-- Name: branch_faculty_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE branch_faculty_id_seq OWNED BY branch_faculty.id;


--
-- Name: branch_studylang; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE branch_studylang (
    id integer NOT NULL,
    lang character varying(255) NOT NULL
);


ALTER TABLE branch_studylang OWNER TO postgres;

--
-- Name: branch_studylang_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE branch_studylang_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE branch_studylang_id_seq OWNER TO postgres;

--
-- Name: branch_studylang_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE branch_studylang_id_seq OWNED BY branch_studylang.id;


--
-- Name: college_college; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE college_college (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    address character varying(255),
    college_type character varying(255) NOT NULL,
    phone character varying(255),
    controls character varying(255),
    email character varying(254),
    website character varying(200),
    region character varying(255),
    abbreviated character varying(100),
    parent_id integer
);


ALTER TABLE college_college OWNER TO postgres;

--
-- Name: college_college_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE college_college_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE college_college_id_seq OWNER TO postgres;

--
-- Name: college_college_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE college_college_id_seq OWNED BY college_college.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_admin_log (
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


ALTER TABLE django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO postgres;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: admissions_user
--

CREATE TABLE django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE django_site OWNER TO admissions_user;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: admissions_user
--

CREATE SEQUENCE django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_site_id_seq OWNER TO admissions_user;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admissions_user
--

ALTER SEQUENCE django_site_id_seq OWNED BY django_site.id;


--
-- Name: profession_profession; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE profession_profession (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text NOT NULL
);


ALTER TABLE profession_profession OWNER TO postgres;

--
-- Name: profession_profession_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE profession_profession_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE profession_profession_id_seq OWNER TO postgres;

--
-- Name: profession_profession_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE profession_profession_id_seq OWNED BY profession_profession.id;


--
-- Name: profession_profession_subjects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE profession_profession_subjects (
    id integer NOT NULL,
    profession_id integer NOT NULL,
    subject_id integer NOT NULL
);


ALTER TABLE profession_profession_subjects OWNER TO postgres;

--
-- Name: profession_profession_subjects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE profession_profession_subjects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE profession_profession_subjects_id_seq OWNER TO postgres;

--
-- Name: profession_profession_subjects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE profession_profession_subjects_id_seq OWNED BY profession_profession_subjects.id;


--
-- Name: robots_rule; Type: TABLE; Schema: public; Owner: admissions_user
--

CREATE TABLE robots_rule (
    id integer NOT NULL,
    robot character varying(255) NOT NULL,
    crawl_delay numeric(3,1)
);


ALTER TABLE robots_rule OWNER TO admissions_user;

--
-- Name: robots_rule_allowed; Type: TABLE; Schema: public; Owner: admissions_user
--

CREATE TABLE robots_rule_allowed (
    id integer NOT NULL,
    rule_id integer NOT NULL,
    url_id integer NOT NULL
);


ALTER TABLE robots_rule_allowed OWNER TO admissions_user;

--
-- Name: robots_rule_allowed_id_seq; Type: SEQUENCE; Schema: public; Owner: admissions_user
--

CREATE SEQUENCE robots_rule_allowed_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE robots_rule_allowed_id_seq OWNER TO admissions_user;

--
-- Name: robots_rule_allowed_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admissions_user
--

ALTER SEQUENCE robots_rule_allowed_id_seq OWNED BY robots_rule_allowed.id;


--
-- Name: robots_rule_disallowed; Type: TABLE; Schema: public; Owner: admissions_user
--

CREATE TABLE robots_rule_disallowed (
    id integer NOT NULL,
    rule_id integer NOT NULL,
    url_id integer NOT NULL
);


ALTER TABLE robots_rule_disallowed OWNER TO admissions_user;

--
-- Name: robots_rule_disallowed_id_seq; Type: SEQUENCE; Schema: public; Owner: admissions_user
--

CREATE SEQUENCE robots_rule_disallowed_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE robots_rule_disallowed_id_seq OWNER TO admissions_user;

--
-- Name: robots_rule_disallowed_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admissions_user
--

ALTER SEQUENCE robots_rule_disallowed_id_seq OWNED BY robots_rule_disallowed.id;


--
-- Name: robots_rule_id_seq; Type: SEQUENCE; Schema: public; Owner: admissions_user
--

CREATE SEQUENCE robots_rule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE robots_rule_id_seq OWNER TO admissions_user;

--
-- Name: robots_rule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admissions_user
--

ALTER SEQUENCE robots_rule_id_seq OWNED BY robots_rule.id;


--
-- Name: robots_rule_sites; Type: TABLE; Schema: public; Owner: admissions_user
--

CREATE TABLE robots_rule_sites (
    id integer NOT NULL,
    rule_id integer NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE robots_rule_sites OWNER TO admissions_user;

--
-- Name: robots_rule_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: admissions_user
--

CREATE SEQUENCE robots_rule_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE robots_rule_sites_id_seq OWNER TO admissions_user;

--
-- Name: robots_rule_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admissions_user
--

ALTER SEQUENCE robots_rule_sites_id_seq OWNED BY robots_rule_sites.id;


--
-- Name: robots_url; Type: TABLE; Schema: public; Owner: admissions_user
--

CREATE TABLE robots_url (
    id integer NOT NULL,
    pattern character varying(255) NOT NULL
);


ALTER TABLE robots_url OWNER TO admissions_user;

--
-- Name: robots_url_id_seq; Type: SEQUENCE; Schema: public; Owner: admissions_user
--

CREATE SEQUENCE robots_url_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE robots_url_id_seq OWNER TO admissions_user;

--
-- Name: robots_url_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admissions_user
--

ALTER SEQUENCE robots_url_id_seq OWNED BY robots_url.id;


--
-- Name: score_score; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE score_score (
    id integer NOT NULL,
    budget_score numeric(5,2),
    contract_score numeric(5,2),
    faculty_id integer NOT NULL,
    study_lang_id integer,
    applications integer,
    budget_places integer,
    contract_places integer,
    pub_date timestamp with time zone NOT NULL,
    year integer NOT NULL
);


ALTER TABLE score_score OWNER TO postgres;

--
-- Name: score_score_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE score_score_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE score_score_id_seq OWNER TO postgres;

--
-- Name: score_score_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE score_score_id_seq OWNED BY score_score.id;


--
-- Name: subject_subject; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE subject_subject (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE subject_subject OWNER TO postgres;

--
-- Name: subject_subject_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE subject_subject_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE subject_subject_id_seq OWNER TO postgres;

--
-- Name: subject_subject_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE subject_subject_id_seq OWNED BY subject_subject.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY branch_branch ALTER COLUMN id SET DEFAULT nextval('branch_branch_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY branch_faculty ALTER COLUMN id SET DEFAULT nextval('branch_faculty_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY branch_studylang ALTER COLUMN id SET DEFAULT nextval('branch_studylang_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY college_college ALTER COLUMN id SET DEFAULT nextval('college_college_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: admissions_user
--

ALTER TABLE ONLY django_site ALTER COLUMN id SET DEFAULT nextval('django_site_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY profession_profession ALTER COLUMN id SET DEFAULT nextval('profession_profession_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY profession_profession_subjects ALTER COLUMN id SET DEFAULT nextval('profession_profession_subjects_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: admissions_user
--

ALTER TABLE ONLY robots_rule ALTER COLUMN id SET DEFAULT nextval('robots_rule_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: admissions_user
--

ALTER TABLE ONLY robots_rule_allowed ALTER COLUMN id SET DEFAULT nextval('robots_rule_allowed_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: admissions_user
--

ALTER TABLE ONLY robots_rule_disallowed ALTER COLUMN id SET DEFAULT nextval('robots_rule_disallowed_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: admissions_user
--

ALTER TABLE ONLY robots_rule_sites ALTER COLUMN id SET DEFAULT nextval('robots_rule_sites_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: admissions_user
--

ALTER TABLE ONLY robots_url ALTER COLUMN id SET DEFAULT nextval('robots_url_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY score_score ALTER COLUMN id SET DEFAULT nextval('score_score_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY subject_subject ALTER COLUMN id SET DEFAULT nextval('subject_subject_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group (id, name) FROM stdin;
1	content
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, true);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
1	1	19
2	1	20
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 2, true);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add college	7	add_college
20	Can change college	7	change_college
21	Can delete college	7	delete_college
22	Can add branch	8	add_branch
23	Can change branch	8	change_branch
24	Can delete branch	8	delete_branch
25	Can add faculty	9	add_faculty
26	Can change faculty	9	change_faculty
27	Can delete faculty	9	delete_faculty
28	Can add study lang	10	add_studylang
29	Can change study lang	10	change_studylang
30	Can delete study lang	10	delete_studylang
31	Can add score	11	add_score
32	Can change score	11	change_score
33	Can delete score	11	delete_score
34	Can add subject	12	add_subject
35	Can change subject	12	change_subject
36	Can delete subject	12	delete_subject
37	Can add profession	13	add_profession
38	Can change profession	13	change_profession
39	Can delete profession	13	delete_profession
43	Can add site	15	add_site
44	Can change site	15	change_site
45	Can delete site	15	delete_site
46	Can add url	16	add_url
47	Can change url	16	change_url
48	Can delete url	16	delete_url
49	Can add rule	17	add_rule
50	Can change rule	17	change_rule
51	Can delete rule	17	delete_rule
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_permission_id_seq', 51, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
2	pbkdf2_sha256$24000$5FSAPrNna9aw$uvmwRCVk8xbKs5D1Rjk/VmZs4OB+EOw4Dd1PX4iSklo=	2016-02-28 00:29:32.698409+00	f	contentt				t	t	2016-02-28 00:28:22+00
1	pbkdf2_sha256$24000$J0Wy1aqChRRB$QZPZ46LACskHaVJKnURBvq1u7iru/xppvraReml9R0E=	2016-07-14 11:34:15.655872+00	t	sehrob			isehrob@gmail.com	t	t	2016-01-26 18:44:05.952479+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
1	2	1
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, true);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_id_seq', 2, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: branch_branch; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY branch_branch (id, name, code, description, block_1_id, block_2_id, block_3_id) FROM stdin;
363	\N	5310901	\N	24	19	13
343		5310702		11	26	17
18	 Xorijiy til va adabiyoti: ingliz tili\n	5111400	\N	10	13	22
67	 Geografiya o`qitish metodikasi\n	5110500	\N	25	26	13
1	 Informatika o`qitish metodikasi\n	5110700	\N	26	11	13
14	 Tasviriy san'at va muhandislik grafikasi\n	5110800	\N	26	12	13
15	 Pedagogika va psixologiya\n	5110900	\N	19	13	22
16	 Kasb ta'limi: informatika va axborot texnologiyalari\n	5111018	\N	26	11	17
17	Musiqa ta'limi	5111100		13	12	22
19	 Xorijiy til va adabiyoti: nemis tili\n	5111401	\N	15	13	22
48	 Chaqiriqqacha harbiy ta'lim\n	5111500	\N	26	12	13
21	 Milliy g`oya, ma'naviyat asoslari va huquq ta'limi\n	5111600	\N	22	13	17
22	 Boshlang`ich ta'lim va sport-tarbiyaviy ish\n	5111700	\N	13	26	17
23	 Maktabgacha ta'lim\n	5111800	\N	19	13	22
12	 Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)\n	5112001	\N	19	12	13
2	 Mehnat ta'limi\n	5112100	\N	11	26	13
20	 Xorijiy til va adabiyoti: fransuz tili\n	5111402	\N	18	13	22
3	 Filologiya va tillarni o`qitish: o`zbek tili\n	5120101	\N	13	22	17
4	 Tarix (mamlakatlar va mintaqalar bo`yicha)\n	5120300	\N	22	13	17
5	 Matematika\n	5130100	\N	26	11	13
6	 Biologiya (turlari bo`yicha)\n	5140100	\N	19	24	13
7	 Fizika\n	5140200	\N	11	26	13
8	 Kimyo\n	5140500	\N	24	26	13
10	 Mehnat iqtisodiyoti va sotsiologiyasi\n	5231600	\N	26	17	13
45	 Kasb ta'limi: iqtisodiyot\n	5111017	\N	26	17	13
43	 Filologiya va tillarni o`qitish: ingliz tili\n	5120112	\N	10	13	22
42	 Filologiya va tillarni o`qitish: nemis tili\n	5120113	\N	15	13	22
35	 Filologiya va tillarni o`qitish: fransuz tili\n	5120114	\N	18	13	22
36	 Tuproqshunoslik\n	5141000	\N	19	24	13
44	 Kasb ta'limi: agronomiya\n	5111005	\N	19	24	13
84	 Kasb ta'limi: qishloq xo`jaligini mexanizatsiyalashtirish\n	5111020	\N	26	11	13
89	 Marketing (tarmoqlar va sohalar bo`yicha)\n	5230400	\N	26	17	13
56	 Kasb ta'limi: kimyoviy texnologiya\n	5111019	\N	24	26	13
77	 Amaliy matematika va informatika\n	5130200	\N	26	11	13
93	 Gidrometeorologiya\n	5140700	\N	25	26	13
76	 Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)\n	5310200	\N	26	11	17
29	 Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)\n	5310700	\N	11	26	17
49	 Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)\n	5320400	\N	24	26	13
74	 Bino va inshootlar qurilishi (turlari bo`yicha)\n	5340200	\N	26	11	13
68	 Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)\n	5340400	\N	26	11	13
69	 Qurilish materiallari, buyumlari va konstruksiyalarini ishlab chiqarish\n	5340500	\N	26	11	13
71	 Avtomobil yo`llari va aerodromlar\n	5340800	\N	26	11	13
38	 Arxivshunoslik\n	5220300	\N	22	26	13
79	 Ijtimoiy-madaniy faoliyat\n	5610400	\N	22	12	13
80	 Sport faoliyati (xotin-qizlar sporti yo`nalishi bo`yicha)\n	5610535	\N	19	12	13
81	 Hayotiy faoliyat xavfsizligi \n	5640100	\N	26	11	13
92	 Mexanika\n	5140300	\N	11	26	13
91	 Astronomiya\n	5140400	\N	11	26	13
94	 Kadrlar menejmenti\n	5231700	\N	26	17	13
60	 Informatika va axborot texnologiyalari (tarmoqlar va sohalar bo`yicha)\n	5330200	\N	26	11	17
41	 Turizm (faoliyat yo`nalishlari bo`yicha)\n	5610300	\N	26	17	13
90	 Dizayn (turlari bo`yicha)\n	5150900	\N	26	12	13
86	 Energetika (tarmoqlar bo`yicha) \n	5310100	\N	26	11	17
31	 Avtomobilsozlik va traktorsozlik\n	5310500	\N	26	11	17
30	 Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)\n	5310600	\N	26	11	17
24	 Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)\n	5311000	\N	11	26	17
25	 Materialshunoslik va yangi materiallar texnologiyasi\n	5320100	\N	24	26	13
26	 Mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish\n	5320200	\N	26	11	13
27	 Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)\n	5320300	\N	26	11	13
63	 Dinshunoslik\n	5120600	\N	22	12	13
62	 Psixologiya (din sotsiopsixologiyasi)\n	5210201	\N	22	13	17
65	 Oziq-ovqat texnologiyasi (mahsulotlar turlari bo`yicha)\n	5321000	\N	24	26	13
82	 Qishloq hududlarini arxitektura-loyihaviy tashkil etish\n	5341000	\N	26	12	13
40	 Mehmonxona xo`jaligini tashkil etish va boshqarish\n	5610200	\N	26	17	13
70	 Transport inshootlarining ekspluatatsiyasi (transport inshootlari turlari bo`yicha)\n	5340600	\N	26	11	13
39	 Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)\n	5610101	\N	26	17	13
46	 Kasb ta'limi: amaliy san'at\n	5111046	\N	13	12	22
72	 Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)\n	5610100	\N	26	11	13
73	 Tashishni tashkil etish va transport logistikasi (transport turlari bo`yicha)\n	5620100	\N	26	11	17
88	 Matbaa va qadoqlash jarayonlari texnologiyasi \n	5320800	\N	24	26	13
83	 Kasb ta'limi: yerusti transport tizimlari va ularning ekspluatatsiyasi\n	5111014	\N	26	11	17
85	 Kasb ta'limi: muhandislik kommunikatsiyalari qurilishi va montaji\n	5111028	\N	26	11	13
33	 Kasb ta'limi: mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish\n	5111025	\N	26	11	13
57	 Kasb ta'limi: menejment\n	5111026	\N	26	17	13
58	 Kasb ta'limi: elektr texnikasi, elektr mexanikasi va elektr texnologiyalari\n	5111058	\N	11	26	17
59	 Kasb ta'limi: yengil sanoat texnologiyalari va jihozlari\n	5111059	\N	26	11	13
55	 Kasb ta'limi: neft-gazkimyo sanoati texnologiyasi \n	5111060	\N	11	26	13
50	 Neft-gazkimyo sanoati texnologiyasi\n	5321400	\N	11	26	13
51	 Texnologiyalar va jihozlar (tarmoqlar bo`yicha)\n	5321500	\N	26	11	13
53	 Texnologik jarayonlarni boshqarishning axborot-kommunikatsiya tizimlari\n	5321700	\N	26	11	17
354		5111010		26	11	13
340		5150404		13	12	22
335		5120301		22	13	17
186	 Matematika o`qitish metodikasi\n	5110100	\N	26	11	14
187	 Fizika va astronomiya o`qitish metodikasi\n	5110200	\N	11	26	13
330		5311300		26	11	13
188	 Kimyo o`qitish metodikasi\n	5110300	\N	24	26	13
189	 Biologiya o`qitish metodikasi\n	5110400	\N	19	24	13
95	 Ijtimoiy ish (faoliyatning turli sohalari bo`yicha)\n	5520100	\N	13	12	22
185	 Kasb ta'limi: qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi\n	5111022	\N	24	19	13
132	 Buxgalteriya hisobi va audit (tarmoqlar bo`yicha)\n	5230900	\N	26	17	13
101	 Kasb ta'limi: bino va inshootlar qurilishi\n	5111007	\N	26	11	13
136	 Tarjima nazariyasi va amaliyoti (tillar bo`yicha)\n	5120200	\N	13	17	22
112	 Falsafa\n	5120500	\N	22	13	17
104	 Jurnalistika (faoliyat turlari bo`yicha)\n	5220100	\N	13	22	17
176	 Moliya\n	5230600	\N	26	17	13
103	 Geodeziya, kartografiya va kadastr (funksiyalari bo`yicha)\n	5311500	\N	26	11	13
117	 Neft va neft-gazni qayta ishlash texnologiyasi\n	5321300	\N	24	26	13
100	 Arxitektura (turlari bo`yicha)\n	5340100	\N	26	12	13
99	 Shahar qurilishi va xo`jaligi\n	5340300	\N	26	11	13
97	 Arxeologiya\n	5120400	\N	22	13	17
108	 Geologiya\n	5140800	\N	26	11	13
107	 Geofizika\n	5140900	\N	11	26	13
106	 Gidrologiya (tarmoqlar bo`yicha)\n	5141100	\N	26	11	13
105	 Sotsiologiya\n	5210100	\N	26	13	17
110	 Axborot xavfsizligi (sohalar bo`yicha)\n	5330300	\N	26	11	17
111	 Ijtimoiy ish (pensiya ta'minoti)\n	5520101	\N	13	12	22
116	 Biotexnologiya (tarmoqlar bo`yicha)\n	5320500	\N	24	26	13
124	 Kasb ta'limi: texnologik mashinalar va jihozlar\n	5111038	\N	26	11	13
126	 Metallurgiya\n	5310300	\N	24	26	13
128	 Elektronika va asbobsozlik (tarmoqlar bo`yicha)\n	5310800	\N	11	26	17
123	 Konchilik ishi\n	5311600	\N	11	26	13
122	 Foydali qazilma konlari geologiyasi, qidiruv va razvedkasi (kon turlari bo`yicha)\n	5311700	\N	11	26	13
115	 Gidrogeologiya va muhandislik geologiyasi\n	5311800	\N	11	26	13
118	 Radioelektron qurilmalar va tizimlar (tarmoqlar bo`yicha)\n	5350700	\N	26	11	17
119	 Xizmat ko`rsatish texnikasi va texnologiyasi (xizmat ko`rsatish tarmoqlari bo`yicha)\n	5610600	\N	26	11	13
120	 Havodagi harakatni boshqarish\n	5620200	\N	11	17	13
178	 Kasb ta'limi: buxgalteriya hisobi va audit\n	5111008	\N	26	17	13
144	 Jahon siyosati\n	5120700	\N	22	17	13
139	 Filologiya va tillarni o`qitish: yapon tili\n	5120105	\N	13	17	22
138	 Filologiya va tillarni o`qitish: xitoy tili\n	5120108	\N	13	17	22
137	 Filologiya va tillarni o`qitish: ispan tili\n	5120115	\N	13	12	22
133	 Bank ishi\n	5230700	\N	26	17	13
129	 Soliqlar va soliqqa tortish\n	5230800	\N	26	17	13
96	 Kasb ta'limi: elektronika va asbobsozlik\n	5111062	\N	11	26	17
183	 Kasb ta'limi: tibbiy pedagogik ish\n	5111003	\N	19	24	13
182	 Davolash ishi\n	5510100	\N	19	24	13
191	 Tibbiy profilaktika ishi\n	5510300	\N	24	19	13
180	 Oliy hamshiralik ishi\n	5510700	\N	19	12	13
135	 Xoreografiya (turlari bo`yicha)\n	5151300	\N	22	12	13
181	 Pediatriya ishi\n	5510200	\N	19	24	13
148	 Gidrotexnika qurilishi (turlari bo`yicha)\n	5340700	\N	26	11	13
190	 Kasb ta'limi: elektr energetikasi\n	5111044	\N	26	11	17
162	 Kasb ta'limi: rangtasvir\n	5111032	\N	12	13	22
164	 Kasb ta'limi: dizayn (libos dizayni va gazlamalarning badiiy yechimi)\n	5111053	\N	26	12	13
165	 San'atshunoslik: tasviriy va amaliy san'at\n	5150205	\N	13	12	22
167	 Rangtasvir: dastgohli rangtasvir \n	5150801	\N	12	13	22
168	 Rangtasvir: mahobatli rangtasvir\n	5150802	\N	12	13	22
169	 Rangtasvir: teatr-bezak rangtasviri \n	5150803	\N	12	13	22
161	 Rangtasvir: filmning tasviriy yechimi\n	5150804	\N	12	13	22
160	 Dizayn: kompyuter grafikasi va badiiy foto\n	5150901	\N	13	12	22
159	 Dizayn: reklama va amaliy grafika\n	5150902	\N	13	12	22
151	 Dizayn: interyerni loyihalash\n	5150903	\N	26	12	13
152	 Dizayn: libos dizayni va gazlamalarning badiiy yechimi\n	5150904	\N	26	12	13
153	 Grafika: dastgoh va kitob grafikasi\n	5151001	\N	13	12	22
154	 Grafika: xattotlik va miniatura\n	5151002	\N	13	12	22
156	 Amaliy sanat: badiiy kulolchilik\n	5151201	\N	13	12	22
157	 Amaliy sanat: memoriy yodgorliklar bezagini tamirlash\n	5151202	\N	13	12	22
158	 Amaliy sanat: amaliy san'at asarlarini ta'mirlash\n	5151203	\N	13	12	22
102	 Kasb ta'limi: tasviriy san'at va muhandislik grafikasi\n	5111035	\N	26	12	13
98	 Ko`chmas mulk ekspertizasi va uni boshqarish\n	5340900	\N	26	11	13
171	 Kasb ta'limi: tabiiy tolalarni dastlabki ishlash texnologiyasi\n	5111034	\N	11	26	13
150	 Kasb ta'limi: xizmatlar sohasi\n	5111041	\N	26	11	13
149	 Qiymat injiniringi\n	5341100	\N	26	11	13
147	 Filologiya va tillarni o`qitish: arab, fors, turk, uyg`ur, dariy, pushtu tullari\n	5120109	\N	13	17	22
145	 Filologiya va tillarni o`qitish: sharq mumtoz tillari\n	5120111	\N	13	17	22
143	 Xorijiy mamlakatlar iqtisodiyoti va mamlakatshunoslik: MDH mamlakatlari\n	5231001	\N	26	17	13
142	 Xorijiy mamlakatlar iqtisodiyoti va mamlakatshunoslik: Yaqin va O`rta Sharq mamlakatlari\n	5231002	\N	26	17	13
141	 Xorijiy mamlakatlar iqtisodiyoti va mamlakatshunoslik: Uzoq Sharq mamlakatlari\n	5231003	\N	26	17	13
140	 Xorijiy mamlakatlar iqtisodiyoti va mamlakatshunoslik: Xitoy va Janubiy-Sharqiy Osiyo mamlakatlari\n	5231004	\N	26	17	13
172	 Kasb ta'limi: avtomobil yo`llari va aerodromlar\n	5111004	\N	26	11	13
179	 Kasb ta'limi: bank ishi\n	5111006	\N	26	17	13
177	 Kasb ta'limi: moliya\n	5111027	\N	26	17	13
173	 Sug`urta ishi\n	5231200	\N	26	17	13
174	 Pensiya ishi\n	5231300	\N	26	17	13
175	 Baholash ishi\n	5231500	\N	26	17	13
347		5350701		26	11	17
274	 Kompyuter injiniringi ("Kompyuter injiniringi", "AT-Servis", "Axborot xavfsizligi", "Multimedia texnologiyalari")\n	5330500	\N	26	11	10
273	 Dasturiy injiniring\n	5330600	\N	26	11	10
272	 Telekommunikatsiya texnologiyalari ("Telekommunikatsiyalar", "Teleradioeshittirish", "Mobil tizimlar")\n	5350100	\N	26	11	10
271	 Televizion texnologiyalar ("Audiovizual texnologiyalar", "Telestudiya tizimlari va ilovalari")\n	5350200	\N	26	11	10
270	 Axborot-kommunikatsiya texnologiyalari sohasida iqtisodiyot va menejment\n	5350300	\N	26	10	13
269	 Axborot-kommunikatsiya texnologiyalari sohasida kasb ta'limi\n	5350400	\N	26	11	10
268	 Pochta aloqasi texnologiyasi\n	5350500	\N	26	11	10
267	 Axborotlashtirish va kutubxonashunoslik\n	5350600	\N	26	13	10
201	 Tarix o`qitish metodikasi\n	5110600	\N	22	13	17
203	 Kasb ta'limi: dizayn\n	5111011	\N	26	12	13
200	 O`zbek tili va adabiyoti\n	5111200	\N	13	22	17
199	 Defektologiya\n	5111900	\N	19	13	22
225	 Kasb ta'limi: qishloq xo`jaligini elektrlashtirish va avtomatlashtirish\n	5111021	\N	26	11	13
220	 Agrokimyo va agrotuproqshunoslik\n	5410100	\N	19	24	13
215	 Agronomiya (dehqonchilik mahsulotlari turlari bo`yicha)\n	5410200	\N	19	24	13
214	 O`simliklar himoyasi va karantini\n	5410300	\N	24	19	13
216	 Zootexniya (turlari bo`yicha)\n	5410600	\N	19	24	13
221	 O`rmonchilik va aholi yashash joylarini ko`kalamzorlashtirish\n	5410800	\N	19	24	13
222	 Ipakchilik\n	5410900	\N	19	24	13
208	 Meva-sabzavotchilik va uzumchilik\n	5411000	\N	19	24	13
223	 Dorivor o`simliklarni yetishtirish texnologiyasi\n	5411100	\N	19	24	13
209	 Qishloq xo`jaligida menejment\n	5420100	\N	26	19	13
224	 Qishloq xo`jaligini elektrlashtirish va avtomatlashtirish\n	5430200	\N	26	11	13
193	 Yurisprudensiya (faoliyat turlari bo`yicha)\n	5240100	\N	22	13	17
192	 Kasb ta'limi: energetika\n	5111064	\N	26	11	17
260	 Bastakorlik san'ati\n	5150100	\N	13	12	22
261	 San'atshunoslik: musiqashunoslik\n	5150201	\N	13	12	22
262	 dirijorlik (xor dirijorligi)\n	5150500	\N	13	12	22
264	 Vokal san'ati: an'anaviy xonandalik\n	5150602	\N	12	13	22
265	 Vokal san'ati: estrada xonandaligi\n	5150603	\N	12	13	22
266	 Cholg`u ijrochiligi: fortepiano (organ)\n	5150701	\N	13	12	22
258	 Cholg`u ijrochiligi: yog`och - damli cholg`ular\n	5150703	\N	13	12	22
251	 Cholg`u ijrochiligi: mis - damli va zarbli cholg`ular\n	5150704	\N	13	12	22
252	 Cholg`u ijrochiligi: mizrobli xalq cholg`ulari\n	5150705	\N	13	12	22
253	 Cholg`u ijrochiligi: kamonli o`zbek xalq cholg`ulari\n	5150706	\N	13	12	22
255	 Cholg`u ijrochiligi: an'anaviy cholg`ular\n	5150708	\N	13	12	22
256	 Cholg`u ijrochiligi: estrada cholg`ulari\n	5150709	\N	13	12	22
257	 Texnogen san'at (musiqiy ovoz rejissorligi)\n	5151400	\N	13	12	22
249	 Aktyorlik san'ati: musiqiy teatr aktyorligi \n	5150302	\N	13	12	22
241	 rejissorlik: televideniye va radio rejissorligi\n	5150403	\N	13	12	22
237	 Xalq ijodiyoti: vokal jamoalari rahbari\n	5151603	\N	13	12	22
240	 Madaniyat va san'at muassasalarini tashkil etish va boshqarish\n	5151700	\N	22	12	13
231	 Kasb ta'limi: suv xo`jaligi va melioratsiya\n	5111033	\N	26	11	13
227	 Yer tuzish va yer kadastri\n	5410700	\N	26	11	13
211	 Suv xo`jaligi va melioratsiya\n	5450200	\N	26	11	13
229	 Suv xo`jaligi va melioratsiya ishlarini mexanizatsiyalashtirish\n	5450300	\N	26	11	13
226	 Kasb ta'limi: texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish\n	5111037	\N	11	26	17
243	 Kasb ta'limi: aktyorlik san'ati\n	5111049	\N	13	12	22
244	 Kasb ta'limi: xalq ijodiyoti\n	5111051	\N	13	12	22
245	 Kasb ta'limi: madaniyat va san'at muassasalarini tashkil etish va boshqarish\n	5111063	\N	22	12	13
246	 San'atshunoslik: teatrshunoslik\n	5150203	\N	13	12	22
247	 San'atshunoslik: sahna va ekran san'ati dramaturgiyasi\n	5150207	\N	13	12	22
248	 Aktyorlik san'ati: dramatik teatr va kino aktyorligi \n	5150301	\N	13	12	22
250	 Aktyorlik san'ati: qo`g`irchoq teatri aktyorligi \n	5150303	\N	13	12	22
233	 rejissorlik: musiqiy teatr rejissorligi\n	5150405	\N	13	12	22
235	 Kino-teleoperatorlik\n	5151500	\N	11	26	13
236	 Xalq ijodiyoti: folklor-etnografik jamoalari rahbari\n	5151602	\N	13	12	22
238	 Xalq ijodiyoti: cholg`u jamoalari rahbari\n	5151604	\N	13	12	22
239	 Xalq ijodiyoti: xalq ashula va raqs ansambli rahbari\n	5151605	\N	13	12	22
282	 Sport faoliyati: sambo \n	5610519	\N	19	12	13
281	 Sport faoliyati: kurash \n	5610520	\N	19	12	13
279	 Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Andijon)\n	5610522	\N	19	12	13
278	 Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Buxoro)\n	5610523	\N	19	12	13
277	 Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Jizzax)\n	5610524	\N	19	12	13
276	 Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Navoiy)\n	5610525	\N	19	12	13
275	 Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Namangan)\n	5610526	\N	19	12	13
218	 Kasb ta'limi: veterinariya\n	5111009	\N	19	24	13
219	 Kasb ta'limi: zootexniya\n	5111015	\N	19	24	13
217	 Veterinariya\n	5440100	\N	19	24	13
196	 Filologiya va tillarni o`qitish: koreys tili\n	5120104	\N	13	17	22
195	 Filologiya va tillarni o`qitish: arab tili\n	5120106	\N	13	17	22
194	 Filologiya va tillarni o`qitish: italyan tili\n	5120107	\N	13	17	22
205	 Kasb ta'limi: farmatsiya\n	5111039	\N	24	19	13
206	 Farmatsiya (turlari bo`yicha)\n	5510500	\N	24	19	13
207	 Sanoat farmatsiyasi (turlari bo`yicha)\n	5510600	\N	24	19	13
228	 Irrigatsiya tizimlarida suv energiyasidan foydalanish\n	5450100	\N	26	11	13
204	 Kasb ta'limi: konchilik ishi\n	5111002	\N	11	26	13
197	 Stomatologiya\n	5510400	\N	19	24	13
367	\N	5111043	\N	24	26	13
368	\N	5111065	\N	19	24	13
358	\N	5231900	\N	26	17	13
359	\N	5312100	\N	26	11	17
364	\N	5312200	\N	11	26	13
365	\N	5312300	\N	26	11	13
349	\N	5111030	\N	24	26	13
339	\N	5111057	\N	13	12	22
360	\N	5120800	\N	22	13	17
361	\N	5231005	\N	26	17	13
362	\N	5231006	\N	26	17	13
366	\N	5232000	\N	26	17	13
351		5111042		26	11	13
348		5350702		26	11	17
346		5311702		11	26	13
344		5310703		11	26	17
342		5310701		11	26	17
341		5111031		26	11	17
338		5111056		13	12	22
336		5111054		13	12	22
329		5111036		26	11	13
333	\N	5111024	\N	\N	\N	\N
202	 Kasb ta'limi: kompyuter grafikasi va dizayn\n	5111047	\N	26	12	13
322	\N	5111301	\N	13	22	17
350	\N	5111303	\N	13	17	22
323	\N	5111305	\N	14	22	17
324	\N	5111306	\N	27	20	22
355	\N	5111702	\N	14	26	17
13	 Jismoniy madaniyat\n	5112000	\N	19	12	13
37	 Psixologiya (faoliyat turlari bo`yicha)\n	5210200	\N	22	13	17
334	\N	5111304	\N	16	22	17
327	\N	5120102	\N	13	22	17
9	 Geografiya\n	5140600	\N	25	26	13
11	 Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)\n	5630100	\N	24	26	13
32	 Iqtisodiyot (tarmoqlar va sohalar bo`yicha)\n	5230100	\N	26	17	13
213	 Qishloq xo`jaligi ekinlari seleksiyasi va urug`chiligi\n	5410400	\N	19	24	13
66	 Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi\n	5410500	\N	24	19	13
210	 Qishloq xo`jaligini mexanizatsiyalashtirish\n	5430100	\N	26	11	13
352	\N	5120103	\N	13	22	17
326	\N	5120116	\N	14	22	17
353	\N	5120118	\N	21	22	17
114	 Neft va gaz konlarini ishga tushirish va ulardan foydalanish\n	5311900	\N	11	26	13
75	 Yengil sanoat buyumlari konstruksiyasini ishlash va texnologiyasi (ishlab chiqarish turlari bo`yicha)\n	5320900	\N	26	11	13
109	 Axborot tizimlarining matematik va dasturiy ta'minoti\n	5330100	\N	26	11	17
54	 Menejment (tarmoqlar va sohalar bo`yicha)\n	5230200	\N	26	17	13
127	 Aviasozlik va havo kemalaridan texnik foydalanish \n	5310400	\N	26	11	17
28	 Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)\n	5310900	\N	11	26	17
113	 Neft-gazni qayta ishlash sanoati obyektlarini loyihalashtirish, qurish va ulardan foydalanish\n	5312000	\N	11	26	13
61	 Jahon iqtisodiyoti va xalqaro iqtisodiy munosabatlar (mintaqalar va faoliyat turlari bo`yicha)\n	5231100	\N	26	17	13
332	\N	5120117	\N	8	22	17
131	 Statistika (tarmoqlar va sohalar bo`yicha)\n	5231400	\N	26	17	13
357	\N	5111701	\N	8	26	17
134	 San'atshunoslik: xoreografiya \n	5150204	\N	13	12	22
263	 Vokal san'ati: akademik xonandalik \n	5150601	\N	12	13	22
259	 Cholg`u ijrochiligi: torli cholg`ular\n	5150702	\N	13	12	22
254	 Cholg`u ijrochiligi: damli va urma xalq cholg`ulari\n	5150707	\N	13	12	22
318	 Kompyuter injiniringi ("Kompyuter injiniringi", "AT-Servis")\n	5330501	\N	26	11	10
314	 Telekommunikatsiya texnologiyalari ("Telekommunikatsiyalar")\n	5350101	\N	26	11	10
234	 Texnogen san'at: kino, televideniye va radio ovoz rejissorligi \n	5151402	\N	13	12	22
212	 Gidrotexnika inshootlari va nasos stansiyalaridan foydalanish\n	5450400	\N	26	11	13
87	 Tabiiy tolalarni dastlabki ishlash texnologiyasi (xom ashyo turlari bo`yicha)\n	5321200	\N	11	26	13
52	 Yengil sanoat texnologiyalari va jihozlari\n	5321600	\N	26	11	13
328	\N	5150304	\N	13	12	22
242	 rejissorlik: estrada va ommaviy tomoshalar rejissorligi\n	5150402	\N	13	12	22
163	 Kasb ta'limi: dizayn (interyerni loyihalash)\n	5111052	\N	26	12	13
166	 San'atshunoslik: muzeyshunoslik; konservatsiya va badiiy yodgorliklarni saqlash\n	5150206	\N	13	12	22
155	 Haykaltaroshlik (turlari bo`yicha)\n	5151100	\N	13	12	22
331	\N	5111302	\N	13	22	17
356	\N	5111307	\N	27	9	22
301	 Psixologiya (sport psixologiyasi)\n	5210202	\N	19	12	13
300	 Sport faoliyati: basketbol \n	5610501	\N	19	12	13
299	 Sport faoliyati: boks \n	5610502	\N	19	12	13
298	 Sport faoliyati: voleybol \n	5610503	\N	19	12	13
296	 Sport faoliyati: gimnastika \n	5610505	\N	19	12	13
295	 Sport faoliyati: suzish \n	5610506	\N	19	12	13
303	 Sport faoliyati: yengil atletika\n	5610507	\N	19	12	13
304	 Sport faoliyati: qo`l to`pi\n	5610508	\N	19	12	13
311	 Sport faoliyati: og`ir atletika\n	5610510	\N	19	12	13
310	 Sport faoliyati: eshkak eshish\n	5610511	\N	19	12	13
309	 Sport faoliyati: tennis \n	5610512	\N	19	12	13
308	 Sport faoliyati: futbol \n	5610513	\N	19	12	13
306	 Sport faoliyati: dzu-do\n	5610515	\N	19	12	13
305	 Sport faoliyati: erkin va yunon-rum kurashi\n	5610516	\N	19	12	13
294	 Sport faoliyati: belbog`li kurash\n	5610517	\N	19	12	13
293	 Sport faoliyati: taekvondo (WTF)\n	5610518	\N	19	12	13
292	 Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Surxondaryo)\n	5610529	\N	19	12	13
291	 Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Farg`ona)\n	5610530	\N	19	12	13
290	 Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Xorazm)\n	5610531	\N	19	12	13
289	 Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Qashqadaryo)\n	5610532	\N	19	12	13
288	 Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Toshkent viloyati)\n	5610533	\N	19	12	13
286	 Sport faoliyati: sinxron suzish\n	5610536	\N	19	12	13
285	 Sport faoliyati: badminton\n	5610537	\N	19	12	13
315	 Kasb ta'limi: transport inshootlarining ekspluatatsiyasi\n	5111048	\N	26	11	13
302	 Kasb ta'limi: jismoniy tarbiya va jismoniy madaniyat\n	5111001	\N	19	12	13
297	 Sport faoliyati: velosport \n	5610504	\N	19	12	13
312	 Sport faoliyati: qilichbozlik\n	5610509	\N	19	12	13
307	 Sport faoliyati: badiiy gimnastika\n	5610514	\N	19	12	13
280	 Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Qoraqalpog`iston Respublikasi)\n	5610521	\N	19	12	13
283	 Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Samarqand)\n	5610527	\N	19	12	13
284	 Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Sirdaryo)\n	5610528	\N	19	12	13
287	 Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Toshkent shahri)\n	5610534	\N	19	12	13
170	 Kasb ta'limi: yengil sanoat buyumlari konstruksiyasini ishlash va texnologiyasi\n	5111012	\N	26	11	13
146	 Filologiya va tillarni o`qitish: yapon, xitoy, koreys, hind, urdu, indonez, malay, vyetnam tillari\n	5120110	\N	13	17	22
230	 Kasb ta'limi: yer tuzish va yer kadastri\n	5111013	\N	26	11	13
130	 Noyob va radioaktiv metallar rudalarini qazib olish, qayta ishlash texnikasi va texnologiyasi\n	5321100	\N	26	11	13
345		5311701		11	26	13
337		5111055		13	12	22
325		5111061		26	11	17
\.


--
-- Name: branch_branch_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('branch_branch_id_seq', 368, true);


--
-- Data for Name: branch_faculty; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY branch_faculty (id, branch_id, college_id, status, entrance_type, name) FROM stdin;
4671	140	158	2	1	Xorijiy mamlakatlar iqtisodiyoti va mamlakatshunoslik: Xitoy va Janubiy-Sharqiy Osiyo mamlakatlari
4672	141	158	2	1	Xorijiy mamlakatlar iqtisodiyoti va mamlakatshunoslik: Uzoq Sharq mamlakatlari
4676	112	158	2	1	Falsafa
4690	101	159	2	1	Kasb ta'limi: bino va inshootlar qurilishi
4723	171	160	2	1	Kasb ta'limi: tabiiy tolalarni dastlabki ishlash texnologiyasi
4725	54	160	2	1	Menejment (tarmoqlar va sohalar bo`yicha)
4726	132	160	2	1	Buxgalteriya hisobi va audit (tarmoqlar bo`yicha)
4734	89	163	2	1	Marketing (tarmoqlar va sohalar bo`yicha)
4737	172	163	2	1	Kasb ta'limi: avtomobil yo`llari va aerodromlar
4550	3	212	1	1	Filologiya va tillarni o`qitish: O`zbek tili
4359	17	189	1	1	Musiqa ta'limi
4744	176	161	1	1	Moliya
4668	138	157	1	1	Filologiya va tillarni o`qitish: xitoy tili
4669	139	157	1	1	Filologiya va tillarni o`qitish: yapon tili
4670	18	157	1	1	Xorijiy til va adabiyoti: ingliz tili
4673	142	158	1	1	Xorijiy mamlakatlar iqtisodiyoti va mamlakatshunoslik: Yaqin va O`rta Sharq mamlakatlari
4674	143	158	1	1	Xorijiy mamlakatlar iqtisodiyoti va mamlakatshunoslik: MDH mamlakatlari
4675	144	158	1	1	Jahon siyosati
4677	4	158	1	1	Tarix (mamlakatlar va mintaqalar bo`yicha)
4678	136	158	1	1	Tarjima nazariyasi va amaliyoti (tillar bo`yicha)
4679	145	158	1	1	Filologiya va tillarni o`qitish: sharq mumtoz tillari
4680	146	158	1	1	Filologiya va tillarni o`qitish: yapon, xitoy, koreys, hind, urdu, indonez, malay, vyetnam tillari
4681	147	158	1	1	Filologiya va tillarni o`qitish: arab, fors, turk, uyg`ur, dariy, pushtu tullari
4682	69	159	1	1	Qurilish materiallari, buyumlari va konstruksiyalarini ishlab chiqarish
4683	148	159	1	1	Gidrotexnika qurilishi (turlari bo`yicha)
4684	98	159	1	1	Ko`chmas mulk ekspertizasi va uni boshqarish
4685	82	159	1	1	Qishloq hududlarini arxitektura-loyihaviy tashkil etish
4686	149	159	1	1	Qiymat injiniringi
4687	72	159	1	1	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)
4688	68	159	1	1	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)
4689	99	159	1	1	Shahar qurilishi va xo`jaligi
4691	150	159	1	1	Kasb ta'limi: xizmatlar sohasi
4692	90	159	1	1	Dizayn (turlari bo`yicha)
4693	103	159	1	1	Geodeziya, kartografiya va kadastr (funksiyalari bo`yicha)
4694	100	159	1	1	Arxitektura (turlari bo`yicha)
4695	74	159	1	1	Bino va inshootlar qurilishi (turlari bo`yicha)
4696	151	176	1	1	Dizayn: interyerni loyihalash
4697	152	176	1	1	Dizayn: libos dizayni va gazlamalarning badiiy yechimi
4698	153	176	1	1	Grafika: dastgoh va kitob grafikasi
4699	154	176	1	1	Grafika: xattotlik va miniatura
4700	155	176	1	1	Haykaltaroshlik (turlari bo`yicha)
4701	156	176	1	1	Amaliy sanat: badiiy kulolchilik
4702	157	176	1	1	Amaliy sanat: memoriy yodgorliklar bezagini tamirlash
4703	158	176	1	1	Amaliy sanat: amaliy san'at asarlarini ta'mirlash
4704	159	176	1	1	Dizayn: reklama va amaliy grafika
4705	160	176	1	1	Dizayn: kompyuter grafikasi va badiiy foto
4706	161	176	1	1	Rangtasvir: filmning tasviriy yechimi
4707	162	176	1	1	Kasb ta'limi: rangtasvir
4708	163	176	1	1	Kasb ta'limi: dizayn (interyerni loyihalash)
4709	164	176	1	1	Kasb ta'limi: dizayn (libos dizayni va gazlamalarning badiiy yechimi)
4710	165	176	1	1	San'atshunoslik: tasviriy va amaliy san'at
4711	166	176	1	1	San'atshunoslik: muzeyshunoslik; konservatsiya va badiiy yodgorliklarni saqlash
4712	167	176	1	1	Rangtasvir: dastgohli rangtasvir
4713	168	176	1	1	Rangtasvir: mahobatli rangtasvir
4714	169	176	1	1	Rangtasvir: teatr-bezak rangtasviri
4715	49	160	1	1	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)
4716	88	160	1	1	Matbaa va qadoqlash jarayonlari texnologiyasi
4717	75	160	1	1	Yengil sanoat buyumlari konstruksiyasini ishlash va texnologiyasi (ishlab chiqarish turlari bo`yicha)
4718	87	160	1	1	Tabiiy tolalarni dastlabki ishlash texnologiyasi (xom ashyo turlari bo`yicha)
4719	119	160	1	1	Xizmat ko`rsatish texnikasi va texnologiyasi (xizmat ko`rsatish tarmoqlari bo`yicha)
4720	27	160	1	1	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)
4721	24	160	1	1	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)
4722	170	160	1	1	Kasb ta'limi: yengil sanoat buyumlari konstruksiyasini ishlash va texnologiyasi
4724	90	160	1	1	Dizayn (turlari bo`yicha)
4727	11	163	1	1	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)
4728	73	163	1	1	Tashishni tashkil etish va transport logistikasi (transport turlari bo`yicha)
4729	72	163	1	1	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)
4730	71	163	1	1	Avtomobil yo`llari va aerodromlar
4731	70	163	1	1	Transport inshootlarining ekspluatatsiyasi (transport inshootlari turlari bo`yicha)
4732	29	163	1	1	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)
4733	30	163	1	1	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)
4735	54	163	1	1	Menejment (tarmoqlar va sohalar bo`yicha)
4736	83	163	1	1	Kasb ta'limi: yerusti transport tizimlari va ularning ekspluatatsiyasi
4738	132	161	1	1	Buxgalteriya hisobi va audit (tarmoqlar bo`yicha)
4739	173	161	1	1	Sug`urta ishi
4740	174	161	1	1	Pensiya ishi
4741	175	161	1	1	Baholash ishi
4742	129	161	1	1	Soliqlar va soliqqa tortish
4743	133	161	1	1	Bank ishi
4745	54	161	1	1	Menejment (tarmoqlar va sohalar bo`yicha)
4746	177	161	1	1	Kasb ta'limi: moliya
4747	178	161	1	1	Kasb ta'limi: buxgalteriya hisobi va audit
4799	32	220	1	1	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)
4800	37	220	1	1	Psixologiya (faoliyat turlari bo`yicha)
4810	82	220	1	1	Qishloq hududlarini arxitektura-loyihaviy tashkil etish
4812	100	220	1	1	Arxitektura (turlari bo`yicha)
4813	65	220	1	1	Oziq-ovqat texnologiyasi (mahsulotlar turlari bo`yicha)
4814	7	220	1	1	Fizika
4815	6	220	1	1	Biologiya (turlari bo`yicha)
4816	77	220	1	1	Amaliy matematika va informatika
4817	21	220	1	1	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi
4818	18	220	1	1	Xorijiy til va adabiyoti: ingliz tili
4819	17	220	1	1	Musiqa ta'limi
4820	16	220	1	1	Kasb ta'limi: informatika va axborot texnologiyalari
4821	178	220	1	1	Kasb ta'limi: buxgalteriya hisobi va audit
4823	15	220	1	1	Pedagogika va psixologiya
4824	14	220	1	1	Tasviriy san'at va muhandislik grafikasi
4825	22	220	1	1	Boshlang`ich ta'lim va sport-tarbiyaviy ish
4826	23	220	1	1	Maktabgacha ta'lim
4827	5	220	1	1	Matematika
4828	4	220	1	1	Tarix (mamlakatlar va mintaqalar bo`yicha)
4829	35	220	1	1	Filologiya va tillarni o`qitish: fransuz tili
4830	42	220	1	1	Filologiya va tillarni o`qitish: nemis tili
4831	43	220	1	1	Filologiya va tillarni o`qitish: ingliz tili
4832	3	220	1	1	Filologiya va tillarni o`qitish: O`zbekiston tili
4833	2	220	1	1	Mehnat ta'limi
4834	13	220	1	1	Jismoniy madaniyat
4835	3	223	1	1	Filologiya va tillarni o`qitish: O`zbekiston tili
4836	43	223	1	1	Filologiya va tillarni o`qitish: ingliz tili
4837	42	223	1	1	Filologiya va tillarni o`qitish: nemis tili
4838	35	223	1	1	Filologiya va tillarni o`qitish: fransuz tili
4839	4	223	1	1	Tarix (mamlakatlar va mintaqalar bo`yicha)
4840	9	223	1	1	Geografiya
4841	36	223	1	1	Tuproqshunoslik
4842	37	223	1	1	Psixologiya (faoliyat turlari bo`yicha)
4843	32	223	1	1	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)
4844	95	223	1	1	Ijtimoiy ish (faoliyatning turli sohalari bo`yicha)
4845	11	223	1	1	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)
4846	2	223	1	1	Mehnat ta'limi
5342	327	157	1	1	 Filologiya va tillarni o`qitish: rus tili 
5345	234	204	1	1	 Texnogen san'at: kino, televideniye va radio ovoz rejissorligi 
5347	240	204	1	1	 Madaniyat va san'at muassasalarini tashkil etish va boshqarish 
5348	83	179	1	1	 Kasb ta'limi: yerusti transport tizimlari va ularning ekspluatatsiyasi 
5351	17	201	1	1	 Musiqa ta'limi 
5352	322	201	1	1	 Ona tili va adabiyoti: rus tili va adabiyoti 
5353	331	201	1	1	 Ona tili va adabiyoti: qoraqalpoq tili va adabiyoti 
5354	323	201	1	1	 Ona tili va adabiyoti: qozoq tili va adabiyoti 
5355	324	201	1	1	 Ona tili va adabiyoti (rus tili va adabiyoti o`zga tilli guruhlarda) 
5356	324	212	1	1	 Ona tili va adabiyoti (rus tili va adabiyoti o`zga tilli guruhlarda) 
5357	327	212	1	1	 Filologiya va tillarni o`qitish: rus tili 
5358	332	212	1	1	 Filologiya va tillarni o`qitish: tojik tili 
5360	83	206	1	1	 Kasb ta'limi: yerusti transport tizimlari va ularning ekspluatatsiyasi 
5362	324	206	1	1	 Ona tili va adabiyoti (rus tili va adabiyoti o`zga tilli guruhlarda) 
5363	334	189	1	1	 Ona tili va adabiyoti: qirg`iz tili va adabiyoti 
5364	327	189	1	1	 Filologiya va tillarni o`qitish: rus tili 
5370	339	173	1	1	 Kasb ta'limi: xalq ijodiyoti (xalq ashula va raqs ansambli rahbari) 
5371	328	173	1	1	 Aktyorlik san'ati: estrada aktyorligi 
5375	324	223	1	1	 Ona tili va adabiyoti (rus tili va adabiyoti o`zga tilli guruhlarda) 
5376	327	223	1	1	 Filologiya va tillarni o`qitish: rus tili 
5380	190	155	1	1	 Kasb ta'limi: elektr energetikasi 
5388	349	162	1	1	 Kasb ta'limi: oziq-ovqat texnologiyasi 
5390	324	219	1	1	 Ona tili va adabiyoti (rus tili va adabiyoti o`zga tilli guruhlarda) 
5391	327	219	1	1	 Filologiya va tillarni o`qitish: rus tili 
5392	332	219	1	1	 Filologiya va tillarni o`qitish: tojik tili 
5394	322	164	1	1	 Ona tili va adabiyoti: rus tili va adabiyoti 
5395	350	164	1	1	 Ona tili va adabiyoti: koreys tili va adabiyoti 
5396	323	164	1	1	 Ona tili va adabiyoti: qozoq tili va adabiyoti 
5397	324	164	1	1	 Ona tili va adabiyoti (rus tili va adabiyoti o`zga tilli guruhlarda) 
5401	21	200	1	1	 Milliy g`oya, ma'naviyat asoslari va huquq ta'limi 
5402	12	200	1	1	 Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha) 
5403	327	200	1	1	 Filologiya va tillarni o`qitish: rus tili 
5404	352	200	1	1	 Filologiya va tillarni o`qitish: qoraqalpoq tili 
5405	42	200	1	1	 Filologiya va tillarni o`qitish: nemis tili 
5406	326	200	1	1	 Filologiya va tillarni o`qitish: qozoq tili 
5407	353	200	1	1	 Filologiya va tillarni o`qitish: turkman tili 
5408	136	200	1	1	 Tarjima nazariyasi va amaliyoti (tillar bo`yicha) 
5409	112	200	1	1	 Falsafa 
5410	93	200	1	1	 Gidrometeorologiya 
5411	36	200	1	1	 Tuproqshunoslik 
5412	104	200	1	1	 Jurnalistika (faoliyat turlari bo`yicha) 
5413	99	200	1	1	 Shahar qurilishi va xo`jaligi 
5415	322	225	1	1	 Ona tili va adabiyoti: rus tili va adabiyoti 
5416	324	225	1	1	 Ona tili va adabiyoti (rus tili va adabiyoti o`zga tilli guruhlarda) 
5417	355	228	1	1	 Boshlang`ich ta'lim va sport-tarbiyaviy ish 
5427	79	173	1	1	 Ijtimoiy-madaniy faoliyat 
5428	358	156	1	1	 Korporativ boshqaruv 
5429	36	219	1	1	 Tuproqshunoslik 
5430	92	220	1	1	 Mexanika 
5343	328	204	2	1	 Aktyorlik san'ati: estrada aktyorligi 
5344	242	204	2	1	 rejissorlik: estrada va ommaviy tomoshalar rejissorligi 
5346	236	204	2	1	 Xalq ijodiyoti: folklor-etnografik jamoalari rahbari 
5431	11	220	1	1	 Ekologiya va atrof-muhit muhofazasi (tarmoqlar va sohalar bo`yicha) 
5432	197	169	1	1	 Stomatologiya (yo`nalishlar bo`yicha) 
5433	197	239	1	1	 Stomatologiya (yo`nalishlar bo`yicha) 
5434	359	194	1	1	 Energoaudit va sanoat korxonalarning energetik tekshiruvi 
5435	138	158	1	1	 Filologiya va tillarni o`qitish: xitoy tili 
5436	360	158	1	1	 Sharq falsafasi va madaniyati 
5437	361	158	1	1	 Xorijiy mamlakatlar iqtisodiyoti va mamlakatshunoslik: Janubiy-Sharqiy Osiyo va Uzoq Sharq mamlakatlari 
5438	362	158	1	1	 Xorijiy mamlakatlar iqtisodiyoti va mamlakatshunoslik: Xitoy 
5439	217	188	1	1	 Veterinariya 
5321	322	228	1	1	 Ona tili va adabiyoti: rus tili va adabiyoti 
5322	323	228	1	1	 Ona tili va adabiyoti: qozoq tili va adabiyoti 
5323	324	228	1	1	 Ona tili va adabiyoti (rus tili va adabiyoti o`zga tilli guruhlarda) 
5325	324	220	1	1	 Ona tili va adabiyoti (rus tili va adabiyoti o`zga tilli guruhlarda) 
5326	322	199	1	1	 Ona tili va adabiyoti: rus tili va adabiyoti 
5327	324	199	1	1	 Ona tili va adabiyoti (rus tili va adabiyoti o`zga tilli guruhlarda) 
5328	150	209	1	1	 Kasb ta'limi: xizmatlar sohasi 
5329	324	209	1	1	 Ona tili va adabiyoti (rus tili va adabiyoti o`zga tilli guruhlarda) 
5330	324	197	1	1	 Ona tili va adabiyoti (rus tili va adabiyoti o`zga tilli guruhlarda) 
5331	326	197	1	1	 Filologiya va tillarni o`qitish: qozoq tili 
5332	132	203	1	1	 Buxgalteriya hisobi va audit (tarmoqlar bo`yicha) 
5333	213	203	1	1	 Qishloq xo`jaligi ekinlari seleksiyasi va urug`chiligi 
5334	227	203	1	1	 Yer tuzish va yer kadastri 
5335	221	203	1	1	 O`rmonchilik va aholi yashash joylarini ko`kalamzorlashtirish 
5336	222	203	1	1	 Ipakchilik 
5337	324	193	1	1	 Ona tili va adabiyoti (rus tili va adabiyoti o`zga tilli guruhlarda) 
5338	327	193	1	1	 Filologiya va tillarni o`qitish: rus tili 
5339	324	154	1	1	 Ona tili va adabiyoti (rus tili va adabiyoti o`zga tilli guruhlarda) 
5340	327	154	1	1	 Filologiya va tillarni o`qitish: rus tili 
5341	324	157	1	1	 Ona tili va adabiyoti (rus tili va adabiyoti o`zga tilli guruhlarda) 
4780	5	219	1	1	Matematika
4781	4	219	1	1	Tarix (mamlakatlar va mintaqalar bo`yicha)
4782	1	219	1	1	Informatika o`qitish metodikasi
4783	14	219	1	1	Tasviriy san'at va muhandislik grafikasi
4784	16	219	1	1	Kasb ta'limi: informatika va axborot texnologiyalari
4785	56	219	1	1	Kasb ta'limi: kimyoviy texnologiya
4786	185	219	1	1	Kasb ta'limi: qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi
4787	17	219	1	1	Musiqa ta'limi
4788	18	219	1	1	Xorijiy til va adabiyoti: ingliz tili
4789	19	219	1	1	Xorijiy til va adabiyoti: nemis tili
4790	43	219	1	1	Filologiya va tillarni o`qitish: ingliz tili
4791	3	219	1	1	Filologiya va tillarni o`qitish: O`zbekiston tili
4792	12	219	1	1	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)
4793	13	219	1	1	Jismoniy madaniyat
4794	23	219	1	1	Maktabgacha ta'lim
4795	22	219	1	1	Boshlang`ich ta'lim va sport-tarbiyaviy ish
4796	103	220	1	1	Geodeziya, kartografiya va kadastr (funksiyalari bo`yicha)
4797	30	220	1	1	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)
4798	31	220	1	1	Avtomobilsozlik va traktorsozlik
5320	178	211	2	1	 Kasb ta'limi: buxgalteriya hisobi va audit 
5324	325	194	2	1	 Kasb ta'limi: texnologik jarayonlarni boshqarishning axborot-kommunikatsiya tizimlari 
4801	36	220	1	1	Tuproqshunoslik
4802	9	220	1	1	Geografiya
4803	8	220	1	1	Kimyo
4804	49	220	1	1	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)
4805	116	220	1	1	Biotexnologiya (tarmoqlar bo`yicha)
4806	80	220	1	1	Sport faoliyati (xotin-qizlar sporti yo`nalishi bo`yicha)
4807	41	220	1	1	Turizm (faoliyat yo`nalishlari bo`yicha)
4808	40	220	1	1	Mehmonxona xo`jaligini tashkil etish va boshqarish
4809	66	220	1	1	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi
4822	44	220	2	1	Kasb ta'limi: agronomiya
5349	329	179	2	1	 Kasb ta'limi: telekommunikatsiya 
5350	330	179	2	1	 Telekommunikatsiya 
5359	170	206	2	1	 Kasb ta'limi: yengil sanoat buyumlari konstruksiyasini ishlash va texnologiyasi 
5361	333	206	2	1	 Kasb ta'limi: materialshunoslik va yangi materiallar texnologiyasi 
5365	335	165	2	1	 Tarix (Islom tarixi va manbashunosligi) 
5366	84	207	2	1	 Kasb ta'limi: qishloq xo`jaligini mexanizatsiyalashtirish 
5367	336	173	2	1	 Kasb ta'limi: aktyorlik san'ati (qo`g`irchoq teatri aktyorligi) 
5368	337	173	2	1	 Kasb ta'limi: rejissorlik (estrada va ommaviy tomoshalar rejissorligi) 
5369	338	173	2	1	 Kasb ta'limi: xalq ijodiyoti (folklor-etnografik jamoalari rahbari) 
5372	340	173	2	1	 rejissorlik: drama rejissorligi 
5373	44	223	2	1	 Kasb ta'limi: agronomiya 
5374	16	223	2	1	 Kasb ta'limi: informatika va axborot texnologiyalari 
4811	99	220	1	1	Shahar qurilishi va xo`jaligi
5377	178	198	2	1	 Kasb ta'limi: buxgalteriya hisobi va audit 
5378	83	155	2	1	 Kasb ta'limi: yerusti transport tizimlari va ularning ekspluatatsiyasi 
5379	341	155	2	1	 Kasb ta'limi: radioelektron qurilmalar va tizimlar 
5381	342	155	2	1	 Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (sanoat) 
5382	343	155	2	1	 Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (aviatsiya) 
5383	344	155	2	1	 Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (konchilik elektr mexanikasi) 
5384	345	155	2	1	 Foydali qazilma konlari geologiyasi, qidiruv va razvedkasi (qattiq foydali qazilmalar) 
5385	346	155	2	1	 Foydali qazilma konlari geologiyasi, qidiruv va razvedkasi (neft va gaz konlari) 
5386	347	155	2	1	 Radioelektron qurilmalar va tizimlar (radioelektronika) 
5387	348	155	2	1	 Radioelektron qurilmalar va tizimlar (aviatsiya) 
5389	45	219	2	1	 Kasb ta'limi: iqtisodiyot 
5393	37	219	2	1	 Psixologiya (faoliyat turlari bo`yicha) 
5398	351	159	2	1	 Kasb ta'limi: shahar qurilishi va xo`jaligi 
5399	101	200	2	1	 Kasb ta'limi: bino va inshootlar qurilishi 
5400	56	200	2	1	 Kasb ta'limi: kimyoviy texnologiya 
5414	354	171	2	1	 Kasb ta'limi: gidrotexnika inshootlari va nasos stansiyalaridan foydalanish 
5440	85	198	1	1	 Kasb ta'limi: muhandislik kommunikatsiyalari qurilishi va montaji 
5441	358	160	1	1	 Korporativ boshqaruv 
5442	28	160	1	1	 Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha) 
5443	197	240	1	1	 Stomatologiya (yo`nalishlar bo`yicha) 
5444	221	192	1	1	 O`rmonchilik va aholi yashash joylarini ko`kalamzorlashtirish 
5445	223	192	1	1	 Dorivor o`simliklarni yetishtirish texnologiyasi 
5446	224	192	1	1	 Qishloq xo`jaligini elektrlashtirish va avtomatlashtirish 
5447	363	170	1	1	 Metrologiya, standartlashtirish va mahsulot sifati menejmenti (tarmoqlar bo`yicha) 
5448	11	154	1	1	 Ekologiya va atrof-muhit muhofazasi (tarmoqlar va sohalar bo`yicha) 
5449	15	206	1	1	 Pedagogika va psixologiya 
5450	358	155	1	1	 Korporativ boshqaruv 
5451	359	155	1	1	 Energoaudit va sanoat korxonalarning energetik tekshiruvi 
5452	364	155	1	1	 Konchilik elektr mexanikasi 
5453	365	155	1	1	 Marksheyderlik ishi 
5454	227	207	1	1	 Yer tuzish va yer kadastri 
5455	366	161	1	1	 Davlat budjetining g`azna ijrosi 
5456	349	211	1	1	 Kasb ta'limi: oziq-ovqat texnologiyasi 
5457	197	241	1	1	 Stomatologiya (yo`nalishlar bo`yicha) 
5458	81	190	1	1	 Hayotiy faoliyat xavfsizligi 
5459	197	242	1	1	 Stomatologiya (yo`nalishlar bo`yicha) 
5460	75	224	1	1	 Yengil sanoat buyumlari konstruksiyasini ishlash va texnologiyasi (ishlab chiqarish turlari bo`yicha) 
5461	87	224	1	1	 Tabiiy tolalarni dastlabki ishlash texnologiyasi (xom ashyo turlari bo`yicha) 
5462	65	210	1	1	 Oziq-ovqat texnologiyasi (mahsulotlar turlari bo`yicha) 
5463	367	200	1	1	 Kasb ta'limi: ekologiya va atrof-muhit muhofazasi 
5464	368	200	1	1	 Kasb ta'limi: agrokimyo va agrotuproqshunoslik 
5465	238	204	1	1	 Xalq ijodiyoti: cholg`u jamoalari rahbari 
5418	356	201	1	1	 Ona tili va adabiyoti (rus tili va adabiyoti o`zga tilli guruhlarda) 
5419	355	201	1	1	 Boshlang`ich ta'lim va sport-tarbiyaviy ish 
5420	199	201	1	1	 Defektologiya 
4858	13	223	1	1	Jismoniy madaniyat
5421	324	189	1	1	 Ona tili va adabiyoti (rus tili va adabiyoti o`zga tilli guruhlarda) 
5422	249	204	1	1	 Aktyorlik san'ati: musiqiy teatr aktyorligi 
5423	241	204	1	1	 rejissorlik: televideniye va radio rejissorligi 
5425	355	164	1	1	 Boshlang`ich ta'lim va sport-tarbiyaviy ish 
5426	357	212	1	1	 Boshlang`ich ta'lim va sport-tarbiyaviy ish 
4847	12	223	1	1	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)
4848	186	223	1	1	Matematika o`qitish metodikasi
4849	187	223	1	1	Fizika va astronomiya o`qitish metodikasi
4850	188	223	1	1	Kimyo o`qitish metodikasi
4851	189	223	1	1	Biologiya o`qitish metodikasi
4852	1	223	1	1	Informatika o`qitish metodikasi
4853	14	223	1	1	Tasviriy san'at va muhandislik grafikasi
4854	45	223	1	1	Kasb ta'limi: iqtisodiyot
4855	18	223	1	1	Xorijiy til va adabiyoti: ingliz tili
4856	48	223	1	1	Chaqiriqqacha harbiy ta'lim
4857	22	223	1	1	Boshlang`ich ta'lim va sport-tarbiyaviy ish
4859	27	224	1	1	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)
4860	49	224	1	1	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)
4861	65	224	1	1	Oziq-ovqat texnologiyasi (mahsulotlar turlari bo`yicha)
4862	100	224	1	1	Arxitektura (turlari bo`yicha)
4863	99	224	1	1	Shahar qurilishi va xo`jaligi
4864	68	224	1	1	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)
4865	82	224	1	1	Qishloq hududlarini arxitektura-loyihaviy tashkil etish
4866	66	224	1	1	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi
4867	72	224	1	1	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)
4868	26	224	1	1	Mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish
4869	103	224	1	1	Geodeziya, kartografiya va kadastr (funksiyalari bo`yicha)
4870	45	224	1	1	Kasb ta'limi: iqtisodiyot
4871	190	224	1	1	Kasb ta'limi: elektr energetikasi
4872	32	224	1	1	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)
4873	54	224	1	1	Menejment (tarmoqlar va sohalar bo`yicha)
4874	132	224	1	1	Buxgalteriya hisobi va audit (tarmoqlar bo`yicha)
4875	76	224	1	1	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)
4876	30	224	1	1	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)
4877	28	224	1	1	Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)
4878	24	224	1	1	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)
4879	180	226	1	1	Oliy hamshiralik ishi
4880	191	226	1	1	Tibbiy profilaktika ishi
4881	183	226	1	1	Kasb ta'limi: tibbiy pedagogik ish
4882	35	206	1	1	Filologiya va tillarni o`qitish: fransuz tili
4883	4	206	1	1	Tarix (mamlakatlar va mintaqalar bo`yicha)
4884	5	206	1	1	Matematika
4885	77	206	1	1	Amaliy matematika va informatika
4886	6	206	1	1	Biologiya (turlari bo`yicha)
4887	7	206	1	1	Fizika
4888	8	206	1	1	Kimyo
4889	36	206	1	1	Tuproqshunoslik
4890	37	206	1	1	Psixologiya (faoliyat turlari bo`yicha)
4891	10	206	1	1	Mehnat iqtisodiyoti va sotsiologiyasi
4892	116	206	1	1	Biotexnologiya (tarmoqlar bo`yicha)
4893	41	206	1	1	Turizm (faoliyat yo`nalishlari bo`yicha)
4894	11	206	1	1	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)
4895	42	206	1	1	Filologiya va tillarni o`qitish: nemis tili
4343	1	189	1	1	Informatika o`qitish metodikasi
4896	43	206	1	1	Filologiya va tillarni o`qitish: ingliz tili
4897	67	206	1	1	Geografiya o`qitish metodikasi
4898	1	206	1	1	Informatika o`qitish metodikasi
4899	14	206	1	1	Tasviriy san'at va muhandislik grafikasi
4900	192	206	1	1	Kasb ta'limi: energetika
4901	17	206	1	1	Musiqa ta'limi
4902	18	206	1	1	Xorijiy til va adabiyoti: ingliz tili
4903	21	206	1	1	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi
4904	22	206	1	1	Boshlang`ich ta'lim va sport-tarbiyaviy ish
4905	23	206	1	1	Maktabgacha ta'lim
4906	13	206	1	1	Jismoniy madaniyat
4907	12	206	1	1	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)
4908	2	206	1	1	Mehnat ta'limi
4909	3	206	1	1	Filologiya va tillarni o`qitish: O`zbekiston tili
4910	49	200	1	1	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)
4911	114	200	1	1	Neft va gaz konlarini ishga tushirish va ulardan foydalanish
4912	103	200	1	1	Geodeziya, kartografiya va kadastr (funksiyalari bo`yicha)
4913	29	200	1	1	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)
4914	76	200	1	1	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)
4915	75	200	1	1	Yengil sanoat buyumlari konstruksiyasini ishlash va texnologiyasi (ishlab chiqarish turlari bo`yicha)
4916	117	200	1	1	Neft va neft-gazni qayta ishlash texnologiyasi
4917	100	200	1	1	Arxitektura (turlari bo`yicha)
4918	74	200	1	1	Bino va inshootlar qurilishi (turlari bo`yicha)
4919	68	200	1	1	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)
4920	69	200	1	1	Qurilish materiallari, buyumlari va konstruksiyalarini ishlab chiqarish
4921	71	200	1	1	Avtomobil yo`llari va aerodromlar
4922	11	200	1	1	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)
4923	193	200	1	1	Yurisprudensiya (faoliyat turlari bo`yicha)
4924	132	200	1	1	Buxgalteriya hisobi va audit (tarmoqlar bo`yicha)
4925	18	200	1	1	Xorijiy til va adabiyoti: ingliz tili
4926	13	200	1	1	Jismoniy madaniyat
4927	3	200	1	1	Filologiya va tillarni o`qitish: O`zbekiston tili
4928	43	200	1	1	Filologiya va tillarni o`qitish: ingliz tili
4929	4	200	1	1	Tarix (mamlakatlar va mintaqalar bo`yicha)
4930	5	200	1	1	Matematika
4931	77	200	1	1	Amaliy matematika va informatika
4344	2	189	1	1	Mehnat ta'limi
4345	3	189	1	1	Filologiya va tillarni o`qitish: O`zbekiston tili
4346	4	189	1	1	Tarix (mamlakatlar va mintaqalar bo`yicha)
4347	5	189	1	1	Matematika
4348	6	189	1	1	Biologiya (turlari bo`yicha)
4349	7	189	1	1	Fizika
4350	8	189	1	1	Kimyo
4351	9	189	1	1	Geografiya
4352	10	189	1	1	Mehnat iqtisodiyoti va sotsiologiyasi
4353	11	189	1	1	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)
4354	12	189	1	1	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)
4355	13	189	1	1	Jismoniy madaniyat
4356	14	189	1	1	Tasviriy san'at va muhandislik grafikasi
4357	15	189	1	1	Pedagogika va psixologiya
4358	16	189	1	1	Kasb ta'limi: informatika va axborot texnologiyalari
4360	18	189	1	1	Xorijiy til va adabiyoti: ingliz tili
4361	19	189	1	1	Xorijiy til va adabiyoti: nemis tili
4362	20	189	1	1	Xorijiy til va adabiyoti: fransuz tili
4363	21	189	1	1	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi
4364	22	189	1	1	Boshlang`ich ta'lim va sport-tarbiyaviy ish
4365	23	189	1	1	Maktabgacha ta'lim
4366	24	190	1	1	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)
4367	25	190	1	1	Materialshunoslik va yangi materiallar texnologiyasi
4368	26	190	1	1	Mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish
4369	27	190	1	1	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)
4370	28	190	1	1	Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)
4371	29	190	1	1	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)
4372	30	190	1	1	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)
4373	31	190	1	1	Avtomobilsozlik va traktorsozlik
4374	32	190	1	1	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)
4375	33	190	1	1	Kasb ta'limi: mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish
4376	8	193	1	1	Kimyo
4377	7	193	1	1	Fizika
4378	6	193	1	1	Biologiya (turlari bo`yicha)
4379	5	193	1	1	Matematika
4380	4	193	1	1	Tarix (mamlakatlar va mintaqalar bo`yicha)
4381	35	193	1	1	Filologiya va tillarni o`qitish: fransuz tili
4382	9	193	1	1	Geografiya
4383	36	193	1	1	Tuproqshunoslik
4384	37	193	1	1	Psixologiya (faoliyat turlari bo`yicha)
4385	38	193	1	1	Arxivshunoslik
4386	32	193	1	1	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)
4387	39	193	1	1	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)
4388	40	193	1	1	Mehmonxona xo`jaligini tashkil etish va boshqarish
4389	41	193	1	1	Turizm (faoliyat yo`nalishlari bo`yicha)
4390	11	193	1	1	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)
4391	42	193	1	1	Filologiya va tillarni o`qitish: nemis tili
4392	43	193	1	1	Filologiya va tillarni o`qitish: ingliz tili
4393	3	193	1	1	Filologiya va tillarni o`qitish: O`zbekiston tili
4394	14	193	1	1	Tasviriy san'at va muhandislik grafikasi
4395	15	193	1	1	Pedagogika va psixologiya
4396	44	193	1	1	Kasb ta'limi: agronomiya
4397	45	193	1	1	Kasb ta'limi: iqtisodiyot
4398	16	193	1	1	Kasb ta'limi: informatika va axborot texnologiyalari
4399	46	193	1	1	Kasb ta'limi: amaliy san'at
4400	17	193	1	1	Musiqa ta'limi
4401	18	193	1	1	Xorijiy til va adabiyoti: ingliz tili
4402	48	193	1	1	Chaqiriqqacha harbiy ta'lim
4403	2	193	1	1	Mehnat ta'limi
4404	12	193	1	1	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)
4405	13	193	1	1	Jismoniy madaniyat
4406	23	193	1	1	Maktabgacha ta'lim
4407	22	193	1	1	Boshlang`ich ta'lim va sport-tarbiyaviy ish
4408	21	193	1	1	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi
4409	29	194	1	1	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)
4410	49	194	1	1	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)
4411	50	194	1	1	Neft-gazkimyo sanoati texnologiyasi
4412	51	194	1	1	Texnologiyalar va jihozlar (tarmoqlar bo`yicha)
4413	52	194	1	1	Yengil sanoat texnologiyalari va jihozlari
4414	53	194	1	1	Texnologik jarayonlarni boshqarishning axborot-kommunikatsiya tizimlari
4415	54	194	1	1	Menejment (tarmoqlar va sohalar bo`yicha)
4416	55	194	1	1	Kasb ta'limi: neft-gazkimyo sanoati texnologiyasi
4417	16	194	1	1	Kasb ta'limi: informatika va axborot texnologiyalari
4418	56	194	1	1	Kasb ta'limi: kimyoviy texnologiya
4419	33	194	1	1	Kasb ta'limi: mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish
4420	57	194	1	1	Kasb ta'limi: menejment
4421	58	194	1	1	Kasb ta'limi: elektr texnikasi, elektr mexanikasi va elektr texnologiyalari
4422	59	194	1	1	Kasb ta'limi: yengil sanoat texnologiyalari va jihozlari
4423	60	165	1	1	Informatika va axborot texnologiyalari (tarmoqlar va sohalar bo`yicha)
4424	61	165	1	1	Jahon iqtisodiyoti va xalqaro iqtisodiy munosabatlar (mintaqalar va faoliyat turlari bo`yicha)
4425	62	165	1	1	Psixologiya (din sotsiopsixologiyasi)
4426	63	165	1	1	Dinshunoslik
4427	4	165	1	1	Tarix (Islom tarixi va manbashunosligi)
4748	179	161	1	1	Kasb ta'limi: bank ishi
4428	21	165	1	1	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi
4430	4	197	1	1	Tarix (mamlakatlar va mintaqalar bo`yicha)
4432	6	197	1	1	Biologiya (turlari bo`yicha)
4433	7	197	1	1	Fizika
4434	8	197	1	1	Kimyo
4435	36	197	1	1	Tuproqshunoslik
4436	32	197	1	1	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)
4437	65	197	1	1	Oziq-ovqat texnologiyasi (mahsulotlar turlari bo`yicha)
4438	66	197	1	1	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi
4439	11	197	1	1	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)
4440	3	197	1	1	Filologiya va tillarni o`qitish: O`zbekiston tili
4441	2	197	1	1	Mehnat ta'limi
4442	67	197	1	1	Geografiya o`qitish metodikasi
4443	1	197	1	1	Informatika o`qitish metodikasi
4444	15	197	1	1	Pedagogika va psixologiya
4445	44	197	1	1	Kasb ta'limi: agronomiya
4446	17	197	1	1	Musiqa ta'limi
4447	18	197	1	1	Xorijiy til va adabiyoti: ingliz tili
4448	21	197	1	1	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi
4449	22	197	1	1	Boshlang`ich ta'lim va sport-tarbiyaviy ish
4450	23	197	1	1	Maktabgacha ta'lim
4451	13	197	1	1	Jismoniy madaniyat
4452	12	197	1	1	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)
4453	68	198	1	1	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)
4454	69	198	1	1	Qurilish materiallari, buyumlari va konstruksiyalarini ishlab chiqarish
4455	70	198	1	1	Transport inshootlarining ekspluatatsiyasi (transport inshootlari turlari bo`yicha)
4456	71	198	1	1	Avtomobil yo`llari va aerodromlar
4457	66	198	1	1	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi
4458	72	198	1	1	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)
4459	73	198	1	1	Tashishni tashkil etish va transport logistikasi (transport turlari bo`yicha)
4460	11	198	1	1	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)
4461	74	198	1	1	Bino va inshootlar qurilishi (turlari bo`yicha)
4462	75	198	1	1	Yengil sanoat buyumlari konstruksiyasini ishlash va texnologiyasi (ishlab chiqarish turlari bo`yicha)
4463	45	198	1	1	Kasb ta'limi: iqtisodiyot
4464	16	198	1	1	Kasb ta'limi: informatika va axborot texnologiyalari
4465	54	198	1	1	Menejment (tarmoqlar va sohalar bo`yicha)
4466	76	198	1	1	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)
4467	30	198	1	1	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)
4468	29	198	1	1	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)
4469	28	198	1	1	Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)
4470	49	198	1	1	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)
4471	5	209	1	1	Matematika
4472	77	209	1	1	Amaliy matematika va informatika
4473	6	209	1	1	Biologiya (turlari bo`yicha)
4474	7	209	1	1	Fizika
4475	8	209	1	1	Kimyo
4476	9	209	1	1	Geografiya
4477	38	209	1	1	Arxivshunoslik
4478	79	209	1	1	Ijtimoiy-madaniy faoliyat
4479	80	209	1	1	Sport faoliyati (xotin-qizlar sporti yo`nalishi bo`yicha)
4480	11	209	1	1	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)
4481	81	209	1	1	Hayotiy faoliyat xavfsizligi
4482	4	209	1	1	Tarix (mamlakatlar va mintaqalar bo`yicha)
4483	42	209	1	1	Filologiya va tillarni o`qitish: nemis tili
4484	14	209	1	1	Tasviriy san'at va muhandislik grafikasi
4485	15	209	1	1	Pedagogika va psixologiya
5424	237	204	2	1	 Xalq ijodiyoti: vokal jamoalari rahbari 
4519	27	210	1	1	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)
4487	17	209	1	1	Musiqa ta'limi
4488	18	209	1	1	Xorijiy til va adabiyoti: ingliz tili
4489	21	209	1	1	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi
4490	22	209	1	1	Boshlang`ich ta'lim va sport-tarbiyaviy ish
4491	23	209	1	1	Maktabgacha ta'lim
4492	13	209	1	1	Jismoniy madaniyat
4493	3	209	1	1	Filologiya va tillarni o`qitish: O`zbekiston tili
4494	43	209	1	1	Filologiya va tillarni o`qitish: ingliz tili
4495	27	211	1	1	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)
4497	74	211	1	1	Bino va inshootlar qurilishi (turlari bo`yicha)
4498	68	211	1	1	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)
4499	69	211	1	1	Qurilish materiallari, buyumlari va konstruksiyalarini ishlab chiqarish
4500	71	211	1	1	Avtomobil yo`llari va aerodromlar
4501	82	211	1	1	Qishloq hududlarini arxitektura-loyihaviy tashkil etish
4502	72	211	1	1	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)
4503	26	211	1	1	Mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish
4504	30	211	1	1	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)
4505	76	211	1	1	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)
4507	45	211	1	1	Kasb ta'limi: iqtisodiyot
4508	16	211	1	1	Kasb ta'limi: informatika va axborot texnologiyalari
4509	56	211	1	1	Kasb ta'limi: kimyoviy texnologiya
4510	84	211	1	1	Kasb ta'limi: qishloq xo`jaligini mexanizatsiyalashtirish
4512	54	211	1	1	Menejment (tarmoqlar va sohalar bo`yicha)
4513	86	211	1	1	Energetika (tarmoqlar bo`yicha)
4514	66	210	1	1	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi
4515	87	210	1	1	Tabiiy tolalarni dastlabki ishlash texnologiyasi (xom ashyo turlari bo`yicha)
4516	75	210	1	1	Yengil sanoat buyumlari konstruksiyasini ishlash va texnologiyasi (ishlab chiqarish turlari bo`yicha)
4517	88	210	1	1	Matbaa va qadoqlash jarayonlari texnologiyasi
4518	49	210	1	1	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)
4520	24	210	1	1	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)
4521	28	210	1	1	Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)
4523	32	210	1	1	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)
4524	90	210	1	1	Dizayn (turlari bo`yicha)
4525	8	212	1	1	Kimyo
4526	91	212	1	1	Astronomiya
4527	92	212	1	1	Mexanika
4528	7	212	1	1	Fizika
4529	6	212	1	1	Biologiya (turlari bo`yicha)
4530	9	212	1	1	Geografiya
4531	93	212	1	1	Gidrometeorologiya
4532	37	212	1	1	Psixologiya (faoliyat turlari bo`yicha)
4533	32	212	1	1	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)
4534	94	212	1	1	Kadrlar menejmenti
4535	95	212	1	1	Ijtimoiy ish (faoliyatning turli sohalari bo`yicha)
4536	80	212	1	1	Sport faoliyati (xotin-qizlar sporti yo`nalishi bo`yicha)
4537	11	212	1	1	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)
4538	77	212	1	1	Amaliy matematika va informatika
4539	5	212	1	1	Matematika
4540	1	212	1	1	Informatika o`qitish metodikasi
4541	14	212	1	1	Tasviriy san'at va muhandislik grafikasi
4542	45	212	1	1	Kasb ta'limi: iqtisodiyot
4543	46	212	1	1	Kasb ta'limi: amaliy san'at
4544	96	212	1	1	Kasb ta'limi: elektronika va asbobsozlik
4545	17	212	1	1	Musiqa ta'limi
4546	21	212	1	1	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi
4547	22	212	1	1	Boshlang`ich ta'lim va sport-tarbiyaviy ish
4548	13	212	1	1	Jismoniy madaniyat
4549	2	212	1	1	Mehnat ta'limi
4551	4	212	1	1	Tarix (mamlakatlar va mintaqalar bo`yicha)
4552	97	212	1	1	Arxeologiya
4553	68	213	1	1	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)
4554	69	213	1	1	Qurilish materiallari, buyumlari va konstruksiyalarini ishlab chiqarish
4555	71	213	1	1	Avtomobil yo`llari va aerodromlar
4556	98	213	1	1	Ko`chmas mulk ekspertizasi va uni boshqarish
4557	82	213	1	1	Qishloq hududlarini arxitektura-loyihaviy tashkil etish
4558	72	213	1	1	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)
4559	99	213	1	1	Shahar qurilishi va xo`jaligi
4560	74	213	1	1	Bino va inshootlar qurilishi (turlari bo`yicha)
4561	100	213	1	1	Arxitektura (turlari bo`yicha)
4562	101	213	1	1	Kasb ta'limi: bino va inshootlar qurilishi
4563	85	213	1	1	Kasb ta'limi: muhandislik kommunikatsiyalari qurilishi va montaji
4564	102	213	1	1	Kasb ta'limi: tasviriy san'at va muhandislik grafikasi
4565	90	213	1	1	Dizayn (turlari bo`yicha)
4566	54	213	1	1	Menejment (tarmoqlar va sohalar bo`yicha)
4567	103	213	1	1	Geodeziya, kartografiya va kadastr (funksiyalari bo`yicha)
4568	104	154	1	1	Jurnalistika (faoliyat turlari bo`yicha)
4569	37	154	1	1	Psixologiya (faoliyat turlari bo`yicha)
4570	105	154	1	1	Sotsiologiya
4571	106	154	1	1	Gidrologiya (tarmoqlar bo`yicha)
4572	36	154	1	1	Tuproqshunoslik
4573	107	154	1	1	Geofizika
4574	108	154	1	1	Geologiya
4575	38	154	1	1	Arxivshunoslik
4576	32	154	1	1	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)
4577	94	154	1	1	Kadrlar menejmenti
4578	103	154	1	1	Geodeziya, kartografiya va kadastr (funksiyalari bo`yicha)
4579	109	154	1	1	Axborot tizimlarining matematik va dasturiy ta'minoti
4580	60	154	1	1	Informatika va axborot texnologiyalari (tarmoqlar va sohalar bo`yicha)
4581	110	154	1	1	Axborot xavfsizligi (sohalar bo`yicha)
4582	95	154	1	1	Ijtimoiy ish (faoliyatning turli sohalari bo`yicha)
4583	111	154	1	1	Ijtimoiy ish (pensiya ta'minoti)
4584	93	154	1	1	Gidrometeorologiya
4585	9	154	1	1	Geografiya
4586	18	154	1	1	Xorijiy til va adabiyoti: ingliz tili
4587	21	154	1	1	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi
4588	3	154	1	1	Filologiya va tillarni o`qitish: O`zbekiston tili
4589	43	154	1	1	Filologiya va tillarni o`qitish: ingliz tili
4590	42	154	1	1	Filologiya va tillarni o`qitish: nemis tili
4591	35	154	1	1	Filologiya va tillarni o`qitish: fransuz tili
4592	4	154	1	1	Tarix (mamlakatlar va mintaqalar bo`yicha)
4593	97	154	1	1	Arxeologiya
4594	112	154	1	1	Falsafa
4595	8	154	1	1	Kimyo
4596	91	154	1	1	Astronomiya
4597	92	154	1	1	Mexanika
4598	7	154	1	1	Fizika
4599	6	154	1	1	Biologiya (turlari bo`yicha)
4600	77	154	1	1	Amaliy matematika va informatika
4601	5	154	1	1	Matematika
4602	27	155	1	1	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)
4603	26	155	1	1	Mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish
4604	25	155	1	1	Materialshunoslik va yangi materiallar texnologiyasi
4605	113	155	1	1	Neft-gazni qayta ishlash sanoati obyektlarini loyihalashtirish, qurish va ulardan foydalanish
4606	114	155	1	1	Neft va gaz konlarini ishga tushirish va ulardan foydalanish
4607	115	155	1	1	Gidrogeologiya va muhandislik geologiyasi
4608	116	155	1	1	Biotexnologiya (tarmoqlar bo`yicha)
4609	117	155	1	1	Neft va neft-gazni qayta ishlash texnologiyasi
4610	60	155	1	1	Informatika va axborot texnologiyalari (tarmoqlar va sohalar bo`yicha)
4639	26	229	1	1	Mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish
4640	122	229	1	1	Foydali qazilma konlari geologiyasi, qidiruv va razvedkasi (kon turlari bo`yicha)
4641	123	229	1	1	Konchilik ishi
4642	24	229	1	1	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)
4643	29	229	1	1	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)
4644	126	229	1	1	Metallurgiya
4645	76	229	1	1	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)
4646	131	156	1	1	Statistika (tarmoqlar va sohalar bo`yicha)
4647	10	156	1	1	Mehnat iqtisodiyoti va sotsiologiyasi
4648	94	156	1	1	Kadrlar menejmenti
4649	60	156	1	1	Informatika va axborot texnologiyalari (tarmoqlar va sohalar bo`yicha)
4650	39	156	1	1	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)
4651	40	156	1	1	Mehmonxona xo`jaligini tashkil etish va boshqarish
4652	132	156	1	1	Buxgalteriya hisobi va audit (tarmoqlar bo`yicha)
4653	129	156	1	1	Soliqlar va soliqqa tortish
4654	45	156	1	1	Kasb ta'limi: iqtisodiyot
4655	16	156	1	1	Kasb ta'limi: informatika va axborot texnologiyalari
4656	32	156	1	1	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)
4657	54	156	1	1	Menejment (tarmoqlar va sohalar bo`yicha)
4658	89	156	1	1	Marketing (tarmoqlar va sohalar bo`yicha)
4659	133	156	1	1	Bank ishi
4660	134	174	1	1	San'atshunoslik: xoreografiya
4661	135	174	1	1	Xoreografiya (turlari bo`yicha)
4662	104	157	1	1	Jurnalistika (faoliyat turlari bo`yicha)
4663	136	157	1	1	Tarjima nazariyasi va amaliyoti (tillar bo`yicha)
4664	137	157	1	1	Filologiya va tillarni o`qitish: ispan tili
4665	35	157	1	1	Filologiya va tillarni o`qitish: fransuz tili
4666	42	157	1	1	Filologiya va tillarni o`qitish: nemis tili
4667	43	157	1	1	Filologiya va tillarni o`qitish: ingliz tili
5298	273	222	1	1	Dasturiy injiniring
4749	116	162	1	1	Biotexnologiya (tarmoqlar bo`yicha)
4750	65	162	1	1	Oziq-ovqat texnologiyasi (mahsulotlar turlari bo`yicha)
4751	117	162	1	1	Neft va neft-gazni qayta ishlash texnologiyasi
4752	68	162	1	1	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)
4753	11	162	1	1	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)
4754	81	162	1	1	Hayotiy faoliyat xavfsizligi
4755	49	162	1	1	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)
4756	27	162	1	1	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)
4757	24	162	1	1	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)
4758	28	162	1	1	Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)
4759	29	162	1	1	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)
4760	54	162	1	1	Menejment (tarmoqlar va sohalar bo`yicha)
4762	180	221	1	1	Oliy hamshiralik ishi
4763	181	221	1	1	Pediatriya ishi
4764	182	221	1	1	Davolash ishi
4765	183	221	1	1	Kasb ta'limi: tibbiy pedagogik ish
4766	77	219	1	1	Amaliy matematika va informatika
4767	6	219	1	1	Biologiya (turlari bo`yicha)
4769	8	219	1	1	Kimyo
4770	9	219	1	1	Geografiya
4771	32	219	1	1	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)
4772	176	219	1	1	Moliya
4773	94	219	1	1	Kadrlar menejmenti
4774	30	219	1	1	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)
4775	49	219	1	1	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)
4776	75	219	1	1	Yengil sanoat buyumlari konstruksiyasini ishlash va texnologiyasi (ishlab chiqarish turlari bo`yicha)
4777	70	219	1	1	Transport inshootlarining ekspluatatsiyasi (transport inshootlari turlari bo`yicha)
4778	71	219	1	1	Avtomobil yo`llari va aerodromlar
4779	11	219	1	1	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)
4429	43	197	2	1	Filologiya va tillarni o`qitish: ingliz tili
4486	45	209	2	1	Kasb ta'limi: iqtisodiyot
4496	65	211	2	1	Oziq-ovqat texnologiyasi (mahsulotlar turlari bo`yicha)
4506	83	211	2	1	Kasb ta'limi: yerusti transport tizimlari va ularning ekspluatatsiyasi
4511	85	211	2	1	Kasb ta'limi: muhandislik kommunikatsiyalari qurilishi va montaji
4431	5	197	1	1	Matematika
4522	89	210	2	1	Marketing (tarmoqlar va sohalar bo`yicha)
4933	176	200	1	1	Moliya
4934	32	200	1	1	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)
4935	9	200	1	1	Geografiya
4936	8	200	1	1	Kimyo
4937	7	200	1	1	Fizika
4938	136	214	1	1	Tarjima nazariyasi va amaliyoti (tillar bo`yicha)
4939	137	214	1	1	Filologiya va tillarni o`qitish: ispan tili
4940	35	214	1	1	Filologiya va tillarni o`qitish: fransuz tili
4941	42	214	1	1	Filologiya va tillarni o`qitish: nemis tili
4942	43	214	1	1	Filologiya va tillarni o`qitish: ingliz tili
4943	138	214	1	1	Filologiya va tillarni o`qitish: xitoy tili
4944	194	214	1	1	Filologiya va tillarni o`qitish: italyan tili
4945	195	214	1	1	Filologiya va tillarni o`qitish: arab tili
4946	139	214	1	1	Filologiya va tillarni o`qitish: yapon tili
4947	196	214	1	1	Filologiya va tillarni o`qitish: koreys tili
4948	18	214	1	1	Xorijiy til va adabiyoti: ingliz tili
4949	180	202	1	1	Oliy hamshiralik ishi
4951	191	202	1	1	Tibbiy profilaktika ishi
4952	181	202	1	1	Pediatriya ishi
4953	182	202	1	1	Davolash ishi
4954	144	166	1	1	Jahon siyosati
4955	61	166	1	1	Jahon iqtisodiyoti va xalqaro iqtisodiy munosabatlar (mintaqalar va faoliyat turlari bo`yicha)
4956	193	166	1	1	Yurisprudensiya (halqaro huquqiy faoliyat)
4957	18	199	1	1	Xorijiy til va adabiyoti: ingliz tili
4958	21	199	1	1	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi
4959	22	199	1	1	Boshlang`ich ta'lim va sport-tarbiyaviy ish
4960	23	199	1	1	Maktabgacha ta'lim
4961	199	199	1	1	Defektologiya
4962	13	199	1	1	Jismoniy madaniyat
4963	12	199	1	1	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)
4964	2	199	1	1	Mehnat ta'limi
4965	200	199	1	1	O`zbekiston tili va adabiyoti
4966	17	199	1	1	Musiqa ta'limi
4967	15	199	1	1	Pedagogika va psixologiya
4968	186	199	1	1	Matematika o`qitish metodikasi
4969	187	199	1	1	Fizika va astronomiya o`qitish metodikasi
4970	188	199	1	1	Kimyo o`qitish metodikasi
4971	189	199	1	1	Biologiya o`qitish metodikasi
4972	67	199	1	1	Geografiya o`qitish metodikasi
4973	201	199	1	1	Tarix o`qitish metodikasi
4974	1	199	1	1	Informatika o`qitish metodikasi
4975	14	199	1	1	Tasviriy san'at va muhandislik grafikasi
4976	200	201	1	1	O`zbekiston tili va adabiyoti
4977	18	201	1	1	Xorijiy til va adabiyoti: ingliz tili
4978	21	201	1	1	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi
4979	22	201	1	1	Boshlang`ich ta'lim va sport-tarbiyaviy ish
4980	13	201	1	1	Jismoniy madaniyat
4981	12	201	1	1	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)
4982	2	201	1	1	Mehnat ta'limi
4983	15	201	1	1	Pedagogika va psixologiya
4984	14	201	1	1	Tasviriy san'at va muhandislik grafikasi
4985	186	201	1	1	Matematika o`qitish metodikasi
4986	187	201	1	1	Fizika va astronomiya o`qitish metodikasi
4987	188	201	1	1	Kimyo o`qitish metodikasi
4988	189	201	1	1	Biologiya o`qitish metodikasi
4989	67	201	1	1	Geografiya o`qitish metodikasi
4990	201	201	1	1	Tarix o`qitish metodikasi
4991	1	201	1	1	Informatika o`qitish metodikasi
4992	200	228	1	1	O`zbekiston tili va adabiyoti
4993	18	228	1	1	Xorijiy til va adabiyoti: ingliz tili
4994	21	228	1	1	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi
4995	22	228	1	1	Boshlang`ich ta'lim va sport-tarbiyaviy ish
4996	23	228	1	1	Maktabgacha ta'lim
4997	13	228	1	1	Jismoniy madaniyat
4998	12	228	1	1	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)
5000	15	228	1	1	Pedagogika va psixologiya
5001	14	228	1	1	Tasviriy san'at va muhandislik grafikasi
5002	186	228	1	1	Matematika o`qitish metodikasi
5003	187	228	1	1	Fizika va astronomiya o`qitish metodikasi
5004	188	228	1	1	Kimyo o`qitish metodikasi
5005	189	228	1	1	Biologiya o`qitish metodikasi
5006	67	228	1	1	Geografiya o`qitish metodikasi
5007	201	228	1	1	Tarix o`qitish metodikasi
5008	1	228	1	1	Informatika o`qitish metodikasi
5009	18	164	1	1	Xorijiy til va adabiyoti: ingliz tili
5010	19	164	1	1	Xorijiy til va adabiyoti: nemis tili
5011	48	164	1	1	Chaqiriqqacha harbiy ta'lim
5012	21	164	1	1	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi
5013	22	164	1	1	Boshlang`ich ta'lim va sport-tarbiyaviy ish
5014	23	164	1	1	Maktabgacha ta'lim
5015	199	164	1	1	Defektologiya
5016	13	164	1	1	Jismoniy madaniyat
5017	12	164	1	1	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)
5018	2	164	1	1	Mehnat ta'limi
5019	37	164	1	1	Psixologiya (faoliyat turlari bo`yicha)
5020	200	164	1	1	O`zbekiston tili va adabiyoti
5021	17	164	1	1	Musiqa ta'limi
5022	202	164	1	1	Kasb ta'limi: kompyuter grafikasi va dizayn
5023	186	164	1	1	Matematika o`qitish metodikasi
5024	187	164	1	1	Fizika va astronomiya o`qitish metodikasi
5025	188	164	1	1	Kimyo o`qitish metodikasi
5026	189	164	1	1	Biologiya o`qitish metodikasi
5027	67	164	1	1	Geografiya o`qitish metodikasi
5028	201	164	1	1	Tarix o`qitish metodikasi
5029	1	164	1	1	Informatika o`qitish metodikasi
5030	14	164	1	1	Tasviriy san'at va muhandislik grafikasi
5031	15	164	1	1	Pedagogika va psixologiya
5032	203	164	1	1	Kasb ta'limi: dizayn
4932	6	200	1	1	Biologiya (turlari bo`yicha)
5034	18	225	1	1	Xorijiy til va adabiyoti: ingliz tili
5035	21	225	1	1	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi
5036	22	225	1	1	Boshlang`ich ta'lim va sport-tarbiyaviy ish
5037	199	225	1	1	Defektologiya
5038	13	225	1	1	Jismoniy madaniyat
5039	12	225	1	1	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)
5040	2	225	1	1	Mehnat ta'limi
5041	200	225	1	1	O`zbekiston tili va adabiyoti
5042	17	225	1	1	Musiqa ta'limi
5043	14	225	1	1	Tasviriy san'at va muhandislik grafikasi
5044	186	225	1	1	Matematika o`qitish metodikasi
5045	187	225	1	1	Fizika va astronomiya o`qitish metodikasi
5046	188	225	1	1	Kimyo o`qitish metodikasi
5047	189	225	1	1	Biologiya o`qitish metodikasi
5048	67	225	1	1	Geografiya o`qitish metodikasi
5049	201	225	1	1	Tarix o`qitish metodikasi
5050	1	225	1	1	Informatika o`qitish metodikasi
5051	180	191	1	1	Oliy hamshiralik ishi
5053	181	191	1	1	Pediatriya ishi
5054	182	191	1	1	Davolash ishi
5055	183	191	1	1	Kasb ta'limi: tibbiy pedagogik ish
5056	183	195	1	1	Kasb ta'limi: tibbiy pedagogik ish
5057	182	195	1	1	Davolash ishi
5059	180	195	1	1	Oliy hamshiralik ishi
5060	180	216	1	1	Oliy hamshiralik ishi
5062	181	216	1	1	Pediatriya ishi
5063	182	216	1	1	Davolash ishi
5064	183	216	1	1	Kasb ta'limi: tibbiy pedagogik ish
5065	180	167	1	1	Oliy hamshiralik ishi
5067	191	167	1	1	Tibbiy profilaktika ishi
5068	182	167	1	1	Davolash ishi
5069	183	167	1	1	Kasb ta'limi: tibbiy pedagogik ish
5070	49	234	1	1	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)
5071	26	234	1	1	Mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish
5072	123	234	1	1	Konchilik ishi
5073	29	234	1	1	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)
5074	126	234	1	1	Metallurgiya
5075	204	234	1	1	Kasb ta'limi: konchilik ishi
5076	180	168	1	1	Oliy hamshiralik ishi
5077	181	168	1	1	Pediatriya ishi
5078	182	168	1	1	Davolash ishi
5079	183	168	1	1	Kasb ta'limi: tibbiy pedagogik ish
5080	205	170	1	1	Kasb ta'limi: farmatsiya
5081	116	170	1	1	Biotexnologiya (tarmoqlar bo`yicha)
5082	206	170	1	1	Farmatsiya (turlari bo`yicha)
5083	207	170	1	1	Sanoat farmatsiyasi (turlari bo`yicha)
5084	66	192	1	1	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi
5085	208	192	1	1	Meva-sabzavotchilik va uzumchilik
5086	209	192	1	1	Qishloq xo`jaligida menejment
5087	210	192	1	1	Qishloq xo`jaligini mexanizatsiyalashtirish
5088	211	192	1	1	Suv xo`jaligi va melioratsiya
5089	212	192	1	1	Gidrotexnika inshootlari va nasos stansiyalaridan foydalanish
5090	213	192	1	1	Qishloq xo`jaligi ekinlari seleksiyasi va urug`chiligi
5091	214	192	1	1	O`simliklar himoyasi va karantini
5092	44	192	1	1	Kasb ta'limi: agronomiya
5094	84	192	1	1	Kasb ta'limi: qishloq xo`jaligini mexanizatsiyalashtirish
5095	32	192	1	1	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)
5096	132	192	1	1	Buxgalteriya hisobi va audit (tarmoqlar bo`yicha)
5097	215	192	1	1	Agronomiya (dehqonchilik mahsulotlari turlari bo`yicha)
5098	66	217	1	1	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi
5099	216	217	1	1	Zootexniya (turlari bo`yicha)
5100	208	217	1	1	Meva-sabzavotchilik va uzumchilik
5101	209	217	1	1	Qishloq xo`jaligida menejment
5102	210	217	1	1	Qishloq xo`jaligini mexanizatsiyalashtirish
5103	217	217	1	1	Veterinariya
5104	213	217	1	1	Qishloq xo`jaligi ekinlari seleksiyasi va urug`chiligi
5105	214	217	1	1	O`simliklar himoyasi va karantini
5106	215	217	1	1	Agronomiya (dehqonchilik mahsulotlari turlari bo`yicha)
5107	44	217	1	1	Kasb ta'limi: agronomiya
5108	218	217	1	1	Kasb ta'limi: veterinariya
5109	219	217	1	1	Kasb ta'limi: zootexniya
5110	32	217	1	1	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)
5111	132	217	1	1	Buxgalteriya hisobi va audit (tarmoqlar bo`yicha)
5112	220	217	1	1	Agrokimyo va agrotuproqshunoslik
5113	66	188	1	1	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi
5114	216	188	1	1	Zootexniya (turlari bo`yicha)
5115	221	188	1	1	O`rmonchilik va aholi yashash joylarini ko`kalamzorlashtirish
5116	222	188	1	1	Ipakchilik
5117	208	188	1	1	Meva-sabzavotchilik va uzumchilik
5118	223	188	1	1	Dorivor o`simliklarni yetishtirish texnologiyasi
5119	209	188	1	1	Qishloq xo`jaligida menejment
5120	210	188	1	1	Qishloq xo`jaligini mexanizatsiyalashtirish
5121	224	188	1	1	Qishloq xo`jaligini elektrlashtirish va avtomatlashtirish
5122	213	188	1	1	Qishloq xo`jaligi ekinlari seleksiyasi va urug`chiligi
5123	214	188	1	1	O`simliklar himoyasi va karantini
5124	44	188	1	1	Kasb ta'limi: agronomiya
5125	84	188	1	1	Kasb ta'limi: qishloq xo`jaligini mexanizatsiyalashtirish
5126	225	188	1	1	Kasb ta'limi: qishloq xo`jaligini elektrlashtirish va avtomatlashtirish
5127	185	188	1	1	Kasb ta'limi: qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi
5128	32	188	1	1	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)
5129	89	188	1	1	Marketing (tarmoqlar va sohalar bo`yicha)
5130	132	188	1	1	Buxgalteriya hisobi va audit (tarmoqlar bo`yicha)
5132	215	188	1	1	Agronomiya (dehqonchilik mahsulotlari turlari bo`yicha)
5133	122	207	1	1	Foydali qazilma konlari geologiyasi, qidiruv va razvedkasi (kon turlari bo`yicha)
5134	114	207	1	1	Neft va gaz konlarini ishga tushirish va ulardan foydalanish
5135	27	207	1	1	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)
5136	49	207	1	1	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)
5137	65	207	1	1	Oziq-ovqat texnologiyasi (mahsulotlar turlari bo`yicha)
5138	66	207	1	1	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi
5139	210	207	1	1	Qishloq xo`jaligini mexanizatsiyalashtirish
5140	212	207	1	1	Gidrotexnika inshootlari va nasos stansiyalaridan foydalanish
5141	119	207	1	1	Xizmat ko`rsatish texnikasi va texnologiyasi (xizmat ko`rsatish tarmoqlari bo`yicha)
5142	11	207	1	1	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)
5143	123	207	1	1	Konchilik ishi
5144	103	207	1	1	Geodeziya, kartografiya va kadastr (funksiyalari bo`yicha)
5145	45	207	1	1	Kasb ta'limi: iqtisodiyot
5146	226	207	1	1	Kasb ta'limi: texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish
5147	32	207	1	1	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)
5149	176	207	1	1	Moliya
5150	132	207	1	1	Buxgalteriya hisobi va audit (tarmoqlar bo`yicha)
5151	86	207	1	1	Energetika (tarmoqlar bo`yicha)
5152	76	207	1	1	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)
5153	30	207	1	1	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)
5154	24	207	1	1	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)
5155	227	171	1	1	Yer tuzish va yer kadastri
5156	228	171	1	1	Irrigatsiya tizimlarida suv energiyasidan foydalanish
5157	211	171	1	1	Suv xo`jaligi va melioratsiya
5158	229	171	1	1	Suv xo`jaligi va melioratsiya ishlarini mexanizatsiyalashtirish
5159	212	171	1	1	Gidrotexnika inshootlari va nasos stansiyalaridan foydalanish
5160	11	171	1	1	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)
5161	81	171	1	1	Hayotiy faoliyat xavfsizligi
5162	148	171	1	1	Gidrotexnika qurilishi (turlari bo`yicha)
5163	103	171	1	1	Geodeziya, kartografiya va kadastr (funksiyalari bo`yicha)
5164	24	171	1	1	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)
5165	230	171	1	1	Kasb ta'limi: yer tuzish va yer kadastri
5166	231	171	1	1	Kasb ta'limi: suv xo`jaligi va melioratsiya
5167	106	171	1	1	Gidrologiya (suv omborlari bo`yicha)
5168	32	171	1	1	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)
5169	54	171	1	1	Menejment (tarmoqlar va sohalar bo`yicha)
5170	132	171	1	1	Buxgalteriya hisobi va audit (tarmoqlar bo`yicha)
5171	76	171	1	1	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)
5173	234	173	1	1	Texnogen san'at: kino, televideniye va radio ovoz rejissorligi
5174	235	173	1	1	Kino-teleoperatorlik
5175	236	173	1	1	Xalq ijodiyoti: folklor-etnografik jamoalari rahbari
5176	237	173	1	1	Xalq ijodiyoti: vokal jamoalari rahbari
5177	238	173	1	1	Xalq ijodiyoti: cholg`u jamoalari rahbari
5178	239	173	1	1	Xalq ijodiyoti: xalq ashula va raqs ansambli rahbari
5179	240	173	1	1	Madaniyat va san'at muassasalarini tashkil etish va boshqarish
5180	241	173	1	1	rejissorlik: televideniye va radio rejissorligi
5181	242	173	1	1	rejissorlik: estrada va ommaviy tomoshalar rejissorligi
5264	54	179	1	1	Menejment (tarmoqlar va sohalar bo`yicha)
5184	245	173	1	1	Kasb ta'limi: madaniyat va san'at muassasalarini tashkil etish va boshqarish
5185	246	173	1	1	San'atshunoslik: teatrshunoslik
5186	247	173	1	1	San'atshunoslik: sahna va ekran san'ati dramaturgiyasi
5187	248	173	1	1	Aktyorlik san'ati: dramatik teatr va kino aktyorligi
5188	249	173	1	1	Aktyorlik san'ati: musiqiy teatr aktyorligi
5189	250	173	1	1	Aktyorlik san'ati: qo`g`irchoq teatri aktyorligi
5190	251	172	1	1	Cholg`u ijrochiligi: mis - damli va zarbli cholg`ular
5191	252	172	1	1	Cholg`u ijrochiligi: mizrobli xalq cholg`ulari
5192	253	172	1	1	Cholg`u ijrochiligi: kamonli O`zbekiston xalq cholg`ulari
5193	254	172	1	1	Cholg`u ijrochiligi: damli va urma xalq cholg`ulari
5194	255	172	1	1	Cholg`u ijrochiligi: an'anaviy cholg`ular
5195	256	172	1	1	Cholg`u ijrochiligi: estrada cholg`ulari
5196	257	172	1	1	Texnogen san'at (musiqiy ovoz rejissorligi)
5197	258	172	1	1	Cholg`u ijrochiligi: yog`och - damli cholg`ular
5198	259	172	1	1	Cholg`u ijrochiligi: torli cholg`ular
5200	261	172	1	1	San'atshunoslik: musiqashunoslik
5201	262	172	1	1	dirijorlik (xor dirijorligi)
5202	263	172	1	1	Vokal san'ati: akademik xonandalik
5203	264	172	1	1	Vokal san'ati: an'anaviy xonandalik
5204	265	172	1	1	Vokal san'ati: estrada xonandaligi
5205	266	172	1	1	Cholg`u ijrochiligi: fortepiano (organ)
5206	267	177	1	1	Axborotlashtirish va kutubxonashunoslik
5207	268	177	1	1	Pochta aloqasi texnologiyasi
5208	269	177	1	1	Axborot-kommunikatsiya texnologiyalari sohasida kasb ta'limi
5209	270	177	1	1	Axborot-kommunikatsiya texnologiyalari sohasida iqtisodiyot va menejment
5210	271	177	1	1	Televizion texnologiyalar ("Audiovizual texnologiyalar", "Telestudiya tizimlari va ilovalari")
5211	272	177	1	1	Telekommunikatsiya texnologiyalari ("Telekommunikatsiyalar", "Teleradioeshittirish", "Mobil tizimlar")
5212	273	177	1	1	Dasturiy injiniring
5213	274	177	1	1	Kompyuter injiniringi ("Kompyuter injiniringi", "AT-Servis", "Axborot xavfsizligi", "Multimedia texnologiyalari")
5214	275	175	1	1	Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Namangan)
5215	276	175	1	1	Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Navoiy)
5216	277	175	1	1	Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Jizzax)
5131	220	188	1	1	Agrokimyo va agrotuproqshunoslik
5217	278	175	1	1	Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Buxoro)
5218	279	175	1	1	Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Andijon)
5219	280	175	1	1	Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Qoraqalpog`iston Respublikasi)
5220	281	175	1	1	Sport faoliyati: kurash
5221	282	175	1	1	Sport faoliyati: sambo
5222	283	175	1	1	Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Samarqand)
5223	284	175	1	1	Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Sirdaryo)
5224	285	175	1	1	Sport faoliyati: badminton
5225	286	175	1	1	Sport faoliyati: sinxron suzish
5226	287	175	1	1	Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Toshkent shahri)
5227	288	175	1	1	Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Toshkent viloyati)
5228	289	175	1	1	Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Qashqadaryo)
5229	290	175	1	1	Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Xorazm)
5230	291	175	1	1	Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Farg`ona)
5231	292	175	1	1	Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Surxondaryo)
5232	293	175	1	1	Sport faoliyati: taekvondo (WTF)
5233	294	175	1	1	Sport faoliyati: belbog`li kurash
5234	295	175	1	1	Sport faoliyati: suzish
5235	296	175	1	1	Sport faoliyati: gimnastika
5236	297	175	1	1	Sport faoliyati: velosport
5237	298	175	1	1	Sport faoliyati: voleybol
5238	299	175	1	1	Sport faoliyati: boks
5239	300	175	1	1	Sport faoliyati: basketbol
5240	301	175	1	1	Psixologiya (sport psixologiyasi)
5241	302	175	1	1	Kasb ta'limi: jismoniy tarbiya va jismoniy madaniyat
5242	303	175	1	1	Sport faoliyati: yengil atletika
5243	304	175	1	1	Sport faoliyati: qo`l to`pi
5244	305	175	1	1	Sport faoliyati: erkin va yunon-rum kurashi
5245	306	175	1	1	Sport faoliyati: dzu-do
5246	307	175	1	1	Sport faoliyati: badiiy gimnastika
5247	308	175	1	1	Sport faoliyati: futbol
5248	309	175	1	1	Sport faoliyati: tennis
5249	310	175	1	1	Sport faoliyati: eshkak eshish
5250	311	175	1	1	Sport faoliyati: og`ir atletika
5251	312	175	1	1	Sport faoliyati: qilichbozlik
5252	60	179	1	1	Informatika va axborot texnologiyalari (temir yo`l transportida)
5253	74	179	1	1	Bino va inshootlar qurilishi (turlari bo`yicha)
5254	68	179	1	1	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)
5255	70	179	1	1	Transport inshootlarining ekspluatatsiyasi (transport inshootlari turlari bo`yicha)
5257	119	179	1	1	Xizmat ko`rsatish texnikasi va texnologiyasi (xizmat ko`rsatish tarmoqlari bo`yicha)
5258	73	179	1	1	Tashishni tashkil etish va transport logistikasi (transport turlari bo`yicha)
5259	24	179	1	1	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)
5260	29	179	1	1	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)
5263	32	179	1	1	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)
5297	314	222	1	1	Telekommunikatsiya texnologiyalari ("Telekommunikatsiyalar")
5299	318	222	1	1	Kompyuter injiniringi ("Kompyuter injiniringi", "AT-Servis")
5300	318	205	1	1	Kompyuter injiniringi ("Kompyuter injiniringi", "AT-Servis")
5301	273	205	1	1	Dasturiy injiniring
5302	314	205	1	1	Telekommunikatsiya texnologiyalari ("Telekommunikatsiyalar")
5303	269	205	1	1	Axborot-kommunikatsiya texnologiyalari sohasida kasb ta'limi
5304	269	227	1	1	Axborot-kommunikatsiya texnologiyalari sohasida kasb ta'limi
5305	314	227	1	1	Telekommunikatsiya texnologiyalari ("Telekommunikatsiyalar")
5306	273	227	1	1	Dasturiy injiniring
5307	318	227	1	1	Kompyuter injiniringi ("Kompyuter injiniringi", "AT-Servis")
5308	212	196	1	1	Gidrotexnika inshootlari va nasos stansiyalaridan foydalanish
5309	229	196	1	1	Suv xo`jaligi va melioratsiya ishlarini mexanizatsiyalashtirish
5310	211	196	1	1	Suv xo`jaligi va melioratsiya
5311	227	196	1	1	Yer tuzish va yer kadastri
5312	148	196	1	1	Gidrotexnika qurilishi (turlari bo`yicha)
5313	24	196	1	1	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)
5314	76	196	1	1	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)
5315	231	196	1	1	Kasb ta'limi: suv xo`jaligi va melioratsiya
5316	24	238	1	1	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)
5317	27	238	1	1	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)
5318	49	238	1	1	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)
5319	117	238	1	1	Neft va neft-gazni qayta ishlash texnologiyasi
4611	118	155	1	1	Radioelektron qurilmalar va tizimlar (tarmoqlar bo`yicha)
4612	119	155	1	1	Xizmat ko`rsatish texnikasi va texnologiyasi (xizmat ko`rsatish tarmoqlari bo`yicha)
4613	120	155	1	1	Havodagi harakatni boshqarish
4614	11	155	1	1	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)
4615	81	155	1	1	Hayotiy faoliyat xavfsizligi
4616	122	155	1	1	Foydali qazilma konlari geologiyasi, qidiruv va razvedkasi (kon turlari bo`yicha)
4617	123	155	1	1	Konchilik ishi
4618	103	155	1	1	Geodeziya, kartografiya va kadastr (funksiyalari bo`yicha)
4620	90	155	1	1	Dizayn (turlari bo`yicha)
4623	86	155	1	1	Energetika (tarmoqlar bo`yicha)
4624	76	155	1	1	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)
4625	126	155	1	1	Metallurgiya
4626	127	155	1	1	Aviasozlik va havo kemalaridan texnik foydalanish
4627	31	155	1	1	Avtomobilsozlik va traktorsozlik
4628	30	155	1	1	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)
4629	29	155	1	1	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)
4630	128	155	1	1	Elektronika va asbobsozlik (tarmoqlar bo`yicha)
4631	28	155	1	1	Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)
4632	24	155	1	1	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)
4633	123	230	1	1	Konchilik ishi
4634	29	230	1	1	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)
4635	126	230	1	1	Metallurgiya
4636	129	180	1	1	Soliqlar va soliqqa tortish
4637	130	229	1	1	Noyob va radioaktiv metallar rudalarini qazib olish, qayta ishlash texnikasi va texnologiyasi
4619	124	155	2	1	Kasb ta'limi: texnologik mashinalar va jihozlar
4621	54	155	2	1	Menejment (tarmoqlar va sohalar bo`yicha)
4622	89	155	2	1	Marketing (tarmoqlar va sohalar bo`yicha)
4638	49	229	1	1	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)
4761	56	162	2	1	Kasb ta'limi: kimyoviy texnologiya
4950	197	202	2	1	Stomatologiya
4768	7	219	1	1	Fizika
5033	16	164	2	1	Kasb ta'limi: informatika va axborot texnologiyalari
5052	197	191	2	1	Stomatologiya
5058	197	195	2	1	Stomatologiya
5061	197	216	2	1	Stomatologiya
5066	197	167	2	1	Stomatologiya
5093	45	192	2	1	Kasb ta'limi: iqtisodiyot
4999	17	228	1	1	Musiqa ta'limi
5148	89	207	2	1	Marketing (tarmoqlar va sohalar bo`yicha)
5172	233	173	2	1	rejissorlik: musiqiy teatr rejissorligi
5182	243	173	2	1	Kasb ta'limi: aktyorlik san'ati
5183	244	173	2	1	Kasb ta'limi: xalq ijodiyoti
5256	314	179	2	1	Telekommunikatsiya texnologiyalari ("Telekommunikatsiyalar")
5261	226	179	2	1	Kasb ta'limi: texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish
5262	315	179	2	1	Kasb ta'limi: transport inshootlarining ekspluatatsiyasi
5199	260	172	1	1	Bastakorlik san'ati
5265	132	179	1	1	Buxgalteriya hisobi va audit (tarmoqlar bo`yicha)
5266	76	179	1	1	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)
5267	30	179	1	1	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)
5268	193	178	1	1	Yurisprudensiya (faoliyat turlari bo`yicha)
5269	41	215	1	1	Turizm (faoliyat yo`nalishlari bo`yicha)
5270	40	215	1	1	Mehmonxona xo`jaligini tashkil etish va boshqarish
5271	39	215	1	1	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)
5272	132	215	1	1	Buxgalteriya hisobi va audit (tarmoqlar bo`yicha)
5273	133	215	1	1	Bank ishi
5274	176	215	1	1	Moliya
5275	89	215	1	1	Marketing (turizm)
5276	54	215	1	1	Menejment (turizm)
5277	32	215	1	1	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)
5278	45	215	1	1	Kasb ta'limi: iqtisodiyot
5279	178	215	1	1	Kasb ta'limi: buxgalteriya hisobi va audit
5280	211	203	1	1	Suv xo`jaligi va melioratsiya
5281	210	203	1	1	Qishloq xo`jaligini mexanizatsiyalashtirish
5282	209	203	1	1	Qishloq xo`jaligida menejment
5283	216	203	1	1	Zootexniya (turlari bo`yicha)
5284	66	203	1	1	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi
5285	214	203	1	1	O`simliklar himoyasi va karantini
5286	215	203	1	1	Agronomiya (dehqonchilik mahsulotlari turlari bo`yicha)
5287	220	203	1	1	Agrokimyo va agrotuproqshunoslik
5288	269	218	1	1	Axborot-kommunikatsiya texnologiyalari sohasida kasb ta'limi
5289	314	218	1	1	Telekommunikatsiya texnologiyalari ("Telekommunikatsiyalar")
5290	273	218	1	1	Dasturiy injiniring
5291	318	218	1	1	Kompyuter injiniringi ("Kompyuter injiniringi", "AT-Servis")
5292	318	208	1	1	Kompyuter injiniringi ("Kompyuter injiniringi", "AT-Servis")
5293	273	208	1	1	Dasturiy injiniring
5294	314	208	1	1	Telekommunikatsiya texnologiyalari ("Telekommunikatsiyalar")
5295	269	208	1	1	Axborot-kommunikatsiya texnologiyalari sohasida kasb ta'limi
5296	269	222	1	1	Axborot-kommunikatsiya texnologiyalari sohasida kasb ta'limi
\.


--
-- Name: branch_faculty_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('branch_faculty_id_seq', 5465, true);


--
-- Data for Name: branch_studylang; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY branch_studylang (id, lang) FROM stdin;
1	rus
2	o'zbek
3	turkman
4	tojik
5	qoraqalpoq
6	qozoq
7	qirg'iz
\.


--
-- Name: branch_studylang_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('branch_studylang_id_seq', 7, true);


--
-- Data for Name: college_college; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY college_college (id, name, description, address, college_type, phone, controls, email, website, region, abbreviated, parent_id) FROM stdin;
181	Vestminstr xalqaro universiteti Toshkent filiali	\N	100000, Toshkent shahri, Oxunboboyev ko`chasi, 12	2	2374654	Hamkor oliy ta'lim muassasalari	advice@wiut.uz	http://www.wiut.uz	Toshkent sh.	WIUT	\N
182	M.Lomonosov nom. Moskva davlat universiteti Toshkent filiali	\N	100006, Toshkent shahri, Amir Temur prospekti, 22	2	2322811	Hamkor oliy ta'lim muassasalari	info_msu.uz	http://www.msu.uz 	Toshkent sh.	MGU ToshF	\N
183	I.Gubkin nom. Rossiya davlat neft va gaz universiteti Toshkent filiali	\N	100125, Toshkent shahri, Do`rmon yo`li, 34	2	2627091	Hamkor oliy ta'lim muassasalari	info@gubkin.uz	http://www.gubkin.uz 	Toshkent sh.	RGU ToshF	\N
184	G.Plexanov nom. Rossiya iqtisodiyot universiteti Toshkent filiali	\N	100003, Toshkent shahri, O`zbekiston ko`chasi, 49	2	2326023	Hamkor oliy ta'lim muassasalari	info@rea.uz 	http://www.rea.uz 	Toshkent sh.	Plexanovka	\N
185	Singapur menejmentni rivojlantirish instiuti Toshkent filiali	\N	100185, Toshkent shahri, Bunyodkor ko`chasi, 185	2	2717700	Hamkor oliy ta'lim muassasalari	marketing@mdis.uz	http://www.mdis.uz/	Toshkent sh.	MDIS	\N
186	Turin politexnika universiteti (Toshkent filiali)	\N	100095, Toshkent shahri, Kichik halqa yo`li, 17	2	2467082	Hamkor oliy ta'lim muassasalari	info@polito.uz 	http://www.polito.uz/	Toshkent sh.	TPU	\N
187	Inxa universiteti Toshkent filiali	\N		2		Hamkor oliy ta'lim muassasalari			Toshkent sh.	Inkha	\N
161	Toshkent moliya instituti		700084, Toshkent shahri, X.Asomov ko`chasi 7	1	2345334	Oliy va o`rta maxsus ta'lim vazirligi	tafi_info@edu.uz	http://www.tfi.uz/	Toshkent sh.	TMI	\N
177	Toshkent axborot texnologiyalari universiteti		100084, Toshkent shahri, Amir Temur ko`chasi 108	1	2386400	Axborot texnologiyalari va kommunikatsiyalarni rivojlantirish vazirligi	tuit_info@edu.uz	http://www.tuit.uz/	Toshkent sh.	TATU	\N
188	Toshkent davlat agrar universiteti		100183, Toshkent viloyati, YAlong`och qishlog`i, 1	1	2604800	Qishloq va suv xo`jaligi vazirligi	tuag_info@edu.uz	http://agrar.uz/	Toshkent viloyati	TDAU	\N
167	Toshkent tibbiyot akademiyasi		100109, Toshkent shahri, Farobiy ko`chasi 2	1	1507825	Sog`liqni saqlash vazirligi	2tmi_info@edu.uz	http://www.tma.uz/	Toshkent sh.	TTA	\N
166	Jahon iqtisodiyoti va diplomatiya universiteti		100077, Toshkent shahri, Mustaqillik shoh ko`chasi 54	1	2676769	Tashqi ishlar vazirligi	uwed_info@edu.uz	http://www.uwed.uz/	Toshkent sh.	JIDU	\N
174	Milliy raqs va xoreografiya oliy maktabi		100000, Toshkent shahri, Asqar Muminov ko`chasi 56	1	2562436	Madaniyat va sport ishlari vazirligi	hsnd_info@edu.uz	http://mrxom.zn.uz	Toshkent sh.	MRXOM	\N
176	Milliy rassomchilik va dizayn instituti		100000, Toshkent shahri, Sodiq Azimov ko`chasi 35	1	2321810	Badiiy Akademiya	mrdi_info@edu.uz	http://mrdi.uz/	Toshkent sh.	MRDI	\N
157	O`zbekiston davlat jahon tillari universiteti		100138, Toshkent shahri, «Kichik xalqa yo`li» ko`chasi 21 a	1	2757795	Oliy va o`rta maxsus ta'lim vazirligi	usuw_info@edu.uz	http://www.uzswlu.uz/	Toshkent sh.	O`zDJTU	\N
175	O`zbekiston davlat jismoniy tarbiya instituti		100052, Toshkent shahri, Oqqo`rg`on ko`chasi 2	1	2689298	Madaniyat va sport ishlari vazirligi	usif_info@edu.uz	http://uz-djti.uz/	Toshkent sh.	O`zDJTI	\N
172	O`zbekiston davlat konservatoriyasi		100027, Toshkent shahri, B. Zokirov ko`chasi 1	1	2394653	Madaniyat va sport ishlari vazirligi	skuz_info@edu.uz	http://www.konservatoriya.uz/	Toshkent sh.	O`zDK	\N
173	O`zbekiston davlat san'at va madaniyat instituti		100021, Toshkent shahri, Mironshox ko`chasi 123	1	2815026	Madaniyat va sport ishlari vazirligi	tart_info@edu.uz	http://www.dsmi.uz/	Toshkent sh.	O`zDSMI	\N
154	O`zbekiston milliy universiteti		100174, Toshkent shahri, Universitet ko`chasi, 1 uy	1	2271224	Oliy va o`rta maxsus ta'lim vazirligi	nuu_info@edu.uz	http://www.nuu.uz	Toshkent sh.	O`zMU	\N
180	Soliq akademiyasi		100173, Toshkent shahri, Kichik xalqa yo`li 3	1	2740300	Soliq qo`mitasi	taxak_info@edu.uz	http://akademiya.uz/	Toshkent sh.	SA	\N
163	Toshkent avtomobil-yo`llari instituti		100060, Toshkent shahri, Movoraunnahr ko`chasi 20	1	2321439	Oliy va o`rta maxsus ta'lim vazirligi	tadi_info@edu.uz	http://www.tayi.uz/	Toshkent sh.	TAYI	\N
156	Toshkent davlat iqtisodiyot universiteti		100063, Toshkent shahri, O`zbekiston shox ko`chasi 49	1	2326421	Oliy va o`rta maxsus ta'lim vazirligi	tseu_info@edu.uz	http://www.tdiu.uz/	Toshkent sh.	TDIU	\N
164	Toshkent davlat pedagogika universiteti		100100, Toshkent shahri, YUsufXos Xojib ko`chasi 103	1	2549202	Oliy va o`rta maxsus ta'lim vazirligi	tgpu_info@edu.uz	http://tdpu.uz/	Toshkent sh.	TDPU	\N
158	Toshkent davlat sharqshunoslik instituti		100047, Toshkent shahri, Shaxrisabz ko`chasi 25	1	2333424	Oliy va o`rta maxsus ta'lim vazirligi	tsie_info@edu.uz	http://tashgiv.uz/	Toshkent sh.	TDSHI	\N
169	Toshkent davlat stomatologiya instituti			1		Sog`liqni saqlash vazirligi			Toshkent sh.		\N
155	Toshkent davlat texnika universiteti		100174, Toshkent shahri, Universitet ko`chasi 2 uy	1	2464600	Oliy va o`rta maxsus ta'lim vazirligi	tstu_info@edu.uz	http://tdtu.uz/	Toshkent sh.	TDTU	\N
178	Toshkent davlat yuridik universiteti		100001, Toshkent shahri, Sayilgox ko`chasi 35 uy	1	2334109	Adliya vazirligi	tsli_info@edu.uz	http://www.tsil.uz/	Toshkent sh.	TDYUI	\N
170	Toshkent farmatsevtika instituti		100015, Toshkent shahri, Oybek ko`chasi 45	1	2563738	Sog`liqni saqlash vazirligi	tfri_info@edu.uz	http://www.pharmi.uz/	Toshkent sh.	ToshFarI	\N
171	Toshkent irrigatsiya va melioratsiya instituti		100000, Toshkent shahri, Qori-Niyoziy ko`chasi 39	1	2374668	Qishloq va suv xo`jaligi vazirligi	tiag_info@edu.uz	http://tiim.uz/	Toshkent sh.	TIMI	\N
165	Toshkent islom universiteti		100011, Toshkent shahri, Abdulla Qodiriy ko`chasi 11	1	2440094	O`zbekiston Respublikasi Vazirlar Mahkamasi	tiu_info@edu.uz	http://tiu.uz/	Toshkent sh.	TIU	\N
162	Toshkent kimyo-texnologiya instituti		100011, Toshkent shahri, Navoiy ko`chasi 32	1	2447916	Oliy va o`rta maxsus ta'lim vazirligi	txti_info@edu.uz	http://tkti.uz/	Toshkent sh.	TKTI	\N
168	Toshkent pediatriya tibbiyot instituti		100140, Toshkent shahri, Jahon Obidova ko`chasi 223	1	2622871	Sog`liqni saqlash vazirligi	tpmi_info@edu.uz	http://tashpmi.uz/	Toshkent sh.	TPTI	\N
179	Toshkent temir yo`l transporti muhandislari instituti		100167, Toshkent shahri, Odilxo`jayev ko`chasi 1	1	2990000	O`zbekiston Temir Yo`llari DAK	tiet_info@edu.uz	http://www.tashiit.uz/	Toshkent sh.	TTYMI	\N
201	Nukus davlat pedagogika instituti		742005, Nukus shahri, A. Do`stnazarov ko`chasi 104 uy	1	2226510	Xalq ta'limi vazirligi	nkspi_info@edu.uz	http://www.ndpi.uz/	Qoraqalpog`iston Respublikasi	NukDPI	\N
195	Buxoro davlat tibbiyot instituti		200119, Buxoro shahri, Navoiy ko`chasi 1 uy	1	2230050	Sog`liqni saqlash vazirligi	bumi_info@edu.uz	http://avicenna-med.uz	Buxoro	BuxDTI	\N
200	Qoraqalpoq davlat universiteti		742012, Nukus shahri, CH.Abdirov ko`chasi 1	1	2235925	Oliy va o`rta maxsus ta'lim vazirligi	karsu_info@edu.uz	http://www.karsu.uz/	Qoraqalpog`iston Respublikasi	QQDU	\N
203	Toshkent davlat agrar universitetining Nukus filiali		230109, Nukus shahri, Abdaxmetov ko`chasi, 1	2	2292509	Qishloq va suv xo`jaligi vazirligi	ftga_info@edu.uz	http://www.agrar.uz/nukus-branch/	Qoraqalpog`iston Respublikasi	TDAU NukF	188
218	Toshkent axborot texnologiyalari universitetining Samarqand filiali		703000, Samarqand shahri, Shoxrux Mirzo ko`chasi, 47a	2	2322929	Axborot texnologiyalari va kommunikatsiyalarni rivojlantirish vazirligi	itfs_info@edu.uz	http://www.samtuit.uz/	Samarqand	TATU SamF	177
222	Toshkent axborot texnologiyalari universitetining Urganch filiali		220100, Urganch shahri, Anna German ko`chasi, 18	2	2241098	Axborot texnologiyalari va kommunikatsiyalarni rivojlantirish vazirligi	itfu_info@edu.uz	http://www.urgench-tuit.uz/	Xorazm	TATU UrgF	177
196	Toshkent irrigatsiya va melioratsiya instituti Buxoro filiali		105009, Buxoro shahri, Gazli ko`chasi, 32	2	2251908	Qishloq va suv xo`jaligi vazirligi	tiimfb_info@edu.uz	http://www.tiimbf.uz/	Buxoro	TIMI BuxF	171
221	Toshkent tibbiyot akademiyasi Urganch filiali		220100, Urganch shahri Al-Xorazmiy ko`chasi,25	2	2261544	Sog`liqni saqlash vazirligi	futma_info@edu.uz	http://urgfiltma.uz/	Xorazm	TTA UrgF	167
220	Urganch davlat universiteti		740010, Urganch shahri, X. Olimjon ko`chasi 14	1	2266166	Oliy va o`rta maxsus ta'lim vazirligi	ursu_info@edu.uz	http://www.urdu.uz/	Xorazm	UrDU	\N
191	Andijon davlat tibbiyot instituti		710002, Andijon shahri, YU. Otabekov ko`chasi 1 uy	1	2221941	Sog`liqni saqlash vazirligi	agmi_info@edu.uz	http://www.adti.uz/	Andijon	AndDTI	\N
189	Andijon davlat universiteti		700129, Andijon shahri, Universitet ko`chasi 129	1	2221076	Oliy va o`rta maxsus ta'lim vazirligi	agsu_info@edu.uz	http://www.adu.uz	Andijon	AndDU	\N
190	Andijon mashinasozlik instituti		710019, Andijon shahri, Bobur shox ko`chasi 56	1	2221630	Oliy va o`rta maxsus ta'lim vazirligi	aiei_info@edu.uz	http://www.andmii.uz/	Andijon	AndDMI	\N
192	Andijon qishloq xo`jalik instituti		711520, Andijon tuman, Kuyganyor shaxarchasi	1	3731363	Qishloq va suv xo`jaligi vazirligi	agai_info@edu.uz	http://www.andqxi.uz/	Andijon	AndQXI	\N
193	Buxoro davlat universiteti		705018, Buxoro shahri, M. Iqbol ko`chasi 11 uy	1	2232314	Oliy va o`rta maxsus ta'lim vazirligi	busu_info@edu.uz	http://buxdu.uz/	Buxoro	BuxDU	\N
197	Guliston davlat universiteti		707000, Guliston shahri, 4 mavze (mikrorayon)	1	2254042	Oliy va o`rta maxsus ta'lim vazirligi	glsu_info@edu.uz	http://www.guldu.uz/	Sirdaryo	GulDU	\N
199	Jizzax davlat pedagogika instituti		708000, Jizzax shahri, Sh. Rashidov shox ko`chasi 4	1	2261357	Xalq ta'limi vazirligi	dgspi_info@edu.uz	http://www.jspi.uz/	Jizzax	JizDPI	\N
198	Jizzax politexnika instituti		130100, Jizzax shahri, Xalqlar do`stligi shox ko`chasi 4	1	2264605	Oliy va o`rta maxsus ta'lim vazirligi	dgpi_info@edu.uz	http://djizpi.uz/	Jizzax	JizPI	\N
209	Namangan davlat universiteti		716019, Namangan shahri, Uychi ko`chasi 316	1	2265501	Oliy va o`rta maxsus ta'lim vazirligi	nvsu_info@edu.uz	http://namdu.uz/	Namangan	NamDU	\N
211	Namangan muhandislik-pedagogika instituti		716003, Namangan shahri, Do`stlik ko`chasi 12	1	2341523	Oliy va o`rta maxsus ta'lim vazirligi	nipi_info@edu.uz	http://nammpi.uz/	Namangan	NamMPI	\N
210	Namangan muhandislik-texnologik instituti		716030, Namangan viloyati, Namangan sh. Kosonsoy ko`chasi 7	1	2325327	Oliy va o`rta maxsus ta'lim vazirligi	niei_info@edu.uz	http://www.nammti.uz/	Namangan	NamMTI	\N
204	O`zbekiston davlat san'at va madaniyat instituti Nukus filiali			2	2241410	Madaniyat va sport ishlari vazirligi	fart_info@edu.uz		Qoraqalpog`iston Respublikasi	O`zDSMI NukF	173
206	Qarshi davlat universiteti		130003, Qarshi shahri, Ko`chabog` ko`chasi 17	1	2253413	Oliy va o`rta maxsus ta'lim vazirligi	kasu_info@edu.uz	http://www.kasu.uz/	Qashqadaryo	QarDU	\N
207	Qarshi muhandislik - iqtisodiyot instituti		180100, Qarshi shahri, Mustaqillik ko`chasi, 225	1	2210923	Oliy va o`rta maxsus ta'lim vazirligi	kiei_info@edu.uz	http://www.qmii.uz/	Qashqadaryo	QarMII	\N
213	Samarqand davlat arxitektura-qurilish instituti		703047, Samarqand shahri, Lolazor ko`chasi 70	1	2371477	Oliy va o`rta maxsus ta'lim vazirligi	sgasi_info@edu.uz	http://www.samgasi.uz/	Samarqand	SamDAQI	\N
214	Samarqand davlat chet tillar instituti		703004, Samarqand shahri, Bo`stonsaroy ko`chasi 93	1	2337843	Oliy va o`rta maxsus ta'lim vazirligi	ssifl_info@edu.uz	http://www.samdchti.uz/	Samarqand	SamDchTI	\N
216	Samarqand davlat tibbiyot instituti		703000, Samarqand shahri, A. Temur 18	1	2330766	Sog`liqni saqlash vazirligi	sami_info@edu.uz	http://www.sammi.uz/	Samarqand	SamDTI	\N
212	Samarqand davlat universiteti		703001, Samarqand shahri, Univesitet xiyoboni 15	1	2351938	Oliy va o`rta maxsus ta'lim vazirligi	sasu_info@edu.uz	http://www.samdu.uz/	Samarqand	SamDU	\N
215	Samarqand iqtisodiyot va servis instituti		703000, Samarqand shahri, A.Temur ko`chasi 9	1	2333872	Oliy va o`rta maxsus ta'lim vazirligi	sies_info@edu.uz	http://www.sies.uz/	Samarqand	SamISI	\N
217	Samarqand qishloq xo`jalik instituti		703003, Samarqand shahri, M.Ulug`bek ko`chasi 77	1	2343320	Qishloq va suv xo`jaligi vazirligi	saai_info@edu.uz	http://samqxi.uz/	Samarqand	SamQXI	\N
219	Termiz davlat universiteti		732011, Termiz shahri,F.Xo`jayev ko`chasi 43	1	2228716	Oliy va o`rta maxsus ta'lim vazirligi	trsu_info@edu.uz	http://terdu.uz/	Surxondaryo	TerDU	\N
208	Toshkent axborot texnologiyalari universitetining Qarshi filiali		180101, Qarshi shahri, Beshkent yo`li ko`chasi, 3	2	2280232	Axborot texnologiyalari va kommunikatsiyalarni rivojlantirish vazirligi	itfk_info@edu.uz	http://tuitkf.uz/	Qashqadaryo	TATU QarF	177
202	Toshkent pediatriya tibbiyot institutining Nukus filiali		233113, Nukus shahri, Kurbanov ko`chasi, 223	2	2236600	Sog`liqni saqlash vazirligi	fntpmi_info@edu.uz	http://medinstitut.kr.uz	Qoraqalpog`iston Respublikasi	TPTI NukF	168
240	Toshkent davlat stomatologiya instituti Samarqand filiali			2					Samarqand		169
239	Toshkent davlat stomatologiya instituti Buxoro filiali			2					Buxoro		169
241	Toshkent davlat stomatologiya instituti Andijon filiali			2					Andijon		169
242	Toshkent davlat stomatologiya instituti Nukus filiali			2					Qoraqalpog`iston Respublikasi		169
238	Toshkent kimyo-texnologiya instituti Qo`ng`irot bo`limi			2							162
234	Navoiy davlat konchilik institutining Olmaliq fakulteti			2							229
230	Navoiy davlat konchilik institutining Zarafshon fakulteti			2					Navoiy		229
194	Buxoro muhandislik-texnologiya instituti		705017, Buxoro shahri, Q.Murtazoyev ko`chasi 15	1	2236197	Oliy va o`rta maxsus ta'lim vazirligi	btip_info@edu.uz	http://www.bmti.uz/	Buxoro	BuxMTI	\N
223	Farg`ona davlat universiteti		712007, Farg`ona shahri, B. Usmonxo`jayev ko`chasi 19	1	2242871	Oliy va o`rta maxsus ta'lim vazirligi	frsu_info@edu.uz	http://www.fdu.uz/	Farg`ona	FarDU	\N
224	Farg`ona politexnika instituti		712107, Farg`ona shahri, Farg`ona ko`chasi 86	1	2221333	Oliy va o`rta maxsus ta'lim vazirligi	ferpi_info@edu.uz	http://www.ferpi.uz/	Farg`ona	FarPI	\N
229	Navoiy davlat konchilik instituti		210100, Navoiy shahri, Janubiy ko`chasi, 27a	1	2238230	Navoiy kon va metallurgiya kombinati	nvmi_info@edu.uz	http://nggi.uz/	Navoiy	NavDKI	\N
228	Navoiy davlat pedagogika instituti		706800, Navoiy shahri, Ibn Sino ko`chasi 45	1	706800	Xalq ta'limi vazirligi	nvsi_info@edu.uz	http://nspi.uz/	Navoiy	NavDPI	\N
225	Qo`qon davlat pedagogika instituti		713000, Qo`qon shahri, Istambul ko`chasi 23	1	5523838	Xalq ta'limi vazirligi	kspi_info@edu.uz	www.kspi.uz	Farg`ona	Qo`qonDPI	\N
159	Toshkent arxitektura-qurilish instituti		100011, Toshkent shahri, Navoiy ko`chasi 13	1	2411084	Oliy va o`rta maxsus ta'lim vazirligi	tasi_info@edu.uz	http://taqi.uz/	Toshkent sh.	TAQI	\N
227	Toshkent axborot texnologiyalari universitetining Farg`ona filiali		712018, Farg`ona shahri, Mustaqillik ko`chasi, 185	2	2268233	Axborot texnologiyalari va kommunikatsiyalarni rivojlantirish vazirligi	itff_info@edu.uz	www.tatuff.uz	Farg`ona	TATU FarF	177
205	Toshkent axborot texnologiyalari universitetining Nukus filiali		230100, Nukus shahri, A.Dosnazarov ko`chasi, 74	2	2224910	Axborot texnologiyalari va kommunikatsiyalarni rivojlantirish vazirligi	itfn_info@edu.uz	http://tatunf.uz/	Qoraqalpog`iston Respublikasi	TATU NukF	177
226	Toshkent tibbiyot akademiyasi Farg`ona filiali		712107, Farg`ona shahri, YAngi Turon ko`chasi, 2	2	2235103	Sog`liqni saqlash vazirligi	fftma_info@edu.uz	www.ttaff.uz	Farg`ona	TTA FarF	167
160	Toshkent to`qimachilik va yengil sanoat instituti		100100, Toshkent shahri, Shohjahon ko`chasi-5	1	2530606	Oliy va o`rta maxsus ta'lim vazirligi	titlp_info@edu.uz	http://www.titli.uz/	Toshkent sh.	TTESI	\N
\.


--
-- Name: college_college_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('college_college_id_seq', 242, true);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2016-02-28 00:27:43.141816+00	1	content	1	Added.	3	1
2	2016-02-28 00:28:22.15194+00	2	contentt	1	Added.	4	1
3	2016-02-28 00:29:22.068104+00	2	contentt	2	Changed is_staff and groups.	4	1
4	2016-02-28 00:29:47.528219+00	1	College object	1	Added.	7	2
5	2016-03-10 15:56:18.514425+00	77	College object	3		7	1
6	2016-03-10 15:56:18.879501+00	76	College object	3		7	1
7	2016-03-10 15:56:18.887728+00	75	College object	3		7	1
8	2016-03-10 15:56:18.896343+00	74	College object	3		7	1
9	2016-03-10 15:56:18.904492+00	73	College object	3		7	1
10	2016-03-10 15:56:18.912815+00	72	College object	3		7	1
11	2016-03-10 15:56:18.921153+00	71	College object	3		7	1
12	2016-03-10 15:56:18.979651+00	70	College object	3		7	1
13	2016-03-10 15:56:19.033827+00	69	College object	3		7	1
14	2016-03-10 15:56:19.071415+00	68	College object	3		7	1
15	2016-03-10 15:56:19.079708+00	67	College object	3		7	1
16	2016-03-10 15:56:19.087837+00	66	College object	3		7	1
17	2016-03-10 15:56:19.096098+00	65	College object	3		7	1
18	2016-03-10 15:56:19.104528+00	64	College object	3		7	1
19	2016-03-10 15:56:19.112818+00	63	College object	3		7	1
20	2016-03-10 15:56:19.121104+00	62	College object	3		7	1
21	2016-03-10 15:56:19.129426+00	61	College object	3		7	1
22	2016-03-10 15:56:19.137856+00	60	College object	3		7	1
23	2016-03-10 15:56:19.146083+00	59	College object	3		7	1
24	2016-03-10 15:56:19.154458+00	58	College object	3		7	1
25	2016-03-10 15:56:19.162775+00	57	College object	3		7	1
26	2016-03-10 15:56:19.171208+00	56	College object	3		7	1
27	2016-03-10 15:56:19.179467+00	55	College object	3		7	1
28	2016-03-10 15:56:19.187781+00	54	College object	3		7	1
29	2016-03-10 15:56:19.196255+00	53	College object	3		7	1
30	2016-03-10 15:56:19.204554+00	52	College object	3		7	1
31	2016-03-10 15:56:19.212945+00	51	College object	3		7	1
32	2016-03-10 15:56:19.221178+00	50	College object	3		7	1
33	2016-03-10 15:56:19.229631+00	49	College object	3		7	1
34	2016-03-10 15:56:19.237805+00	48	College object	3		7	1
35	2016-03-10 15:56:19.246109+00	47	College object	3		7	1
36	2016-03-10 15:56:19.254453+00	46	College object	3		7	1
37	2016-03-10 15:56:19.262837+00	45	College object	3		7	1
38	2016-03-10 15:56:19.271104+00	44	College object	3		7	1
39	2016-03-10 15:56:19.279488+00	43	College object	3		7	1
40	2016-03-10 15:56:19.288008+00	42	College object	3		7	1
41	2016-03-10 15:56:19.296174+00	41	College object	3		7	1
42	2016-03-10 15:56:19.304495+00	40	College object	3		7	1
43	2016-03-10 15:56:19.312824+00	39	College object	3		7	1
44	2016-03-10 15:56:19.321291+00	38	College object	3		7	1
45	2016-03-10 15:56:19.329508+00	37	College object	3		7	1
46	2016-03-10 15:56:19.337845+00	36	College object	3		7	1
47	2016-03-10 15:56:19.346286+00	35	College object	3		7	1
48	2016-03-10 15:56:19.354613+00	34	College object	3		7	1
49	2016-03-10 15:56:19.362838+00	33	College object	3		7	1
50	2016-03-10 15:56:19.371164+00	32	College object	3		7	1
51	2016-03-10 15:56:19.379623+00	31	College object	3		7	1
52	2016-03-10 15:56:19.387949+00	30	College object	3		7	1
53	2016-03-10 15:56:19.396272+00	29	College object	3		7	1
54	2016-03-10 15:56:19.404565+00	28	College object	3		7	1
55	2016-03-10 15:56:19.412934+00	27	College object	3		7	1
56	2016-03-10 15:56:19.421323+00	26	College object	3		7	1
57	2016-03-10 15:56:19.429592+00	25	College object	3		7	1
58	2016-03-10 15:56:19.438004+00	24	College object	3		7	1
59	2016-03-10 15:56:19.446245+00	23	College object	3		7	1
60	2016-03-10 15:56:19.454677+00	22	College object	3		7	1
61	2016-03-10 15:56:19.463023+00	21	College object	3		7	1
62	2016-03-10 15:56:19.471323+00	20	College object	3		7	1
63	2016-03-10 15:56:19.479632+00	19	College object	3		7	1
64	2016-03-10 15:56:19.487856+00	18	College object	3		7	1
65	2016-03-10 15:56:19.496231+00	17	College object	3		7	1
66	2016-03-10 15:56:19.50474+00	16	College object	3		7	1
67	2016-03-10 15:56:19.512878+00	15	College object	3		7	1
68	2016-03-10 15:56:19.521206+00	14	College object	3		7	1
69	2016-03-10 15:56:19.529533+00	13	College object	3		7	1
70	2016-03-10 15:56:19.538032+00	12	College object	3		7	1
71	2016-03-10 15:56:19.546226+00	11	College object	3		7	1
72	2016-03-10 15:56:19.554621+00	10	College object	3		7	1
73	2016-03-10 15:56:19.563069+00	9	College object	3		7	1
74	2016-03-10 15:56:19.571343+00	8	College object	3		7	1
75	2016-03-10 15:56:19.579624+00	7	College object	3		7	1
76	2016-03-10 15:56:19.587939+00	6	College object	3		7	1
77	2016-03-10 15:56:19.59636+00	5	College object	3		7	1
78	2016-03-10 15:56:19.604606+00	4	College object	3		7	1
79	2016-03-10 15:56:19.612957+00	3	College object	3		7	1
80	2016-03-10 15:56:19.621293+00	2	College object	3		7	1
81	2016-03-10 15:56:19.629905+00	1	College object	3		7	1
82	2016-03-10 17:07:52.863521+00	319	 Neft va neft-gazni qayta ishlash texnologiyasi	3		9	1
83	2016-03-10 17:07:52.876562+00	318	 Kompyuter injiniringi ("Kompyuter injiniringi", "AT-Servis")\n	3		9	1
84	2016-03-10 17:07:52.885025+00	317	 Menejment (turizm) \n	3		9	1
85	2016-03-10 17:07:52.893219+00	316	 Marketing (turizm) \n	3		9	1
86	2016-03-10 17:07:52.901532+00	315	 Kasb ta'limi: transport inshootlarining ekspluatatsiyasi\n	3		9	1
87	2016-03-10 17:07:52.909989+00	314	 Telekommunikatsiya texnologiyalari ("Telekommunikatsiyalar")\n	3		9	1
88	2016-03-10 17:07:52.918223+00	313	 Informatika va axborot texnologiyalari (temir yo`l transportida)\n	3		9	1
89	2016-03-10 17:07:52.926598+00	312	 Sport faoliyati: qilichbozlik\n	3		9	1
90	2016-03-10 17:07:52.935064+00	311	 Sport faoliyati: og`ir atletika\n	3		9	1
91	2016-03-10 17:07:52.943273+00	310	 Sport faoliyati: eshkak eshish\n	3		9	1
92	2016-03-10 17:07:52.951588+00	309	 Sport faoliyati: tennis \n	3		9	1
93	2016-03-10 17:07:52.959906+00	308	 Sport faoliyati: futbol \n	3		9	1
94	2016-03-10 17:07:52.968372+00	307	 Sport faoliyati: badiiy gimnastika\n	3		9	1
95	2016-03-10 17:07:52.976581+00	306	 Sport faoliyati: dzu-do\n	3		9	1
96	2016-03-10 17:07:52.984909+00	305	 Sport faoliyati: erkin va yunon-rum kurashi\n	3		9	1
97	2016-03-10 17:07:52.993255+00	304	 Sport faoliyati: qo`l to`pi\n	3		9	1
98	2016-03-10 17:07:53.001677+00	303	 Sport faoliyati: yengil atletika\n	3		9	1
99	2016-03-10 17:07:53.009905+00	302	 Kasb ta'limi: jismoniy tarbiya va jismoniy madaniyat\n	3		9	1
100	2016-03-10 17:07:53.018235+00	301	 Psixologiya (sport psixologiyasi)\n	3		9	1
101	2016-03-10 17:07:53.026538+00	300	 Sport faoliyati: basketbol \n	3		9	1
102	2016-03-10 17:07:53.034989+00	299	 Sport faoliyati: boks \n	3		9	1
103	2016-03-10 17:07:53.043223+00	298	 Sport faoliyati: voleybol \n	3		9	1
104	2016-03-10 17:07:53.051561+00	297	 Sport faoliyati: velosport \n	3		9	1
105	2016-03-10 17:07:53.060028+00	296	 Sport faoliyati: gimnastika \n	3		9	1
106	2016-03-10 17:07:53.068202+00	295	 Sport faoliyati: suzish \n	3		9	1
107	2016-03-10 17:07:53.076564+00	294	 Sport faoliyati: belbog`li kurash\n	3		9	1
108	2016-03-10 17:07:53.084994+00	293	 Sport faoliyati: taekvondo (WTF)\n	3		9	1
109	2016-03-10 17:07:53.093255+00	292	 Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Surxondaryo)\n	3		9	1
110	2016-03-10 17:07:53.101566+00	291	 Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Farg`ona)\n	3		9	1
111	2016-03-10 17:07:53.109883+00	290	 Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Xorazm)\n	3		9	1
112	2016-03-10 17:07:53.118448+00	289	 Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Qashqadaryo)\n	3		9	1
113	2016-03-10 17:07:53.126558+00	288	 Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Toshkent viloyati)\n	3		9	1
114	2016-03-10 17:07:53.134913+00	287	 Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Toshkent shahri)\n	3		9	1
115	2016-03-10 17:07:53.143194+00	286	 Sport faoliyati: sinxron suzish\n	3		9	1
116	2016-03-10 17:07:53.151634+00	285	 Sport faoliyati: badminton\n	3		9	1
117	2016-03-10 17:07:53.159886+00	284	 Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Sirdaryo)\n	3		9	1
118	2016-03-10 17:07:53.168212+00	283	 Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Samarqand)\n	3		9	1
119	2016-03-10 17:07:53.176989+00	282	 Sport faoliyati: sambo \n	3		9	1
120	2016-03-10 17:07:53.185012+00	281	 Sport faoliyati: kurash \n	3		9	1
121	2016-03-10 17:07:53.193309+00	280	 Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Qoraqalpog`iston Respublikasi)\n	3		9	1
122	2016-03-10 17:07:53.201587+00	279	 Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Andijon)\n	3		9	1
123	2016-03-10 17:07:53.209911+00	278	 Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Buxoro)\n	3		9	1
124	2016-03-10 17:07:53.218358+00	277	 Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Jizzax)\n	3		9	1
125	2016-03-10 17:07:53.226567+00	276	 Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Navoiy)\n	3		9	1
126	2016-03-10 17:07:53.234937+00	275	 Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Namangan)\n	3		9	1
127	2016-03-10 17:07:53.243373+00	274	 Kompyuter injiniringi ("Kompyuter injiniringi", "AT-Servis", "Axborot xavfsizligi", "Multimedia texnologiyalari")\n	3		9	1
128	2016-03-10 17:07:53.251576+00	273	 Dasturiy injiniring\n	3		9	1
129	2016-03-10 17:07:53.2599+00	272	 Telekommunikatsiya texnologiyalari ("Telekommunikatsiyalar", "Teleradioeshittirish", "Mobil tizimlar")\n	3		9	1
130	2016-03-10 17:07:53.268421+00	271	 Televizion texnologiyalar ("Audiovizual texnologiyalar", "Telestudiya tizimlari va ilovalari")\n	3		9	1
131	2016-03-10 17:07:53.276626+00	270	 Axborot-kommunikatsiya texnologiyalari sohasida iqtisodiyot va menejment\n	3		9	1
132	2016-03-10 17:07:53.285064+00	269	 Axborot-kommunikatsiya texnologiyalari sohasida kasb ta'limi\n	3		9	1
133	2016-03-10 17:07:53.293301+00	268	 Pochta aloqasi texnologiyasi\n	3		9	1
134	2016-03-10 17:07:53.301823+00	267	 Axborotlashtirish va kutubxonashunoslik\n	3		9	1
135	2016-03-10 17:07:53.30999+00	266	 Cholg`u ijrochiligi: fortepiano (organ)\n	3		9	1
136	2016-03-10 17:07:53.318301+00	265	 Vokal san'ati: estrada xonandaligi\n	3		9	1
137	2016-03-10 17:07:53.326613+00	264	 Vokal san'ati: an'anaviy xonandalik\n	3		9	1
138	2016-03-10 17:07:53.335134+00	263	 Vokal san'ati: akademik xonandalik \n	3		9	1
139	2016-03-10 17:07:53.343289+00	262	 dirijorlik (xor dirijorligi)\n	3		9	1
140	2016-03-10 17:07:53.351614+00	261	 San'atshunoslik: musiqashunoslik\n	3		9	1
141	2016-03-10 17:07:53.359969+00	260	 Bastakorlik san'ati\n	3		9	1
142	2016-03-10 17:07:53.368301+00	259	 Cholg`u ijrochiligi: torli cholg`ular\n	3		9	1
143	2016-03-10 17:07:53.376659+00	258	 Cholg`u ijrochiligi: yog`och - damli cholg`ular\n	3		9	1
144	2016-03-10 17:07:53.384913+00	257	 Texnogen san'at (musiqiy ovoz rejissorligi)\n	3		9	1
145	2016-03-10 17:07:53.393322+00	256	 Cholg`u ijrochiligi: estrada cholg`ulari\n	3		9	1
146	2016-03-10 17:07:53.401681+00	255	 Cholg`u ijrochiligi: an'anaviy cholg`ular\n	3		9	1
147	2016-03-10 17:07:53.409925+00	254	 Cholg`u ijrochiligi: damli va urma xalq cholg`ulari\n	3		9	1
148	2016-03-10 17:07:53.418267+00	253	 Cholg`u ijrochiligi: kamonli o`zbek xalq cholg`ulari\n	3		9	1
149	2016-03-10 17:07:53.426763+00	252	 Cholg`u ijrochiligi: mizrobli xalq cholg`ulari\n	3		9	1
150	2016-03-10 17:07:53.434973+00	251	 Cholg`u ijrochiligi: mis - damli va zarbli cholg`ular\n	3		9	1
151	2016-03-10 17:07:53.443302+00	250	 Aktyorlik san'ati: qo`g`irchoq teatri aktyorligi \n	3		9	1
152	2016-03-10 17:07:53.451627+00	249	 Aktyorlik san'ati: musiqiy teatr aktyorligi \n	3		9	1
153	2016-03-10 17:07:53.4601+00	248	 Aktyorlik san'ati: dramatik teatr va kino aktyorligi \n	3		9	1
154	2016-03-10 17:07:53.468279+00	247	 San'atshunoslik: sahna va ekran san'ati dramaturgiyasi\n	3		9	1
155	2016-03-10 17:07:53.476664+00	246	 San'atshunoslik: teatrshunoslik\n	3		9	1
156	2016-03-10 17:07:53.485091+00	245	 Kasb ta'limi: madaniyat va san'at muassasalarini tashkil etish va boshqarish\n	3		9	1
157	2016-03-10 17:07:53.493359+00	244	 Kasb ta'limi: xalq ijodiyoti\n	3		9	1
158	2016-03-10 17:07:53.501602+00	243	 Kasb ta'limi: aktyorlik san'ati\n	3		9	1
159	2016-03-10 17:07:53.509928+00	242	 rejissorlik: estrada va ommaviy tomoshalar rejissorligi\n	3		9	1
160	2016-03-10 17:07:53.518468+00	241	 rejissorlik: televideniye va radio rejissorligi\n	3		9	1
161	2016-03-10 17:07:53.526614+00	240	 Madaniyat va san'at muassasalarini tashkil etish va boshqarish\n	3		9	1
162	2016-03-10 17:07:53.534929+00	239	 Xalq ijodiyoti: xalq ashula va raqs ansambli rahbari\n	3		9	1
163	2016-03-10 17:07:53.543268+00	238	 Xalq ijodiyoti: cholg`u jamoalari rahbari\n	3		9	1
164	2016-03-10 17:07:53.55178+00	237	 Xalq ijodiyoti: vokal jamoalari rahbari\n	3		9	1
165	2016-03-10 17:07:53.559972+00	236	 Xalq ijodiyoti: folklor-etnografik jamoalari rahbari\n	3		9	1
166	2016-03-10 17:07:53.568334+00	235	 Kino-teleoperatorlik\n	3		9	1
167	2016-03-10 17:07:53.576747+00	234	 Texnogen san'at: kino, televideniye va radio ovoz rejissorligi \n	3		9	1
168	2016-03-10 17:07:53.584984+00	233	 rejissorlik: musiqiy teatr rejissorligi\n	3		9	1
169	2016-03-10 17:07:53.593276+00	232	 Gidrologiya (suv omborlari bo`yicha)\n	3		9	1
170	2016-03-10 17:07:53.601595+00	231	 Kasb ta'limi: suv xo`jaligi va melioratsiya\n	3		9	1
171	2016-03-10 17:07:53.609932+00	230	 Kasb ta'limi: yer tuzish va yer kadastri\n	3		9	1
172	2016-03-10 17:07:53.618407+00	229	 Suv xo`jaligi va melioratsiya ishlarini mexanizatsiyalashtirish\n	3		9	1
173	2016-03-10 17:07:53.626624+00	228	 Irrigatsiya tizimlarida suv energiyasidan foydalanish\n	3		9	1
174	2016-03-10 17:07:53.634945+00	227	 Yer tuzish va yer kadastri\n	3		9	1
175	2016-03-10 17:07:53.64339+00	226	 Kasb ta'limi: texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish\n	3		9	1
176	2016-03-10 17:07:53.651626+00	225	 Kasb ta'limi: qishloq xo`jaligini elektrlashtirish va avtomatlashtirish\n	3		9	1
177	2016-03-10 17:07:53.659941+00	224	 Qishloq xo`jaligini elektrlashtirish va avtomatlashtirish\n	3		9	1
178	2016-03-10 17:07:53.66836+00	223	 Dorivor o`simliklarni yetishtirish texnologiyasi\n	3		9	1
179	2016-03-10 17:07:53.677723+00	222	 Ipakchilik\n	3		9	1
180	2016-03-10 17:07:53.685968+00	221	 O`rmonchilik va aholi yashash joylarini ko`kalamzorlashtirish\n	3		9	1
181	2016-03-10 17:07:53.694308+00	220	 Agrokimyo va agrotuproqshunoslik\n	3		9	1
182	2016-03-10 17:07:53.702822+00	219	 Kasb ta'limi: zootexniya\n	3		9	1
183	2016-03-10 17:07:53.710962+00	218	 Kasb ta'limi: veterinariya\n	3		9	1
184	2016-03-10 17:07:53.719287+00	217	 Veterinariya\n	3		9	1
185	2016-03-10 17:07:53.727616+00	216	 Zootexniya (turlari bo`yicha)\n	3		9	1
186	2016-03-10 17:07:53.736011+00	215	 Agronomiya (dehqonchilik mahsulotlari turlari bo`yicha)\n	3		9	1
187	2016-03-10 17:07:53.744252+00	214	 O`simliklar himoyasi va karantini\n	3		9	1
188	2016-03-10 17:07:53.752564+00	213	 Qishloq xo`jaligi ekinlari seleksiyasi va urug`chiligi\n	3		9	1
189	2016-03-10 17:07:53.761022+00	212	 Gidrotexnika inshootlari va nasos stansiyalaridan foydalanish\n	3		9	1
190	2016-03-10 17:07:53.769303+00	211	 Suv xo`jaligi va melioratsiya\n	3		9	1
191	2016-03-10 17:07:53.777611+00	210	 Qishloq xo`jaligini mexanizatsiyalashtirish\n	3		9	1
192	2016-03-10 17:07:53.785939+00	209	 Qishloq xo`jaligida menejment\n	3		9	1
193	2016-03-10 17:07:53.794256+00	208	 Meva-sabzavotchilik va uzumchilik\n	3		9	1
194	2016-03-10 17:07:53.802721+00	207	 Sanoat farmatsiyasi (turlari bo`yicha)\n	3		9	1
195	2016-03-10 17:07:53.810983+00	206	 Farmatsiya (turlari bo`yicha)\n	3		9	1
196	2016-03-10 17:07:53.819378+00	205	 Kasb ta'limi: farmatsiya\n	3		9	1
197	2016-03-10 17:07:53.827714+00	204	 Kasb ta'limi: konchilik ishi\n	3		9	1
198	2016-03-10 17:07:53.835987+00	203	 Kasb ta'limi: dizayn\n	3		9	1
199	2016-03-10 17:07:53.844306+00	202	 Kasb ta'limi: kompyuter grafikasi va dizayn\n	3		9	1
200	2016-03-10 17:07:53.852697+00	201	 Tarix o`qitish metodikasi\n	3		9	1
201	2016-03-10 17:07:53.861055+00	200	 O`zbek tili va adabiyoti\n	3		9	1
202	2016-03-10 17:07:53.869345+00	199	 Defektologiya\n	3		9	1
203	2016-03-10 17:07:53.877605+00	198	 Yurisprudensiya (halqaro huquqiy faoliyat)\n	3		9	1
204	2016-03-10 17:07:53.886038+00	197	 Stomatologiya\n	3		9	1
205	2016-03-10 17:07:53.894296+00	196	 Filologiya va tillarni o`qitish: koreys tili\n	3		9	1
206	2016-03-10 17:07:53.902626+00	195	 Filologiya va tillarni o`qitish: arab tili\n	3		9	1
207	2016-03-10 17:07:53.910997+00	194	 Filologiya va tillarni o`qitish: italyan tili\n	3		9	1
208	2016-03-10 17:07:53.919366+00	193	 Yurisprudensiya (faoliyat turlari bo`yicha)\n	3		9	1
209	2016-03-10 17:07:53.927667+00	192	 Kasb ta'limi: energetika\n	3		9	1
210	2016-03-10 17:07:53.936043+00	191	 Tibbiy profilaktika ishi\n	3		9	1
211	2016-03-10 17:07:53.94446+00	190	 Kasb ta'limi: elektr energetikasi\n	3		9	1
212	2016-03-10 17:07:53.952715+00	189	 Biologiya o`qitish metodikasi\n	3		9	1
213	2016-03-10 17:07:53.960959+00	188	 Kimyo o`qitish metodikasi\n	3		9	1
214	2016-03-10 17:07:53.969258+00	187	 Fizika va astronomiya o`qitish metodikasi\n	3		9	1
215	2016-03-10 17:07:53.977832+00	186	 Matematika o`qitish metodikasi\n	3		9	1
216	2016-03-10 17:07:53.985997+00	185	 Kasb ta'limi: qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi\n	3		9	1
217	2016-03-10 17:07:53.994284+00	184	 Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha) \n	3		9	1
218	2016-03-10 17:07:54.002765+00	183	 Kasb ta'limi: tibbiy pedagogik ish\n	3		9	1
219	2016-03-10 17:07:54.010983+00	182	 Davolash ishi\n	3		9	1
220	2016-03-10 17:07:54.019271+00	181	 Pediatriya ishi\n	3		9	1
221	2016-03-10 17:07:54.027634+00	180	 Oliy hamshiralik ishi\n	3		9	1
222	2016-03-10 17:07:54.03611+00	179	 Kasb ta'limi: bank ishi\n	3		9	1
223	2016-03-10 17:07:54.044311+00	178	 Kasb ta'limi: buxgalteriya hisobi va audit\n	3		9	1
224	2016-03-10 17:07:54.05262+00	177	 Kasb ta'limi: moliya\n	3		9	1
225	2016-03-10 17:07:54.061003+00	176	 Moliya\n	3		9	1
226	2016-03-10 17:07:54.069483+00	175	 Baholash ishi\n	3		9	1
227	2016-03-10 17:07:54.077747+00	174	 Pensiya ishi\n	3		9	1
228	2016-03-10 17:07:54.085994+00	173	 Sug`urta ishi\n	3		9	1
229	2016-03-10 17:07:54.094342+00	172	 Kasb ta'limi: avtomobil yo`llari va aerodromlar\n	3		9	1
230	2016-03-10 17:07:54.10272+00	171	 Kasb ta'limi: tabiiy tolalarni dastlabki ishlash texnologiyasi\n	3		9	1
231	2016-03-10 17:07:54.110991+00	170	 Kasb ta'limi: yengil sanoat buyumlari konstruksiyasini ishlash va texnologiyasi\n	3		9	1
232	2016-03-10 17:07:54.11933+00	169	 Rangtasvir: teatr-bezak rangtasviri \n	3		9	1
233	2016-03-10 17:07:54.127675+00	168	 Rangtasvir: mahobatli rangtasvir\n	3		9	1
234	2016-03-10 17:07:54.136039+00	167	 Rangtasvir: dastgohli rangtasvir \n	3		9	1
235	2016-03-10 17:07:54.144326+00	166	 San'atshunoslik: muzeyshunoslik; konservatsiya va badiiy yodgorliklarni saqlash\n	3		9	1
236	2016-03-10 17:07:54.152621+00	165	 San'atshunoslik: tasviriy va amaliy san'at\n	3		9	1
237	2016-03-10 17:07:54.161052+00	164	 Kasb ta'limi: dizayn (libos dizayni va gazlamalarning badiiy yechimi)\n	3		9	1
238	2016-03-10 17:07:54.169312+00	163	 Kasb ta'limi: dizayn (interyerni loyihalash)\n	3		9	1
239	2016-03-10 17:07:54.177631+00	162	 Kasb ta'limi: rangtasvir\n	3		9	1
240	2016-03-10 17:07:54.186114+00	161	 Rangtasvir: filmning tasviriy yechimi\n	3		9	1
241	2016-03-10 17:07:54.194407+00	160	 Dizayn: kompyuter grafikasi va badiiy foto\n	3		9	1
242	2016-03-10 17:07:54.202674+00	159	 Dizayn: reklama va amaliy grafika\n	3		9	1
243	2016-03-10 17:07:54.211004+00	158	 Amaliy sanat: amaliy san'at asarlarini ta'mirlash\n	3		9	1
244	2016-03-10 17:07:54.219471+00	157	 Amaliy sanat: memoriy yodgorliklar bezagini tamirlash\n	3		9	1
245	2016-03-10 17:07:54.227674+00	156	 Amaliy sanat: badiiy kulolchilik\n	3		9	1
246	2016-03-10 17:07:54.236001+00	155	 Haykaltaroshlik (turlari bo`yicha)\n	3		9	1
247	2016-03-10 17:07:54.244332+00	154	 Grafika: xattotlik va miniatura\n	3		9	1
248	2016-03-10 17:07:54.25272+00	153	 Grafika: dastgoh va kitob grafikasi\n	3		9	1
249	2016-03-10 17:07:54.260974+00	152	 Dizayn: libos dizayni va gazlamalarning badiiy yechimi\n	3		9	1
250	2016-03-10 17:07:54.269298+00	151	 Dizayn: interyerni loyihalash\n	3		9	1
251	2016-03-10 17:07:54.277704+00	150	 Kasb ta'limi: xizmatlar sohasi\n	3		9	1
252	2016-03-10 17:07:54.285989+00	149	 Qiymat injiniringi\n	3		9	1
253	2016-03-10 17:07:54.294292+00	148	 Gidrotexnika qurilishi (turlari bo`yicha)\n	3		9	1
254	2016-03-10 17:07:54.302611+00	147	 Filologiya va tillarni o`qitish: arab, fors, turk, uyg`ur, dariy, pushtu tullari\n	3		9	1
255	2016-03-10 17:07:54.311069+00	146	 Filologiya va tillarni o`qitish: yapon, xitoy, koreys, hind, urdu, indonez, malay, vyetnam tillari\n	3		9	1
256	2016-03-10 17:07:54.31937+00	145	 Filologiya va tillarni o`qitish: sharq mumtoz tillari\n	3		9	1
257	2016-03-10 17:07:54.327661+00	144	 Jahon siyosati\n	3		9	1
258	2016-03-10 17:07:54.336051+00	143	 Xorijiy mamlakatlar iqtisodiyoti va mamlakatshunoslik: MDH mamlakatlari\n	3		9	1
259	2016-03-10 17:07:54.344401+00	142	 Xorijiy mamlakatlar iqtisodiyoti va mamlakatshunoslik: Yaqin va O`rta Sharq mamlakatlari\n	3		9	1
260	2016-03-10 17:07:54.35265+00	141	 Xorijiy mamlakatlar iqtisodiyoti va mamlakatshunoslik: Uzoq Sharq mamlakatlari\n	3		9	1
261	2016-03-10 17:07:54.360973+00	140	 Xorijiy mamlakatlar iqtisodiyoti va mamlakatshunoslik: Xitoy va Janubiy-Sharqiy Osiyo mamlakatlari\n	3		9	1
262	2016-03-10 17:07:54.369432+00	139	 Filologiya va tillarni o`qitish: yapon tili\n	3		9	1
263	2016-03-10 17:07:54.377675+00	138	 Filologiya va tillarni o`qitish: xitoy tili\n	3		9	1
264	2016-03-10 17:07:54.385949+00	137	 Filologiya va tillarni o`qitish: ispan tili\n	3		9	1
265	2016-03-10 17:07:54.394305+00	136	 Tarjima nazariyasi va amaliyoti (tillar bo`yicha)\n	3		9	1
266	2016-03-10 17:07:54.402735+00	135	 Xoreografiya (turlari bo`yicha)\n	3		9	1
267	2016-03-10 17:07:54.410969+00	134	 San'atshunoslik: xoreografiya \n	3		9	1
268	2016-03-10 17:07:54.419297+00	133	 Bank ishi\n	3		9	1
269	2016-03-10 17:07:54.427697+00	132	 Buxgalteriya hisobi va audit (tarmoqlar bo`yicha)\n	3		9	1
270	2016-03-10 17:07:54.436084+00	131	 Statistika (tarmoqlar va sohalar bo`yicha)\n	3		9	1
271	2016-03-10 17:07:54.444334+00	130	 Noyob va radioaktiv metallar rudalarini qazib olish, qayta ishlash texnikasi va texnologiyasi\n	3		9	1
272	2016-03-10 17:07:54.452662+00	129	 Soliqlar va soliqqa tortish\n	3		9	1
273	2016-03-10 17:07:54.461195+00	128	 Elektronika va asbobsozlik (tarmoqlar bo`yicha)\n	3		9	1
274	2016-03-10 17:07:54.469343+00	127	 Aviasozlik va havo kemalaridan texnik foydalanish \n	3		9	1
275	2016-03-10 17:07:54.477656+00	126	 Metallurgiya\n	3		9	1
276	2016-03-10 17:07:54.485985+00	125	 Energetika (tarmoqlar bo`yicha)\n	3		9	1
277	2016-03-10 17:07:54.494481+00	124	 Kasb ta'limi: texnologik mashinalar va jihozlar\n	3		9	1
278	2016-03-10 17:07:54.502749+00	123	 Konchilik ishi\n	3		9	1
279	2016-03-10 17:07:54.511011+00	122	 Foydali qazilma konlari geologiyasi, qidiruv va razvedkasi (kon turlari bo`yicha)\n	3		9	1
280	2016-03-10 17:07:54.519413+00	121	 Hayotiy faoliyat xavfsizligi\n	3		9	1
281	2016-03-10 17:07:54.527738+00	120	 Havodagi harakatni boshqarish\n	3		9	1
282	2016-03-10 17:07:54.536001+00	119	 Xizmat ko`rsatish texnikasi va texnologiyasi (xizmat ko`rsatish tarmoqlari bo`yicha)\n	3		9	1
283	2016-03-10 17:07:54.54433+00	118	 Radioelektron qurilmalar va tizimlar (tarmoqlar bo`yicha)\n	3		9	1
284	2016-03-10 17:07:54.552786+00	117	 Neft va neft-gazni qayta ishlash texnologiyasi\n	3		9	1
285	2016-03-10 17:07:54.561044+00	116	 Biotexnologiya (tarmoqlar bo`yicha)\n	3		9	1
286	2016-03-10 17:07:54.569374+00	115	 Gidrogeologiya va muhandislik geologiyasi\n	3		9	1
287	2016-03-10 17:07:54.577698+00	114	 Neft va gaz konlarini ishga tushirish va ulardan foydalanish\n	3		9	1
288	2016-03-10 17:07:54.586141+00	113	 Neft-gazni qayta ishlash sanoati obyektlarini loyihalashtirish, qurish va ulardan foydalanish\n	3		9	1
289	2016-03-10 17:07:54.594362+00	112	 Falsafa\n	3		9	1
290	2016-03-10 17:07:54.602736+00	111	 Ijtimoiy ish (pensiya ta'minoti)\n	3		9	1
291	2016-03-10 17:07:54.611034+00	110	 Axborot xavfsizligi (sohalar bo`yicha)\n	3		9	1
292	2016-03-10 17:07:54.619353+00	109	 Axborot tizimlarining matematik va dasturiy ta'minoti\n	3		9	1
293	2016-03-10 17:07:54.627662+00	108	 Geologiya\n	3		9	1
294	2016-03-10 17:07:54.635985+00	107	 Geofizika\n	3		9	1
295	2016-03-10 17:07:54.644516+00	106	 Gidrologiya (tarmoqlar bo`yicha)\n	3		9	1
296	2016-03-10 17:07:54.652656+00	105	 Sotsiologiya\n	3		9	1
297	2016-03-10 17:07:54.660975+00	104	 Jurnalistika (faoliyat turlari bo`yicha)\n	3		9	1
298	2016-03-10 17:07:54.669312+00	103	 Geodeziya, kartografiya va kadastr (funksiyalari bo`yicha)\n	3		9	1
299	2016-03-10 17:07:54.677752+00	102	 Kasb ta'limi: tasviriy san'at va muhandislik grafikasi\n	3		9	1
300	2016-03-10 17:07:54.686138+00	101	 Kasb ta'limi: bino va inshootlar qurilishi\n	3		9	1
301	2016-03-10 17:07:54.694452+00	100	 Arxitektura (turlari bo`yicha)\n	3		9	1
302	2016-03-10 17:07:54.70275+00	99	 Shahar qurilishi va xo`jaligi\n	3		9	1
303	2016-03-10 17:07:54.711084+00	98	 Ko`chmas mulk ekspertizasi va uni boshqarish\n	3		9	1
304	2016-03-10 17:07:54.719378+00	97	 Arxeologiya\n	3		9	1
305	2016-03-10 17:07:54.727702+00	96	 Kasb ta'limi: elektronika va asbobsozlik\n	3		9	1
306	2016-03-10 17:07:54.73624+00	95	 Ijtimoiy ish (faoliyatning turli sohalari bo`yicha)\n	3		9	1
307	2016-03-10 17:07:54.931692+00	94	 Kadrlar menejmenti\n	3		9	1
308	2016-03-10 17:07:54.944326+00	93	 Gidrometeorologiya\n	3		9	1
309	2016-03-10 17:07:54.952747+00	92	 Mexanika\n	3		9	1
310	2016-03-10 17:07:54.960966+00	91	 Astronomiya\n	3		9	1
311	2016-03-10 17:07:54.969304+00	90	 Dizayn (turlari bo`yicha)\n	3		9	1
312	2016-03-10 17:07:54.977753+00	89	 Marketing (tarmoqlar va sohalar bo`yicha)\n	3		9	1
313	2016-03-10 17:07:54.986033+00	88	 Matbaa va qadoqlash jarayonlari texnologiyasi \n	3		9	1
314	2016-03-10 17:07:54.994302+00	87	 Tabiiy tolalarni dastlabki ishlash texnologiyasi (xom ashyo turlari bo`yicha)\n	3		9	1
315	2016-03-10 17:07:55.00262+00	86	 Energetika (tarmoqlar bo`yicha) \n	3		9	1
316	2016-03-10 17:07:55.011143+00	85	 Kasb ta'limi: muhandislik kommunikatsiyalari qurilishi va montaji\n	3		9	1
317	2016-03-10 17:07:55.019404+00	84	 Kasb ta'limi: qishloq xo`jaligini mexanizatsiyalashtirish\n	3		9	1
318	2016-03-10 17:07:55.027667+00	83	 Kasb ta'limi: yerusti transport tizimlari va ularning ekspluatatsiyasi\n	3		9	1
319	2016-03-10 17:07:55.035994+00	82	 Qishloq hududlarini arxitektura-loyihaviy tashkil etish\n	3		9	1
320	2016-03-10 17:07:55.044473+00	81	 Hayotiy faoliyat xavfsizligi \n	3		9	1
321	2016-03-10 17:07:55.052696+00	80	 Sport faoliyati (xotin-qizlar sporti yo`nalishi bo`yicha)\n	3		9	1
322	2016-03-10 17:07:55.061058+00	79	 Ijtimoiy-madaniy faoliyat\n	3		9	1
323	2016-03-10 17:07:55.069529+00	78	 Geografiya \n	3		9	1
324	2016-03-10 17:07:55.077755+00	77	 Amaliy matematika va informatika\n	3		9	1
325	2016-03-10 17:07:55.085995+00	76	 Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)\n	3		9	1
326	2016-03-10 17:07:55.094325+00	75	 Yengil sanoat buyumlari konstruksiyasini ishlash va texnologiyasi (ishlab chiqarish turlari bo`yicha)\n	3		9	1
327	2016-03-10 17:07:55.10279+00	74	 Bino va inshootlar qurilishi (turlari bo`yicha)\n	3		9	1
328	2016-03-10 17:07:55.111+00	73	 Tashishni tashkil etish va transport logistikasi (transport turlari bo`yicha)\n	3		9	1
329	2016-03-10 17:07:55.119307+00	72	 Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)\n	3		9	1
330	2016-03-10 17:07:55.127639+00	71	 Avtomobil yo`llari va aerodromlar\n	3		9	1
331	2016-03-10 17:07:55.136109+00	70	 Transport inshootlarining ekspluatatsiyasi (transport inshootlari turlari bo`yicha)\n	3		9	1
332	2016-03-10 17:07:55.144366+00	69	 Qurilish materiallari, buyumlari va konstruksiyalarini ishlab chiqarish\n	3		9	1
333	2016-03-10 17:07:55.152692+00	68	 Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)\n	3		9	1
334	2016-03-10 17:07:55.161192+00	67	 Geografiya o`qitish metodikasi\n	3		9	1
335	2016-03-10 17:07:55.169465+00	66	 Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi\n	3		9	1
336	2016-03-10 17:07:55.177704+00	65	 Oziq-ovqat texnologiyasi (mahsulotlar turlari bo`yicha)\n	3		9	1
337	2016-03-10 17:07:55.186021+00	64	 Tarix (Islom tarixi va manbashunosligi)\n	3		9	1
338	2016-03-10 17:07:55.194538+00	63	 Dinshunoslik\n	3		9	1
339	2016-03-10 17:07:55.202763+00	62	 Psixologiya (din sotsiopsixologiyasi)\n	3		9	1
340	2016-03-10 17:07:55.211031+00	61	 Jahon iqtisodiyoti va xalqaro iqtisodiy munosabatlar (mintaqalar va faoliyat turlari bo`yicha)\n	3		9	1
341	2016-03-10 17:07:55.219348+00	60	 Informatika va axborot texnologiyalari (tarmoqlar va sohalar bo`yicha)\n	3		9	1
342	2016-03-10 17:07:55.227771+00	59	 Kasb ta'limi: yengil sanoat texnologiyalari va jihozlari\n	3		9	1
343	2016-03-10 17:07:55.235986+00	58	 Kasb ta'limi: elektr texnikasi, elektr mexanikasi va elektr texnologiyalari\n	3		9	1
344	2016-03-10 17:07:55.244308+00	57	 Kasb ta'limi: menejment\n	3		9	1
345	2016-03-10 17:07:55.25274+00	56	 Kasb ta'limi: kimyoviy texnologiya\n	3		9	1
346	2016-03-10 17:07:55.261059+00	55	 Kasb ta'limi: neft-gazkimyo sanoati texnologiyasi \n	3		9	1
347	2016-03-10 17:07:55.269337+00	54	 Menejment (tarmoqlar va sohalar bo`yicha)\n	3		9	1
348	2016-03-10 17:07:55.27765+00	53	 Texnologik jarayonlarni boshqarishning axborot-kommunikatsiya tizimlari\n	3		9	1
349	2016-03-10 17:07:55.286121+00	52	 Yengil sanoat texnologiyalari va jihozlari\n	3		9	1
350	2016-03-10 17:07:55.294373+00	51	 Texnologiyalar va jihozlar (tarmoqlar bo`yicha)\n	3		9	1
351	2016-03-10 17:07:55.302676+00	50	 Neft-gazkimyo sanoati texnologiyasi\n	3		9	1
352	2016-03-10 17:07:55.311008+00	49	 Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)\n	3		9	1
353	2016-03-10 17:07:55.319452+00	48	 Chaqiriqqacha harbiy ta'lim\n	3		9	1
354	2016-03-10 17:07:55.327683+00	47	 Musiqa ta'limi\n	3		9	1
355	2016-03-10 17:07:55.335976+00	46	 Kasb ta'limi: amaliy san'at\n	3		9	1
356	2016-03-10 17:07:55.344433+00	45	 Kasb ta'limi: iqtisodiyot\n	3		9	1
357	2016-03-10 17:07:55.352712+00	44	 Kasb ta'limi: agronomiya\n	3		9	1
358	2016-03-10 17:07:55.360998+00	43	 Filologiya va tillarni o`qitish: ingliz tili\n	3		9	1
359	2016-03-10 17:07:55.369322+00	42	 Filologiya va tillarni o`qitish: nemis tili\n	3		9	1
360	2016-03-10 17:07:55.377848+00	41	 Turizm (faoliyat yo`nalishlari bo`yicha)\n	3		9	1
361	2016-03-10 17:07:55.386042+00	40	 Mehmonxona xo`jaligini tashkil etish va boshqarish\n	3		9	1
362	2016-03-10 17:07:55.39437+00	39	 Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)\n	3		9	1
363	2016-03-10 17:07:55.402701+00	38	 Arxivshunoslik\n	3		9	1
364	2016-03-10 17:07:55.411145+00	37	 Psixologiya (faoliyat turlari bo`yicha)\n	3		9	1
365	2016-03-10 17:07:55.419448+00	36	 Tuproqshunoslik\n	3		9	1
366	2016-03-10 17:07:55.427685+00	35	 Filologiya va tillarni o`qitish: fransuz tili\n	3		9	1
367	2016-03-10 17:07:55.436063+00	34	 Matematika \n	3		9	1
368	2016-03-10 17:07:55.444375+00	33	 Kasb ta'limi: mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish\n	3		9	1
369	2016-03-10 17:07:55.45268+00	32	 Iqtisodiyot (tarmoqlar va sohalar bo`yicha)\n	3		9	1
370	2016-03-10 17:07:55.460961+00	31	 Avtomobilsozlik va traktorsozlik\n	3		9	1
371	2016-03-10 17:07:55.469428+00	30	 Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)\n	3		9	1
372	2016-03-10 17:07:55.477715+00	29	 Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)\n	3		9	1
373	2016-03-10 17:07:55.486035+00	28	 Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)\n	3		9	1
374	2016-03-10 17:07:55.49437+00	27	 Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)\n	3		9	1
375	2016-03-10 17:07:55.502796+00	26	 Mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish\n	3		9	1
376	2016-03-10 17:07:55.511056+00	25	 Materialshunoslik va yangi materiallar texnologiyasi\n	3		9	1
377	2016-03-10 17:07:55.519404+00	24	 Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)\n	3		9	1
378	2016-03-10 17:07:55.527829+00	23	 Maktabgacha ta'lim\n	3		9	1
379	2016-03-10 17:07:55.536072+00	22	 Boshlang`ich ta'lim va sport-tarbiyaviy ish\n	3		9	1
380	2016-03-10 17:07:55.544364+00	21	 Milliy g`oya, ma'naviyat asoslari va huquq ta'limi\n	3		9	1
381	2016-03-10 17:07:55.552697+00	20	 Xorijiy til va adabiyoti: fransuz tili\n	3		9	1
382	2016-03-10 17:07:55.56113+00	19	 Xorijiy til va adabiyoti: nemis tili\n	3		9	1
383	2016-03-10 17:07:55.569457+00	18	 Xorijiy til va adabiyoti: ingliz tili\n	3		9	1
384	2016-03-10 17:07:55.57772+00	17	 Musiqa ta'limie\n	3		9	1
385	2016-03-10 17:07:55.586049+00	16	 Kasb ta'limi: informatika va axborot texnologiyalari\n	3		9	1
386	2016-03-10 17:07:55.594453+00	15	 Pedagogika va psixologiya\n	3		9	1
387	2016-03-10 17:07:55.602703+00	14	 Tasviriy san'at va muhandislik grafikasi\n	3		9	1
388	2016-03-10 17:07:55.611033+00	13	 Jismoniy madaniyat\n	3		9	1
389	2016-03-10 17:07:55.619482+00	12	 Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)\n	3		9	1
390	2016-03-10 17:07:55.627716+00	11	 Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)\n	3		9	1
391	2016-03-10 17:07:55.636063+00	10	 Mehnat iqtisodiyoti va sotsiologiyasi\n	3		9	1
392	2016-03-10 17:07:55.644392+00	9	 Geografiya\n	3		9	1
393	2016-03-10 17:07:55.653169+00	8	 Kimyo\n	3		9	1
394	2016-03-10 17:07:55.661048+00	7	 Fizika\n	3		9	1
395	2016-03-10 17:07:55.669369+00	6	 Biologiya (turlari bo`yicha)\n	3		9	1
396	2016-03-10 17:07:55.677817+00	5	 Matematika\n	3		9	1
397	2016-03-10 17:07:55.686087+00	4	 Tarix (mamlakatlar va mintaqalar bo`yicha)\n	3		9	1
398	2016-03-10 17:07:55.694374+00	3	 Filologiya va tillarni o`qitish: o`zbek tili\n	3		9	1
399	2016-03-10 17:07:55.7027+00	2	 Mehnat ta'limi\n	3		9	1
400	2016-03-10 17:07:55.711148+00	1	 Informatika o`qitish metodikasi\n	3		9	1
401	2016-03-11 15:04:31.127604+00	153	Навоий давлат кончилик институти	3		7	1
402	2016-03-11 15:04:31.212378+00	152	Навоий давлат педагогика институти	3		7	1
403	2016-03-11 15:04:31.220628+00	151	Тошкент ахборот технологиялар университети Фарғона филиали	3		7	1
404	2016-03-11 15:04:31.229068+00	150	Тошкент тиббиёт академияси Фарғона филиали 	3		7	1
405	2016-03-11 15:04:31.237295+00	149	Қўқон давлат педагогика институти	3		7	1
406	2016-03-11 15:04:31.24563+00	148	Фарғона политехника институти	3		7	1
407	2016-03-11 15:04:31.254076+00	147	Фарғона давлат университети	3		7	1
408	2016-03-11 15:04:31.26236+00	146	Тошкент ахборот технологиялар университети Урганч филиали	3		7	1
409	2016-03-11 15:04:31.270683+00	145	Тошкент тиббиёт академияси Урганч филиали 	3		7	1
410	2016-03-11 15:04:31.279004+00	144	Урганч давлат университети	3		7	1
411	2016-03-11 15:04:31.28748+00	143	Термиз давлат университети	3		7	1
412	2016-03-11 15:04:31.29565+00	142	Тошкент ахборот технологиялар университети Самарқанд филиали	3		7	1
413	2016-03-11 15:04:31.3041+00	141	Самарқанд қишлоқ хўжалик институти	3		7	1
414	2016-03-11 15:04:31.312406+00	140	Самарқанд давлат тиббиёт институти	3		7	1
415	2016-03-11 15:04:31.320688+00	139	Самарқанд иқтисодиёт ва сервис институти	3		7	1
416	2016-03-11 15:04:31.329015+00	138	Самарқанд давлат чет тиллар институти	3		7	1
417	2016-03-11 15:04:31.337288+00	137	Самарқанд давлат архитектура-қурилиш институти	3		7	1
418	2016-03-11 15:04:31.345647+00	136	Самарқанд давлат университети	3		7	1
419	2016-03-11 15:04:31.35418+00	135	Наманган муҳандислик-педагогика институти	3		7	1
420	2016-03-11 15:04:31.362322+00	134	Наманган муҳандислик-технология институти	3		7	1
421	2016-03-11 15:04:31.370665+00	133	Наманган давлат университети	3		7	1
422	2016-03-11 15:04:31.379177+00	132	Тошкент ахборот технологиялар университети Қарши филиали	3		7	1
423	2016-03-11 15:04:31.387327+00	131	Қарши муҳандислик-иқтисодиёт институти	3		7	1
424	2016-03-11 15:04:31.395668+00	130	Қарши давлат университети	3		7	1
425	2016-03-11 15:04:31.404042+00	129	Тошкент ахборот технологиялар университети Нукус филиали	3		7	1
426	2016-03-11 15:04:31.412439+00	128	Ўзбекистон давлат санъат ва маданият институти Нукус филиали	3		7	1
427	2016-03-11 15:04:31.420694+00	127	Тошкент давлат аграр университети Нукус филиали	3		7	1
428	2016-03-11 15:04:31.429007+00	126	Тошкент педиатрия тиббиёт институти Нукус филиали	3		7	1
429	2016-03-11 15:04:31.437525+00	125	Нукус давлат педагогика институти	3		7	1
430	2016-03-11 15:04:31.445889+00	124	Қорақалпоқ давлат университети	3		7	1
431	2016-03-11 15:04:31.454571+00	123	Жиззах давлат педагогика институти	3		7	1
432	2016-03-11 15:04:31.462399+00	122	Жиззах политехника институти	3		7	1
433	2016-03-11 15:04:31.470813+00	121	Гулистон давлат университети	3		7	1
434	2016-03-11 15:04:31.479032+00	120	Тошкент ирригация ва мелиорация институти Бухоро филиали	3		7	1
435	2016-03-11 15:04:31.487566+00	119	Бухоро давлат тиббиёт институти	3		7	1
436	2016-03-11 15:04:31.495669+00	118	Бухоро мухандислик-технология институти	3		7	1
437	2016-03-11 15:04:31.504159+00	117	Бухоро давлат университети	3		7	1
438	2016-03-11 15:04:31.512334+00	116	Андижон қишлоқ хўжалиги институти	3		7	1
439	2016-03-11 15:04:31.520852+00	115	Андижон давлат тиббиёт институти	3		7	1
440	2016-03-11 15:04:31.529039+00	114	Андижон машинасозлик институти	3		7	1
441	2016-03-11 15:04:31.53747+00	113	Андижон давлат университети	3		7	1
442	2016-03-11 15:04:31.545734+00	112	Тошкент давлат аграр университети	3		7	1
443	2016-03-11 15:04:31.554168+00	111	Инха университети Тошкент филиали	3		7	1
444	2016-03-11 15:04:31.562393+00	110	Турин политехника университети (Тошкент филиали)	3		7	1
445	2016-03-11 15:04:31.570998+00	109	Сингапур менежментни ривожлантириш инстиути Тошкент филиали	3		7	1
446	2016-03-11 15:04:31.579054+00	108	Г.Плеханов ном. Россия иқтисодиёт университети Тошкент филиали	3		7	1
447	2016-03-11 15:04:31.58747+00	107	И.Губкин ном. Россия давлат нефть ва газ университети Тошкент филиали	3		7	1
448	2016-03-11 15:04:31.595793+00	106	М.Ломоносов ном. Москва давлат университети Тошкент филиали	3		7	1
449	2016-03-11 15:04:31.604288+00	105	Вестминстр халқаро университети Тошкент филиали	3		7	1
450	2016-03-11 15:04:31.612473+00	104	Солиқ академияси	3		7	1
451	2016-03-11 15:04:31.621087+00	103	Тошкент темир йўл транспорти мухандислари институти	3		7	1
452	2016-03-11 15:04:31.629086+00	102	Тошкент давлат юридик университети	3		7	1
453	2016-03-11 15:04:31.637695+00	101	Тошкент ахборот технологиялар университети	3		7	1
454	2016-03-11 15:04:31.645876+00	100	Миллий рассомчилик ва дизайн институти	3		7	1
455	2016-03-11 15:04:31.654347+00	99	Ўзбекистон давлат жисмоний тарбия институти	3		7	1
456	2016-03-11 15:04:31.662466+00	98	Миллий рақс ва хореография олий мактаби	3		7	1
457	2016-03-11 15:04:31.670979+00	97	Ўзбекистон давлат санъат ва маданият институти	3		7	1
458	2016-03-11 15:04:31.679139+00	96	Ўзбекистон давлат консерваторияси	3		7	1
459	2016-03-11 15:04:31.687613+00	95	Тошкент ирригация ва мелиорация институти	3		7	1
460	2016-03-11 15:04:31.69579+00	94	Тошкент фармацевтика институти	3		7	1
461	2016-03-11 15:04:31.70427+00	93	Тошкент давлат стоматология институти	3		7	1
462	2016-03-11 15:04:31.712529+00	92	Тошкент педиатрия тиббиёт институти	3		7	1
463	2016-03-11 15:04:31.72104+00	91	Тошкент тиббиёт академияси	3		7	1
464	2016-03-11 15:04:31.729233+00	90	Жаҳон иқтисодиёти ва дипломатия университети	3		7	1
465	2016-03-11 15:04:31.737605+00	89	Тошкент ислом университети	3		7	1
466	2016-03-11 15:04:31.745923+00	88	Тошкент давлат педагогика университети	3		7	1
467	2016-03-11 15:04:31.754337+00	87	Тошкент автомобиль йўллар институти	3		7	1
468	2016-03-11 15:04:31.762571+00	86	Тошкент кимё технология  институти	3		7	1
469	2016-03-11 15:04:31.770987+00	85	Тошкент молия институти	3		7	1
470	2016-03-11 15:04:31.779194+00	84	Тошкент тўқимачилик ва енгил саноат институти	3		7	1
471	2016-03-11 15:04:31.787654+00	83	Тошкент архитектура қурилиш институти	3		7	1
472	2016-03-11 15:04:31.795847+00	82	Тошкент давлат шарқшунослик институти	3		7	1
473	2016-03-11 15:04:31.80419+00	81	Ўзбекистон давлат жаҳон тиллари университети	3		7	1
474	2016-03-11 15:04:31.812539+00	80	Тошкент давлат иқтисодиёт университети	3		7	1
475	2016-03-11 15:04:31.820832+00	79	Тошкент давлат техника университети	3		7	1
476	2016-03-11 15:04:31.829276+00	78	Ўзбекистон миллий университети	3		7	1
477	2016-03-11 15:09:20.703335+00	642	 Neft va neft-gazni qayta ishlash texnologiyasi	3		9	1
478	2016-03-11 15:09:20.730442+00	641	 Kompyuter injiniringi ("Kompyuter injiniringi", "AT-Servis")\n	3		9	1
479	2016-03-11 15:09:20.738651+00	640	 Menejment (turizm) \n	3		9	1
480	2016-03-11 15:09:20.746973+00	639	 Marketing (turizm) \n	3		9	1
481	2016-03-11 15:09:20.755382+00	638	 Kasb ta'limi: transport inshootlarining ekspluatatsiyasi\n	3		9	1
482	2016-03-11 15:09:20.763648+00	637	 Telekommunikatsiya texnologiyalari ("Telekommunikatsiyalar")\n	3		9	1
483	2016-03-11 15:09:20.771974+00	636	 Informatika va axborot texnologiyalari (temir yo`l transportida)\n	3		9	1
484	2016-03-11 15:09:20.780478+00	635	 Sport faoliyati: qilichbozlik\n	3		9	1
485	2016-03-11 15:09:20.788704+00	634	 Sport faoliyati: og`ir atletika\n	3		9	1
486	2016-03-11 15:09:20.797055+00	633	 Sport faoliyati: eshkak eshish\n	3		9	1
487	2016-03-11 15:09:20.80539+00	632	 Sport faoliyati: tennis \n	3		9	1
488	2016-03-11 15:09:20.813815+00	631	 Sport faoliyati: futbol \n	3		9	1
489	2016-03-11 15:09:20.82202+00	630	 Sport faoliyati: badiiy gimnastika\n	3		9	1
490	2016-03-11 15:09:20.83035+00	629	 Sport faoliyati: dzu-do\n	3		9	1
491	2016-03-11 15:09:20.838787+00	628	 Sport faoliyati: erkin va yunon-rum kurashi\n	3		9	1
492	2016-03-11 15:09:20.8471+00	627	 Sport faoliyati: qo`l to`pi\n	3		9	1
493	2016-03-11 15:09:20.855352+00	626	 Sport faoliyati: yengil atletika\n	3		9	1
494	2016-03-11 15:09:20.863685+00	625	 Kasb ta'limi: jismoniy tarbiya va jismoniy madaniyat\n	3		9	1
495	2016-03-11 15:09:20.872183+00	624	 Psixologiya (sport psixologiyasi)\n	3		9	1
496	2016-03-11 15:09:20.88036+00	623	 Sport faoliyati: basketbol \n	3		9	1
497	2016-03-11 15:09:20.888709+00	622	 Sport faoliyati: boks \n	3		9	1
498	2016-03-11 15:09:20.897056+00	621	 Sport faoliyati: voleybol \n	3		9	1
499	2016-03-11 15:09:20.905474+00	620	 Sport faoliyati: velosport \n	3		9	1
500	2016-03-11 15:09:20.913785+00	619	 Sport faoliyati: gimnastika \n	3		9	1
501	2016-03-11 15:09:20.922061+00	618	 Sport faoliyati: suzish \n	3		9	1
502	2016-03-11 15:09:20.930446+00	617	 Sport faoliyati: belbog`li kurash\n	3		9	1
503	2016-03-11 15:09:20.938747+00	616	 Sport faoliyati: taekvondo (WTF)\n	3		9	1
504	2016-03-11 15:09:20.947189+00	615	 Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Surxondaryo)\n	3		9	1
505	2016-03-11 15:09:20.972161+00	614	 Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Farg`ona)\n	3		9	1
506	2016-03-11 15:09:20.98039+00	613	 Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Xorazm)\n	3		9	1
507	2016-03-11 15:09:20.988696+00	612	 Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Qashqadaryo)\n	3		9	1
508	2016-03-11 15:09:20.99716+00	611	 Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Toshkent viloyati)\n	3		9	1
509	2016-03-11 15:09:21.005386+00	610	 Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Toshkent shahri)\n	3		9	1
510	2016-03-11 15:09:21.013748+00	609	 Sport faoliyati: sinxron suzish\n	3		9	1
511	2016-03-11 15:09:21.022259+00	608	 Sport faoliyati: badminton\n	3		9	1
512	2016-03-11 15:09:21.030487+00	607	 Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Sirdaryo)\n	3		9	1
513	2016-03-11 15:09:21.038776+00	606	 Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Samarqand)\n	3		9	1
514	2016-03-11 15:09:21.047151+00	605	 Sport faoliyati: sambo \n	3		9	1
515	2016-03-11 15:09:21.055669+00	604	 Sport faoliyati: kurash \n	3		9	1
516	2016-03-11 15:09:21.063764+00	603	 Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Qoraqalpog`iston Respublikasi)\n	3		9	1
517	2016-03-11 15:09:21.072124+00	602	 Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Andijon)\n	3		9	1
518	2016-03-11 15:09:21.080433+00	601	 Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Buxoro)\n	3		9	1
519	2016-03-11 15:09:21.088936+00	600	 Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Jizzax)\n	3		9	1
520	2016-03-11 15:09:21.097051+00	599	 Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Navoiy)\n	3		9	1
521	2016-03-11 15:09:21.105399+00	598	 Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Namangan)\n	3		9	1
522	2016-03-11 15:09:21.113838+00	597	 Kompyuter injiniringi ("Kompyuter injiniringi", "AT-Servis", "Axborot xavfsizligi", "Multimedia texnologiyalari")\n	3		9	1
523	2016-03-11 15:09:21.122166+00	596	 Dasturiy injiniring\n	3		9	1
524	2016-03-11 15:09:21.130555+00	595	 Telekommunikatsiya texnologiyalari ("Telekommunikatsiyalar", "Teleradioeshittirish", "Mobil tizimlar")\n	3		9	1
525	2016-03-11 15:09:21.13886+00	594	 Televizion texnologiyalar ("Audiovizual texnologiyalar", "Telestudiya tizimlari va ilovalari")\n	3		9	1
526	2016-03-11 15:09:21.147391+00	593	 Axborot-kommunikatsiya texnologiyalari sohasida iqtisodiyot va menejment\n	3		9	1
527	2016-03-11 15:09:21.15549+00	592	 Axborot-kommunikatsiya texnologiyalari sohasida kasb ta'limi\n	3		9	1
528	2016-03-11 15:09:21.163812+00	591	 Pochta aloqasi texnologiyasi\n	3		9	1
529	2016-03-11 15:09:21.172141+00	590	 Axborotlashtirish va kutubxonashunoslik\n	3		9	1
530	2016-03-11 15:09:21.180585+00	589	 Cholg`u ijrochiligi: fortepiano (organ)\n	3		9	1
531	2016-03-11 15:09:21.188807+00	588	 Vokal san'ati: estrada xonandaligi\n	3		9	1
532	2016-03-11 15:09:21.197139+00	587	 Vokal san'ati: an'anaviy xonandalik\n	3		9	1
533	2016-03-11 15:09:21.205555+00	586	 Vokal san'ati: akademik xonandalik \n	3		9	1
534	2016-03-11 15:09:21.213833+00	585	 dirijorlik (xor dirijorligi)\n	3		9	1
535	2016-03-11 15:09:21.222214+00	584	 San'atshunoslik: musiqashunoslik\n	3		9	1
536	2016-03-11 15:09:21.230523+00	583	 Bastakorlik san'ati\n	3		9	1
537	2016-03-11 15:09:21.238834+00	582	 Cholg`u ijrochiligi: torli cholg`ular\n	3		9	1
538	2016-03-11 15:09:21.247216+00	581	 Cholg`u ijrochiligi: yog`och - damli cholg`ular\n	3		9	1
539	2016-03-11 15:09:21.255497+00	580	 Texnogen san'at (musiqiy ovoz rejissorligi)\n	3		9	1
540	2016-03-11 15:09:21.263893+00	579	 Cholg`u ijrochiligi: estrada cholg`ulari\n	3		9	1
541	2016-03-11 15:09:21.272307+00	578	 Cholg`u ijrochiligi: an'anaviy cholg`ular\n	3		9	1
542	2016-03-11 15:09:21.280542+00	577	 Cholg`u ijrochiligi: damli va urma xalq cholg`ulari\n	3		9	1
543	2016-03-11 15:09:21.288865+00	576	 Cholg`u ijrochiligi: kamonli o`zbek xalq cholg`ulari\n	3		9	1
544	2016-03-11 15:09:21.297254+00	575	 Cholg`u ijrochiligi: mizrobli xalq cholg`ulari\n	3		9	1
545	2016-03-11 15:09:21.305594+00	574	 Cholg`u ijrochiligi: mis - damli va zarbli cholg`ular\n	3		9	1
546	2016-03-11 15:09:21.31383+00	573	 Aktyorlik san'ati: qo`g`irchoq teatri aktyorligi \n	3		9	1
547	2016-03-11 15:09:21.322157+00	572	 Aktyorlik san'ati: musiqiy teatr aktyorligi \n	3		9	1
548	2016-03-11 15:09:21.330731+00	571	 Aktyorlik san'ati: dramatik teatr va kino aktyorligi \n	3		9	1
549	2016-03-11 15:09:21.339092+00	570	 San'atshunoslik: sahna va ekran san'ati dramaturgiyasi\n	3		9	1
550	2016-03-11 15:09:21.347326+00	569	 San'atshunoslik: teatrshunoslik\n	3		9	1
551	2016-03-11 15:09:21.355636+00	568	 Kasb ta'limi: madaniyat va san'at muassasalarini tashkil etish va boshqarish\n	3		9	1
552	2016-03-11 15:09:21.364017+00	567	 Kasb ta'limi: xalq ijodiyoti\n	3		9	1
553	2016-03-11 15:09:21.372405+00	566	 Kasb ta'limi: aktyorlik san'ati\n	3		9	1
554	2016-03-11 15:09:21.380698+00	565	 rejissorlik: estrada va ommaviy tomoshalar rejissorligi\n	3		9	1
555	2016-03-11 15:09:21.389012+00	564	 rejissorlik: televideniye va radio rejissorligi\n	3		9	1
556	2016-03-11 15:09:21.39726+00	563	 Madaniyat va san'at muassasalarini tashkil etish va boshqarish\n	3		9	1
557	2016-03-11 15:09:21.405621+00	562	 Xalq ijodiyoti: xalq ashula va raqs ansambli rahbari\n	3		9	1
558	2016-03-11 15:09:21.413929+00	561	 Xalq ijodiyoti: cholg`u jamoalari rahbari\n	3		9	1
559	2016-03-11 15:09:21.422426+00	560	 Xalq ijodiyoti: vokal jamoalari rahbari\n	3		9	1
560	2016-03-11 15:09:21.430676+00	559	 Xalq ijodiyoti: folklor-etnografik jamoalari rahbari\n	3		9	1
561	2016-03-11 15:09:21.438926+00	558	 Kino-teleoperatorlik\n	3		9	1
562	2016-03-11 15:09:21.447237+00	557	 Texnogen san'at: kino, televideniye va radio ovoz rejissorligi \n	3		9	1
563	2016-03-11 15:09:21.455717+00	556	 rejissorlik: musiqiy teatr rejissorligi\n	3		9	1
564	2016-03-11 15:09:21.463984+00	555	 Gidrologiya (suv omborlari bo`yicha)\n	3		9	1
565	2016-03-11 15:09:21.472248+00	554	 Kasb ta'limi: suv xo`jaligi va melioratsiya\n	3		9	1
566	2016-03-11 15:09:21.480641+00	553	 Kasb ta'limi: yer tuzish va yer kadastri\n	3		9	1
567	2016-03-11 15:09:21.488971+00	552	 Suv xo`jaligi va melioratsiya ishlarini mexanizatsiyalashtirish\n	3		9	1
568	2016-03-11 15:09:21.497229+00	551	 Irrigatsiya tizimlarida suv energiyasidan foydalanish\n	3		9	1
569	2016-03-11 15:09:21.50556+00	550	 Yer tuzish va yer kadastri\n	3		9	1
570	2016-03-11 15:09:21.514032+00	549	 Kasb ta'limi: texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish\n	3		9	1
571	2016-03-11 15:09:21.522285+00	548	 Kasb ta'limi: qishloq xo`jaligini elektrlashtirish va avtomatlashtirish\n	3		9	1
572	2016-03-11 15:09:21.530607+00	547	 Qishloq xo`jaligini elektrlashtirish va avtomatlashtirish\n	3		9	1
573	2016-03-11 15:09:21.53894+00	546	 Dorivor o`simliklarni yetishtirish texnologiyasi\n	3		9	1
574	2016-03-11 15:09:21.547353+00	545	 Ipakchilik\n	3		9	1
575	2016-03-11 15:09:21.555608+00	544	 O`rmonchilik va aholi yashash joylarini ko`kalamzorlashtirish\n	3		9	1
576	2016-03-11 15:09:21.563981+00	543	 Agrokimyo va agrotuproqshunoslik\n	3		9	1
577	2016-03-11 15:09:21.572304+00	542	 Kasb ta'limi: zootexniya\n	3		9	1
578	2016-03-11 15:09:21.580596+00	541	 Kasb ta'limi: veterinariya\n	3		9	1
579	2016-03-11 15:09:21.588881+00	540	 Veterinariya\n	3		9	1
580	2016-03-11 15:09:21.597238+00	539	 Zootexniya (turlari bo`yicha)\n	3		9	1
581	2016-03-11 15:09:21.605671+00	538	 Agronomiya (dehqonchilik mahsulotlari turlari bo`yicha)\n	3		9	1
582	2016-03-11 15:09:21.613927+00	537	 O`simliklar himoyasi va karantini\n	3		9	1
583	2016-03-11 15:09:21.622278+00	536	 Qishloq xo`jaligi ekinlari seleksiyasi va urug`chiligi\n	3		9	1
584	2016-03-11 15:09:21.630556+00	535	 Gidrotexnika inshootlari va nasos stansiyalaridan foydalanish\n	3		9	1
585	2016-03-11 15:09:21.639044+00	534	 Suv xo`jaligi va melioratsiya\n	3		9	1
586	2016-03-11 15:09:21.647259+00	533	 Qishloq xo`jaligini mexanizatsiyalashtirish\n	3		9	1
587	2016-03-11 15:09:21.655599+00	532	 Qishloq xo`jaligida menejment\n	3		9	1
588	2016-03-11 15:09:21.6747+00	531	 Meva-sabzavotchilik va uzumchilik\n	3		9	1
589	2016-03-11 15:09:21.697477+00	530	 Sanoat farmatsiyasi (turlari bo`yicha)\n	3		9	1
590	2016-03-11 15:09:21.705599+00	529	 Farmatsiya (turlari bo`yicha)\n	3		9	1
591	2016-03-11 15:09:21.713958+00	528	 Kasb ta'limi: farmatsiya\n	3		9	1
592	2016-03-11 15:09:21.722254+00	527	 Kasb ta'limi: konchilik ishi\n	3		9	1
593	2016-03-11 15:09:21.730689+00	526	 Kasb ta'limi: dizayn\n	3		9	1
594	2016-03-11 15:09:21.73893+00	525	 Kasb ta'limi: kompyuter grafikasi va dizayn\n	3		9	1
595	2016-03-11 15:09:21.747256+00	524	 Tarix o`qitish metodikasi\n	3		9	1
596	2016-03-11 15:09:21.755695+00	523	 O`zbek tili va adabiyoti\n	3		9	1
597	2016-03-11 15:09:21.763967+00	522	 Defektologiya\n	3		9	1
598	2016-03-11 15:09:21.772234+00	521	 Yurisprudensiya (halqaro huquqiy faoliyat)\n	3		9	1
599	2016-03-11 15:09:21.780549+00	520	 Davolash ishi\n	3		9	1
600	2016-03-11 15:09:21.78901+00	519	 Pediatriya ishi\n	3		9	1
601	2016-03-11 15:09:21.79738+00	518	 Stomatologiya\n	3		9	1
602	2016-03-11 15:09:21.805659+00	517	 Filologiya va tillarni o`qitish: koreys tili\n	3		9	1
603	2016-03-11 15:09:21.813995+00	516	 Filologiya va tillarni o`qitish: arab tili\n	3		9	1
604	2016-03-11 15:09:21.822407+00	515	 Filologiya va tillarni o`qitish: italyan tili\n	3		9	1
605	2016-03-11 15:09:21.830661+00	514	 Yurisprudensiya (faoliyat turlari bo`yicha)\n	3		9	1
606	2016-03-11 15:09:21.839002+00	513	 Kasb ta'limi: energetika\n	3		9	1
607	2016-03-11 15:09:21.847374+00	512	 Kasb ta'limi: tibbiy pedagogik ish\n	3		9	1
608	2016-03-11 15:09:21.855687+00	511	 Tibbiy profilaktika ishi\n	3		9	1
609	2016-03-11 15:09:21.864004+00	510	 Oliy hamshiralik ishi\n	3		9	1
610	2016-03-11 15:09:21.872324+00	509	 Kasb ta'limi: elektr energetikasi\n	3		9	1
611	2016-03-11 15:09:21.880785+00	508	 Biologiya o`qitish metodikasi\n	3		9	1
612	2016-03-11 15:09:21.888995+00	507	 Kimyo o`qitish metodikasi\n	3		9	1
613	2016-03-11 15:09:21.897322+00	506	 Fizika va astronomiya o`qitish metodikasi\n	3		9	1
614	2016-03-11 15:09:21.905619+00	505	 Matematika o`qitish metodikasi\n	3		9	1
615	2016-03-11 15:09:21.914096+00	504	 Kasb ta'limi: qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi\n	3		9	1
616	2016-03-11 15:09:21.922377+00	503	 Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha) \n	3		9	1
617	2016-03-11 15:09:21.930701+00	502	 Kasb ta'limi: tibbiy pedagogik ish\n	3		9	1
618	2016-03-11 15:09:21.939148+00	501	 Davolash ishi\n	3		9	1
619	2016-03-11 15:09:21.947398+00	500	 Pediatriya ishi\n	3		9	1
620	2016-03-11 15:09:21.955706+00	499	 Oliy hamshiralik ishi\n	3		9	1
621	2016-03-11 15:09:21.964038+00	498	 Kasb ta'limi: bank ishi\n	3		9	1
622	2016-03-11 15:09:21.972467+00	497	 Kasb ta'limi: buxgalteriya hisobi va audit\n	3		9	1
623	2016-03-11 15:09:21.98074+00	496	 Kasb ta'limi: moliya\n	3		9	1
624	2016-03-11 15:09:21.989032+00	495	 Moliya\n	3		9	1
625	2016-03-11 15:09:21.997376+00	494	 Baholash ishi\n	3		9	1
626	2016-03-11 15:09:22.005742+00	493	 Pensiya ishi\n	3		9	1
627	2016-03-11 15:09:22.014+00	492	 Sug`urta ishi\n	3		9	1
628	2016-03-11 15:09:22.022365+00	491	 Kasb ta'limi: avtomobil yo`llari va aerodromlar\n	3		9	1
629	2016-03-11 15:09:22.030848+00	490	 Kasb ta'limi: tabiiy tolalarni dastlabki ishlash texnologiyasi\n	3		9	1
630	2016-03-11 15:09:22.039049+00	489	 Kasb ta'limi: yengil sanoat buyumlari konstruksiyasini ishlash va texnologiyasi\n	3		9	1
631	2016-03-11 15:09:22.04736+00	488	 Rangtasvir: teatr-bezak rangtasviri \n	3		9	1
632	2016-03-11 15:09:22.055849+00	487	 Rangtasvir: mahobatli rangtasvir\n	3		9	1
633	2016-03-11 15:09:22.064138+00	486	 Rangtasvir: dastgohli rangtasvir \n	3		9	1
634	2016-03-11 15:09:22.072513+00	485	 San'atshunoslik: muzeyshunoslik; konservatsiya va badiiy yodgorliklarni saqlash\n	3		9	1
635	2016-03-11 15:09:22.080727+00	484	 San'atshunoslik: tasviriy va amaliy san'at\n	3		9	1
636	2016-03-11 15:09:22.089219+00	483	 Kasb ta'limi: dizayn (libos dizayni va gazlamalarning badiiy yechimi)\n	3		9	1
637	2016-03-11 15:09:22.097482+00	482	 Kasb ta'limi: dizayn (interyerni loyihalash)\n	3		9	1
638	2016-03-11 15:09:22.105747+00	481	 Kasb ta'limi: rangtasvir\n	3		9	1
639	2016-03-11 15:09:22.114089+00	480	 Rangtasvir: filmning tasviriy yechimi\n	3		9	1
640	2016-03-11 15:09:22.122601+00	479	 Dizayn: kompyuter grafikasi va badiiy foto\n	3		9	1
641	2016-03-11 15:09:22.130704+00	478	 Dizayn: reklama va amaliy grafika\n	3		9	1
642	2016-03-11 15:09:22.139088+00	477	 Amaliy sanat: amaliy san'at asarlarini ta'mirlash\n	3		9	1
643	2016-03-11 15:09:22.14741+00	476	 Amaliy sanat: memoriy yodgorliklar bezagini tamirlash\n	3		9	1
644	2016-03-11 15:09:22.155952+00	475	 Amaliy sanat: badiiy kulolchilik\n	3		9	1
645	2016-03-11 15:09:22.164146+00	474	 Haykaltaroshlik (turlari bo`yicha)\n	3		9	1
646	2016-03-11 15:09:22.172417+00	473	 Grafika: xattotlik va miniatura\n	3		9	1
647	2016-03-11 15:09:22.180865+00	472	 Grafika: dastgoh va kitob grafikasi\n	3		9	1
648	2016-03-11 15:09:22.18917+00	471	 Dizayn: libos dizayni va gazlamalarning badiiy yechimi\n	3		9	1
649	2016-03-11 15:09:22.197456+00	470	 Dizayn: interyerni loyihalash\n	3		9	1
650	2016-03-11 15:09:22.205761+00	469	 Kasb ta'limi: xizmatlar sohasi\n	3		9	1
651	2016-03-11 15:09:22.214315+00	468	 Qiymat injiniringi\n	3		9	1
652	2016-03-11 15:09:22.222448+00	467	 Gidrotexnika qurilishi (turlari bo`yicha)\n	3		9	1
653	2016-03-11 15:09:22.23074+00	466	 Filologiya va tillarni o`qitish: arab, fors, turk, uyg`ur, dariy, pushtu tullari\n	3		9	1
654	2016-03-11 15:09:22.239075+00	465	 Filologiya va tillarni o`qitish: yapon, xitoy, koreys, hind, urdu, indonez, malay, vyetnam tillari\n	3		9	1
655	2016-03-11 15:09:22.247508+00	464	 Filologiya va tillarni o`qitish: sharq mumtoz tillari\n	3		9	1
656	2016-03-11 15:09:22.255719+00	463	 Jahon siyosati\n	3		9	1
657	2016-03-11 15:09:22.264082+00	462	 Xorijiy mamlakatlar iqtisodiyoti va mamlakatshunoslik: MDH mamlakatlari\n	3		9	1
658	2016-03-11 15:09:22.272447+00	461	 Xorijiy mamlakatlar iqtisodiyoti va mamlakatshunoslik: Yaqin va O`rta Sharq mamlakatlari\n	3		9	1
659	2016-03-11 15:09:22.28084+00	460	 Xorijiy mamlakatlar iqtisodiyoti va mamlakatshunoslik: Uzoq Sharq mamlakatlari\n	3		9	1
660	2016-03-11 15:09:22.289109+00	459	 Xorijiy mamlakatlar iqtisodiyoti va mamlakatshunoslik: Xitoy va Janubiy-Sharqiy Osiyo mamlakatlari\n	3		9	1
661	2016-03-11 15:09:22.297442+00	458	 Filologiya va tillarni o`qitish: yapon tili\n	3		9	1
662	2016-03-11 15:09:22.305989+00	457	 Filologiya va tillarni o`qitish: xitoy tili\n	3		9	1
663	2016-03-11 15:09:22.314214+00	456	 Filologiya va tillarni o`qitish: ispan tili\n	3		9	1
664	2016-03-11 15:09:22.322507+00	455	 Tarjima nazariyasi va amaliyoti (tillar bo`yicha)\n	3		9	1
665	2016-03-11 15:09:22.33083+00	454	 Xoreografiya (turlari bo`yicha)\n	3		9	1
666	2016-03-11 15:09:22.339205+00	453	 San'atshunoslik: xoreografiya \n	3		9	1
667	2016-03-11 15:09:22.347494+00	452	 Bank ishi\n	3		9	1
668	2016-03-11 15:09:22.355818+00	451	 Buxgalteriya hisobi va audit (tarmoqlar bo`yicha)\n	3		9	1
669	2016-03-11 15:09:22.364321+00	450	 Statistika (tarmoqlar va sohalar bo`yicha)\n	3		9	1
670	2016-03-11 15:09:22.372499+00	449	 Noyob va radioaktiv metallar rudalarini qazib olish, qayta ishlash texnikasi va texnologiyasi\n	3		9	1
671	2016-03-11 15:09:22.380832+00	448	 Soliqlar va soliqqa tortish\n	3		9	1
1125	2016-03-11 15:19:45.673265+00	1018	Hayotiy faoliyat xavfsizligi	3		9	1
672	2016-03-11 15:09:22.389148+00	447	 Elektronika va asbobsozlik (tarmoqlar bo`yicha)\n	3		9	1
673	2016-03-11 15:09:22.397633+00	446	 Aviasozlik va havo kemalaridan texnik foydalanish \n	3		9	1
674	2016-03-11 15:09:22.405821+00	445	 Metallurgiya\n	3		9	1
675	2016-03-11 15:09:22.414145+00	444	 Energetika (tarmoqlar bo`yicha)\n	3		9	1
676	2016-03-11 15:09:22.422486+00	443	 Kasb ta'limi: texnologik mashinalar va jihozlar\n	3		9	1
677	2016-03-11 15:09:22.4309+00	442	 Konchilik ishi\n	3		9	1
678	2016-03-11 15:09:22.439168+00	441	 Foydali qazilma konlari geologiyasi, qidiruv va razvedkasi (kon turlari bo`yicha)\n	3		9	1
679	2016-03-11 15:09:22.447496+00	440	 Hayotiy faoliyat xavfsizligi\n	3		9	1
680	2016-03-11 15:09:22.455895+00	439	 Havodagi harakatni boshqarish\n	3		9	1
681	2016-03-11 15:09:22.464252+00	438	 Xizmat ko`rsatish texnikasi va texnologiyasi (xizmat ko`rsatish tarmoqlari bo`yicha)\n	3		9	1
682	2016-03-11 15:09:22.472521+00	437	 Radioelektron qurilmalar va tizimlar (tarmoqlar bo`yicha)\n	3		9	1
683	2016-03-11 15:09:22.480861+00	436	 Neft va neft-gazni qayta ishlash texnologiyasi\n	3		9	1
684	2016-03-11 15:09:22.489338+00	435	 Biotexnologiya (tarmoqlar bo`yicha)\n	3		9	1
685	2016-03-11 15:09:22.497533+00	434	 Gidrogeologiya va muhandislik geologiyasi\n	3		9	1
686	2016-03-11 15:09:22.50586+00	433	 Neft va gaz konlarini ishga tushirish va ulardan foydalanish\n	3		9	1
687	2016-03-11 15:09:22.514182+00	432	 Neft-gazni qayta ishlash sanoati obyektlarini loyihalashtirish, qurish va ulardan foydalanish\n	3		9	1
688	2016-03-11 15:09:22.522617+00	431	 Falsafa\n	3		9	1
689	2016-03-11 15:09:22.530854+00	430	 Ijtimoiy ish (pensiya ta'minoti)\n	3		9	1
690	2016-03-11 15:09:22.539152+00	429	 Axborot xavfsizligi (sohalar bo`yicha)\n	3		9	1
691	2016-03-11 15:09:22.547621+00	428	 Axborot tizimlarining matematik va dasturiy ta'minoti\n	3		9	1
692	2016-03-11 15:09:22.555979+00	427	 Geologiya\n	3		9	1
693	2016-03-11 15:09:22.564192+00	426	 Geofizika\n	3		9	1
694	2016-03-11 15:09:22.572552+00	425	 Gidrologiya (tarmoqlar bo`yicha)\n	3		9	1
695	2016-03-11 15:09:22.580935+00	424	 Sotsiologiya\n	3		9	1
696	2016-03-11 15:09:22.589265+00	423	 Jurnalistika (faoliyat turlari bo`yicha)\n	3		9	1
697	2016-03-11 15:09:22.597536+00	422	 Geodeziya, kartografiya va kadastr (funksiyalari bo`yicha)\n	3		9	1
698	2016-03-11 15:09:22.605864+00	421	 Kasb ta'limi: tasviriy san'at va muhandislik grafikasi\n	3		9	1
699	2016-03-11 15:09:22.61429+00	420	 Kasb ta'limi: bino va inshootlar qurilishi\n	3		9	1
700	2016-03-11 15:09:22.622539+00	419	 Arxitektura (turlari bo`yicha)\n	3		9	1
701	2016-03-11 15:09:22.63086+00	418	 Shahar qurilishi va xo`jaligi\n	3		9	1
702	2016-03-11 15:09:22.639308+00	417	 Ko`chmas mulk ekspertizasi va uni boshqarish\n	3		9	1
703	2016-03-11 15:09:22.64762+00	416	 Arxeologiya\n	3		9	1
704	2016-03-11 15:09:22.655894+00	415	 Kasb ta'limi: elektronika va asbobsozlik\n	3		9	1
705	2016-03-11 15:09:22.664228+00	414	 Ijtimoiy ish (faoliyatning turli sohalari bo`yicha)\n	3		9	1
706	2016-03-11 15:09:22.67273+00	413	 Kadrlar menejmenti\n	3		9	1
707	2016-03-11 15:09:22.680939+00	412	 Gidrometeorologiya\n	3		9	1
708	2016-03-11 15:09:22.689272+00	411	 Mexanika\n	3		9	1
709	2016-03-11 15:09:22.697586+00	410	 Astronomiya\n	3		9	1
710	2016-03-11 15:09:22.706038+00	409	 Dizayn (turlari bo`yicha)\n	3		9	1
711	2016-03-11 15:09:22.714335+00	408	 Marketing (tarmoqlar va sohalar bo`yicha)\n	3		9	1
712	2016-03-11 15:09:22.722685+00	407	 Matbaa va qadoqlash jarayonlari texnologiyasi \n	3		9	1
713	2016-03-11 15:09:22.731091+00	406	 Tabiiy tolalarni dastlabki ishlash texnologiyasi (xom ashyo turlari bo`yicha)\n	3		9	1
714	2016-03-11 15:09:22.73931+00	405	 Energetika (tarmoqlar bo`yicha) \n	3		9	1
715	2016-03-11 15:09:22.747571+00	404	 Kasb ta'limi: muhandislik kommunikatsiyalari qurilishi va montaji\n	3		9	1
716	2016-03-11 15:09:22.755934+00	403	 Kasb ta'limi: qishloq xo`jaligini mexanizatsiyalashtirish\n	3		9	1
717	2016-03-11 15:09:22.764401+00	402	 Kasb ta'limi: yerusti transport tizimlari va ularning ekspluatatsiyasi\n	3		9	1
718	2016-03-11 15:09:22.772608+00	401	 Qishloq hududlarini arxitektura-loyihaviy tashkil etish\n	3		9	1
719	2016-03-11 15:09:22.780929+00	400	 Hayotiy faoliyat xavfsizligi \n	3		9	1
720	2016-03-11 15:09:22.789262+00	399	 Sport faoliyati (xotin-qizlar sporti yo`nalishi bo`yicha)\n	3		9	1
721	2016-03-11 15:09:22.797681+00	398	 Ijtimoiy-madaniy faoliyat\n	3		9	1
722	2016-03-11 15:09:22.805932+00	397	 Geografiya \n	3		9	1
723	2016-03-11 15:09:22.814305+00	396	 Amaliy matematika va informatika\n	3		9	1
724	2016-03-11 15:09:22.822776+00	395	 Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)\n	3		9	1
725	2016-03-11 15:09:22.830973+00	394	 Yengil sanoat buyumlari konstruksiyasini ishlash va texnologiyasi (ishlab chiqarish turlari bo`yicha)\n	3		9	1
726	2016-03-11 15:09:22.83931+00	393	 Bino va inshootlar qurilishi (turlari bo`yicha)\n	3		9	1
727	2016-03-11 15:09:22.84764+00	392	 Tashishni tashkil etish va transport logistikasi (transport turlari bo`yicha)\n	3		9	1
728	2016-03-11 15:09:22.856086+00	391	 Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)\n	3		9	1
729	2016-03-11 15:09:22.864311+00	390	 Avtomobil yo`llari va aerodromlar\n	3		9	1
730	2016-03-11 15:09:22.872635+00	389	 Transport inshootlarining ekspluatatsiyasi (transport inshootlari turlari bo`yicha)\n	3		9	1
731	2016-03-11 15:09:22.880915+00	388	 Qurilish materiallari, buyumlari va konstruksiyalarini ishlab chiqarish\n	3		9	1
732	2016-03-11 15:09:22.889385+00	387	 Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)\n	3		9	1
733	2016-03-11 15:09:22.897634+00	386	 Geografiya o`qitish metodikasi\n	3		9	1
734	2016-03-11 15:09:22.905966+00	385	 Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi\n	3		9	1
735	2016-03-11 15:09:22.914451+00	384	 Oziq-ovqat texnologiyasi (mahsulotlar turlari bo`yicha)\n	3		9	1
736	2016-03-11 15:09:22.922635+00	383	 Tarix (Islom tarixi va manbashunosligi)\n	3		9	1
737	2016-03-11 15:09:22.930982+00	382	 Dinshunoslik\n	3		9	1
738	2016-03-11 15:09:22.939342+00	381	 Psixologiya (din sotsiopsixologiyasi)\n	3		9	1
739	2016-03-11 15:09:22.947782+00	380	 Jahon iqtisodiyoti va xalqaro iqtisodiy munosabatlar (mintaqalar va faoliyat turlari bo`yicha)\n	3		9	1
740	2016-03-11 15:09:22.956015+00	379	 Informatika va axborot texnologiyalari (tarmoqlar va sohalar bo`yicha)\n	3		9	1
741	2016-03-11 15:09:22.964351+00	378	 Kasb ta'limi: yengil sanoat texnologiyalari va jihozlari\n	3		9	1
742	2016-03-11 15:09:22.972724+00	377	 Kasb ta'limi: elektr texnikasi, elektr mexanikasi va elektr texnologiyalari\n	3		9	1
743	2016-03-11 15:09:22.981087+00	376	 Kasb ta'limi: menejment\n	3		9	1
744	2016-03-11 15:09:22.989362+00	375	 Kasb ta'limi: kimyoviy texnologiya\n	3		9	1
745	2016-03-11 15:09:22.997685+00	374	 Kasb ta'limi: neft-gazkimyo sanoati texnologiyasi \n	3		9	1
746	2016-03-11 15:09:23.006207+00	373	 Menejment (tarmoqlar va sohalar bo`yicha)\n	3		9	1
747	2016-03-11 15:09:23.014373+00	372	 Texnologik jarayonlarni boshqarishning axborot-kommunikatsiya tizimlari\n	3		9	1
748	2016-03-11 15:09:23.022688+00	371	 Yengil sanoat texnologiyalari va jihozlari\n	3		9	1
749	2016-03-11 15:09:23.031015+00	370	 Texnologiyalar va jihozlar (tarmoqlar bo`yicha)\n	3		9	1
750	2016-03-11 15:09:23.039471+00	369	 Neft-gazkimyo sanoati texnologiyasi\n	3		9	1
751	2016-03-11 15:09:23.04775+00	368	 Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)\n	3		9	1
752	2016-03-11 15:09:23.056116+00	367	 Chaqiriqqacha harbiy ta'lim\n	3		9	1
753	2016-03-11 15:09:23.064536+00	366	 Musiqa ta'limi\n	3		9	1
754	2016-03-11 15:09:23.072693+00	365	 Kasb ta'limi: amaliy san'at\n	3		9	1
755	2016-03-11 15:09:23.081153+00	364	 Kasb ta'limi: iqtisodiyot\n	3		9	1
756	2016-03-11 15:09:23.089431+00	363	 Kasb ta'limi: agronomiya\n	3		9	1
757	2016-03-11 15:09:23.097962+00	362	 Filologiya va tillarni o`qitish: ingliz tili\n	3		9	1
758	2016-03-11 15:09:23.106106+00	361	 Filologiya va tillarni o`qitish: nemis tili\n	3		9	1
759	2016-03-11 15:09:23.114401+00	360	 Turizm (faoliyat yo`nalishlari bo`yicha)\n	3		9	1
760	2016-03-11 15:09:23.122728+00	359	 Mehmonxona xo`jaligini tashkil etish va boshqarish\n	3		9	1
761	2016-03-11 15:09:23.131174+00	358	 Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)\n	3		9	1
762	2016-03-11 15:09:23.139402+00	357	 Arxivshunoslik\n	3		9	1
763	2016-03-11 15:09:23.147739+00	356	 Psixologiya (faoliyat turlari bo`yicha)\n	3		9	1
764	2016-03-11 15:09:23.156111+00	355	 Tuproqshunoslik\n	3		9	1
765	2016-03-11 15:09:23.164481+00	354	 Filologiya va tillarni o`qitish: fransuz tili\n	3		9	1
766	2016-03-11 15:09:23.172763+00	353	 Matematika \n	3		9	1
767	2016-03-11 15:09:23.181094+00	352	 Kasb ta'limi: mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish\n	3		9	1
768	2016-03-11 15:09:23.189596+00	351	 Iqtisodiyot (tarmoqlar va sohalar bo`yicha)\n	3		9	1
769	2016-03-11 15:09:23.19785+00	350	 Avtomobilsozlik va traktorsozlik\n	3		9	1
770	2016-03-11 15:09:23.206177+00	349	 Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)\n	3		9	1
771	2016-03-11 15:09:23.214476+00	348	 Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)\n	3		9	1
772	2016-03-11 15:09:23.222873+00	347	 Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)\n	3		9	1
773	2016-03-11 15:09:23.231145+00	346	 Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)\n	3		9	1
774	2016-03-11 15:09:23.239466+00	345	 Mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish\n	3		9	1
775	2016-03-11 15:09:23.247881+00	344	 Materialshunoslik va yangi materiallar texnologiyasi\n	3		9	1
776	2016-03-11 15:09:23.256167+00	343	 Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)\n	3		9	1
777	2016-03-11 15:09:23.264468+00	342	 Maktabgacha ta'lim\n	3		9	1
778	2016-03-11 15:09:23.272799+00	341	 Boshlang`ich ta'lim va sport-tarbiyaviy ish\n	3		9	1
779	2016-03-11 15:09:23.281276+00	340	 Milliy g`oya, ma'naviyat asoslari va huquq ta'limi\n	3		9	1
780	2016-03-11 15:09:23.289465+00	339	 Xorijiy til va adabiyoti: fransuz tili\n	3		9	1
781	2016-03-11 15:09:23.297798+00	338	 Xorijiy til va adabiyoti: nemis tili\n	3		9	1
782	2016-03-11 15:09:23.306116+00	337	 Xorijiy til va adabiyoti: ingliz tili\n	3		9	1
783	2016-03-11 15:09:23.314652+00	336	 Musiqa ta'limie\n	3		9	1
784	2016-03-11 15:09:23.32288+00	335	 Kasb ta'limi: informatika va axborot texnologiyalari\n	3		9	1
785	2016-03-11 15:09:23.331206+00	334	 Pedagogika va psixologiya\n	3		9	1
786	2016-03-11 15:09:23.339641+00	333	 Tasviriy san'at va muhandislik grafikasi\n	3		9	1
787	2016-03-11 15:09:23.347915+00	332	 Jismoniy madaniyat\n	3		9	1
788	2016-03-11 15:09:23.356209+00	331	 Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)\n	3		9	1
789	2016-03-11 15:09:23.364543+00	330	 Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)\n	3		9	1
790	2016-03-11 15:09:23.372988+00	329	 Mehnat iqtisodiyoti va sotsiologiyasi\n	3		9	1
791	2016-03-11 15:09:23.381277+00	328	 Geografiya\n	3		9	1
792	2016-03-11 15:09:23.389574+00	327	 Kimyo\n	3		9	1
793	2016-03-11 15:09:23.397845+00	326	 Fizika\n	3		9	1
794	2016-03-11 15:09:23.406229+00	325	 Biologiya (turlari bo`yicha)\n	3		9	1
795	2016-03-11 15:09:23.414505+00	324	 Matematika\n	3		9	1
796	2016-03-11 15:09:23.422839+00	323	 Tarix (mamlakatlar va mintaqalar bo`yicha)\n	3		9	1
797	2016-03-11 15:09:23.431231+00	322	 Filologiya va tillarni o`qitish: o`zbek tili\n	3		9	1
798	2016-03-11 15:09:23.439598+00	321	 Mehnat ta'limi\n	3		9	1
799	2016-03-11 15:09:23.44788+00	320	 Informatika o`qitish metodikasi\n	3		9	1
800	2016-03-11 15:17:51.151617+00	194	Buxoro muhandislik-texnologiya instituti	2	Changed name.	7	1
801	2016-03-11 15:18:13.089711+00	708	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
802	2016-03-11 15:18:13.100379+00	707	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
803	2016-03-11 15:18:13.108704+00	706	Maktabgacha ta'lim	3		9	1
804	2016-03-11 15:18:13.116991+00	705	Jismoniy madaniyat	3		9	1
805	2016-03-11 15:18:13.125306+00	704	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
806	2016-03-11 15:18:13.133677+00	703	Mehnat ta'limi	3		9	1
807	2016-03-11 15:18:13.142081+00	702	Chaqiriqqacha harbiy ta'lim	3		9	1
808	2016-03-11 15:18:13.150426+00	701	Xorijiy til va adabiyoti: ingliz tili	3		9	1
809	2016-03-11 15:18:13.158721+00	700	Musiqa ta'limi	3		9	1
810	2016-03-11 15:18:13.16707+00	699	Kasb ta'limi: amaliy san'at	3		9	1
811	2016-03-11 15:18:13.175482+00	698	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
812	2016-03-11 15:18:13.183731+00	697	Kasb ta'limi: iqtisodiyot	3		9	1
813	2016-03-11 15:18:13.192055+00	696	Kasb ta'limi: agronomiya	3		9	1
814	2016-03-11 15:18:13.200455+00	695	Pedagogika va psixologiya	3		9	1
815	2016-03-11 15:18:13.208722+00	694	Tasviriy san'at va muhandislik grafikasi	3		9	1
816	2016-03-11 15:18:13.21697+00	693	Filologiya va tillarni o`qitish: o`zbek tili	3		9	1
817	2016-03-11 15:18:13.225311+00	692	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
818	2016-03-11 15:18:13.233746+00	691	Filologiya va tillarni o`qitish: nemis tili	3		9	1
819	2016-03-11 15:18:13.242046+00	690	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
820	2016-03-11 15:18:13.250393+00	689	Turizm (faoliyat yo`nalishlari bo`yicha)	3		9	1
821	2016-03-11 15:18:13.258689+00	688	Mehmonxona xo`jaligini tashkil etish va boshqarish	3		9	1
822	2016-03-11 15:18:13.267134+00	687	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
823	2016-03-11 15:18:13.27533+00	686	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
824	2016-03-11 15:18:13.2837+00	685	Arxivshunoslik	3		9	1
825	2016-03-11 15:18:13.292083+00	684	Psixologiya (faoliyat turlari bo`yicha)	3		9	1
826	2016-03-11 15:18:13.300419+00	683	Tuproqshunoslik	3		9	1
827	2016-03-11 15:18:13.308672+00	682	Geografiya	3		9	1
828	2016-03-11 15:18:13.31703+00	681	Filologiya va tillarni o`qitish: fransuz tili	3		9	1
829	2016-03-11 15:18:13.325479+00	680	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
830	2016-03-11 15:18:13.333678+00	679	Matematika	3		9	1
831	2016-03-11 15:18:13.342019+00	678	Biologiya (turlari bo`yicha)	3		9	1
832	2016-03-11 15:18:13.350503+00	677	Fizika	3		9	1
833	2016-03-11 15:18:13.358794+00	676	Kimyo	3		9	1
834	2016-03-11 15:18:13.367071+00	675	Kasb ta'limi: mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
835	2016-03-11 15:18:13.375316+00	674	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
836	2016-03-11 15:18:13.383772+00	673	Avtomobilsozlik va traktorsozlik	3		9	1
837	2016-03-11 15:18:13.392133+00	672	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
838	2016-03-11 15:18:13.400474+00	671	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
839	2016-03-11 15:18:13.408792+00	670	Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)	3		9	1
840	2016-03-11 15:18:13.417241+00	669	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
841	2016-03-11 15:18:13.425564+00	668	Mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
842	2016-03-11 15:18:13.433871+00	667	Materialshunoslik va yangi materiallar texnologiyasi	3		9	1
843	2016-03-11 15:18:13.442097+00	666	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)	3		9	1
844	2016-03-11 15:18:13.45047+00	665	Maktabgacha ta'lim	3		9	1
845	2016-03-11 15:18:13.458778+00	664	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
846	2016-03-11 15:18:13.467169+00	663	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
847	2016-03-11 15:18:13.475376+00	662	Xorijiy til va adabiyoti: fransuz tili	3		9	1
848	2016-03-11 15:18:13.484037+00	661	Xorijiy til va adabiyoti: nemis tili	3		9	1
849	2016-03-11 15:18:13.492119+00	660	Xorijiy til va adabiyoti: ingliz tili	3		9	1
850	2016-03-11 15:18:13.50062+00	659	Musiqa ta'limie	3		9	1
851	2016-03-11 15:18:13.508808+00	658	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
852	2016-03-11 15:18:13.517447+00	657	Pedagogika va psixologiya	3		9	1
853	2016-03-11 15:18:13.525518+00	656	Tasviriy san'at va muhandislik grafikasi	3		9	1
854	2016-03-11 15:18:13.534046+00	655	Jismoniy madaniyat	3		9	1
855	2016-03-11 15:18:13.542193+00	654	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
856	2016-03-11 15:18:13.550492+00	653	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
857	2016-03-11 15:18:13.558887+00	652	Mehnat iqtisodiyoti va sotsiologiyasi	3		9	1
858	2016-03-11 15:18:13.567147+00	651	Geografiya	3		9	1
859	2016-03-11 15:18:13.575468+00	650	Kimyo	3		9	1
860	2016-03-11 15:18:13.583886+00	649	Fizika	3		9	1
861	2016-03-11 15:18:13.592172+00	648	Biologiya (turlari bo`yicha)	3		9	1
862	2016-03-11 15:18:13.600652+00	647	Matematika	3		9	1
863	2016-03-11 15:18:13.60879+00	646	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
864	2016-03-11 15:18:13.617112+00	645	Filologiya va tillarni o`qitish: o`zbek tili	3		9	1
865	2016-03-11 15:18:13.625536+00	644	Mehnat ta'limi	3		9	1
866	2016-03-11 15:18:13.633892+00	643	Informatika o`qitish metodikasi	3		9	1
867	2016-03-11 15:18:54.791469+00	210	Namangan muhandislik-texnologik instituti	2	Changed name and address.	7	1
868	2016-03-11 15:19:14.205129+00	879	Energetika (tarmoqlar bo`yicha)	3		9	1
869	2016-03-11 15:19:14.222461+00	878	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
870	2016-03-11 15:19:14.230723+00	877	Kasb ta'limi: muhandislik kommunikatsiyalari qurilishi va montaji	3		9	1
871	2016-03-11 15:19:14.239025+00	876	Kasb ta'limi: qishloq xo`jaligini mexanizatsiyalashtirish	3		9	1
872	2016-03-11 15:19:14.247316+00	875	Kasb ta'limi: kimyoviy texnologiya	3		9	1
873	2016-03-11 15:19:14.255692+00	874	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
874	2016-03-11 15:19:14.26393+00	873	Kasb ta'limi: iqtisodiyot	3		9	1
875	2016-03-11 15:19:14.272283+00	872	Kasb ta'limi: yerusti transport tizimlari va ularning ekspluatatsiyasi	3		9	1
876	2016-03-11 15:19:14.280858+00	871	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)	3		9	1
877	2016-03-11 15:19:14.289035+00	870	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
878	2016-03-11 15:19:14.297344+00	869	Mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
879	2016-03-11 15:19:14.305652+00	868	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
880	2016-03-11 15:19:14.314109+00	867	Qishloq hududlarini arxitektura-loyihaviy tashkil etish	3		9	1
881	2016-03-11 15:19:14.322437+00	866	Avtomobil yo`llari va aerodromlar	3		9	1
882	2016-03-11 15:19:14.330683+00	865	Qurilish materiallari, buyumlari va konstruksiyalarini ishlab chiqarish	3		9	1
883	2016-03-11 15:19:14.339014+00	864	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)	3		9	1
884	2016-03-11 15:19:14.347437+00	863	Bino va inshootlar qurilishi (turlari bo`yicha)	3		9	1
885	2016-03-11 15:19:14.355656+00	862	Oziq-ovqat texnologiyasi (mahsulotlar turlari bo`yicha)	3		9	1
886	2016-03-11 15:19:14.364015+00	861	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
887	2016-03-11 15:19:14.372401+00	860	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
888	2016-03-11 15:19:14.380713+00	859	Filologiya va tillarni o`qitish: o`zbek tili	3		9	1
889	2016-03-11 15:19:14.389018+00	858	Jismoniy madaniyat	3		9	1
890	2016-03-11 15:19:14.397406+00	857	Maktabgacha ta'lim	3		9	1
891	2016-03-11 15:19:14.405764+00	856	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
892	2016-03-11 15:19:14.414079+00	855	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
893	2016-03-11 15:19:14.422345+00	854	Xorijiy til va adabiyoti: ingliz tili	3		9	1
894	2016-03-11 15:19:14.430705+00	853	Musiqa ta'limi	3		9	1
895	2016-03-11 15:19:14.455786+00	852	Kasb ta'limi: iqtisodiyot	3		9	1
896	2016-03-11 15:19:14.464104+00	851	Pedagogika va psixologiya	3		9	1
897	2016-03-11 15:19:14.472388+00	850	Tasviriy san'at va muhandislik grafikasi	3		9	1
898	2016-03-11 15:19:14.480717+00	849	Filologiya va tillarni o`qitish: nemis tili	3		9	1
899	2016-03-11 15:19:14.489048+00	848	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
900	2016-03-11 15:19:14.497434+00	847	Hayotiy faoliyat xavfsizligi	3		9	1
901	2016-03-11 15:19:14.505801+00	846	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
902	2016-03-11 15:19:14.514075+00	845	Sport faoliyati (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
903	2016-03-11 15:19:14.522455+00	844	Ijtimoiy-madaniy faoliyat	3		9	1
904	2016-03-11 15:19:14.530816+00	843	Arxivshunoslik	3		9	1
905	2016-03-11 15:19:14.539063+00	842	Geografiya	3		9	1
906	2016-03-11 15:19:14.547423+00	841	Kimyo	3		9	1
907	2016-03-11 15:19:14.555873+00	840	Fizika	3		9	1
908	2016-03-11 15:19:14.564095+00	839	Biologiya (turlari bo`yicha)	3		9	1
909	2016-03-11 15:19:14.572428+00	838	Amaliy matematika va informatika	3		9	1
910	2016-03-11 15:19:14.580769+00	837	Matematika	3		9	1
911	2016-03-11 15:19:14.589233+00	836	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
912	2016-03-11 15:19:14.597439+00	835	Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)	3		9	1
913	2016-03-11 15:19:14.605782+00	834	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
914	2016-03-11 15:19:14.614213+00	833	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
915	2016-03-11 15:19:14.62257+00	832	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)	3		9	1
916	2016-03-11 15:19:14.630942+00	831	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
917	2016-03-11 15:19:14.639103+00	830	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
918	2016-03-11 15:19:14.647592+00	829	Kasb ta'limi: iqtisodiyot	3		9	1
919	2016-03-11 15:19:14.655762+00	828	Yengil sanoat buyumlari konstruksiyasini ishlash va texnologiyasi (ishlab chiqarish turlari bo`yicha)	3		9	1
920	2016-03-11 15:19:14.664175+00	827	Bino va inshootlar qurilishi (turlari bo`yicha)	3		9	1
921	2016-03-11 15:19:14.672419+00	826	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
922	2016-03-11 15:19:14.681026+00	825	Tashishni tashkil etish va transport logistikasi (transport turlari bo`yicha)	3		9	1
923	2016-03-11 15:19:14.689186+00	824	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
924	2016-03-11 15:19:14.697578+00	823	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
925	2016-03-11 15:19:14.705954+00	822	Avtomobil yo`llari va aerodromlar	3		9	1
926	2016-03-11 15:19:14.714396+00	821	Transport inshootlarining ekspluatatsiyasi (transport inshootlari turlari bo`yicha)	3		9	1
927	2016-03-11 15:19:14.722473+00	820	Qurilish materiallari, buyumlari va konstruksiyalarini ishlab chiqarish	3		9	1
928	2016-03-11 15:19:14.730955+00	819	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)	3		9	1
929	2016-03-11 15:19:14.739167+00	818	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
930	2016-03-11 15:19:14.747753+00	817	Jismoniy madaniyat	3		9	1
931	2016-03-11 15:19:14.755762+00	816	Maktabgacha ta'lim	3		9	1
932	2016-03-11 15:19:14.764311+00	815	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
933	2016-03-11 15:19:14.772434+00	814	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
934	2016-03-11 15:19:14.780889+00	813	Xorijiy til va adabiyoti: ingliz tili	3		9	1
935	2016-03-11 15:19:14.789088+00	812	Musiqa ta'limi	3		9	1
936	2016-03-11 15:19:14.797597+00	811	Kasb ta'limi: agronomiya	3		9	1
937	2016-03-11 15:19:14.80578+00	810	Pedagogika va psixologiya	3		9	1
938	2016-03-11 15:19:14.81417+00	809	Informatika o`qitish metodikasi	3		9	1
939	2016-03-11 15:19:14.822472+00	808	Geografiya o`qitish metodikasi	3		9	1
940	2016-03-11 15:19:14.831003+00	807	Mehnat ta'limi	3		9	1
941	2016-03-11 15:19:14.839147+00	806	Filologiya va tillarni o`qitish: o`zbek tili	3		9	1
942	2016-03-11 15:19:14.847469+00	805	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
943	2016-03-11 15:19:14.855801+00	804	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
944	2016-03-11 15:19:14.864268+00	803	Oziq-ovqat texnologiyasi (mahsulotlar turlari bo`yicha)	3		9	1
945	2016-03-11 15:19:14.872534+00	802	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
946	2016-03-11 15:19:14.880829+00	801	Tuproqshunoslik	3		9	1
947	2016-03-11 15:19:14.889231+00	800	Kimyo	3		9	1
948	2016-03-11 15:19:14.897509+00	799	Fizika	3		9	1
949	2016-03-11 15:19:14.905821+00	798	Biologiya (turlari bo`yicha)	3		9	1
950	2016-03-11 15:19:14.914137+00	797	Matematika	3		9	1
951	2016-03-11 15:19:14.922642+00	796	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
952	2016-03-11 15:19:14.93079+00	795	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
953	2016-03-11 15:19:14.939097+00	794	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
954	2016-03-11 15:19:14.94747+00	793	Tarix (Islom tarixi va manbashunosligi)	3		9	1
955	2016-03-11 15:19:14.955947+00	792	Dinshunoslik	3		9	1
956	2016-03-11 15:19:14.96418+00	791	Psixologiya (din sotsiopsixologiyasi)	3		9	1
957	2016-03-11 15:19:14.972506+00	790	Jahon iqtisodiyoti va xalqaro iqtisodiy munosabatlar (mintaqalar va faoliyat turlari bo`yicha)	3		9	1
958	2016-03-11 15:19:14.980977+00	789	Informatika va axborot texnologiyalari (tarmoqlar va sohalar bo`yicha)	3		9	1
959	2016-03-11 15:19:14.989317+00	788	Kasb ta'limi: yengil sanoat texnologiyalari va jihozlari	3		9	1
960	2016-03-11 15:19:14.997592+00	787	Kasb ta'limi: elektr texnikasi, elektr mexanikasi va elektr texnologiyalari	3		9	1
961	2016-03-11 15:19:15.005886+00	786	Kasb ta'limi: menejment	3		9	1
962	2016-03-11 15:19:15.014447+00	785	Kasb ta'limi: mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
963	2016-03-11 15:19:15.022587+00	784	Kasb ta'limi: kimyoviy texnologiya	3		9	1
964	2016-03-11 15:19:15.030917+00	783	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
965	2016-03-11 15:19:15.039243+00	782	Kasb ta'limi: neft-gazkimyo sanoati texnologiyasi	3		9	1
966	2016-03-11 15:19:15.047681+00	781	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
967	2016-03-11 15:19:15.055961+00	780	Texnologik jarayonlarni boshqarishning axborot-kommunikatsiya tizimlari	3		9	1
968	2016-03-11 15:19:15.064296+00	779	Yengil sanoat texnologiyalari va jihozlari	3		9	1
969	2016-03-11 15:19:15.072703+00	778	Texnologiyalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
970	2016-03-11 15:19:15.080997+00	777	Neft-gazkimyo sanoati texnologiyasi	3		9	1
971	2016-03-11 15:19:15.089292+00	776	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
1200	2016-03-11 15:19:46.298398+00	943	Maktabgacha ta'lim	3		9	1
972	2016-03-11 15:19:15.097625+00	775	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
973	2016-03-11 15:19:15.106053+00	774	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
974	2016-03-11 15:19:15.114305+00	773	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
975	2016-03-11 15:19:15.122759+00	772	Maktabgacha ta'lim	3		9	1
976	2016-03-11 15:19:15.130976+00	771	Jismoniy madaniyat	3		9	1
977	2016-03-11 15:19:15.139499+00	770	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
978	2016-03-11 15:19:15.147676+00	769	Mehnat ta'limi	3		9	1
979	2016-03-11 15:19:15.155994+00	768	Chaqiriqqacha harbiy ta'lim	3		9	1
980	2016-03-11 15:19:15.164401+00	767	Xorijiy til va adabiyoti: ingliz tili	3		9	1
981	2016-03-11 15:19:15.172709+00	766	Musiqa ta'limi	3		9	1
982	2016-03-11 15:19:15.181001+00	765	Kasb ta'limi: amaliy san'at	3		9	1
983	2016-03-11 15:19:15.189325+00	764	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
984	2016-03-11 15:19:15.197791+00	763	Kasb ta'limi: iqtisodiyot	3		9	1
985	2016-03-11 15:19:15.20599+00	762	Kasb ta'limi: agronomiya	3		9	1
986	2016-03-11 15:19:15.214355+00	761	Pedagogika va psixologiya	3		9	1
987	2016-03-11 15:19:15.222654+00	760	Tasviriy san'at va muhandislik grafikasi	3		9	1
988	2016-03-11 15:19:15.231166+00	759	Filologiya va tillarni o`qitish: o`zbek tili	3		9	1
989	2016-03-11 15:19:15.239398+00	758	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
990	2016-03-11 15:19:15.247673+00	757	Filologiya va tillarni o`qitish: nemis tili	3		9	1
991	2016-03-11 15:19:15.256095+00	756	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
992	2016-03-11 15:19:15.264413+00	755	Turizm (faoliyat yo`nalishlari bo`yicha)	3		9	1
993	2016-03-11 15:19:15.272669+00	754	Mehmonxona xo`jaligini tashkil etish va boshqarish	3		9	1
994	2016-03-11 15:19:15.281+00	753	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
995	2016-03-11 15:19:15.289546+00	752	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
996	2016-03-11 15:19:15.297675+00	751	Arxivshunoslik	3		9	1
997	2016-03-11 15:19:15.305998+00	750	Psixologiya (faoliyat turlari bo`yicha)	3		9	1
998	2016-03-11 15:19:15.314318+00	749	Tuproqshunoslik	3		9	1
999	2016-03-11 15:19:15.322757+00	748	Geografiya	3		9	1
1000	2016-03-11 15:19:15.331056+00	747	Filologiya va tillarni o`qitish: fransuz tili	3		9	1
1001	2016-03-11 15:19:15.339408+00	746	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
1002	2016-03-11 15:19:15.347843+00	745	Matematika	3		9	1
1003	2016-03-11 15:19:15.356104+00	744	Biologiya (turlari bo`yicha)	3		9	1
1004	2016-03-11 15:19:15.364414+00	743	Fizika	3		9	1
1005	2016-03-11 15:19:15.372715+00	742	Kimyo	3		9	1
1006	2016-03-11 15:19:15.381175+00	741	Kasb ta'limi: mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
1007	2016-03-11 15:19:15.389411+00	740	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
1008	2016-03-11 15:19:15.397715+00	739	Avtomobilsozlik va traktorsozlik	3		9	1
1009	2016-03-11 15:19:15.406069+00	738	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
1010	2016-03-11 15:19:15.414586+00	737	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
1011	2016-03-11 15:19:15.422734+00	736	Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)	3		9	1
1012	2016-03-11 15:19:15.43107+00	735	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
1013	2016-03-11 15:19:15.439482+00	734	Mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
1014	2016-03-11 15:19:15.447775+00	733	Materialshunoslik va yangi materiallar texnologiyasi	3		9	1
1015	2016-03-11 15:19:15.456111+00	732	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)	3		9	1
1016	2016-03-11 15:19:15.464451+00	731	Maktabgacha ta'lim	3		9	1
1017	2016-03-11 15:19:15.473016+00	730	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
1018	2016-03-11 15:19:15.481124+00	729	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
1019	2016-03-11 15:19:15.489441+00	728	Xorijiy til va adabiyoti: fransuz tili	3		9	1
1020	2016-03-11 15:19:15.49778+00	727	Xorijiy til va adabiyoti: nemis tili	3		9	1
1021	2016-03-11 15:19:15.506274+00	726	Xorijiy til va adabiyoti: ingliz tili	3		9	1
1022	2016-03-11 15:19:15.514516+00	725	Musiqa ta'limie	3		9	1
1023	2016-03-11 15:19:15.522828+00	724	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
1024	2016-03-11 15:19:15.531166+00	723	Pedagogika va psixologiya	3		9	1
1025	2016-03-11 15:19:15.539553+00	722	Tasviriy san'at va muhandislik grafikasi	3		9	1
1026	2016-03-11 15:19:15.547822+00	721	Jismoniy madaniyat	3		9	1
1027	2016-03-11 15:19:15.556148+00	720	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
1028	2016-03-11 15:19:15.564665+00	719	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
1029	2016-03-11 15:19:15.572814+00	718	Mehnat iqtisodiyoti va sotsiologiyasi	3		9	1
1030	2016-03-11 15:19:15.581149+00	717	Geografiya	3		9	1
1031	2016-03-11 15:19:15.589551+00	716	Kimyo	3		9	1
1032	2016-03-11 15:19:15.597936+00	715	Fizika	3		9	1
1033	2016-03-11 15:19:15.606194+00	714	Biologiya (turlari bo`yicha)	3		9	1
1034	2016-03-11 15:19:15.614493+00	713	Matematika	3		9	1
1035	2016-03-11 15:19:15.62294+00	712	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
1036	2016-03-11 15:19:15.631213+00	711	Filologiya va tillarni o`qitish: o`zbek tili	3		9	1
1037	2016-03-11 15:19:15.639485+00	710	Mehnat ta'limi	3		9	1
1038	2016-03-11 15:19:15.647838+00	709	Informatika o`qitish metodikasi	3		9	1
1039	2016-03-11 15:19:44.946561+00	1104	Geodeziya, kartografiya va kadastr (funksiyalari bo`yicha)	3		9	1
1040	2016-03-11 15:19:44.96454+00	1103	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
1041	2016-03-11 15:19:44.973061+00	1102	Dizayn (turlari bo`yicha)	3		9	1
1042	2016-03-11 15:19:44.981211+00	1101	Kasb ta'limi: tasviriy san'at va muhandislik grafikasi	3		9	1
1043	2016-03-11 15:19:44.989538+00	1100	Kasb ta'limi: muhandislik kommunikatsiyalari qurilishi va montaji	3		9	1
1044	2016-03-11 15:19:44.997844+00	1099	Kasb ta'limi: bino va inshootlar qurilishi	3		9	1
1045	2016-03-11 15:19:45.006352+00	1098	Arxitektura (turlari bo`yicha)	3		9	1
1046	2016-03-11 15:19:45.01455+00	1097	Bino va inshootlar qurilishi (turlari bo`yicha)	3		9	1
1047	2016-03-11 15:19:45.022869+00	1096	Shahar qurilishi va xo`jaligi	3		9	1
1048	2016-03-11 15:19:45.031294+00	1095	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
1049	2016-03-11 15:19:45.039606+00	1094	Qishloq hududlarini arxitektura-loyihaviy tashkil etish	3		9	1
1050	2016-03-11 15:19:45.047922+00	1093	Ko`chmas mulk ekspertizasi va uni boshqarish	3		9	1
1051	2016-03-11 15:19:45.056247+00	1092	Avtomobil yo`llari va aerodromlar	3		9	1
1052	2016-03-11 15:19:45.064714+00	1091	Qurilish materiallari, buyumlari va konstruksiyalarini ishlab chiqarish	3		9	1
1053	2016-03-11 15:19:45.072926+00	1090	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)	3		9	1
1054	2016-03-11 15:19:45.081252+00	1089	Arxeologiya	3		9	1
1055	2016-03-11 15:19:45.089577+00	1088	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
1056	2016-03-11 15:19:45.097985+00	1087	Filologiya va tillarni o`qitish: o`zbek tili	3		9	1
1057	2016-03-11 15:19:45.10625+00	1086	Mehnat ta'limi	3		9	1
1058	2016-03-11 15:19:45.114579+00	1085	Jismoniy madaniyat	3		9	1
1059	2016-03-11 15:19:45.12313+00	1084	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
1060	2016-03-11 15:19:45.131243+00	1083	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
1061	2016-03-11 15:19:45.139575+00	1082	Musiqa ta'limi	3		9	1
1062	2016-03-11 15:19:45.147895+00	1081	Kasb ta'limi: elektronika va asbobsozlik	3		9	1
1063	2016-03-11 15:19:45.156387+00	1080	Kasb ta'limi: amaliy san'at	3		9	1
1064	2016-03-11 15:19:45.16463+00	1079	Kasb ta'limi: iqtisodiyot	3		9	1
1065	2016-03-11 15:19:45.172957+00	1078	Tasviriy san'at va muhandislik grafikasi	3		9	1
1066	2016-03-11 15:19:45.181281+00	1077	Informatika o`qitish metodikasi	3		9	1
1067	2016-03-11 15:19:45.189788+00	1076	Matematika	3		9	1
1068	2016-03-11 15:19:45.197992+00	1075	Amaliy matematika va informatika	3		9	1
1069	2016-03-11 15:19:45.206322+00	1074	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
1070	2016-03-11 15:19:45.214764+00	1073	Sport faoliyati (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
1071	2016-03-11 15:19:45.222962+00	1072	Ijtimoiy ish (faoliyatning turli sohalari bo`yicha)	3		9	1
1072	2016-03-11 15:19:45.231298+00	1071	Kadrlar menejmenti	3		9	1
1073	2016-03-11 15:19:45.23963+00	1070	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
1074	2016-03-11 15:19:45.247981+00	1069	Psixologiya (faoliyat turlari bo`yicha)	3		9	1
1075	2016-03-11 15:19:45.256296+00	1068	Gidrometeorologiya	3		9	1
1076	2016-03-11 15:19:45.264669+00	1067	Geografiya	3		9	1
1077	2016-03-11 15:19:45.273123+00	1066	Biologiya (turlari bo`yicha)	3		9	1
1078	2016-03-11 15:19:45.281321+00	1065	Fizika	3		9	1
1079	2016-03-11 15:19:45.28964+00	1064	Mexanika	3		9	1
1080	2016-03-11 15:19:45.298044+00	1063	Astronomiya	3		9	1
1081	2016-03-11 15:19:45.306386+00	1062	Kimyo	3		9	1
1082	2016-03-11 15:19:45.314637+00	1061	Dizayn (turlari bo`yicha)	3		9	1
1083	2016-03-11 15:19:45.323082+00	1060	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
1084	2016-03-11 15:19:45.331341+00	1059	Marketing (tarmoqlar va sohalar bo`yicha)	3		9	1
1085	2016-03-11 15:19:45.339817+00	1058	Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)	3		9	1
1086	2016-03-11 15:19:45.348001+00	1057	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)	3		9	1
1087	2016-03-11 15:19:45.356411+00	1056	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
1088	2016-03-11 15:19:45.364679+00	1055	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
1089	2016-03-11 15:19:45.373177+00	1054	Matbaa va qadoqlash jarayonlari texnologiyasi	3		9	1
1090	2016-03-11 15:19:45.381329+00	1053	Yengil sanoat buyumlari konstruksiyasini ishlash va texnologiyasi (ishlab chiqarish turlari bo`yicha)	3		9	1
1091	2016-03-11 15:19:45.38978+00	1052	Tabiiy tolalarni dastlabki ishlash texnologiyasi (xom ashyo turlari bo`yicha)	3		9	1
1092	2016-03-11 15:19:45.398109+00	1051	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
1093	2016-03-11 15:19:45.406411+00	1050	Energetika (tarmoqlar bo`yicha)	3		9	1
1094	2016-03-11 15:19:45.414775+00	1049	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
1095	2016-03-11 15:19:45.423149+00	1048	Kasb ta'limi: muhandislik kommunikatsiyalari qurilishi va montaji	3		9	1
1096	2016-03-11 15:19:45.431493+00	1047	Kasb ta'limi: qishloq xo`jaligini mexanizatsiyalashtirish	3		9	1
1097	2016-03-11 15:19:45.439807+00	1046	Kasb ta'limi: kimyoviy texnologiya	3		9	1
1098	2016-03-11 15:19:45.448123+00	1045	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
1099	2016-03-11 15:19:45.456444+00	1044	Kasb ta'limi: iqtisodiyot	3		9	1
1100	2016-03-11 15:19:45.464795+00	1043	Kasb ta'limi: yerusti transport tizimlari va ularning ekspluatatsiyasi	3		9	1
1101	2016-03-11 15:19:45.473118+00	1042	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)	3		9	1
1102	2016-03-11 15:19:45.481485+00	1041	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
1103	2016-03-11 15:19:45.489794+00	1040	Mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
1104	2016-03-11 15:19:45.498148+00	1039	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
1105	2016-03-11 15:19:45.506447+00	1038	Qishloq hududlarini arxitektura-loyihaviy tashkil etish	3		9	1
1106	2016-03-11 15:19:45.514734+00	1037	Avtomobil yo`llari va aerodromlar	3		9	1
1107	2016-03-11 15:19:45.523048+00	1036	Qurilish materiallari, buyumlari va konstruksiyalarini ishlab chiqarish	3		9	1
1108	2016-03-11 15:19:45.531537+00	1035	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)	3		9	1
1109	2016-03-11 15:19:45.539854+00	1034	Bino va inshootlar qurilishi (turlari bo`yicha)	3		9	1
1110	2016-03-11 15:19:45.548134+00	1033	Oziq-ovqat texnologiyasi (mahsulotlar turlari bo`yicha)	3		9	1
1111	2016-03-11 15:19:45.556461+00	1032	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
1112	2016-03-11 15:19:45.564762+00	1031	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
1113	2016-03-11 15:19:45.573191+00	1030	Filologiya va tillarni o`qitish: o`zbek tili	3		9	1
1114	2016-03-11 15:19:45.581426+00	1029	Jismoniy madaniyat	3		9	1
1115	2016-03-11 15:19:45.589842+00	1028	Maktabgacha ta'lim	3		9	1
1116	2016-03-11 15:19:45.598087+00	1027	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
1117	2016-03-11 15:19:45.60653+00	1026	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
1118	2016-03-11 15:19:45.614768+00	1025	Xorijiy til va adabiyoti: ingliz tili	3		9	1
1119	2016-03-11 15:19:45.623196+00	1024	Musiqa ta'limi	3		9	1
1120	2016-03-11 15:19:45.631468+00	1023	Kasb ta'limi: iqtisodiyot	3		9	1
1121	2016-03-11 15:19:45.639804+00	1022	Pedagogika va psixologiya	3		9	1
1122	2016-03-11 15:19:45.648117+00	1021	Tasviriy san'at va muhandislik grafikasi	3		9	1
1123	2016-03-11 15:19:45.656533+00	1020	Filologiya va tillarni o`qitish: nemis tili	3		9	1
1124	2016-03-11 15:19:45.66481+00	1019	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
1126	2016-03-11 15:19:45.68152+00	1017	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
1127	2016-03-11 15:19:45.689957+00	1016	Sport faoliyati (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
1128	2016-03-11 15:19:45.698167+00	1015	Ijtimoiy-madaniy faoliyat	3		9	1
1129	2016-03-11 15:19:45.706603+00	1014	Arxivshunoslik	3		9	1
1130	2016-03-11 15:19:45.714975+00	1013	Geografiya	3		9	1
1131	2016-03-11 15:19:45.72328+00	1012	Kimyo	3		9	1
1132	2016-03-11 15:19:45.731544+00	1011	Fizika	3		9	1
1133	2016-03-11 15:19:45.739914+00	1010	Biologiya (turlari bo`yicha)	3		9	1
1134	2016-03-11 15:19:45.748278+00	1009	Amaliy matematika va informatika	3		9	1
1135	2016-03-11 15:19:45.756626+00	1008	Matematika	3		9	1
1136	2016-03-11 15:19:45.764862+00	1007	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
1137	2016-03-11 15:19:45.773242+00	1006	Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)	3		9	1
1138	2016-03-11 15:19:45.781597+00	1005	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
1139	2016-03-11 15:19:45.789942+00	1004	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
1140	2016-03-11 15:19:45.798248+00	1003	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)	3		9	1
1141	2016-03-11 15:19:45.806629+00	1002	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
1142	2016-03-11 15:19:45.814898+00	1001	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
1143	2016-03-11 15:19:45.823305+00	1000	Kasb ta'limi: iqtisodiyot	3		9	1
1144	2016-03-11 15:19:45.83159+00	999	Yengil sanoat buyumlari konstruksiyasini ishlash va texnologiyasi (ishlab chiqarish turlari bo`yicha)	3		9	1
1145	2016-03-11 15:19:45.839975+00	998	Bino va inshootlar qurilishi (turlari bo`yicha)	3		9	1
1146	2016-03-11 15:19:45.848186+00	997	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
1147	2016-03-11 15:19:45.856754+00	996	Tashishni tashkil etish va transport logistikasi (transport turlari bo`yicha)	3		9	1
1148	2016-03-11 15:19:45.865031+00	995	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
1149	2016-03-11 15:19:45.873273+00	994	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
1150	2016-03-11 15:19:45.881505+00	993	Avtomobil yo`llari va aerodromlar	3		9	1
1151	2016-03-11 15:19:45.890002+00	992	Transport inshootlarining ekspluatatsiyasi (transport inshootlari turlari bo`yicha)	3		9	1
1152	2016-03-11 15:19:45.898237+00	991	Qurilish materiallari, buyumlari va konstruksiyalarini ishlab chiqarish	3		9	1
1153	2016-03-11 15:19:45.906669+00	990	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)	3		9	1
1154	2016-03-11 15:19:45.914947+00	989	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
1155	2016-03-11 15:19:45.923392+00	988	Jismoniy madaniyat	3		9	1
1156	2016-03-11 15:19:45.931651+00	987	Maktabgacha ta'lim	3		9	1
1157	2016-03-11 15:19:45.940028+00	986	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
1158	2016-03-11 15:19:45.948305+00	985	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
1159	2016-03-11 15:19:45.95667+00	984	Xorijiy til va adabiyoti: ingliz tili	3		9	1
1160	2016-03-11 15:19:45.96494+00	983	Musiqa ta'limi	3		9	1
1161	2016-03-11 15:19:45.973422+00	982	Kasb ta'limi: agronomiya	3		9	1
1162	2016-03-11 15:19:45.98163+00	981	Pedagogika va psixologiya	3		9	1
1163	2016-03-11 15:19:45.990008+00	980	Informatika o`qitish metodikasi	3		9	1
1164	2016-03-11 15:19:45.998298+00	979	Geografiya o`qitish metodikasi	3		9	1
1165	2016-03-11 15:19:46.006698+00	978	Mehnat ta'limi	3		9	1
1166	2016-03-11 15:19:46.014891+00	977	Filologiya va tillarni o`qitish: o`zbek tili	3		9	1
1167	2016-03-11 15:19:46.023301+00	976	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
1168	2016-03-11 15:19:46.031635+00	975	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
1169	2016-03-11 15:19:46.040054+00	974	Oziq-ovqat texnologiyasi (mahsulotlar turlari bo`yicha)	3		9	1
1170	2016-03-11 15:19:46.048334+00	973	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
1171	2016-03-11 15:19:46.05679+00	972	Tuproqshunoslik	3		9	1
1172	2016-03-11 15:19:46.064939+00	971	Kimyo	3		9	1
1173	2016-03-11 15:19:46.073331+00	970	Fizika	3		9	1
1174	2016-03-11 15:19:46.081583+00	969	Biologiya (turlari bo`yicha)	3		9	1
1175	2016-03-11 15:19:46.090028+00	968	Matematika	3		9	1
1176	2016-03-11 15:19:46.098312+00	967	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
1177	2016-03-11 15:19:46.10661+00	966	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
1178	2016-03-11 15:19:46.114985+00	965	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
1179	2016-03-11 15:19:46.123294+00	964	Tarix (Islom tarixi va manbashunosligi)	3		9	1
1180	2016-03-11 15:19:46.131699+00	963	Dinshunoslik	3		9	1
1181	2016-03-11 15:19:46.139949+00	962	Psixologiya (din sotsiopsixologiyasi)	3		9	1
1182	2016-03-11 15:19:46.148263+00	961	Jahon iqtisodiyoti va xalqaro iqtisodiy munosabatlar (mintaqalar va faoliyat turlari bo`yicha)	3		9	1
1183	2016-03-11 15:19:46.156754+00	960	Informatika va axborot texnologiyalari (tarmoqlar va sohalar bo`yicha)	3		9	1
1184	2016-03-11 15:19:46.165028+00	959	Kasb ta'limi: yengil sanoat texnologiyalari va jihozlari	3		9	1
1185	2016-03-11 15:19:46.173294+00	958	Kasb ta'limi: elektr texnikasi, elektr mexanikasi va elektr texnologiyalari	3		9	1
1186	2016-03-11 15:19:46.181634+00	957	Kasb ta'limi: menejment	3		9	1
1187	2016-03-11 15:19:46.19018+00	956	Kasb ta'limi: mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
1188	2016-03-11 15:19:46.198284+00	955	Kasb ta'limi: kimyoviy texnologiya	3		9	1
1189	2016-03-11 15:19:46.206634+00	954	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
1190	2016-03-11 15:19:46.215023+00	953	Kasb ta'limi: neft-gazkimyo sanoati texnologiyasi	3		9	1
1191	2016-03-11 15:19:46.223422+00	952	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
1192	2016-03-11 15:19:46.231687+00	951	Texnologik jarayonlarni boshqarishning axborot-kommunikatsiya tizimlari	3		9	1
1193	2016-03-11 15:19:46.240013+00	950	Yengil sanoat texnologiyalari va jihozlari	3		9	1
1194	2016-03-11 15:19:46.248489+00	949	Texnologiyalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
1195	2016-03-11 15:19:46.25676+00	948	Neft-gazkimyo sanoati texnologiyasi	3		9	1
1196	2016-03-11 15:19:46.265103+00	947	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
1197	2016-03-11 15:19:46.273436+00	946	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
1198	2016-03-11 15:19:46.281754+00	945	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
1199	2016-03-11 15:19:46.290102+00	944	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
1201	2016-03-11 15:19:46.306775+00	942	Jismoniy madaniyat	3		9	1
1202	2016-03-11 15:19:46.315084+00	941	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
1203	2016-03-11 15:19:46.323453+00	940	Mehnat ta'limi	3		9	1
1204	2016-03-11 15:19:46.331778+00	939	Chaqiriqqacha harbiy ta'lim	3		9	1
1205	2016-03-11 15:19:46.340151+00	938	Xorijiy til va adabiyoti: ingliz tili	3		9	1
1206	2016-03-11 15:19:46.348426+00	937	Musiqa ta'limi	3		9	1
1207	2016-03-11 15:19:46.356831+00	936	Kasb ta'limi: amaliy san'at	3		9	1
1208	2016-03-11 15:19:46.365085+00	935	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
1209	2016-03-11 15:19:46.373502+00	934	Kasb ta'limi: iqtisodiyot	3		9	1
1210	2016-03-11 15:19:46.381782+00	933	Kasb ta'limi: agronomiya	3		9	1
1211	2016-03-11 15:19:46.390154+00	932	Pedagogika va psixologiya	3		9	1
1212	2016-03-11 15:19:46.398527+00	931	Tasviriy san'at va muhandislik grafikasi	3		9	1
1213	2016-03-11 15:19:46.40684+00	930	Filologiya va tillarni o`qitish: o`zbek tili	3		9	1
1214	2016-03-11 15:19:46.41516+00	929	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
1215	2016-03-11 15:19:46.423533+00	928	Filologiya va tillarni o`qitish: nemis tili	3		9	1
1216	2016-03-11 15:19:46.431816+00	927	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
1217	2016-03-11 15:19:46.441715+00	926	Turizm (faoliyat yo`nalishlari bo`yicha)	3		9	1
1218	2016-03-11 15:19:46.448487+00	925	Mehmonxona xo`jaligini tashkil etish va boshqarish	3		9	1
1219	2016-03-11 15:19:46.456891+00	924	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
1220	2016-03-11 15:19:46.465187+00	923	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
1221	2016-03-11 15:19:46.473513+00	922	Arxivshunoslik	3		9	1
1222	2016-03-11 15:19:46.481863+00	921	Psixologiya (faoliyat turlari bo`yicha)	3		9	1
1223	2016-03-11 15:19:46.490208+00	920	Tuproqshunoslik	3		9	1
1224	2016-03-11 15:19:46.498563+00	919	Geografiya	3		9	1
1225	2016-03-11 15:19:46.506923+00	918	Filologiya va tillarni o`qitish: fransuz tili	3		9	1
1226	2016-03-11 15:19:46.515224+00	917	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
1227	2016-03-11 15:19:46.523567+00	916	Matematika	3		9	1
1228	2016-03-11 15:19:46.531896+00	915	Biologiya (turlari bo`yicha)	3		9	1
1229	2016-03-11 15:19:46.540273+00	914	Fizika	3		9	1
1230	2016-03-11 15:19:46.548577+00	913	Kimyo	3		9	1
1231	2016-03-11 15:19:46.556938+00	912	Kasb ta'limi: mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
1232	2016-03-11 15:19:46.565221+00	911	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
1233	2016-03-11 15:19:46.573563+00	910	Avtomobilsozlik va traktorsozlik	3		9	1
1234	2016-03-11 15:19:46.581892+00	909	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
1235	2016-03-11 15:19:46.590224+00	908	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
1236	2016-03-11 15:19:46.598542+00	907	Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)	3		9	1
1237	2016-03-11 15:19:46.606895+00	906	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
1238	2016-03-11 15:19:46.615255+00	905	Mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
1239	2016-03-11 15:19:46.623638+00	904	Materialshunoslik va yangi materiallar texnologiyasi	3		9	1
1240	2016-03-11 15:19:46.631887+00	903	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)	3		9	1
1241	2016-03-11 15:19:46.640298+00	902	Maktabgacha ta'lim	3		9	1
1242	2016-03-11 15:19:46.648514+00	901	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
1243	2016-03-11 15:19:46.656968+00	900	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
1244	2016-03-11 15:19:46.665234+00	899	Xorijiy til va adabiyoti: fransuz tili	3		9	1
1245	2016-03-11 15:19:46.673543+00	898	Xorijiy til va adabiyoti: nemis tili	3		9	1
1246	2016-03-11 15:19:46.682047+00	897	Xorijiy til va adabiyoti: ingliz tili	3		9	1
1247	2016-03-11 15:19:46.690197+00	896	Musiqa ta'limie	3		9	1
1248	2016-03-11 15:19:46.698525+00	895	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
1249	2016-03-11 15:19:46.706853+00	894	Pedagogika va psixologiya	3		9	1
1250	2016-03-11 15:19:46.715292+00	893	Tasviriy san'at va muhandislik grafikasi	3		9	1
1251	2016-03-11 15:19:46.723531+00	892	Jismoniy madaniyat	3		9	1
1252	2016-03-11 15:19:46.731851+00	891	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
1253	2016-03-11 15:19:46.74028+00	890	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
1254	2016-03-11 15:19:46.748589+00	889	Mehnat iqtisodiyoti va sotsiologiyasi	3		9	1
1255	2016-03-11 15:19:46.75695+00	888	Geografiya	3		9	1
1256	2016-03-11 15:19:46.765278+00	887	Kimyo	3		9	1
1257	2016-03-11 15:19:46.773675+00	886	Fizika	3		9	1
1258	2016-03-11 15:19:46.781899+00	885	Biologiya (turlari bo`yicha)	3		9	1
1259	2016-03-11 15:19:46.790277+00	884	Matematika	3		9	1
1260	2016-03-11 15:19:46.798679+00	883	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
1261	2016-03-11 15:19:46.807029+00	882	Filologiya va tillarni o`qitish: o`zbek tili	3		9	1
1262	2016-03-11 15:19:46.815277+00	881	Mehnat ta'limi	3		9	1
1263	2016-03-11 15:19:46.82362+00	880	Informatika o`qitish metodikasi	3		9	1
1264	2016-03-11 15:21:58.190907+00	1329	Geodeziya, kartografiya va kadastr (funksiyalari bo`yicha)	3		9	1
1265	2016-03-11 15:21:58.199953+00	1328	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
1266	2016-03-11 15:21:58.208272+00	1327	Dizayn (turlari bo`yicha)	3		9	1
1267	2016-03-11 15:21:58.216736+00	1326	Kasb ta'limi: tasviriy san'at va muhandislik grafikasi	3		9	1
1268	2016-03-11 15:21:58.225035+00	1325	Kasb ta'limi: muhandislik kommunikatsiyalari qurilishi va montaji	3		9	1
1269	2016-03-11 15:21:58.233278+00	1324	Kasb ta'limi: bino va inshootlar qurilishi	3		9	1
1270	2016-03-11 15:21:58.241707+00	1323	Arxitektura (turlari bo`yicha)	3		9	1
1271	2016-03-11 15:21:58.250177+00	1322	Bino va inshootlar qurilishi (turlari bo`yicha)	3		9	1
1272	2016-03-11 15:21:58.25837+00	1321	Shahar qurilishi va xo`jaligi	3		9	1
1273	2016-03-11 15:21:58.266621+00	1320	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
1274	2016-03-11 15:21:58.274926+00	1319	Qishloq hududlarini arxitektura-loyihaviy tashkil etish	3		9	1
1275	2016-03-11 15:21:58.283388+00	1318	Ko`chmas mulk ekspertizasi va uni boshqarish	3		9	1
1276	2016-03-11 15:21:58.291645+00	1317	Avtomobil yo`llari va aerodromlar	3		9	1
1277	2016-03-11 15:21:58.299966+00	1316	Qurilish materiallari, buyumlari va konstruksiyalarini ishlab chiqarish	3		9	1
1353	2016-03-11 15:21:58.933638+00	1240	Ijtimoiy-madaniy faoliyat	3		9	1
1278	2016-03-11 15:21:58.308279+00	1315	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)	3		9	1
1279	2016-03-11 15:21:58.316693+00	1314	Arxeologiya	3		9	1
1280	2016-03-11 15:21:58.324977+00	1313	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
1281	2016-03-11 15:21:58.333298+00	1312	Filologiya va tillarni o`qitish: o`zbek tili	3		9	1
1282	2016-03-11 15:21:58.341667+00	1311	Mehnat ta'limi	3		9	1
1283	2016-03-11 15:21:58.350124+00	1310	Jismoniy madaniyat	3		9	1
1284	2016-03-11 15:21:58.358395+00	1309	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
1285	2016-03-11 15:21:58.366702+00	1308	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
1286	2016-03-11 15:21:58.37519+00	1307	Musiqa ta'limi	3		9	1
1287	2016-03-11 15:21:58.38339+00	1306	Kasb ta'limi: elektronika va asbobsozlik	3		9	1
1288	2016-03-11 15:21:58.391701+00	1305	Kasb ta'limi: amaliy san'at	3		9	1
1289	2016-03-11 15:21:58.400094+00	1304	Kasb ta'limi: iqtisodiyot	3		9	1
1290	2016-03-11 15:21:58.408395+00	1303	Tasviriy san'at va muhandislik grafikasi	3		9	1
1291	2016-03-11 15:21:58.416707+00	1302	Informatika o`qitish metodikasi	3		9	1
1292	2016-03-11 15:21:58.425099+00	1301	Matematika	3		9	1
1293	2016-03-11 15:21:58.433469+00	1300	Amaliy matematika va informatika	3		9	1
1294	2016-03-11 15:21:58.441706+00	1299	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
1295	2016-03-11 15:21:58.450004+00	1298	Sport faoliyati (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
1296	2016-03-11 15:21:58.458381+00	1297	Ijtimoiy ish (faoliyatning turli sohalari bo`yicha)	3		9	1
1297	2016-03-11 15:21:58.466804+00	1296	Kadrlar menejmenti	3		9	1
1298	2016-03-11 15:21:58.475065+00	1295	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
1299	2016-03-11 15:21:58.483378+00	1294	Psixologiya (faoliyat turlari bo`yicha)	3		9	1
1300	2016-03-11 15:21:58.491715+00	1293	Gidrometeorologiya	3		9	1
1301	2016-03-11 15:21:58.500146+00	1292	Geografiya	3		9	1
1302	2016-03-11 15:21:58.508429+00	1291	Biologiya (turlari bo`yicha)	3		9	1
1303	2016-03-11 15:21:58.516716+00	1290	Fizika	3		9	1
1304	2016-03-11 15:21:58.525124+00	1289	Mexanika	3		9	1
1305	2016-03-11 15:21:58.533517+00	1288	Astronomiya	3		9	1
1306	2016-03-11 15:21:58.541771+00	1287	Kimyo	3		9	1
1307	2016-03-11 15:21:58.550083+00	1286	Dizayn (turlari bo`yicha)	3		9	1
1308	2016-03-11 15:21:58.558583+00	1285	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
1309	2016-03-11 15:21:58.566744+00	1284	Marketing (tarmoqlar va sohalar bo`yicha)	3		9	1
1310	2016-03-11 15:21:58.575067+00	1283	Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)	3		9	1
1311	2016-03-11 15:21:58.583447+00	1282	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)	3		9	1
1312	2016-03-11 15:21:58.591802+00	1281	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
1313	2016-03-11 15:21:58.60019+00	1280	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
1314	2016-03-11 15:21:58.608612+00	1279	Matbaa va qadoqlash jarayonlari texnologiyasi	3		9	1
1315	2016-03-11 15:21:58.617+00	1278	Yengil sanoat buyumlari konstruksiyasini ishlash va texnologiyasi (ishlab chiqarish turlari bo`yicha)	3		9	1
1316	2016-03-11 15:21:58.625202+00	1277	Tabiiy tolalarni dastlabki ishlash texnologiyasi (xom ashyo turlari bo`yicha)	3		9	1
1317	2016-03-11 15:21:58.633555+00	1276	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
1318	2016-03-11 15:21:58.641805+00	1275	Energetika (tarmoqlar bo`yicha)	3		9	1
1319	2016-03-11 15:21:58.650239+00	1274	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
1320	2016-03-11 15:21:58.658461+00	1273	Kasb ta'limi: muhandislik kommunikatsiyalari qurilishi va montaji	3		9	1
1321	2016-03-11 15:21:58.666771+00	1272	Kasb ta'limi: qishloq xo`jaligini mexanizatsiyalashtirish	3		9	1
1322	2016-03-11 15:21:58.675107+00	1271	Kasb ta'limi: kimyoviy texnologiya	3		9	1
1323	2016-03-11 15:21:58.683533+00	1270	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
1324	2016-03-11 15:21:58.691798+00	1269	Kasb ta'limi: iqtisodiyot	3		9	1
1325	2016-03-11 15:21:58.700119+00	1268	Kasb ta'limi: yerusti transport tizimlari va ularning ekspluatatsiyasi	3		9	1
1326	2016-03-11 15:21:58.708543+00	1267	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)	3		9	1
1327	2016-03-11 15:21:58.716899+00	1266	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
1328	2016-03-11 15:21:58.725217+00	1265	Mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
1329	2016-03-11 15:21:58.733596+00	1264	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
1330	2016-03-11 15:21:58.741858+00	1263	Qishloq hududlarini arxitektura-loyihaviy tashkil etish	3		9	1
1331	2016-03-11 15:21:58.750298+00	1262	Avtomobil yo`llari va aerodromlar	3		9	1
1332	2016-03-11 15:21:58.758708+00	1261	Qurilish materiallari, buyumlari va konstruksiyalarini ishlab chiqarish	3		9	1
1333	2016-03-11 15:21:58.766942+00	1260	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)	3		9	1
1334	2016-03-11 15:21:58.775287+00	1259	Bino va inshootlar qurilishi (turlari bo`yicha)	3		9	1
1335	2016-03-11 15:21:58.783559+00	1258	Oziq-ovqat texnologiyasi (mahsulotlar turlari bo`yicha)	3		9	1
1336	2016-03-11 15:21:58.791867+00	1257	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
1337	2016-03-11 15:21:58.800186+00	1256	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
1338	2016-03-11 15:21:58.808605+00	1255	Filologiya va tillarni o`qitish: o`zbek tili	3		9	1
1339	2016-03-11 15:21:58.816981+00	1254	Jismoniy madaniyat	3		9	1
1340	2016-03-11 15:21:58.825334+00	1253	Maktabgacha ta'lim	3		9	1
1341	2016-03-11 15:21:58.833562+00	1252	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
1342	2016-03-11 15:21:58.842198+00	1251	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
1343	2016-03-11 15:21:58.850281+00	1250	Xorijiy til va adabiyoti: ingliz tili	3		9	1
1344	2016-03-11 15:21:58.858841+00	1249	Musiqa ta'limi	3		9	1
1345	2016-03-11 15:21:58.866899+00	1248	Kasb ta'limi: iqtisodiyot	3		9	1
1346	2016-03-11 15:21:58.875401+00	1247	Pedagogika va psixologiya	3		9	1
1347	2016-03-11 15:21:58.883586+00	1246	Tasviriy san'at va muhandislik grafikasi	3		9	1
1348	2016-03-11 15:21:58.891932+00	1245	Filologiya va tillarni o`qitish: nemis tili	3		9	1
1349	2016-03-11 15:21:58.900248+00	1244	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
1350	2016-03-11 15:21:58.908722+00	1243	Hayotiy faoliyat xavfsizligi	3		9	1
1351	2016-03-11 15:21:58.917037+00	1242	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
1352	2016-03-11 15:21:58.925383+00	1241	Sport faoliyati (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
1354	2016-03-11 15:21:58.942074+00	1239	Arxivshunoslik	3		9	1
1355	2016-03-11 15:21:58.950354+00	1238	Geografiya	3		9	1
1356	2016-03-11 15:21:58.95864+00	1237	Kimyo	3		9	1
1357	2016-03-11 15:21:58.967022+00	1236	Fizika	3		9	1
1358	2016-03-11 15:21:58.975394+00	1235	Biologiya (turlari bo`yicha)	3		9	1
1359	2016-03-11 15:21:58.983643+00	1234	Amaliy matematika va informatika	3		9	1
1360	2016-03-11 15:21:58.992044+00	1233	Matematika	3		9	1
1361	2016-03-11 15:21:59.000315+00	1232	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
1362	2016-03-11 15:21:59.009025+00	1231	Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)	3		9	1
1363	2016-03-11 15:21:59.016998+00	1230	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
1364	2016-03-11 15:21:59.025334+00	1229	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
1365	2016-03-11 15:21:59.033682+00	1228	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)	3		9	1
1366	2016-03-11 15:21:59.042134+00	1227	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
1367	2016-03-11 15:21:59.050383+00	1226	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
1368	2016-03-11 15:21:59.058791+00	1225	Kasb ta'limi: iqtisodiyot	3		9	1
1369	2016-03-11 15:21:59.067015+00	1224	Yengil sanoat buyumlari konstruksiyasini ishlash va texnologiyasi (ishlab chiqarish turlari bo`yicha)	3		9	1
1370	2016-03-11 15:21:59.075526+00	1223	Bino va inshootlar qurilishi (turlari bo`yicha)	3		9	1
1371	2016-03-11 15:21:59.083705+00	1222	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
1372	2016-03-11 15:21:59.092041+00	1221	Tashishni tashkil etish va transport logistikasi (transport turlari bo`yicha)	3		9	1
1373	2016-03-11 15:21:59.100403+00	1220	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
1374	2016-03-11 15:21:59.108826+00	1219	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
1375	2016-03-11 15:21:59.116984+00	1218	Avtomobil yo`llari va aerodromlar	3		9	1
1376	2016-03-11 15:21:59.125331+00	1217	Transport inshootlarining ekspluatatsiyasi (transport inshootlari turlari bo`yicha)	3		9	1
1377	2016-03-11 15:21:59.13363+00	1216	Qurilish materiallari, buyumlari va konstruksiyalarini ishlab chiqarish	3		9	1
1378	2016-03-11 15:21:59.141982+00	1215	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)	3		9	1
1379	2016-03-11 15:21:59.150302+00	1214	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
1380	2016-03-11 15:21:59.158792+00	1213	Jismoniy madaniyat	3		9	1
1381	2016-03-11 15:21:59.167025+00	1212	Maktabgacha ta'lim	3		9	1
1382	2016-03-11 15:21:59.17543+00	1211	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
1383	2016-03-11 15:21:59.183686+00	1210	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
1384	2016-03-11 15:21:59.191993+00	1209	Xorijiy til va adabiyoti: ingliz tili	3		9	1
1385	2016-03-11 15:21:59.200406+00	1208	Musiqa ta'limi	3		9	1
1386	2016-03-11 15:21:59.208685+00	1207	Kasb ta'limi: agronomiya	3		9	1
1387	2016-03-11 15:21:59.216998+00	1206	Pedagogika va psixologiya	3		9	1
1388	2016-03-11 15:21:59.225332+00	1205	Informatika o`qitish metodikasi	3		9	1
1389	2016-03-11 15:21:59.233655+00	1204	Geografiya o`qitish metodikasi	3		9	1
1390	2016-03-11 15:21:59.242034+00	1203	Mehnat ta'limi	3		9	1
1391	2016-03-11 15:21:59.250404+00	1202	Filologiya va tillarni o`qitish: o`zbek tili	3		9	1
1392	2016-03-11 15:21:59.258658+00	1201	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
1393	2016-03-11 15:21:59.267048+00	1200	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
1394	2016-03-11 15:21:59.275346+00	1199	Oziq-ovqat texnologiyasi (mahsulotlar turlari bo`yicha)	3		9	1
1395	2016-03-11 15:21:59.283659+00	1198	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
1396	2016-03-11 15:21:59.292074+00	1197	Tuproqshunoslik	3		9	1
1397	2016-03-11 15:21:59.300456+00	1196	Kimyo	3		9	1
1398	2016-03-11 15:21:59.3171+00	1195	Fizika	3		9	1
1399	2016-03-11 15:21:59.325479+00	1194	Biologiya (turlari bo`yicha)	3		9	1
1400	2016-03-11 15:21:59.333839+00	1193	Matematika	3		9	1
1401	2016-03-11 15:21:59.34212+00	1192	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
1402	2016-03-11 15:21:59.35044+00	1191	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
1403	2016-03-11 15:21:59.358775+00	1190	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
1404	2016-03-11 15:21:59.367116+00	1189	Tarix (Islom tarixi va manbashunosligi)	3		9	1
1405	2016-03-11 15:21:59.375434+00	1188	Dinshunoslik	3		9	1
1406	2016-03-11 15:21:59.383835+00	1187	Psixologiya (din sotsiopsixologiyasi)	3		9	1
1407	2016-03-11 15:21:59.392087+00	1186	Jahon iqtisodiyoti va xalqaro iqtisodiy munosabatlar (mintaqalar va faoliyat turlari bo`yicha)	3		9	1
1408	2016-03-11 15:21:59.40041+00	1185	Informatika va axborot texnologiyalari (tarmoqlar va sohalar bo`yicha)	3		9	1
1409	2016-03-11 15:21:59.408736+00	1184	Kasb ta'limi: yengil sanoat texnologiyalari va jihozlari	3		9	1
1410	2016-03-11 15:21:59.425993+00	1183	Kasb ta'limi: elektr texnikasi, elektr mexanikasi va elektr texnologiyalari	3		9	1
1411	2016-03-11 15:21:59.450535+00	1182	Kasb ta'limi: menejment	3		9	1
1412	2016-03-11 15:21:59.496337+00	1181	Kasb ta'limi: mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
1413	2016-03-11 15:21:59.50887+00	1180	Kasb ta'limi: kimyoviy texnologiya	3		9	1
1414	2016-03-11 15:21:59.517211+00	1179	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
1415	2016-03-11 15:21:59.525597+00	1178	Kasb ta'limi: neft-gazkimyo sanoati texnologiyasi	3		9	1
1416	2016-03-11 15:21:59.53391+00	1177	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
1417	2016-03-11 15:21:59.542248+00	1176	Texnologik jarayonlarni boshqarishning axborot-kommunikatsiya tizimlari	3		9	1
1418	2016-03-11 15:21:59.5506+00	1175	Yengil sanoat texnologiyalari va jihozlari	3		9	1
1419	2016-03-11 15:21:59.558835+00	1174	Texnologiyalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
1420	2016-03-11 15:21:59.567187+00	1173	Neft-gazkimyo sanoati texnologiyasi	3		9	1
1421	2016-03-11 15:21:59.57544+00	1172	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
1422	2016-03-11 15:21:59.583882+00	1171	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
1423	2016-03-11 15:21:59.592191+00	1170	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
1424	2016-03-11 15:21:59.600473+00	1169	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
1425	2016-03-11 15:21:59.608823+00	1168	Maktabgacha ta'lim	3		9	1
1426	2016-03-11 15:21:59.617112+00	1167	Jismoniy madaniyat	3		9	1
1427	2016-03-11 15:21:59.62552+00	1166	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
1428	2016-03-11 15:21:59.633799+00	1165	Mehnat ta'limi	3		9	1
1429	2016-03-11 15:21:59.642123+00	1164	Chaqiriqqacha harbiy ta'lim	3		9	1
1430	2016-03-11 15:21:59.650476+00	1163	Xorijiy til va adabiyoti: ingliz tili	3		9	1
1431	2016-03-11 15:21:59.658834+00	1162	Musiqa ta'limi	3		9	1
1432	2016-03-11 15:21:59.667214+00	1161	Kasb ta'limi: amaliy san'at	3		9	1
1433	2016-03-11 15:21:59.675533+00	1160	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
1434	2016-03-11 15:21:59.683856+00	1159	Kasb ta'limi: iqtisodiyot	3		9	1
1435	2016-03-11 15:21:59.692274+00	1158	Kasb ta'limi: agronomiya	3		9	1
1436	2016-03-11 15:21:59.700537+00	1157	Pedagogika va psixologiya	3		9	1
1437	2016-03-11 15:21:59.708854+00	1156	Tasviriy san'at va muhandislik grafikasi	3		9	1
1438	2016-03-11 15:21:59.717296+00	1155	Filologiya va tillarni o`qitish: o`zbek tili	3		9	1
1439	2016-03-11 15:21:59.725579+00	1154	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
1440	2016-03-11 15:21:59.733855+00	1153	Filologiya va tillarni o`qitish: nemis tili	3		9	1
1441	2016-03-11 15:21:59.74218+00	1152	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
1442	2016-03-11 15:21:59.750608+00	1151	Turizm (faoliyat yo`nalishlari bo`yicha)	3		9	1
1443	2016-03-11 15:21:59.758883+00	1150	Mehmonxona xo`jaligini tashkil etish va boshqarish	3		9	1
1444	2016-03-11 15:21:59.767167+00	1149	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
1445	2016-03-11 15:21:59.775563+00	1148	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
1446	2016-03-11 15:21:59.78396+00	1147	Arxivshunoslik	3		9	1
1447	2016-03-11 15:21:59.792241+00	1146	Psixologiya (faoliyat turlari bo`yicha)	3		9	1
1448	2016-03-11 15:21:59.800563+00	1145	Tuproqshunoslik	3		9	1
1449	2016-03-11 15:21:59.808877+00	1144	Geografiya	3		9	1
1450	2016-03-11 15:21:59.817224+00	1143	Filologiya va tillarni o`qitish: fransuz tili	3		9	1
1451	2016-03-11 15:21:59.825555+00	1142	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
1452	2016-03-11 15:21:59.833874+00	1141	Matematika	3		9	1
1453	2016-03-11 15:21:59.842211+00	1140	Biologiya (turlari bo`yicha)	3		9	1
1454	2016-03-11 15:21:59.850551+00	1139	Fizika	3		9	1
1455	2016-03-11 15:21:59.858856+00	1138	Kimyo	3		9	1
1456	2016-03-11 15:21:59.867181+00	1137	Kasb ta'limi: mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
1457	2016-03-11 15:21:59.875584+00	1136	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
1458	2016-03-11 15:21:59.883878+00	1135	Avtomobilsozlik va traktorsozlik	3		9	1
1459	2016-03-11 15:21:59.892181+00	1134	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
1460	2016-03-11 15:21:59.900541+00	1133	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
1461	2016-03-11 15:21:59.90895+00	1132	Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)	3		9	1
1462	2016-03-11 15:21:59.91732+00	1131	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
1463	2016-03-11 15:21:59.925586+00	1130	Mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
1464	2016-03-11 15:21:59.934031+00	1129	Materialshunoslik va yangi materiallar texnologiyasi	3		9	1
1465	2016-03-11 15:21:59.942265+00	1128	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)	3		9	1
1466	2016-03-11 15:21:59.950585+00	1127	Maktabgacha ta'lim	3		9	1
1467	2016-03-11 15:21:59.958908+00	1126	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
1468	2016-03-11 15:21:59.967306+00	1125	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
1469	2016-03-11 15:21:59.975592+00	1124	Xorijiy til va adabiyoti: fransuz tili	3		9	1
1470	2016-03-11 15:21:59.983909+00	1123	Xorijiy til va adabiyoti: nemis tili	3		9	1
1471	2016-03-11 15:21:59.992316+00	1122	Xorijiy til va adabiyoti: ingliz tili	3		9	1
1472	2016-03-11 15:22:00.000643+00	1121	Musiqa ta'limie	3		9	1
1473	2016-03-11 15:22:00.008954+00	1120	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
1474	2016-03-11 15:22:00.01727+00	1119	Pedagogika va psixologiya	3		9	1
1475	2016-03-11 15:22:00.025614+00	1118	Tasviriy san'at va muhandislik grafikasi	3		9	1
1476	2016-03-11 15:22:00.034037+00	1117	Jismoniy madaniyat	3		9	1
1477	2016-03-11 15:22:00.042312+00	1116	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
1478	2016-03-11 15:22:00.050689+00	1115	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
1479	2016-03-11 15:22:00.058999+00	1114	Mehnat iqtisodiyoti va sotsiologiyasi	3		9	1
1480	2016-03-11 15:22:00.067302+00	1113	Geografiya	3		9	1
1481	2016-03-11 15:22:00.075638+00	1112	Kimyo	3		9	1
1482	2016-03-11 15:22:00.118591+00	1111	Fizika	3		9	1
1483	2016-03-11 15:22:00.167813+00	1110	Biologiya (turlari bo`yicha)	3		9	1
1484	2016-03-11 15:22:00.192398+00	1109	Matematika	3		9	1
1485	2016-03-11 15:22:00.200628+00	1108	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
1486	2016-03-11 15:22:00.209036+00	1107	Filologiya va tillarni o`qitish: o`zbek tili	3		9	1
1487	2016-03-11 15:22:00.21736+00	1106	Mehnat ta'limi	3		9	1
1488	2016-03-11 15:22:00.225634+00	1105	Informatika o`qitish metodikasi	3		9	1
1489	2016-03-11 15:22:49.002947+00	230	Navoiy davlat konchilik institutining Zarafshon fakulteti	1	Added.	7	1
1490	2016-03-11 15:23:22.987775+00	230	Navoiy davlat konchilik institutining Zarafshon fakulteti	2	Changed region.	7	1
1491	2016-03-11 15:23:56.445997+00	1619	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)	3		9	1
1492	2016-03-11 15:23:56.4611+00	1618	Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)	3		9	1
1493	2016-03-11 15:23:56.46936+00	1617	Elektronika va asbobsozlik (tarmoqlar bo`yicha)	3		9	1
1494	2016-03-11 15:23:56.477672+00	1616	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
1495	2016-03-11 15:23:56.485992+00	1615	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
1496	2016-03-11 15:23:56.494437+00	1614	Avtomobilsozlik va traktorsozlik	3		9	1
1497	2016-03-11 15:23:56.502661+00	1613	Aviasozlik va havo kemalaridan texnik foydalanish	3		9	1
1498	2016-03-11 15:23:56.511022+00	1612	Metallurgiya	3		9	1
1499	2016-03-11 15:23:56.519434+00	1611	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)	3		9	1
1500	2016-03-11 15:23:56.527726+00	1610	Energetika (tarmoqlar bo`yicha)	3		9	1
1501	2016-03-11 15:23:56.535997+00	1609	Marketing (tarmoqlar va sohalar bo`yicha)	3		9	1
1502	2016-03-11 15:23:56.544321+00	1608	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
1503	2016-03-11 15:23:56.552674+00	1607	Dizayn (turlari bo`yicha)	3		9	1
1504	2016-03-11 15:23:56.561132+00	1606	Kasb ta'limi: texnologik mashinalar va jihozlar	3		9	1
1505	2016-03-11 15:23:56.569406+00	1605	Geodeziya, kartografiya va kadastr (funksiyalari bo`yicha)	3		9	1
1506	2016-03-11 15:23:56.577727+00	1604	Konchilik ishi	3		9	1
1507	2016-03-11 15:23:56.586161+00	1603	Foydali qazilma konlari geologiyasi, qidiruv va razvedkasi (kon turlari bo`yicha)	3		9	1
1508	2016-03-11 15:23:56.594375+00	1602	Hayotiy faoliyat xavfsizligi	3		9	1
1509	2016-03-11 15:23:56.602721+00	1601	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
1510	2016-03-11 15:23:56.611128+00	1600	Havodagi harakatni boshqarish	3		9	1
1511	2016-03-11 15:23:56.619462+00	1599	Xizmat ko`rsatish texnikasi va texnologiyasi (xizmat ko`rsatish tarmoqlari bo`yicha)	3		9	1
1512	2016-03-11 15:23:56.627753+00	1598	Radioelektron qurilmalar va tizimlar (tarmoqlar bo`yicha)	3		9	1
1513	2016-03-11 15:23:56.636074+00	1597	Informatika va axborot texnologiyalari (tarmoqlar va sohalar bo`yicha)	3		9	1
1514	2016-03-11 15:23:56.644622+00	1596	Neft va neft-gazni qayta ishlash texnologiyasi	3		9	1
1515	2016-03-11 15:23:56.652739+00	1595	Biotexnologiya (tarmoqlar bo`yicha)	3		9	1
1516	2016-03-11 15:23:56.661064+00	1594	Gidrogeologiya va muhandislik geologiyasi	3		9	1
1517	2016-03-11 15:23:56.669409+00	1593	Neft va gaz konlarini ishga tushirish va ulardan foydalanish	3		9	1
1518	2016-03-11 15:23:56.677827+00	1592	Neft-gazni qayta ishlash sanoati obyektlarini loyihalashtirish, qurish va ulardan foydalanish	3		9	1
1519	2016-03-11 15:23:56.686117+00	1591	Materialshunoslik va yangi materiallar texnologiyasi	3		9	1
1520	2016-03-11 15:23:56.694441+00	1590	Mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
1521	2016-03-11 15:23:56.70286+00	1589	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
1522	2016-03-11 15:23:56.711213+00	1588	Matematika	3		9	1
1523	2016-03-11 15:23:56.719515+00	1587	Amaliy matematika va informatika	3		9	1
1524	2016-03-11 15:23:56.727909+00	1586	Biologiya (turlari bo`yicha)	3		9	1
1525	2016-03-11 15:23:56.736152+00	1585	Fizika	3		9	1
1526	2016-03-11 15:23:56.744546+00	1584	Mexanika	3		9	1
1527	2016-03-11 15:23:56.752831+00	1583	Astronomiya	3		9	1
1528	2016-03-11 15:23:56.761372+00	1582	Kimyo	3		9	1
1529	2016-03-11 15:23:56.769466+00	1581	Falsafa	3		9	1
1530	2016-03-11 15:23:56.778104+00	1580	Arxeologiya	3		9	1
1531	2016-03-11 15:23:56.786115+00	1579	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
1532	2016-03-11 15:23:56.794613+00	1578	Filologiya va tillarni o`qitish: fransuz tili	3		9	1
1533	2016-03-11 15:23:56.802762+00	1577	Filologiya va tillarni o`qitish: nemis tili	3		9	1
1534	2016-03-11 15:23:56.811602+00	1576	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
1535	2016-03-11 15:23:56.819488+00	1575	Filologiya va tillarni o`qitish: o`zbek tili	3		9	1
1536	2016-03-11 15:23:56.827935+00	1574	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
1537	2016-03-11 15:23:56.836164+00	1573	Xorijiy til va adabiyoti: ingliz tili	3		9	1
1538	2016-03-11 15:23:56.844481+00	1572	Geografiya	3		9	1
1539	2016-03-11 15:23:56.85289+00	1571	Gidrometeorologiya	3		9	1
1540	2016-03-11 15:23:56.861201+00	1570	Ijtimoiy ish (pensiya ta'minoti)	3		9	1
1541	2016-03-11 15:23:56.869556+00	1569	Ijtimoiy ish (faoliyatning turli sohalari bo`yicha)	3		9	1
1542	2016-03-11 15:23:56.877856+00	1568	Axborot xavfsizligi (sohalar bo`yicha)	3		9	1
1543	2016-03-11 15:23:56.886232+00	1567	Informatika va axborot texnologiyalari (tarmoqlar va sohalar bo`yicha)	3		9	1
1544	2016-03-11 15:23:56.894521+00	1566	Axborot tizimlarining matematik va dasturiy ta'minoti	3		9	1
1545	2016-03-11 15:23:56.902852+00	1565	Geodeziya, kartografiya va kadastr (funksiyalari bo`yicha)	3		9	1
1546	2016-03-11 15:23:56.911147+00	1564	Kadrlar menejmenti	3		9	1
1547	2016-03-11 15:23:56.91965+00	1563	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
1548	2016-03-11 15:23:56.927819+00	1562	Arxivshunoslik	3		9	1
1549	2016-03-11 15:23:56.936154+00	1561	Geologiya	3		9	1
1550	2016-03-11 15:23:56.944487+00	1560	Geofizika	3		9	1
1551	2016-03-11 15:23:56.952981+00	1559	Tuproqshunoslik	3		9	1
1552	2016-03-11 15:23:56.961144+00	1558	Gidrologiya (tarmoqlar bo`yicha)	3		9	1
1553	2016-03-11 15:23:56.969476+00	1557	Sotsiologiya	3		9	1
1554	2016-03-11 15:23:56.978023+00	1556	Psixologiya (faoliyat turlari bo`yicha)	3		9	1
1555	2016-03-11 15:23:56.986153+00	1555	Jurnalistika (faoliyat turlari bo`yicha)	3		9	1
1556	2016-03-11 15:23:56.994479+00	1554	Geodeziya, kartografiya va kadastr (funksiyalari bo`yicha)	3		9	1
1557	2016-03-11 15:23:57.002805+00	1553	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
1558	2016-03-11 15:23:57.011236+00	1552	Dizayn (turlari bo`yicha)	3		9	1
1559	2016-03-11 15:23:57.019477+00	1551	Kasb ta'limi: tasviriy san'at va muhandislik grafikasi	3		9	1
1560	2016-03-11 15:23:57.027845+00	1550	Kasb ta'limi: muhandislik kommunikatsiyalari qurilishi va montaji	3		9	1
1561	2016-03-11 15:23:57.036215+00	1549	Kasb ta'limi: bino va inshootlar qurilishi	3		9	1
1562	2016-03-11 15:23:57.044568+00	1548	Arxitektura (turlari bo`yicha)	3		9	1
1563	2016-03-11 15:23:57.052832+00	1547	Bino va inshootlar qurilishi (turlari bo`yicha)	3		9	1
1564	2016-03-11 15:23:57.061167+00	1546	Shahar qurilishi va xo`jaligi	3		9	1
1565	2016-03-11 15:23:57.069518+00	1545	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
1566	2016-03-11 15:23:57.077994+00	1544	Qishloq hududlarini arxitektura-loyihaviy tashkil etish	3		9	1
1567	2016-03-11 15:23:57.08617+00	1543	Ko`chmas mulk ekspertizasi va uni boshqarish	3		9	1
1568	2016-03-11 15:23:57.09457+00	1542	Avtomobil yo`llari va aerodromlar	3		9	1
1569	2016-03-11 15:23:57.102967+00	1541	Qurilish materiallari, buyumlari va konstruksiyalarini ishlab chiqarish	3		9	1
1570	2016-03-11 15:23:57.111211+00	1540	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)	3		9	1
1571	2016-03-11 15:23:57.119549+00	1539	Arxeologiya	3		9	1
1572	2016-03-11 15:23:57.127966+00	1538	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
1573	2016-03-11 15:23:57.136305+00	1537	Filologiya va tillarni o`qitish: o`zbek tili	3		9	1
1574	2016-03-11 15:23:57.144566+00	1536	Mehnat ta'limi	3		9	1
1575	2016-03-11 15:23:57.152868+00	1535	Jismoniy madaniyat	3		9	1
1576	2016-03-11 15:23:57.161346+00	1534	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
1577	2016-03-11 15:23:57.169632+00	1533	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
1578	2016-03-11 15:23:57.177942+00	1532	Musiqa ta'limi	3		9	1
1579	2016-03-11 15:23:57.186164+00	1531	Kasb ta'limi: elektronika va asbobsozlik	3		9	1
1580	2016-03-11 15:23:57.194705+00	1530	Kasb ta'limi: amaliy san'at	3		9	1
1581	2016-03-11 15:23:57.20289+00	1529	Kasb ta'limi: iqtisodiyot	3		9	1
1582	2016-03-11 15:23:57.21127+00	1528	Tasviriy san'at va muhandislik grafikasi	3		9	1
1583	2016-03-11 15:23:57.219646+00	1527	Informatika o`qitish metodikasi	3		9	1
1584	2016-03-11 15:23:57.227989+00	1526	Matematika	3		9	1
1585	2016-03-11 15:23:57.236273+00	1525	Amaliy matematika va informatika	3		9	1
1586	2016-03-11 15:23:57.244599+00	1524	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
1587	2016-03-11 15:23:57.252917+00	1523	Sport faoliyati (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
1588	2016-03-11 15:23:57.261352+00	1522	Ijtimoiy ish (faoliyatning turli sohalari bo`yicha)	3		9	1
1589	2016-03-11 15:23:57.269603+00	1521	Kadrlar menejmenti	3		9	1
1590	2016-03-11 15:23:57.277943+00	1520	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
1591	2016-03-11 15:23:57.286321+00	1519	Psixologiya (faoliyat turlari bo`yicha)	3		9	1
1592	2016-03-11 15:23:57.294636+00	1518	Gidrometeorologiya	3		9	1
1593	2016-03-11 15:23:57.302938+00	1517	Geografiya	3		9	1
1594	2016-03-11 15:23:57.311326+00	1516	Biologiya (turlari bo`yicha)	3		9	1
1595	2016-03-11 15:23:57.319676+00	1515	Fizika	3		9	1
1596	2016-03-11 15:23:57.328035+00	1514	Mexanika	3		9	1
1597	2016-03-11 15:23:57.336378+00	1513	Astronomiya	3		9	1
1598	2016-03-11 15:23:57.34469+00	1512	Kimyo	3		9	1
1599	2016-03-11 15:23:57.35309+00	1511	Dizayn (turlari bo`yicha)	3		9	1
1600	2016-03-11 15:23:57.3614+00	1510	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
1601	2016-03-11 15:23:57.369765+00	1509	Marketing (tarmoqlar va sohalar bo`yicha)	3		9	1
1602	2016-03-11 15:23:57.377993+00	1508	Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)	3		9	1
1603	2016-03-11 15:23:57.386428+00	1507	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)	3		9	1
1604	2016-03-11 15:23:57.39464+00	1506	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
1605	2016-03-11 15:23:57.403097+00	1505	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
1606	2016-03-11 15:23:57.411342+00	1504	Matbaa va qadoqlash jarayonlari texnologiyasi	3		9	1
1607	2016-03-11 15:23:57.419735+00	1503	Yengil sanoat buyumlari konstruksiyasini ishlash va texnologiyasi (ishlab chiqarish turlari bo`yicha)	3		9	1
1608	2016-03-11 15:23:57.427935+00	1502	Tabiiy tolalarni dastlabki ishlash texnologiyasi (xom ashyo turlari bo`yicha)	3		9	1
1609	2016-03-11 15:23:57.436459+00	1501	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
1610	2016-03-11 15:23:57.444617+00	1500	Energetika (tarmoqlar bo`yicha)	3		9	1
1611	2016-03-11 15:23:57.452969+00	1499	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
1612	2016-03-11 15:23:57.461302+00	1498	Kasb ta'limi: muhandislik kommunikatsiyalari qurilishi va montaji	3		9	1
1613	2016-03-11 15:23:57.469736+00	1497	Kasb ta'limi: qishloq xo`jaligini mexanizatsiyalashtirish	3		9	1
1614	2016-03-11 15:23:57.477969+00	1496	Kasb ta'limi: kimyoviy texnologiya	3		9	1
1615	2016-03-11 15:23:57.486301+00	1495	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
1616	2016-03-11 15:23:57.494853+00	1494	Kasb ta'limi: iqtisodiyot	3		9	1
1617	2016-03-11 15:23:57.503067+00	1493	Kasb ta'limi: yerusti transport tizimlari va ularning ekspluatatsiyasi	3		9	1
1618	2016-03-11 15:23:57.511346+00	1492	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)	3		9	1
1619	2016-03-11 15:23:57.519674+00	1491	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
1620	2016-03-11 15:23:57.528206+00	1490	Mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
1621	2016-03-11 15:23:57.536349+00	1489	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
1622	2016-03-11 15:23:57.544681+00	1488	Qishloq hududlarini arxitektura-loyihaviy tashkil etish	3		9	1
1623	2016-03-11 15:23:57.553005+00	1487	Avtomobil yo`llari va aerodromlar	3		9	1
1624	2016-03-11 15:23:57.561418+00	1486	Qurilish materiallari, buyumlari va konstruksiyalarini ishlab chiqarish	3		9	1
1625	2016-03-11 15:23:57.569716+00	1485	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)	3		9	1
1626	2016-03-11 15:23:57.578009+00	1484	Bino va inshootlar qurilishi (turlari bo`yicha)	3		9	1
1627	2016-03-11 15:23:57.586442+00	1483	Oziq-ovqat texnologiyasi (mahsulotlar turlari bo`yicha)	3		9	1
1628	2016-03-11 15:23:57.59471+00	1482	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
1629	2016-03-11 15:23:57.60302+00	1481	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
1630	2016-03-11 15:23:57.611344+00	1480	Filologiya va tillarni o`qitish: o`zbek tili	3		9	1
1631	2016-03-11 15:23:57.619703+00	1479	Jismoniy madaniyat	3		9	1
1632	2016-03-11 15:23:57.628088+00	1478	Maktabgacha ta'lim	3		9	1
1633	2016-03-11 15:23:57.636393+00	1477	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
1634	2016-03-11 15:23:57.644684+00	1476	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
1635	2016-03-11 15:23:57.653136+00	1475	Xorijiy til va adabiyoti: ingliz tili	3		9	1
1636	2016-03-11 15:23:57.661349+00	1474	Musiqa ta'limi	3		9	1
1637	2016-03-11 15:23:57.669713+00	1473	Kasb ta'limi: iqtisodiyot	3		9	1
1638	2016-03-11 15:23:57.678148+00	1472	Pedagogika va psixologiya	3		9	1
1639	2016-03-11 15:23:57.686398+00	1471	Tasviriy san'at va muhandislik grafikasi	3		9	1
1640	2016-03-11 15:23:57.694706+00	1470	Filologiya va tillarni o`qitish: nemis tili	3		9	1
1641	2016-03-11 15:23:57.703086+00	1469	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
1642	2016-03-11 15:23:57.711509+00	1468	Hayotiy faoliyat xavfsizligi	3		9	1
1643	2016-03-11 15:23:57.71974+00	1467	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
1644	2016-03-11 15:23:57.728078+00	1466	Sport faoliyati (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
1645	2016-03-11 15:23:57.736485+00	1465	Ijtimoiy-madaniy faoliyat	3		9	1
1646	2016-03-11 15:23:57.744774+00	1464	Arxivshunoslik	3		9	1
1647	2016-03-11 15:23:57.753055+00	1463	Geografiya	3		9	1
1648	2016-03-11 15:23:57.7614+00	1462	Kimyo	3		9	1
1649	2016-03-11 15:23:57.769807+00	1461	Fizika	3		9	1
1650	2016-03-11 15:23:57.778125+00	1460	Biologiya (turlari bo`yicha)	3		9	1
1651	2016-03-11 15:23:57.786541+00	1459	Amaliy matematika va informatika	3		9	1
1652	2016-03-11 15:23:57.794793+00	1458	Matematika	3		9	1
1653	2016-03-11 15:23:57.803084+00	1457	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
1654	2016-03-11 15:23:57.811531+00	1456	Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)	3		9	1
1655	2016-03-11 15:23:57.819759+00	1455	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
1656	2016-03-11 15:23:57.828144+00	1454	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
1657	2016-03-11 15:23:57.83648+00	1453	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)	3		9	1
1658	2016-03-11 15:23:57.844734+00	1452	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
1659	2016-03-11 15:23:57.853122+00	1451	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
1660	2016-03-11 15:23:57.861607+00	1450	Kasb ta'limi: iqtisodiyot	3		9	1
1661	2016-03-11 15:23:57.869795+00	1449	Yengil sanoat buyumlari konstruksiyasini ishlash va texnologiyasi (ishlab chiqarish turlari bo`yicha)	3		9	1
1662	2016-03-11 15:23:57.87808+00	1448	Bino va inshootlar qurilishi (turlari bo`yicha)	3		9	1
1663	2016-03-11 15:23:57.886443+00	1447	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
1664	2016-03-11 15:23:57.894863+00	1446	Tashishni tashkil etish va transport logistikasi (transport turlari bo`yicha)	3		9	1
1665	2016-03-11 15:23:57.903124+00	1445	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
1666	2016-03-11 15:23:57.911439+00	1444	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
1667	2016-03-11 15:23:57.919885+00	1443	Avtomobil yo`llari va aerodromlar	3		9	1
1668	2016-03-11 15:23:57.928233+00	1442	Transport inshootlarining ekspluatatsiyasi (transport inshootlari turlari bo`yicha)	3		9	1
1669	2016-03-11 15:23:57.936522+00	1441	Qurilish materiallari, buyumlari va konstruksiyalarini ishlab chiqarish	3		9	1
1670	2016-03-11 15:23:57.944824+00	1440	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)	3		9	1
1671	2016-03-11 15:23:57.953157+00	1439	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
1672	2016-03-11 15:23:57.961639+00	1438	Jismoniy madaniyat	3		9	1
1673	2016-03-11 15:23:57.969834+00	1437	Maktabgacha ta'lim	3		9	1
1674	2016-03-11 15:23:57.978275+00	1436	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
1675	2016-03-11 15:23:57.986545+00	1435	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
1676	2016-03-11 15:23:57.994875+00	1434	Xorijiy til va adabiyoti: ingliz tili	3		9	1
1677	2016-03-11 15:23:58.003146+00	1433	Musiqa ta'limi	3		9	1
1678	2016-03-11 15:23:58.011497+00	1432	Kasb ta'limi: agronomiya	3		9	1
1679	2016-03-11 15:23:58.019876+00	1431	Pedagogika va psixologiya	3		9	1
1680	2016-03-11 15:23:58.028188+00	1430	Informatika o`qitish metodikasi	3		9	1
1681	2016-03-11 15:23:58.036514+00	1429	Geografiya o`qitish metodikasi	3		9	1
1682	2016-03-11 15:23:58.045032+00	1428	Mehnat ta'limi	3		9	1
1683	2016-03-11 15:23:58.053236+00	1427	Filologiya va tillarni o`qitish: o`zbek tili	3		9	1
1684	2016-03-11 15:23:58.061491+00	1426	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
1685	2016-03-11 15:23:58.069863+00	1425	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
1686	2016-03-11 15:23:58.078322+00	1424	Oziq-ovqat texnologiyasi (mahsulotlar turlari bo`yicha)	3		9	1
1687	2016-03-11 15:23:58.086504+00	1423	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
1688	2016-03-11 15:23:58.094849+00	1422	Tuproqshunoslik	3		9	1
1689	2016-03-11 15:23:58.103234+00	1421	Kimyo	3		9	1
1690	2016-03-11 15:23:58.11164+00	1420	Fizika	3		9	1
1691	2016-03-11 15:23:58.119889+00	1419	Biologiya (turlari bo`yicha)	3		9	1
1692	2016-03-11 15:23:58.128221+00	1418	Matematika	3		9	1
1693	2016-03-11 15:23:58.136582+00	1417	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
1694	2016-03-11 15:23:58.144968+00	1416	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
1695	2016-03-11 15:23:58.153272+00	1415	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
1696	2016-03-11 15:23:58.161597+00	1414	Tarix (Islom tarixi va manbashunosligi)	3		9	1
1697	2016-03-11 15:23:58.170042+00	1413	Dinshunoslik	3		9	1
1698	2016-03-11 15:23:58.178268+00	1412	Psixologiya (din sotsiopsixologiyasi)	3		9	1
1699	2016-03-11 15:23:58.186583+00	1411	Jahon iqtisodiyoti va xalqaro iqtisodiy munosabatlar (mintaqalar va faoliyat turlari bo`yicha)	3		9	1
1700	2016-03-11 15:23:58.194964+00	1410	Informatika va axborot texnologiyalari (tarmoqlar va sohalar bo`yicha)	3		9	1
1701	2016-03-11 15:23:58.203528+00	1409	Kasb ta'limi: yengil sanoat texnologiyalari va jihozlari	3		9	1
1702	2016-03-11 15:23:58.211587+00	1408	Kasb ta'limi: elektr texnikasi, elektr mexanikasi va elektr texnologiyalari	3		9	1
1703	2016-03-11 15:23:58.21993+00	1407	Kasb ta'limi: menejment	3		9	1
1704	2016-03-11 15:23:58.228281+00	1406	Kasb ta'limi: mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
1705	2016-03-11 15:23:58.236608+00	1405	Kasb ta'limi: kimyoviy texnologiya	3		9	1
1706	2016-03-11 15:23:58.244997+00	1404	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
1707	2016-03-11 15:23:58.25337+00	1403	Kasb ta'limi: neft-gazkimyo sanoati texnologiyasi	3		9	1
1708	2016-03-11 15:23:58.261623+00	1402	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
1709	2016-03-11 15:23:58.269969+00	1401	Texnologik jarayonlarni boshqarishning axborot-kommunikatsiya tizimlari	3		9	1
1710	2016-03-11 15:23:58.278371+00	1400	Yengil sanoat texnologiyalari va jihozlari	3		9	1
1711	2016-03-11 15:23:58.286752+00	1399	Texnologiyalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
1712	2016-03-11 15:23:58.295003+00	1398	Neft-gazkimyo sanoati texnologiyasi	3		9	1
1713	2016-03-11 15:23:58.303442+00	1397	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
1714	2016-03-11 15:23:58.311658+00	1396	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
1715	2016-03-11 15:23:58.320079+00	1395	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
1716	2016-03-11 15:23:58.328362+00	1394	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
1717	2016-03-11 15:23:58.336721+00	1393	Maktabgacha ta'lim	3		9	1
1718	2016-03-11 15:23:58.345004+00	1392	Jismoniy madaniyat	3		9	1
1719	2016-03-11 15:23:58.353452+00	1391	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
1720	2016-03-11 15:23:58.36179+00	1390	Mehnat ta'limi	3		9	1
1721	2016-03-11 15:23:58.370508+00	1389	Chaqiriqqacha harbiy ta'lim	3		9	1
1722	2016-03-11 15:23:58.37838+00	1388	Xorijiy til va adabiyoti: ingliz tili	3		9	1
1723	2016-03-11 15:23:58.386842+00	1387	Musiqa ta'limi	3		9	1
1724	2016-03-11 15:23:58.395104+00	1386	Kasb ta'limi: amaliy san'at	3		9	1
1725	2016-03-11 15:23:58.403533+00	1385	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
1726	2016-03-11 15:23:58.41168+00	1384	Kasb ta'limi: iqtisodiyot	3		9	1
1727	2016-03-11 15:23:58.420036+00	1383	Kasb ta'limi: agronomiya	3		9	1
1728	2016-03-11 15:23:58.428304+00	1382	Pedagogika va psixologiya	3		9	1
1729	2016-03-11 15:23:58.436741+00	1381	Tasviriy san'at va muhandislik grafikasi	3		9	1
1730	2016-03-11 15:23:58.445039+00	1380	Filologiya va tillarni o`qitish: o`zbek tili	3		9	1
1731	2016-03-11 15:23:58.453415+00	1379	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
1732	2016-03-11 15:23:58.46161+00	1378	Filologiya va tillarni o`qitish: nemis tili	3		9	1
1733	2016-03-11 15:23:58.470036+00	1377	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
1734	2016-03-11 15:23:58.478419+00	1376	Turizm (faoliyat yo`nalishlari bo`yicha)	3		9	1
1735	2016-03-11 15:23:58.486682+00	1375	Mehmonxona xo`jaligini tashkil etish va boshqarish	3		9	1
1736	2016-03-11 15:23:58.495013+00	1374	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
1737	2016-03-11 15:23:58.503359+00	1373	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
1738	2016-03-11 15:23:58.511793+00	1372	Arxivshunoslik	3		9	1
1739	2016-03-11 15:23:58.520092+00	1371	Psixologiya (faoliyat turlari bo`yicha)	3		9	1
1740	2016-03-11 15:23:58.5284+00	1370	Tuproqshunoslik	3		9	1
1741	2016-03-11 15:23:58.536786+00	1369	Geografiya	3		9	1
1742	2016-03-11 15:23:58.545096+00	1368	Filologiya va tillarni o`qitish: fransuz tili	3		9	1
1743	2016-03-11 15:23:58.553335+00	1367	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
1744	2016-03-11 15:23:58.561804+00	1366	Matematika	3		9	1
1745	2016-03-11 15:23:58.570133+00	1365	Biologiya (turlari bo`yicha)	3		9	1
1746	2016-03-11 15:23:58.578399+00	1364	Fizika	3		9	1
1747	2016-03-11 15:23:58.586718+00	1363	Kimyo	3		9	1
1748	2016-03-11 15:23:58.595254+00	1362	Kasb ta'limi: mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
1749	2016-03-11 15:23:58.603377+00	1361	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
1750	2016-03-11 15:23:58.611752+00	1360	Avtomobilsozlik va traktorsozlik	3		9	1
1751	2016-03-11 15:23:58.620092+00	1359	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
1752	2016-03-11 15:23:58.628468+00	1358	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
1753	2016-03-11 15:23:58.636714+00	1357	Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)	3		9	1
1754	2016-03-11 15:23:58.645048+00	1356	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
1755	2016-03-11 15:23:58.65346+00	1355	Mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
1756	2016-03-11 15:23:58.661996+00	1354	Materialshunoslik va yangi materiallar texnologiyasi	3		9	1
1757	2016-03-11 15:23:58.670208+00	1353	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)	3		9	1
1758	2016-03-11 15:23:58.678348+00	1352	Maktabgacha ta'lim	3		9	1
1759	2016-03-11 15:23:58.686671+00	1351	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
1760	2016-03-11 15:23:58.69509+00	1350	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
1761	2016-03-11 15:23:58.703369+00	1349	Xorijiy til va adabiyoti: fransuz tili	3		9	1
1762	2016-03-11 15:23:58.711721+00	1348	Xorijiy til va adabiyoti: nemis tili	3		9	1
1763	2016-03-11 15:23:58.72013+00	1347	Xorijiy til va adabiyoti: ingliz tili	3		9	1
1764	2016-03-11 15:23:58.728425+00	1346	Musiqa ta'limie	3		9	1
1765	2016-03-11 15:23:58.736762+00	1345	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
1766	2016-03-11 15:23:58.745145+00	1344	Pedagogika va psixologiya	3		9	1
1767	2016-03-11 15:23:58.753509+00	1343	Tasviriy san'at va muhandislik grafikasi	3		9	1
1768	2016-03-11 15:23:58.761756+00	1342	Jismoniy madaniyat	3		9	1
1769	2016-03-11 15:23:58.7702+00	1341	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
1770	2016-03-11 15:23:58.778484+00	1340	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
1771	2016-03-11 15:23:58.786752+00	1339	Mehnat iqtisodiyoti va sotsiologiyasi	3		9	1
1772	2016-03-11 15:23:58.795132+00	1338	Geografiya	3		9	1
1773	2016-03-11 15:23:58.803434+00	1337	Kimyo	3		9	1
1774	2016-03-11 15:23:58.811803+00	1336	Fizika	3		9	1
1775	2016-03-11 15:23:58.820081+00	1335	Biologiya (turlari bo`yicha)	3		9	1
1776	2016-03-11 15:23:58.828413+00	1334	Matematika	3		9	1
1777	2016-03-11 15:23:58.836944+00	1333	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
1778	2016-03-11 15:23:58.845104+00	1332	Filologiya va tillarni o`qitish: o`zbek tili	3		9	1
1779	2016-03-11 15:23:58.853413+00	1331	Mehnat ta'limi	3		9	1
1780	2016-03-11 15:23:58.861791+00	1330	Informatika o`qitish metodikasi	3		9	1
1781	2016-03-11 15:25:44.914787+00	1938	Xoreografiya (turlari bo`yicha)	3		9	1
1782	2016-03-11 15:25:44.931575+00	1937	San'atshunoslik: xoreografiya	3		9	1
1783	2016-03-11 15:25:44.93986+00	1936	Bank ishi	3		9	1
1784	2016-03-11 15:25:44.948088+00	1935	Marketing (tarmoqlar va sohalar bo`yicha)	3		9	1
1785	2016-03-11 15:25:44.95642+00	1934	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
1786	2016-03-11 15:25:44.964853+00	1933	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
1787	2016-03-11 15:25:44.973093+00	1932	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
1788	2016-03-11 15:25:44.981415+00	1931	Kasb ta'limi: iqtisodiyot	3		9	1
1789	2016-03-11 15:25:44.989737+00	1930	Soliqlar va soliqqa tortish	3		9	1
1790	2016-03-11 15:25:44.998253+00	1929	Buxgalteriya hisobi va audit (tarmoqlar bo`yicha)	3		9	1
1791	2016-03-11 15:25:45.006439+00	1928	Mehmonxona xo`jaligini tashkil etish va boshqarish	3		9	1
1792	2016-03-11 15:25:45.014792+00	1927	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
1793	2016-03-11 15:25:45.023217+00	1926	Informatika va axborot texnologiyalari (tarmoqlar va sohalar bo`yicha)	3		9	1
1794	2016-03-11 15:25:45.031536+00	1925	Kadrlar menejmenti	3		9	1
1795	2016-03-11 15:25:45.039866+00	1924	Mehnat iqtisodiyoti va sotsiologiyasi	3		9	1
1796	2016-03-11 15:25:45.04816+00	1923	Statistika (tarmoqlar va sohalar bo`yicha)	3		9	1
1797	2016-03-11 15:25:45.056528+00	1922	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)	3		9	1
1798	2016-03-11 15:25:45.064776+00	1921	Metallurgiya	3		9	1
1799	2016-03-11 15:25:45.073176+00	1920	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
1800	2016-03-11 15:25:45.081531+00	1919	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)	3		9	1
1801	2016-03-11 15:25:45.089931+00	1918	Konchilik ishi	3		9	1
1802	2016-03-11 15:25:45.098168+00	1917	Foydali qazilma konlari geologiyasi, qidiruv va razvedkasi (kon turlari bo`yicha)	3		9	1
1803	2016-03-11 15:25:45.106512+00	1916	Mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
1804	2016-03-11 15:25:45.114826+00	1915	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
1805	2016-03-11 15:25:45.123325+00	1914	Noyob va radioaktiv metallar rudalarini qazib olish, qayta ishlash texnikasi va texnologiyasi	3		9	1
1806	2016-03-11 15:25:45.131491+00	1913	Soliqlar va soliqqa tortish	3		9	1
1807	2016-03-11 15:25:45.139989+00	1912	Metallurgiya	3		9	1
1808	2016-03-11 15:25:45.148153+00	1911	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
1809	2016-03-11 15:25:45.156717+00	1910	Konchilik ishi	3		9	1
1810	2016-03-11 15:25:45.164819+00	1909	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)	3		9	1
1811	2016-03-11 15:25:45.173361+00	1908	Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)	3		9	1
1812	2016-03-11 15:25:45.181511+00	1907	Elektronika va asbobsozlik (tarmoqlar bo`yicha)	3		9	1
1813	2016-03-11 15:25:45.189956+00	1906	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
1814	2016-03-11 15:25:45.198183+00	1905	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
1815	2016-03-11 15:25:45.206618+00	1904	Avtomobilsozlik va traktorsozlik	3		9	1
1816	2016-03-11 15:25:45.21495+00	1903	Aviasozlik va havo kemalaridan texnik foydalanish	3		9	1
1817	2016-03-11 15:25:45.223271+00	1902	Metallurgiya	3		9	1
1818	2016-03-11 15:25:45.231577+00	1901	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)	3		9	1
1819	2016-03-11 15:25:45.23996+00	1900	Energetika (tarmoqlar bo`yicha)	3		9	1
1820	2016-03-11 15:25:45.248375+00	1899	Marketing (tarmoqlar va sohalar bo`yicha)	3		9	1
1821	2016-03-11 15:25:45.25654+00	1898	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
1822	2016-03-11 15:25:45.264873+00	1897	Dizayn (turlari bo`yicha)	3		9	1
1823	2016-03-11 15:25:45.273351+00	1896	Kasb ta'limi: texnologik mashinalar va jihozlar	3		9	1
1824	2016-03-11 15:25:45.281571+00	1895	Geodeziya, kartografiya va kadastr (funksiyalari bo`yicha)	3		9	1
1825	2016-03-11 15:25:45.289848+00	1894	Konchilik ishi	3		9	1
1826	2016-03-11 15:25:45.298248+00	1893	Foydali qazilma konlari geologiyasi, qidiruv va razvedkasi (kon turlari bo`yicha)	3		9	1
1827	2016-03-11 15:25:45.306613+00	1892	Hayotiy faoliyat xavfsizligi	3		9	1
1828	2016-03-11 15:25:45.314932+00	1891	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
1829	2016-03-11 15:25:45.323403+00	1890	Havodagi harakatni boshqarish	3		9	1
1830	2016-03-11 15:25:45.331603+00	1889	Xizmat ko`rsatish texnikasi va texnologiyasi (xizmat ko`rsatish tarmoqlari bo`yicha)	3		9	1
1831	2016-03-11 15:25:45.340244+00	1888	Radioelektron qurilmalar va tizimlar (tarmoqlar bo`yicha)	3		9	1
1832	2016-03-11 15:25:45.381954+00	1887	Informatika va axborot texnologiyalari (tarmoqlar va sohalar bo`yicha)	3		9	1
1833	2016-03-11 15:25:45.390055+00	1886	Neft va neft-gazni qayta ishlash texnologiyasi	3		9	1
1834	2016-03-11 15:25:45.398318+00	1885	Biotexnologiya (tarmoqlar bo`yicha)	3		9	1
1835	2016-03-11 15:25:45.406589+00	1884	Gidrogeologiya va muhandislik geologiyasi	3		9	1
1836	2016-03-11 15:25:45.414928+00	1883	Neft va gaz konlarini ishga tushirish va ulardan foydalanish	3		9	1
1837	2016-03-11 15:25:45.423351+00	1882	Neft-gazni qayta ishlash sanoati obyektlarini loyihalashtirish, qurish va ulardan foydalanish	3		9	1
1838	2016-03-11 15:25:45.431548+00	1881	Materialshunoslik va yangi materiallar texnologiyasi	3		9	1
1839	2016-03-11 15:25:45.439961+00	1880	Mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
1840	2016-03-11 15:25:45.448201+00	1879	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
1841	2016-03-11 15:25:45.456631+00	1878	Matematika	3		9	1
1842	2016-03-11 15:25:45.464928+00	1877	Amaliy matematika va informatika	3		9	1
1843	2016-03-11 15:25:45.473305+00	1876	Biologiya (turlari bo`yicha)	3		9	1
1844	2016-03-11 15:25:45.481635+00	1875	Fizika	3		9	1
1845	2016-03-11 15:25:45.490184+00	1874	Mexanika	3		9	1
1846	2016-03-11 15:25:45.498272+00	1873	Astronomiya	3		9	1
1847	2016-03-11 15:25:45.506593+00	1872	Kimyo	3		9	1
1848	2016-03-11 15:25:45.515032+00	1871	Falsafa	3		9	1
1849	2016-03-11 15:25:45.523239+00	1870	Arxeologiya	3		9	1
1850	2016-03-11 15:25:45.531594+00	1869	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
1851	2016-03-11 15:25:45.540011+00	1868	Filologiya va tillarni o`qitish: fransuz tili	3		9	1
1852	2016-03-11 15:25:45.548313+00	1867	Filologiya va tillarni o`qitish: nemis tili	3		9	1
1853	2016-03-11 15:25:45.556567+00	1866	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
1854	2016-03-11 15:25:45.564897+00	1865	Filologiya va tillarni o`qitish: o`zbek tili	3		9	1
1855	2016-03-11 15:25:45.573464+00	1864	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
1856	2016-03-11 15:25:45.581701+00	1863	Xorijiy til va adabiyoti: ingliz tili	3		9	1
1857	2016-03-11 15:25:45.589951+00	1862	Geografiya	3		9	1
1858	2016-03-11 15:25:45.598353+00	1861	Gidrometeorologiya	3		9	1
1859	2016-03-11 15:25:45.606696+00	1860	Ijtimoiy ish (pensiya ta'minoti)	3		9	1
1860	2016-03-11 15:25:45.614971+00	1859	Ijtimoiy ish (faoliyatning turli sohalari bo`yicha)	3		9	1
1861	2016-03-11 15:25:45.623304+00	1858	Axborot xavfsizligi (sohalar bo`yicha)	3		9	1
1862	2016-03-11 15:25:45.631643+00	1857	Informatika va axborot texnologiyalari (tarmoqlar va sohalar bo`yicha)	3		9	1
1863	2016-03-11 15:25:45.640132+00	1856	Axborot tizimlarining matematik va dasturiy ta'minoti	3		9	1
1864	2016-03-11 15:25:45.64833+00	1855	Geodeziya, kartografiya va kadastr (funksiyalari bo`yicha)	3		9	1
1865	2016-03-11 15:25:45.656693+00	1854	Kadrlar menejmenti	3		9	1
1866	2016-03-11 15:25:45.665202+00	1853	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
1867	2016-03-11 15:25:45.673359+00	1852	Arxivshunoslik	3		9	1
1868	2016-03-11 15:25:45.681675+00	1851	Geologiya	3		9	1
1869	2016-03-11 15:25:45.69001+00	1850	Geofizika	3		9	1
1870	2016-03-11 15:25:45.698465+00	1849	Tuproqshunoslik	3		9	1
1871	2016-03-11 15:25:45.706658+00	1848	Gidrologiya (tarmoqlar bo`yicha)	3		9	1
1872	2016-03-11 15:25:45.715016+00	1847	Sotsiologiya	3		9	1
1873	2016-03-11 15:25:45.72344+00	1846	Psixologiya (faoliyat turlari bo`yicha)	3		9	1
1874	2016-03-11 15:25:45.731718+00	1845	Jurnalistika (faoliyat turlari bo`yicha)	3		9	1
1875	2016-03-11 15:25:45.740027+00	1844	Geodeziya, kartografiya va kadastr (funksiyalari bo`yicha)	3		9	1
1876	2016-03-11 15:25:45.748337+00	1843	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
1877	2016-03-11 15:25:45.756812+00	1842	Dizayn (turlari bo`yicha)	3		9	1
1878	2016-03-11 15:25:45.765033+00	1841	Kasb ta'limi: tasviriy san'at va muhandislik grafikasi	3		9	1
1879	2016-03-11 15:25:45.773407+00	1840	Kasb ta'limi: muhandislik kommunikatsiyalari qurilishi va montaji	3		9	1
1880	2016-03-11 15:25:45.781722+00	1839	Kasb ta'limi: bino va inshootlar qurilishi	3		9	1
1881	2016-03-11 15:25:45.790145+00	1838	Arxitektura (turlari bo`yicha)	3		9	1
1882	2016-03-11 15:25:45.798412+00	1837	Bino va inshootlar qurilishi (turlari bo`yicha)	3		9	1
1883	2016-03-11 15:25:45.806697+00	1836	Shahar qurilishi va xo`jaligi	3		9	1
1884	2016-03-11 15:25:45.815058+00	1835	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
1885	2016-03-11 15:25:45.823482+00	1834	Qishloq hududlarini arxitektura-loyihaviy tashkil etish	3		9	1
1886	2016-03-11 15:25:45.83172+00	1833	Ko`chmas mulk ekspertizasi va uni boshqarish	3		9	1
1887	2016-03-11 15:25:45.840098+00	1832	Avtomobil yo`llari va aerodromlar	3		9	1
1888	2016-03-11 15:25:45.848616+00	1831	Qurilish materiallari, buyumlari va konstruksiyalarini ishlab chiqarish	3		9	1
1889	2016-03-11 15:25:45.856777+00	1830	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)	3		9	1
1890	2016-03-11 15:25:45.865089+00	1829	Arxeologiya	3		9	1
1891	2016-03-11 15:25:45.873427+00	1828	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
1892	2016-03-11 15:25:45.881873+00	1827	Filologiya va tillarni o`qitish: o`zbek tili	3		9	1
1893	2016-03-11 15:25:45.890167+00	1826	Mehnat ta'limi	3		9	1
1894	2016-03-11 15:25:45.898503+00	1825	Jismoniy madaniyat	3		9	1
1895	2016-03-11 15:25:45.906844+00	1824	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
1896	2016-03-11 15:25:45.915157+00	1823	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
1897	2016-03-11 15:25:45.923399+00	1822	Musiqa ta'limi	3		9	1
1898	2016-03-11 15:25:45.961187+00	1821	Kasb ta'limi: elektronika va asbobsozlik	3		9	1
1899	2016-03-11 15:25:45.990343+00	1820	Kasb ta'limi: amaliy san'at	3		9	1
1900	2016-03-11 15:25:45.998516+00	1819	Kasb ta'limi: iqtisodiyot	3		9	1
1901	2016-03-11 15:25:46.006834+00	1818	Tasviriy san'at va muhandislik grafikasi	3		9	1
1902	2016-03-11 15:25:46.015143+00	1817	Informatika o`qitish metodikasi	3		9	1
1903	2016-03-11 15:25:46.023528+00	1816	Matematika	3		9	1
1904	2016-03-11 15:25:46.03181+00	1815	Amaliy matematika va informatika	3		9	1
1905	2016-03-11 15:25:46.04023+00	1814	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
1906	2016-03-11 15:25:46.048446+00	1813	Sport faoliyati (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
1907	2016-03-11 15:25:46.056807+00	1812	Ijtimoiy ish (faoliyatning turli sohalari bo`yicha)	3		9	1
1908	2016-03-11 15:25:46.065234+00	1811	Kadrlar menejmenti	3		9	1
1909	2016-03-11 15:25:46.073462+00	1810	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
1910	2016-03-11 15:25:46.081792+00	1809	Psixologiya (faoliyat turlari bo`yicha)	3		9	1
1911	2016-03-11 15:25:46.09024+00	1808	Gidrometeorologiya	3		9	1
1912	2016-03-11 15:25:46.098541+00	1807	Geografiya	3		9	1
1913	2016-03-11 15:25:46.106775+00	1806	Biologiya (turlari bo`yicha)	3		9	1
1914	2016-03-11 15:25:46.115104+00	1805	Fizika	3		9	1
1915	2016-03-11 15:25:46.123563+00	1804	Mexanika	3		9	1
1916	2016-03-11 15:25:46.131839+00	1803	Astronomiya	3		9	1
1917	2016-03-11 15:25:46.140355+00	1802	Kimyo	3		9	1
1918	2016-03-11 15:25:46.148572+00	1801	Dizayn (turlari bo`yicha)	3		9	1
1919	2016-03-11 15:25:46.156922+00	1800	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
1920	2016-03-11 15:25:46.165238+00	1799	Marketing (tarmoqlar va sohalar bo`yicha)	3		9	1
1921	2016-03-11 15:25:46.173621+00	1798	Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)	3		9	1
1922	2016-03-11 15:25:46.181894+00	1797	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)	3		9	1
1923	2016-03-11 15:25:46.190287+00	1796	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
1924	2016-03-11 15:25:46.198583+00	1795	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
1925	2016-03-11 15:25:46.206916+00	1794	Matbaa va qadoqlash jarayonlari texnologiyasi	3		9	1
1926	2016-03-11 15:25:46.215225+00	1793	Yengil sanoat buyumlari konstruksiyasini ishlash va texnologiyasi (ishlab chiqarish turlari bo`yicha)	3		9	1
1927	2016-03-11 15:25:46.223582+00	1792	Tabiiy tolalarni dastlabki ishlash texnologiyasi (xom ashyo turlari bo`yicha)	3		9	1
1928	2016-03-11 15:25:46.231882+00	1791	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
1929	2016-03-11 15:25:46.240344+00	1790	Energetika (tarmoqlar bo`yicha)	3		9	1
1930	2016-03-11 15:25:46.248612+00	1789	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
1931	2016-03-11 15:25:46.256871+00	1788	Kasb ta'limi: muhandislik kommunikatsiyalari qurilishi va montaji	3		9	1
1932	2016-03-11 15:25:46.265316+00	1787	Kasb ta'limi: qishloq xo`jaligini mexanizatsiyalashtirish	3		9	1
1933	2016-03-11 15:25:46.273634+00	1786	Kasb ta'limi: kimyoviy texnologiya	3		9	1
1934	2016-03-11 15:25:46.281944+00	1785	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
1935	2016-03-11 15:25:46.290376+00	1784	Kasb ta'limi: iqtisodiyot	3		9	1
1936	2016-03-11 15:25:46.298623+00	1783	Kasb ta'limi: yerusti transport tizimlari va ularning ekspluatatsiyasi	3		9	1
1937	2016-03-11 15:25:46.306998+00	1782	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)	3		9	1
1938	2016-03-11 15:25:46.315334+00	1781	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
1939	2016-03-11 15:25:46.323663+00	1780	Mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
1940	2016-03-11 15:25:46.332001+00	1779	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
1941	2016-03-11 15:25:46.340351+00	1778	Qishloq hududlarini arxitektura-loyihaviy tashkil etish	3		9	1
1942	2016-03-11 15:25:46.348686+00	1777	Avtomobil yo`llari va aerodromlar	3		9	1
1943	2016-03-11 15:25:46.357039+00	1776	Qurilish materiallari, buyumlari va konstruksiyalarini ishlab chiqarish	3		9	1
1944	2016-03-11 15:25:46.365337+00	1775	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)	3		9	1
1945	2016-03-11 15:25:46.373674+00	1774	Bino va inshootlar qurilishi (turlari bo`yicha)	3		9	1
1946	2016-03-11 15:25:46.382004+00	1773	Oziq-ovqat texnologiyasi (mahsulotlar turlari bo`yicha)	3		9	1
1947	2016-03-11 15:25:46.390343+00	1772	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
1948	2016-03-11 15:25:46.398641+00	1771	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
1949	2016-03-11 15:25:46.406993+00	1770	Filologiya va tillarni o`qitish: o`zbek tili	3		9	1
1950	2016-03-11 15:25:46.415309+00	1769	Jismoniy madaniyat	3		9	1
1951	2016-03-11 15:25:46.423619+00	1768	Maktabgacha ta'lim	3		9	1
1952	2016-03-11 15:25:46.43211+00	1767	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
1953	2016-03-11 15:25:46.440257+00	1766	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
1954	2016-03-11 15:25:46.448703+00	1765	Xorijiy til va adabiyoti: ingliz tili	3		9	1
1955	2016-03-11 15:25:46.457068+00	1764	Musiqa ta'limi	3		9	1
1956	2016-03-11 15:25:46.465335+00	1763	Kasb ta'limi: iqtisodiyot	3		9	1
1957	2016-03-11 15:25:46.473726+00	1762	Pedagogika va psixologiya	3		9	1
1958	2016-03-11 15:25:46.481948+00	1761	Tasviriy san'at va muhandislik grafikasi	3		9	1
1959	2016-03-11 15:25:46.4905+00	1760	Filologiya va tillarni o`qitish: nemis tili	3		9	1
1960	2016-03-11 15:25:46.49865+00	1759	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
1961	2016-03-11 15:25:46.507051+00	1758	Hayotiy faoliyat xavfsizligi	3		9	1
1962	2016-03-11 15:25:46.51527+00	1757	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
1963	2016-03-11 15:25:46.523885+00	1756	Sport faoliyati (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
1964	2016-03-11 15:25:46.531987+00	1755	Ijtimoiy-madaniy faoliyat	3		9	1
1965	2016-03-11 15:25:46.540331+00	1754	Arxivshunoslik	3		9	1
1966	2016-03-11 15:25:46.548628+00	1753	Geografiya	3		9	1
1967	2016-03-11 15:25:46.557057+00	1752	Kimyo	3		9	1
1968	2016-03-11 15:25:46.565297+00	1751	Fizika	3		9	1
1969	2016-03-11 15:25:46.573628+00	1750	Biologiya (turlari bo`yicha)	3		9	1
1970	2016-03-11 15:25:46.582011+00	1749	Amaliy matematika va informatika	3		9	1
1971	2016-03-11 15:25:46.590428+00	1748	Matematika	3		9	1
1972	2016-03-11 15:25:46.598681+00	1747	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
1973	2016-03-11 15:25:46.607009+00	1746	Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)	3		9	1
1974	2016-03-11 15:25:46.615469+00	1745	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
1975	2016-03-11 15:25:46.623678+00	1744	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
1976	2016-03-11 15:25:46.632009+00	1743	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)	3		9	1
1977	2016-03-11 15:25:46.640344+00	1742	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
1978	2016-03-11 15:25:46.648775+00	1741	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
1979	2016-03-11 15:25:46.657005+00	1740	Kasb ta'limi: iqtisodiyot	3		9	1
1980	2016-03-11 15:25:46.665335+00	1739	Yengil sanoat buyumlari konstruksiyasini ishlash va texnologiyasi (ishlab chiqarish turlari bo`yicha)	3		9	1
1981	2016-03-11 15:25:46.673752+00	1738	Bino va inshootlar qurilishi (turlari bo`yicha)	3		9	1
1982	2016-03-11 15:25:46.682075+00	1737	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
1983	2016-03-11 15:25:46.690338+00	1736	Tashishni tashkil etish va transport logistikasi (transport turlari bo`yicha)	3		9	1
1984	2016-03-11 15:25:46.698661+00	1735	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
1985	2016-03-11 15:25:46.707073+00	1734	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
1986	2016-03-11 15:25:46.715361+00	1733	Avtomobil yo`llari va aerodromlar	3		9	1
1987	2016-03-11 15:25:46.723696+00	1732	Transport inshootlarining ekspluatatsiyasi (transport inshootlari turlari bo`yicha)	3		9	1
1988	2016-03-11 15:25:46.732021+00	1731	Qurilish materiallari, buyumlari va konstruksiyalarini ishlab chiqarish	3		9	1
1989	2016-03-11 15:25:46.74046+00	1730	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)	3		9	1
1990	2016-03-11 15:25:46.748717+00	1729	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
1991	2016-03-11 15:25:46.757029+00	1728	Jismoniy madaniyat	3		9	1
1992	2016-03-11 15:25:46.765363+00	1727	Maktabgacha ta'lim	3		9	1
1993	2016-03-11 15:25:46.773847+00	1726	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
1994	2016-03-11 15:25:46.782113+00	1725	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
1995	2016-03-11 15:25:46.790438+00	1724	Xorijiy til va adabiyoti: ingliz tili	3		9	1
1996	2016-03-11 15:25:46.798726+00	1723	Musiqa ta'limi	3		9	1
1997	2016-03-11 15:25:46.806973+00	1722	Kasb ta'limi: agronomiya	3		9	1
1998	2016-03-11 15:25:46.815344+00	1721	Pedagogika va psixologiya	3		9	1
1999	2016-03-11 15:25:46.823677+00	1720	Informatika o`qitish metodikasi	3		9	1
2000	2016-03-11 15:25:46.832147+00	1719	Geografiya o`qitish metodikasi	3		9	1
2001	2016-03-11 15:25:46.840398+00	1718	Mehnat ta'limi	3		9	1
2002	2016-03-11 15:25:46.848741+00	1717	Filologiya va tillarni o`qitish: o`zbek tili	3		9	1
2003	2016-03-11 15:25:46.857175+00	1716	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
2004	2016-03-11 15:25:46.865454+00	1715	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
2005	2016-03-11 15:25:46.873753+00	1714	Oziq-ovqat texnologiyasi (mahsulotlar turlari bo`yicha)	3		9	1
2006	2016-03-11 15:25:46.88206+00	1713	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
2007	2016-03-11 15:25:46.890469+00	1712	Tuproqshunoslik	3		9	1
2008	2016-03-11 15:25:46.898792+00	1711	Kimyo	3		9	1
2009	2016-03-11 15:25:46.907083+00	1710	Fizika	3		9	1
2010	2016-03-11 15:25:46.915411+00	1709	Biologiya (turlari bo`yicha)	3		9	1
2011	2016-03-11 15:25:46.923771+00	1708	Matematika	3		9	1
2012	2016-03-11 15:25:46.932028+00	1707	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
2013	2016-03-11 15:25:46.940395+00	1706	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
2014	2016-03-11 15:25:46.948728+00	1705	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
2015	2016-03-11 15:25:46.957207+00	1704	Tarix (Islom tarixi va manbashunosligi)	3		9	1
2016	2016-03-11 15:25:46.965435+00	1703	Dinshunoslik	3		9	1
2017	2016-03-11 15:25:46.973769+00	1702	Psixologiya (din sotsiopsixologiyasi)	3		9	1
2018	2016-03-11 15:25:46.982183+00	1701	Jahon iqtisodiyoti va xalqaro iqtisodiy munosabatlar (mintaqalar va faoliyat turlari bo`yicha)	3		9	1
2019	2016-03-11 15:25:46.990436+00	1700	Informatika va axborot texnologiyalari (tarmoqlar va sohalar bo`yicha)	3		9	1
2020	2016-03-11 15:25:46.998763+00	1699	Kasb ta'limi: yengil sanoat texnologiyalari va jihozlari	3		9	1
2021	2016-03-11 15:25:47.007116+00	1698	Kasb ta'limi: elektr texnikasi, elektr mexanikasi va elektr texnologiyalari	3		9	1
2022	2016-03-11 15:25:47.015503+00	1697	Kasb ta'limi: menejment	3		9	1
2023	2016-03-11 15:25:47.0237+00	1696	Kasb ta'limi: mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
2024	2016-03-11 15:25:47.032156+00	1695	Kasb ta'limi: kimyoviy texnologiya	3		9	1
2025	2016-03-11 15:25:47.040601+00	1694	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
2026	2016-03-11 15:25:47.048881+00	1693	Kasb ta'limi: neft-gazkimyo sanoati texnologiyasi	3		9	1
2027	2016-03-11 15:25:47.057174+00	1692	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
2028	2016-03-11 15:25:47.065577+00	1691	Texnologik jarayonlarni boshqarishning axborot-kommunikatsiya tizimlari	3		9	1
2029	2016-03-11 15:25:47.073891+00	1690	Yengil sanoat texnologiyalari va jihozlari	3		9	1
2030	2016-03-11 15:25:47.082225+00	1689	Texnologiyalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
2031	2016-03-11 15:25:47.090615+00	1688	Neft-gazkimyo sanoati texnologiyasi	3		9	1
2032	2016-03-11 15:25:47.098895+00	1687	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
2033	2016-03-11 15:25:47.107237+00	1686	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
2034	2016-03-11 15:25:47.115529+00	1685	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
2035	2016-03-11 15:25:47.123848+00	1684	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
2036	2016-03-11 15:25:47.132267+00	1683	Maktabgacha ta'lim	3		9	1
2037	2016-03-11 15:25:47.140557+00	1682	Jismoniy madaniyat	3		9	1
2038	2016-03-11 15:25:47.148816+00	1681	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
2039	2016-03-11 15:25:47.157133+00	1680	Mehnat ta'limi	3		9	1
2040	2016-03-11 15:25:47.165569+00	1679	Chaqiriqqacha harbiy ta'lim	3		9	1
2041	2016-03-11 15:25:47.173797+00	1678	Xorijiy til va adabiyoti: ingliz tili	3		9	1
2042	2016-03-11 15:25:47.182128+00	1677	Musiqa ta'limi	3		9	1
2043	2016-03-11 15:25:47.190447+00	1676	Kasb ta'limi: amaliy san'at	3		9	1
2044	2016-03-11 15:25:47.198868+00	1675	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
2045	2016-03-11 15:25:47.207147+00	1674	Kasb ta'limi: iqtisodiyot	3		9	1
2046	2016-03-11 15:25:47.215508+00	1673	Kasb ta'limi: agronomiya	3		9	1
2047	2016-03-11 15:25:47.224064+00	1672	Pedagogika va psixologiya	3		9	1
2048	2016-03-11 15:25:47.232201+00	1671	Tasviriy san'at va muhandislik grafikasi	3		9	1
2049	2016-03-11 15:25:47.240533+00	1670	Filologiya va tillarni o`qitish: o`zbek tili	3		9	1
2050	2016-03-11 15:25:47.248835+00	1669	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
2051	2016-03-11 15:25:47.257328+00	1668	Filologiya va tillarni o`qitish: nemis tili	3		9	1
2052	2016-03-11 15:25:47.26557+00	1667	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
2053	2016-03-11 15:25:47.273805+00	1666	Turizm (faoliyat yo`nalishlari bo`yicha)	3		9	1
2054	2016-03-11 15:25:47.282287+00	1665	Mehmonxona xo`jaligini tashkil etish va boshqarish	3		9	1
2055	2016-03-11 15:25:47.29056+00	1664	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
2056	2016-03-11 15:25:47.298824+00	1663	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
2057	2016-03-11 15:25:47.307168+00	1662	Arxivshunoslik	3		9	1
2058	2016-03-11 15:25:47.315516+00	1661	Psixologiya (faoliyat turlari bo`yicha)	3		9	1
2059	2016-03-11 15:25:47.323922+00	1660	Tuproqshunoslik	3		9	1
2060	2016-03-11 15:25:47.332167+00	1659	Geografiya	3		9	1
2061	2016-03-11 15:25:47.340551+00	1658	Filologiya va tillarni o`qitish: fransuz tili	3		9	1
2062	2016-03-11 15:25:47.34901+00	1657	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
2063	2016-03-11 15:25:47.357214+00	1656	Matematika	3		9	1
2064	2016-03-11 15:25:47.365548+00	1655	Biologiya (turlari bo`yicha)	3		9	1
2065	2016-03-11 15:25:47.373959+00	1654	Fizika	3		9	1
2066	2016-03-11 15:25:47.382286+00	1653	Kimyo	3		9	1
2067	2016-03-11 15:25:47.390915+00	1652	Kasb ta'limi: mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
2068	2016-03-11 15:25:47.399028+00	1651	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
2069	2016-03-11 15:25:47.457344+00	1650	Avtomobilsozlik va traktorsozlik	3		9	1
2070	2016-03-11 15:25:47.465546+00	1649	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
2071	2016-03-11 15:25:47.474011+00	1648	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
2072	2016-03-11 15:25:47.482174+00	1647	Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)	3		9	1
2073	2016-03-11 15:25:47.490535+00	1646	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
2074	2016-03-11 15:25:47.499063+00	1645	Mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
2075	2016-03-11 15:25:47.50721+00	1644	Materialshunoslik va yangi materiallar texnologiyasi	3		9	1
2076	2016-03-11 15:25:47.515583+00	1643	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)	3		9	1
2077	2016-03-11 15:25:47.523866+00	1642	Maktabgacha ta'lim	3		9	1
2078	2016-03-11 15:25:47.532386+00	1641	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
2079	2016-03-11 15:25:47.540561+00	1640	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
2080	2016-03-11 15:25:47.548888+00	1639	Xorijiy til va adabiyoti: fransuz tili	3		9	1
2081	2016-03-11 15:25:47.557398+00	1638	Xorijiy til va adabiyoti: nemis tili	3		9	1
2082	2016-03-11 15:25:47.565739+00	1637	Xorijiy til va adabiyoti: ingliz tili	3		9	1
2083	2016-03-11 15:25:47.573968+00	1636	Musiqa ta'limie	3		9	1
2084	2016-03-11 15:25:47.582307+00	1635	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
2085	2016-03-11 15:25:47.590724+00	1634	Pedagogika va psixologiya	3		9	1
2086	2016-03-11 15:25:47.598916+00	1633	Tasviriy san'at va muhandislik grafikasi	3		9	1
2087	2016-03-11 15:25:47.607247+00	1632	Jismoniy madaniyat	3		9	1
2088	2016-03-11 15:25:47.615578+00	1631	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
2089	2016-03-11 15:25:47.624003+00	1630	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
2090	2016-03-11 15:25:47.682525+00	1629	Mehnat iqtisodiyoti va sotsiologiyasi	3		9	1
2091	2016-03-11 15:25:47.690625+00	1628	Geografiya	3		9	1
2092	2016-03-11 15:25:47.698977+00	1627	Kimyo	3		9	1
2093	2016-03-11 15:25:47.70726+00	1626	Fizika	3		9	1
2094	2016-03-11 15:25:47.715777+00	1625	Biologiya (turlari bo`yicha)	3		9	1
2095	2016-03-11 15:25:47.723954+00	1624	Matematika	3		9	1
2096	2016-03-11 15:25:47.732262+00	1623	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
2097	2016-03-11 15:25:47.740614+00	1622	Filologiya va tillarni o`qitish: o`zbek tili	3		9	1
2098	2016-03-11 15:25:47.749086+00	1621	Mehnat ta'limi	3		9	1
2099	2016-03-11 15:25:47.757253+00	1620	Informatika o`qitish metodikasi	3		9	1
2100	2016-03-11 15:26:37.469379+00	2163	Geodeziya, kartografiya va kadastr (funksiyalari bo`yicha)	3		9	1
2101	2016-03-11 15:26:37.481711+00	2162	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
2102	2016-03-11 15:26:37.490083+00	2161	Dizayn (turlari bo`yicha)	3		9	1
2103	2016-03-11 15:26:37.498402+00	2160	Kasb ta'limi: tasviriy san'at va muhandislik grafikasi	3		9	1
2104	2016-03-11 15:26:37.506716+00	2159	Kasb ta'limi: muhandislik kommunikatsiyalari qurilishi va montaji	3		9	1
2105	2016-03-11 15:26:37.515023+00	2158	Kasb ta'limi: bino va inshootlar qurilishi	3		9	1
2106	2016-03-11 15:26:37.523479+00	2157	Arxitektura (turlari bo`yicha)	3		9	1
2107	2016-03-11 15:26:37.531702+00	2156	Bino va inshootlar qurilishi (turlari bo`yicha)	3		9	1
2108	2016-03-11 15:26:37.540044+00	2155	Shahar qurilishi va xo`jaligi	3		9	1
2109	2016-03-11 15:26:37.548492+00	2154	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
2110	2016-03-11 15:26:37.556705+00	2153	Qishloq hududlarini arxitektura-loyihaviy tashkil etish	3		9	1
2111	2016-03-11 15:26:37.565033+00	2152	Ko`chmas mulk ekspertizasi va uni boshqarish	3		9	1
2112	2016-03-11 15:26:37.573351+00	2151	Avtomobil yo`llari va aerodromlar	3		9	1
2113	2016-03-11 15:26:37.581799+00	2150	Qurilish materiallari, buyumlari va konstruksiyalarini ishlab chiqarish	3		9	1
2114	2016-03-11 15:26:37.590087+00	2149	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)	3		9	1
2115	2016-03-11 15:26:37.598435+00	2148	Arxeologiya	3		9	1
2116	2016-03-11 15:26:37.60686+00	2147	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
2117	2016-03-11 15:26:37.615139+00	2146	Filologiya va tillarni o`qitish: O`zbekiston tili	3		9	1
2118	2016-03-11 15:26:37.623406+00	2145	Mehnat ta'limi	3		9	1
2119	2016-03-11 15:26:37.631757+00	2144	Jismoniy madaniyat	3		9	1
2120	2016-03-11 15:26:37.640185+00	2143	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
2121	2016-03-11 15:26:37.648425+00	2142	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
2122	2016-03-11 15:26:37.656739+00	2141	Musiqa ta'limi	3		9	1
2123	2016-03-11 15:26:37.665148+00	2140	Kasb ta'limi: elektronika va asbobsozlik	3		9	1
2124	2016-03-11 15:26:37.673511+00	2139	Kasb ta'limi: amaliy san'at	3		9	1
2125	2016-03-11 15:26:37.681894+00	2138	Kasb ta'limi: iqtisodiyot	3		9	1
2126	2016-03-11 15:26:37.69023+00	2137	Tasviriy san'at va muhandislik grafikasi	3		9	1
2127	2016-03-11 15:26:37.698528+00	2136	Informatika o`qitish metodikasi	3		9	1
2128	2016-03-11 15:26:37.706909+00	2135	Matematika	3		9	1
2129	2016-03-11 15:26:37.715185+00	2134	Amaliy matematika va informatika	3		9	1
2130	2016-03-11 15:26:37.723539+00	2133	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
2131	2016-03-11 15:26:37.731829+00	2132	Sport faoliyati (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
2132	2016-03-11 15:26:37.740182+00	2131	Ijtimoiy ish (faoliyatning turli sohalari bo`yicha)	3		9	1
2133	2016-03-11 15:26:37.748506+00	2130	Kadrlar menejmenti	3		9	1
2134	2016-03-11 15:26:37.756862+00	2129	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
2135	2016-03-11 15:26:37.765188+00	2128	Psixologiya (faoliyat turlari bo`yicha)	3		9	1
2136	2016-03-11 15:26:37.773596+00	2127	Gidrometeorologiya	3		9	1
2137	2016-03-11 15:26:37.781923+00	2126	Geografiya	3		9	1
2138	2016-03-11 15:26:37.79025+00	2125	Biologiya (turlari bo`yicha)	3		9	1
2139	2016-03-11 15:26:37.798564+00	2124	Fizika	3		9	1
2140	2016-03-11 15:26:37.806911+00	2123	Mexanika	3		9	1
2141	2016-03-11 15:26:37.815275+00	2122	Astronomiya	3		9	1
2142	2016-03-11 15:26:37.823577+00	2121	Kimyo	3		9	1
2143	2016-03-11 15:26:37.831898+00	2120	Dizayn (turlari bo`yicha)	3		9	1
2144	2016-03-11 15:26:37.840169+00	2119	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
2145	2016-03-11 15:26:37.848644+00	2118	Marketing (tarmoqlar va sohalar bo`yicha)	3		9	1
2146	2016-03-11 15:26:37.856933+00	2117	Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)	3		9	1
2147	2016-03-11 15:26:37.865232+00	2116	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)	3		9	1
2148	2016-03-11 15:26:37.873585+00	2115	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
2149	2016-03-11 15:26:37.881973+00	2114	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
2150	2016-03-11 15:26:37.890274+00	2113	Matbaa va qadoqlash jarayonlari texnologiyasi	3		9	1
2151	2016-03-11 15:26:37.898597+00	2112	Yengil sanoat buyumlari konstruksiyasini ishlash va texnologiyasi (ishlab chiqarish turlari bo`yicha)	3		9	1
2152	2016-03-11 15:26:37.906902+00	2111	Tabiiy tolalarni dastlabki ishlash texnologiyasi (xom ashyo turlari bo`yicha)	3		9	1
2153	2016-03-11 15:26:37.915304+00	2110	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
2154	2016-03-11 15:26:37.923636+00	2109	Energetika (tarmoqlar bo`yicha)	3		9	1
2155	2016-03-11 15:26:37.931914+00	2108	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
2156	2016-03-11 15:26:37.940263+00	2107	Kasb ta'limi: muhandislik kommunikatsiyalari qurilishi va montaji	3		9	1
2157	2016-03-11 15:26:37.948621+00	2106	Kasb ta'limi: qishloq xo`jaligini mexanizatsiyalashtirish	3		9	1
2158	2016-03-11 15:26:37.956879+00	2105	Kasb ta'limi: kimyoviy texnologiya	3		9	1
2159	2016-03-11 15:26:37.965242+00	2104	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
2160	2016-03-11 15:26:37.973731+00	2103	Kasb ta'limi: iqtisodiyot	3		9	1
2161	2016-03-11 15:26:37.981962+00	2102	Kasb ta'limi: yerusti transport tizimlari va ularning ekspluatatsiyasi	3		9	1
2162	2016-03-11 15:26:37.99023+00	2101	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)	3		9	1
2163	2016-03-11 15:26:37.998561+00	2100	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
2164	2016-03-11 15:26:38.007012+00	2099	Mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
2165	2016-03-11 15:26:38.015238+00	2098	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
2166	2016-03-11 15:26:38.023583+00	2097	Qishloq hududlarini arxitektura-loyihaviy tashkil etish	3		9	1
2167	2016-03-11 15:26:38.031913+00	2096	Avtomobil yo`llari va aerodromlar	3		9	1
2168	2016-03-11 15:26:38.040421+00	2095	Qurilish materiallari, buyumlari va konstruksiyalarini ishlab chiqarish	3		9	1
2169	2016-03-11 15:26:38.048684+00	2094	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)	3		9	1
2170	2016-03-11 15:26:38.057005+00	2093	Bino va inshootlar qurilishi (turlari bo`yicha)	3		9	1
2171	2016-03-11 15:26:38.065417+00	2092	Oziq-ovqat texnologiyasi (mahsulotlar turlari bo`yicha)	3		9	1
2172	2016-03-11 15:26:38.073611+00	2091	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
2173	2016-03-11 15:26:38.081898+00	2090	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
2174	2016-03-11 15:26:38.090287+00	2089	Filologiya va tillarni o`qitish: O`zbekiston tili	3		9	1
2175	2016-03-11 15:26:38.098635+00	2088	Jismoniy madaniyat	3		9	1
2176	2016-03-11 15:26:38.106964+00	2087	Maktabgacha ta'lim	3		9	1
2177	2016-03-11 15:26:38.115281+00	2086	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
2178	2016-03-11 15:26:38.123652+00	2085	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
2179	2016-03-11 15:26:38.131987+00	2084	Xorijiy til va adabiyoti: ingliz tili	3		9	1
2180	2016-03-11 15:26:38.140294+00	2083	Musiqa ta'limi	3		9	1
2181	2016-03-11 15:26:38.148621+00	2082	Kasb ta'limi: iqtisodiyot	3		9	1
2182	2016-03-11 15:26:38.157148+00	2081	Pedagogika va psixologiya	3		9	1
2766	2016-03-11 15:47:33.030332+00	3165	Qishloq xo`jaligida menejment	3		9	1
2183	2016-03-11 15:26:38.165389+00	2080	Tasviriy san'at va muhandislik grafikasi	3		9	1
2184	2016-03-11 15:26:38.173692+00	2079	Filologiya va tillarni o`qitish: nemis tili	3		9	1
2185	2016-03-11 15:26:38.182156+00	2078	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
2186	2016-03-11 15:26:38.190406+00	2077	Hayotiy faoliyat xavfsizligi	3		9	1
2187	2016-03-11 15:26:38.198733+00	2076	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
2188	2016-03-11 15:26:38.207017+00	2075	Sport faoliyati (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
2189	2016-03-11 15:26:38.21533+00	2074	Ijtimoiy-madaniy faoliyat	3		9	1
2190	2016-03-11 15:26:38.223719+00	2073	Arxivshunoslik	3		9	1
2191	2016-03-11 15:26:38.231971+00	2072	Geografiya	3		9	1
2192	2016-03-11 15:26:38.240327+00	2071	Kimyo	3		9	1
2193	2016-03-11 15:26:38.248819+00	2070	Fizika	3		9	1
2194	2016-03-11 15:26:38.257011+00	2069	Biologiya (turlari bo`yicha)	3		9	1
2195	2016-03-11 15:26:38.265329+00	2068	Amaliy matematika va informatika	3		9	1
2196	2016-03-11 15:26:38.273645+00	2067	Matematika	3		9	1
2197	2016-03-11 15:26:38.282063+00	2066	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
2198	2016-03-11 15:26:38.29038+00	2065	Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)	3		9	1
2199	2016-03-11 15:26:38.298685+00	2064	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
2200	2016-03-11 15:26:38.307161+00	2063	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
2201	2016-03-11 15:26:38.315417+00	2062	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)	3		9	1
2202	2016-03-11 15:26:38.323687+00	2061	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
2203	2016-03-11 15:26:38.332033+00	2060	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
2204	2016-03-11 15:26:38.340433+00	2059	Kasb ta'limi: iqtisodiyot	3		9	1
2205	2016-03-11 15:26:38.348724+00	2058	Yengil sanoat buyumlari konstruksiyasini ishlash va texnologiyasi (ishlab chiqarish turlari bo`yicha)	3		9	1
2206	2016-03-11 15:26:38.35701+00	2057	Bino va inshootlar qurilishi (turlari bo`yicha)	3		9	1
2207	2016-03-11 15:26:38.365329+00	2056	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
2208	2016-03-11 15:26:38.373799+00	2055	Tashishni tashkil etish va transport logistikasi (transport turlari bo`yicha)	3		9	1
2209	2016-03-11 15:26:38.382019+00	2054	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
2210	2016-03-11 15:26:38.39035+00	2053	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
2211	2016-03-11 15:26:38.398656+00	2052	Avtomobil yo`llari va aerodromlar	3		9	1
2212	2016-03-11 15:26:38.407098+00	2051	Transport inshootlarining ekspluatatsiyasi (transport inshootlari turlari bo`yicha)	3		9	1
2213	2016-03-11 15:26:38.415391+00	2050	Qurilish materiallari, buyumlari va konstruksiyalarini ishlab chiqarish	3		9	1
2214	2016-03-11 15:26:38.423744+00	2049	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)	3		9	1
2215	2016-03-11 15:26:38.432163+00	2048	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
2216	2016-03-11 15:26:38.440435+00	2047	Jismoniy madaniyat	3		9	1
2217	2016-03-11 15:26:38.482257+00	2046	Maktabgacha ta'lim	3		9	1
2218	2016-03-11 15:26:38.549512+00	2045	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
2219	2016-03-11 15:26:38.582217+00	2044	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
2220	2016-03-11 15:26:38.590496+00	2043	Xorijiy til va adabiyoti: ingliz tili	3		9	1
2221	2016-03-11 15:26:38.598715+00	2042	Musiqa ta'limi	3		9	1
2222	2016-03-11 15:26:38.607031+00	2041	Kasb ta'limi: agronomiya	3		9	1
2223	2016-03-11 15:26:38.615575+00	2040	Pedagogika va psixologiya	3		9	1
2224	2016-03-11 15:26:38.623783+00	2039	Informatika o`qitish metodikasi	3		9	1
2225	2016-03-11 15:26:38.632091+00	2038	Geografiya o`qitish metodikasi	3		9	1
2226	2016-03-11 15:26:38.640477+00	2037	Mehnat ta'limi	3		9	1
2227	2016-03-11 15:26:38.648769+00	2036	Filologiya va tillarni o`qitish: O`zbekiston tili	3		9	1
2228	2016-03-11 15:26:38.657199+00	2035	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
2229	2016-03-11 15:26:38.665502+00	2034	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
2230	2016-03-11 15:26:38.674061+00	2033	Oziq-ovqat texnologiyasi (mahsulotlar turlari bo`yicha)	3		9	1
2231	2016-03-11 15:26:38.682228+00	2032	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
2232	2016-03-11 15:26:38.690487+00	2031	Tuproqshunoslik	3		9	1
2233	2016-03-11 15:26:38.698815+00	2030	Kimyo	3		9	1
2234	2016-03-11 15:26:38.707438+00	2029	Fizika	3		9	1
2235	2016-03-11 15:26:38.715495+00	2028	Biologiya (turlari bo`yicha)	3		9	1
2236	2016-03-11 15:26:38.723874+00	2027	Matematika	3		9	1
2237	2016-03-11 15:26:38.73219+00	2026	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
2238	2016-03-11 15:26:38.740461+00	2025	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
2239	2016-03-11 15:26:38.74902+00	2024	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
2240	2016-03-11 15:26:38.757191+00	2023	Tarix (Islom tarixi va manbashunosligi)	3		9	1
2241	2016-03-11 15:26:38.765425+00	2022	Dinshunoslik	3		9	1
2242	2016-03-11 15:26:38.773896+00	2021	Psixologiya (din sotsiopsixologiyasi)	3		9	1
2243	2016-03-11 15:26:38.782151+00	2020	Jahon iqtisodiyoti va xalqaro iqtisodiy munosabatlar (mintaqalar va faoliyat turlari bo`yicha)	3		9	1
2244	2016-03-11 15:26:38.790578+00	2019	Informatika va axborot texnologiyalari (tarmoqlar va sohalar bo`yicha)	3		9	1
2245	2016-03-11 15:26:38.798812+00	2018	Kasb ta'limi: yengil sanoat texnologiyalari va jihozlari	3		9	1
2246	2016-03-11 15:26:38.807267+00	2017	Kasb ta'limi: elektr texnikasi, elektr mexanikasi va elektr texnologiyalari	3		9	1
2247	2016-03-11 15:26:38.815467+00	2016	Kasb ta'limi: menejment	3		9	1
2248	2016-03-11 15:26:38.823877+00	2015	Kasb ta'limi: mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
2249	2016-03-11 15:26:38.832092+00	2014	Kasb ta'limi: kimyoviy texnologiya	3		9	1
2250	2016-03-11 15:26:38.8405+00	2013	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
2251	2016-03-11 15:26:38.848778+00	2012	Kasb ta'limi: neft-gazkimyo sanoati texnologiyasi	3		9	1
2252	2016-03-11 15:26:38.857236+00	2011	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
2253	2016-03-11 15:26:38.865535+00	2010	Texnologik jarayonlarni boshqarishning axborot-kommunikatsiya tizimlari	3		9	1
2254	2016-03-11 15:26:38.873948+00	2009	Yengil sanoat texnologiyalari va jihozlari	3		9	1
2255	2016-03-11 15:26:38.882094+00	2008	Texnologiyalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
2256	2016-03-11 15:26:38.89055+00	2007	Neft-gazkimyo sanoati texnologiyasi	3		9	1
2257	2016-03-11 15:26:38.898936+00	2006	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
2258	2016-03-11 15:26:38.907382+00	2005	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
2259	2016-03-11 15:26:38.915619+00	2004	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
2260	2016-03-11 15:26:38.923916+00	2003	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
2261	2016-03-11 15:26:38.932342+00	2002	Maktabgacha ta'lim	3		9	1
2262	2016-03-11 15:26:38.940616+00	2001	Jismoniy madaniyat	3		9	1
2263	2016-03-11 15:26:38.94897+00	2000	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
2264	2016-03-11 15:26:38.957258+00	1999	Mehnat ta'limi	3		9	1
2265	2016-03-11 15:26:38.965605+00	1998	Chaqiriqqacha harbiy ta'lim	3		9	1
2266	2016-03-11 15:26:38.973932+00	1997	Xorijiy til va adabiyoti: ingliz tili	3		9	1
2267	2016-03-11 15:26:38.98225+00	1996	Musiqa ta'limi	3		9	1
2268	2016-03-11 15:26:38.99062+00	1995	Kasb ta'limi: amaliy san'at	3		9	1
2269	2016-03-11 15:26:38.998942+00	1994	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
2270	2016-03-11 15:26:39.007388+00	1993	Kasb ta'limi: iqtisodiyot	3		9	1
2271	2016-03-11 15:26:39.015611+00	1992	Kasb ta'limi: agronomiya	3		9	1
2272	2016-03-11 15:26:39.023934+00	1991	Pedagogika va psixologiya	3		9	1
2273	2016-03-11 15:26:39.032292+00	1990	Tasviriy san'at va muhandislik grafikasi	3		9	1
2274	2016-03-11 15:26:39.04059+00	1989	Filologiya va tillarni o`qitish: O`zbekiston tili	3		9	1
2275	2016-03-11 15:26:39.048925+00	1988	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
2276	2016-03-11 15:26:39.057359+00	1987	Filologiya va tillarni o`qitish: nemis tili	3		9	1
2277	2016-03-11 15:26:39.065615+00	1986	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
2278	2016-03-11 15:26:39.074055+00	1985	Turizm (faoliyat yo`nalishlari bo`yicha)	3		9	1
2279	2016-03-11 15:26:39.082301+00	1984	Mehmonxona xo`jaligini tashkil etish va boshqarish	3		9	1
2280	2016-03-11 15:26:39.090556+00	1983	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
2281	2016-03-11 15:26:39.098881+00	1982	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
2282	2016-03-11 15:26:39.107273+00	1981	Arxivshunoslik	3		9	1
2283	2016-03-11 15:26:39.115611+00	1980	Psixologiya (faoliyat turlari bo`yicha)	3		9	1
2284	2016-03-11 15:26:39.123842+00	1979	Tuproqshunoslik	3		9	1
2285	2016-03-11 15:26:39.132172+00	1978	Geografiya	3		9	1
2286	2016-03-11 15:26:39.14059+00	1977	Filologiya va tillarni o`qitish: fransuz tili	3		9	1
2287	2016-03-11 15:26:39.148916+00	1976	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
2288	2016-03-11 15:26:39.157236+00	1975	Matematika	3		9	1
2289	2016-03-11 15:26:39.165789+00	1974	Biologiya (turlari bo`yicha)	3		9	1
2290	2016-03-11 15:26:39.173947+00	1973	Fizika	3		9	1
2291	2016-03-11 15:26:39.182191+00	1972	Kimyo	3		9	1
2292	2016-03-11 15:26:39.190646+00	1971	Kasb ta'limi: mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
2293	2016-03-11 15:26:39.198968+00	1970	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
2294	2016-03-11 15:26:39.207247+00	1969	Avtomobilsozlik va traktorsozlik	3		9	1
2295	2016-03-11 15:26:39.215578+00	1968	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
2296	2016-03-11 15:26:39.223976+00	1967	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
2297	2016-03-11 15:26:39.232274+00	1966	Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)	3		9	1
2298	2016-03-11 15:26:39.240588+00	1965	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
2299	2016-03-11 15:26:39.248915+00	1964	Mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
2300	2016-03-11 15:26:39.25737+00	1963	Materialshunoslik va yangi materiallar texnologiyasi	3		9	1
2301	2016-03-11 15:26:39.265563+00	1962	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)	3		9	1
2302	2016-03-11 15:26:39.273917+00	1961	Maktabgacha ta'lim	3		9	1
2303	2016-03-11 15:26:39.282286+00	1960	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
2304	2016-03-11 15:26:39.290711+00	1959	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
2305	2016-03-11 15:26:39.298983+00	1958	Xorijiy til va adabiyoti: fransuz tili	3		9	1
2306	2016-03-11 15:26:39.30729+00	1957	Xorijiy til va adabiyoti: nemis tili	3		9	1
2307	2016-03-11 15:26:39.315585+00	1956	Xorijiy til va adabiyoti: ingliz tili	3		9	1
2308	2016-03-11 15:26:39.324025+00	1955	Musiqa ta'limie	3		9	1
2309	2016-03-11 15:26:39.332303+00	1954	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
2310	2016-03-11 15:26:39.340589+00	1953	Pedagogika va psixologiya	3		9	1
2311	2016-03-11 15:26:39.349063+00	1952	Tasviriy san'at va muhandislik grafikasi	3		9	1
2312	2016-03-11 15:26:39.357263+00	1951	Jismoniy madaniyat	3		9	1
2313	2016-03-11 15:26:39.365607+00	1950	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
2314	2016-03-11 15:26:39.373932+00	1949	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
2315	2016-03-11 15:26:39.382379+00	1948	Mehnat iqtisodiyoti va sotsiologiyasi	3		9	1
2316	2016-03-11 15:26:39.390628+00	1947	Geografiya	3		9	1
2317	2016-03-11 15:26:39.398926+00	1946	Kimyo	3		9	1
2318	2016-03-11 15:26:39.407438+00	1945	Fizika	3		9	1
2319	2016-03-11 15:26:39.415691+00	1944	Biologiya (turlari bo`yicha)	3		9	1
2320	2016-03-11 15:26:39.424003+00	1943	Matematika	3		9	1
2321	2016-03-11 15:26:39.432322+00	1942	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
2322	2016-03-11 15:26:39.44075+00	1941	Filologiya va tillarni o`qitish: O`zbekiston tili	3		9	1
2323	2016-03-11 15:26:39.449016+00	1940	Mehnat ta'limi	3		9	1
2324	2016-03-11 15:26:39.457332+00	1939	Informatika o`qitish metodikasi	3		9	1
2325	2016-03-11 15:27:09.364446+00	2388	Geodeziya, kartografiya va kadastr (funksiyalari bo`yicha)	3		9	1
2326	2016-03-11 15:27:09.422975+00	2387	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
2327	2016-03-11 15:27:09.43129+00	2386	Dizayn (turlari bo`yicha)	3		9	1
2328	2016-03-11 15:27:09.439473+00	2385	Kasb ta'limi: tasviriy san'at va muhandislik grafikasi	3		9	1
2329	2016-03-11 15:27:09.447835+00	2384	Kasb ta'limi: muhandislik kommunikatsiyalari qurilishi va montaji	3		9	1
2330	2016-03-11 15:27:09.456336+00	2383	Kasb ta'limi: bino va inshootlar qurilishi	3		9	1
2331	2016-03-11 15:27:09.464565+00	2382	Arxitektura (turlari bo`yicha)	3		9	1
2332	2016-03-11 15:27:09.472835+00	2381	Bino va inshootlar qurilishi (turlari bo`yicha)	3		9	1
2333	2016-03-11 15:27:09.481169+00	2380	Shahar qurilishi va xo`jaligi	3		9	1
2334	2016-03-11 15:27:09.489578+00	2379	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
2335	2016-03-11 15:27:09.497995+00	2378	Qishloq hududlarini arxitektura-loyihaviy tashkil etish	3		9	1
2336	2016-03-11 15:27:09.506218+00	2377	Ko`chmas mulk ekspertizasi va uni boshqarish	3		9	1
2337	2016-03-11 15:27:09.514534+00	2376	Avtomobil yo`llari va aerodromlar	3		9	1
2338	2016-03-11 15:27:09.522993+00	2375	Qurilish materiallari, buyumlari va konstruksiyalarini ishlab chiqarish	3		9	1
2339	2016-03-11 15:27:09.531205+00	2374	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)	3		9	1
2340	2016-03-11 15:27:09.539532+00	2373	Arxeologiya	3		9	1
2341	2016-03-11 15:27:09.547987+00	2372	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
2342	2016-03-11 15:27:09.556233+00	2371	Filologiya va tillarni o`qitish: O`zbekiston tili	3		9	1
2343	2016-03-11 15:27:09.564543+00	2370	Mehnat ta'limi	3		9	1
2344	2016-03-11 15:27:09.572851+00	2369	Jismoniy madaniyat	3		9	1
2345	2016-03-11 15:27:09.58131+00	2368	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
2346	2016-03-11 15:27:09.589529+00	2367	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
2347	2016-03-11 15:27:09.597908+00	2366	Musiqa ta'limi	3		9	1
2348	2016-03-11 15:27:09.638219+00	2365	Kasb ta'limi: elektronika va asbobsozlik	3		9	1
2349	2016-03-11 15:27:09.65637+00	2364	Kasb ta'limi: amaliy san'at	3		9	1
2350	2016-03-11 15:27:09.664593+00	2363	Kasb ta'limi: iqtisodiyot	3		9	1
2351	2016-03-11 15:27:09.672974+00	2362	Tasviriy san'at va muhandislik grafikasi	3		9	1
2352	2016-03-11 15:27:09.681252+00	2361	Informatika o`qitish metodikasi	3		9	1
2353	2016-03-11 15:27:09.689609+00	2360	Matematika	3		9	1
2354	2016-03-11 15:27:09.697901+00	2359	Amaliy matematika va informatika	3		9	1
2355	2016-03-11 15:27:09.70643+00	2358	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
2356	2016-03-11 15:27:09.714628+00	2357	Sport faoliyati (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
2357	2016-03-11 15:27:09.722948+00	2356	Ijtimoiy ish (faoliyatning turli sohalari bo`yicha)	3		9	1
2358	2016-03-11 15:27:09.731349+00	2355	Kadrlar menejmenti	3		9	1
2359	2016-03-11 15:27:09.739573+00	2354	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
2360	2016-03-11 15:27:09.748028+00	2353	Psixologiya (faoliyat turlari bo`yicha)	3		9	1
2361	2016-03-11 15:27:09.756245+00	2352	Gidrometeorologiya	3		9	1
2362	2016-03-11 15:27:09.764726+00	2351	Geografiya	3		9	1
2363	2016-03-11 15:27:09.772908+00	2350	Biologiya (turlari bo`yicha)	3		9	1
2364	2016-03-11 15:27:09.781385+00	2349	Fizika	3		9	1
2365	2016-03-11 15:27:09.78957+00	2348	Mexanika	3		9	1
2366	2016-03-11 15:27:09.798046+00	2347	Astronomiya	3		9	1
2367	2016-03-11 15:27:09.806257+00	2346	Kimyo	3		9	1
2368	2016-03-11 15:27:09.814579+00	2345	Dizayn (turlari bo`yicha)	3		9	1
2369	2016-03-11 15:27:09.823016+00	2344	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
2370	2016-03-11 15:27:09.83136+00	2343	Marketing (tarmoqlar va sohalar bo`yicha)	3		9	1
2371	2016-03-11 15:27:09.839697+00	2342	Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)	3		9	1
2372	2016-03-11 15:27:09.84809+00	2341	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)	3		9	1
2373	2016-03-11 15:27:09.856368+00	2340	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
2374	2016-03-11 15:27:09.864724+00	2339	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
2375	2016-03-11 15:27:09.87304+00	2338	Matbaa va qadoqlash jarayonlari texnologiyasi	3		9	1
2376	2016-03-11 15:27:09.881282+00	2337	Yengil sanoat buyumlari konstruksiyasini ishlash va texnologiyasi (ishlab chiqarish turlari bo`yicha)	3		9	1
2377	2016-03-11 15:27:09.889745+00	2336	Tabiiy tolalarni dastlabki ishlash texnologiyasi (xom ashyo turlari bo`yicha)	3		9	1
2378	2016-03-11 15:27:09.898005+00	2335	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
2379	2016-03-11 15:27:09.906352+00	2334	Energetika (tarmoqlar bo`yicha)	3		9	1
2380	2016-03-11 15:27:09.914777+00	2333	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
2381	2016-03-11 15:27:09.923022+00	2332	Kasb ta'limi: muhandislik kommunikatsiyalari qurilishi va montaji	3		9	1
2382	2016-03-11 15:27:09.931332+00	2331	Kasb ta'limi: qishloq xo`jaligini mexanizatsiyalashtirish	3		9	1
2383	2016-03-11 15:27:09.939655+00	2330	Kasb ta'limi: kimyoviy texnologiya	3		9	1
2384	2016-03-11 15:27:09.948065+00	2329	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
2385	2016-03-11 15:27:09.956346+00	2328	Kasb ta'limi: iqtisodiyot	3		9	1
2386	2016-03-11 15:27:09.964656+00	2327	Kasb ta'limi: yerusti transport tizimlari va ularning ekspluatatsiyasi	3		9	1
2387	2016-03-11 15:27:09.972976+00	2326	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)	3		9	1
2388	2016-03-11 15:27:09.981369+00	2325	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
2389	2016-03-11 15:27:09.989682+00	2324	Mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
2390	2016-03-11 15:27:09.997972+00	2323	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
2391	2016-03-11 15:27:10.006293+00	2322	Qishloq hududlarini arxitektura-loyihaviy tashkil etish	3		9	1
2392	2016-03-11 15:27:10.014702+00	2321	Avtomobil yo`llari va aerodromlar	3		9	1
2393	2016-03-11 15:27:10.022998+00	2320	Qurilish materiallari, buyumlari va konstruksiyalarini ishlab chiqarish	3		9	1
2394	2016-03-11 15:27:10.031362+00	2319	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)	3		9	1
2395	2016-03-11 15:27:10.039761+00	2318	Bino va inshootlar qurilishi (turlari bo`yicha)	3		9	1
2396	2016-03-11 15:27:10.048057+00	2317	Oziq-ovqat texnologiyasi (mahsulotlar turlari bo`yicha)	3		9	1
2397	2016-03-11 15:27:10.056358+00	2316	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
2398	2016-03-11 15:27:10.064787+00	2315	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
2399	2016-03-11 15:27:10.073126+00	2314	Filologiya va tillarni o`qitish: O`zbekiston tili	3		9	1
2400	2016-03-11 15:27:10.081349+00	2313	Jismoniy madaniyat	3		9	1
2401	2016-03-11 15:27:10.089739+00	2312	Maktabgacha ta'lim	3		9	1
2402	2016-03-11 15:27:10.098113+00	2311	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
2403	2016-03-11 15:27:10.106545+00	2310	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
2404	2016-03-11 15:27:10.114843+00	2309	Xorijiy til va adabiyoti: ingliz tili	3		9	1
2405	2016-03-11 15:27:10.123166+00	2308	Musiqa ta'limi	3		9	1
2406	2016-03-11 15:27:10.131484+00	2307	Kasb ta'limi: iqtisodiyot	3		9	1
2407	2016-03-11 15:27:10.139729+00	2306	Pedagogika va psixologiya	3		9	1
3530	2016-03-11 15:47:41.790915+00	2389	Informatika o`qitish metodikasi	3		9	1
2408	2016-03-11 15:27:10.148083+00	2305	Tasviriy san'at va muhandislik grafikasi	3		9	1
2409	2016-03-11 15:27:10.156385+00	2304	Filologiya va tillarni o`qitish: nemis tili	3		9	1
2410	2016-03-11 15:27:10.164762+00	2303	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
2411	2016-03-11 15:27:10.173054+00	2302	Hayotiy faoliyat xavfsizligi	3		9	1
2412	2016-03-11 15:27:10.181394+00	2301	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
2413	2016-03-11 15:27:10.189718+00	2300	Sport faoliyati (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
2414	2016-03-11 15:27:10.198092+00	2299	Ijtimoiy-madaniy faoliyat	3		9	1
2415	2016-03-11 15:27:10.206406+00	2298	Arxivshunoslik	3		9	1
2416	2016-03-11 15:27:10.21473+00	2297	Geografiya	3		9	1
2417	2016-03-11 15:27:10.223246+00	2296	Kimyo	3		9	1
2418	2016-03-11 15:27:10.231429+00	2295	Fizika	3		9	1
2419	2016-03-11 15:27:10.239782+00	2294	Biologiya (turlari bo`yicha)	3		9	1
2420	2016-03-11 15:27:10.248124+00	2293	Amaliy matematika va informatika	3		9	1
2421	2016-03-11 15:27:10.256512+00	2292	Matematika	3		9	1
2422	2016-03-11 15:27:10.264783+00	2291	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
2423	2016-03-11 15:27:10.273107+00	2290	Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)	3		9	1
2424	2016-03-11 15:27:10.281538+00	2289	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
2425	2016-03-11 15:27:10.289806+00	2288	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
2426	2016-03-11 15:27:10.298084+00	2287	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)	3		9	1
2427	2016-03-11 15:27:10.306424+00	2286	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
2428	2016-03-11 15:27:10.314815+00	2285	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
2429	2016-03-11 15:27:10.323069+00	2284	Kasb ta'limi: iqtisodiyot	3		9	1
2430	2016-03-11 15:27:10.331411+00	2283	Yengil sanoat buyumlari konstruksiyasini ishlash va texnologiyasi (ishlab chiqarish turlari bo`yicha)	3		9	1
2431	2016-03-11 15:27:10.339746+00	2282	Bino va inshootlar qurilishi (turlari bo`yicha)	3		9	1
2432	2016-03-11 15:27:10.34814+00	2281	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
2433	2016-03-11 15:27:10.356466+00	2280	Tashishni tashkil etish va transport logistikasi (transport turlari bo`yicha)	3		9	1
2434	2016-03-11 15:27:10.364964+00	2279	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
2435	2016-03-11 15:27:10.373164+00	2278	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
2436	2016-03-11 15:27:10.38153+00	2277	Avtomobil yo`llari va aerodromlar	3		9	1
2437	2016-03-11 15:27:10.389841+00	2276	Transport inshootlarining ekspluatatsiyasi (transport inshootlari turlari bo`yicha)	3		9	1
2438	2016-03-11 15:27:10.398133+00	2275	Qurilish materiallari, buyumlari va konstruksiyalarini ishlab chiqarish	3		9	1
2439	2016-03-11 15:27:10.40653+00	2274	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)	3		9	1
2440	2016-03-11 15:27:10.414799+00	2273	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
2441	2016-03-11 15:27:10.42312+00	2272	Jismoniy madaniyat	3		9	1
2442	2016-03-11 15:27:10.431479+00	2271	Maktabgacha ta'lim	3		9	1
2443	2016-03-11 15:27:10.439829+00	2270	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
2444	2016-03-11 15:27:10.448102+00	2269	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
2445	2016-03-11 15:27:10.456451+00	2268	Xorijiy til va adabiyoti: ingliz tili	3		9	1
2446	2016-03-11 15:27:10.464864+00	2267	Musiqa ta'limi	3		9	1
2447	2016-03-11 15:27:10.473144+00	2266	Kasb ta'limi: agronomiya	3		9	1
2448	2016-03-11 15:27:10.481505+00	2265	Pedagogika va psixologiya	3		9	1
2449	2016-03-11 15:27:10.489835+00	2264	Informatika o`qitish metodikasi	3		9	1
2450	2016-03-11 15:27:10.498216+00	2263	Geografiya o`qitish metodikasi	3		9	1
2451	2016-03-11 15:27:10.506478+00	2262	Mehnat ta'limi	3		9	1
2452	2016-03-11 15:27:10.514829+00	2261	Filologiya va tillarni o`qitish: O`zbekiston tili	3		9	1
2453	2016-03-11 15:27:10.523214+00	2260	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
2454	2016-03-11 15:27:10.53155+00	2259	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
2455	2016-03-11 15:27:10.539867+00	2258	Oziq-ovqat texnologiyasi (mahsulotlar turlari bo`yicha)	3		9	1
2456	2016-03-11 15:27:10.548203+00	2257	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
2457	2016-03-11 15:27:10.556503+00	2256	Tuproqshunoslik	3		9	1
2458	2016-03-11 15:27:10.564923+00	2255	Kimyo	3		9	1
2459	2016-03-11 15:27:10.573191+00	2254	Fizika	3		9	1
2460	2016-03-11 15:27:10.581524+00	2253	Biologiya (turlari bo`yicha)	3		9	1
2461	2016-03-11 15:27:10.589979+00	2252	Matematika	3		9	1
2462	2016-03-11 15:27:10.598276+00	2251	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
2463	2016-03-11 15:27:10.614909+00	2250	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
2464	2016-03-11 15:27:10.623361+00	2249	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
2465	2016-03-11 15:27:10.631595+00	2248	Tarix (Islom tarixi va manbashunosligi)	3		9	1
2466	2016-03-11 15:27:10.639901+00	2247	Dinshunoslik	3		9	1
2467	2016-03-11 15:27:10.648342+00	2246	Psixologiya (din sotsiopsixologiyasi)	3		9	1
2468	2016-03-11 15:27:10.656589+00	2245	Jahon iqtisodiyoti va xalqaro iqtisodiy munosabatlar (mintaqalar va faoliyat turlari bo`yicha)	3		9	1
2469	2016-03-11 15:27:10.664897+00	2244	Informatika va axborot texnologiyalari (tarmoqlar va sohalar bo`yicha)	3		9	1
2470	2016-03-11 15:27:10.673196+00	2243	Kasb ta'limi: yengil sanoat texnologiyalari va jihozlari	3		9	1
2471	2016-03-11 15:27:10.681688+00	2242	Kasb ta'limi: elektr texnikasi, elektr mexanikasi va elektr texnologiyalari	3		9	1
2472	2016-03-11 15:27:10.689902+00	2241	Kasb ta'limi: menejment	3		9	1
2473	2016-03-11 15:27:10.698217+00	2240	Kasb ta'limi: mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
2474	2016-03-11 15:27:10.706564+00	2239	Kasb ta'limi: kimyoviy texnologiya	3		9	1
2475	2016-03-11 15:27:10.714936+00	2238	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
2476	2016-03-11 15:27:10.723198+00	2237	Kasb ta'limi: neft-gazkimyo sanoati texnologiyasi	3		9	1
2477	2016-03-11 15:27:10.731547+00	2236	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
2478	2016-03-11 15:27:10.739937+00	2235	Texnologik jarayonlarni boshqarishning axborot-kommunikatsiya tizimlari	3		9	1
2479	2016-03-11 15:27:10.748281+00	2234	Yengil sanoat texnologiyalari va jihozlari	3		9	1
2480	2016-03-11 15:27:10.756567+00	2233	Texnologiyalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
2481	2016-03-11 15:27:10.764906+00	2232	Neft-gazkimyo sanoati texnologiyasi	3		9	1
2482	2016-03-11 15:27:10.773274+00	2231	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
2483	2016-03-11 15:27:10.781586+00	2230	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
2484	2016-03-11 15:27:10.78988+00	2229	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
2485	2016-03-11 15:27:10.798305+00	2228	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
2486	2016-03-11 15:27:10.806669+00	2227	Maktabgacha ta'lim	3		9	1
2487	2016-03-11 15:27:10.814931+00	2226	Jismoniy madaniyat	3		9	1
2488	2016-03-11 15:27:10.823283+00	2225	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
2489	2016-03-11 15:27:10.831732+00	2224	Mehnat ta'limi	3		9	1
2490	2016-03-11 15:27:10.839972+00	2223	Chaqiriqqacha harbiy ta'lim	3		9	1
2491	2016-03-11 15:27:10.848268+00	2222	Xorijiy til va adabiyoti: ingliz tili	3		9	1
2492	2016-03-11 15:27:10.856589+00	2221	Musiqa ta'limi	3		9	1
2493	2016-03-11 15:27:10.865023+00	2220	Kasb ta'limi: amaliy san'at	3		9	1
2494	2016-03-11 15:27:10.873315+00	2219	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
2495	2016-03-11 15:27:10.881632+00	2218	Kasb ta'limi: iqtisodiyot	3		9	1
2496	2016-03-11 15:27:10.89001+00	2217	Kasb ta'limi: agronomiya	3		9	1
2497	2016-03-11 15:27:10.898396+00	2216	Pedagogika va psixologiya	3		9	1
2498	2016-03-11 15:27:10.906627+00	2215	Tasviriy san'at va muhandislik grafikasi	3		9	1
2499	2016-03-11 15:27:10.914961+00	2214	Filologiya va tillarni o`qitish: O`zbekiston tili	3		9	1
2500	2016-03-11 15:27:10.923414+00	2213	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
2501	2016-03-11 15:27:10.931682+00	2212	Filologiya va tillarni o`qitish: nemis tili	3		9	1
2502	2016-03-11 15:27:10.939943+00	2211	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
2503	2016-03-11 15:27:10.948385+00	2210	Turizm (faoliyat yo`nalishlari bo`yicha)	3		9	1
2504	2016-03-11 15:27:10.956747+00	2209	Mehmonxona xo`jaligini tashkil etish va boshqarish	3		9	1
2505	2016-03-11 15:27:10.965083+00	2208	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
2506	2016-03-11 15:27:10.97336+00	2207	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
2507	2016-03-11 15:27:10.981666+00	2206	Arxivshunoslik	3		9	1
2508	2016-03-11 15:27:10.990059+00	2205	Psixologiya (faoliyat turlari bo`yicha)	3		9	1
2509	2016-03-11 15:27:10.998283+00	2204	Tuproqshunoslik	3		9	1
2510	2016-03-11 15:27:11.006655+00	2203	Geografiya	3		9	1
2511	2016-03-11 15:27:11.015118+00	2202	Filologiya va tillarni o`qitish: fransuz tili	3		9	1
2512	2016-03-11 15:27:11.023359+00	2201	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
2513	2016-03-11 15:27:11.031662+00	2200	Matematika	3		9	1
2514	2016-03-11 15:27:11.039991+00	2199	Biologiya (turlari bo`yicha)	3		9	1
2515	2016-03-11 15:27:11.048512+00	2198	Fizika	3		9	1
2516	2016-03-11 15:27:11.056681+00	2197	Kimyo	3		9	1
2517	2016-03-11 15:27:11.064985+00	2196	Kasb ta'limi: mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
2518	2016-03-11 15:27:11.073372+00	2195	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
2519	2016-03-11 15:27:11.08176+00	2194	Avtomobilsozlik va traktorsozlik	3		9	1
2520	2016-03-11 15:27:11.090059+00	2193	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
2521	2016-03-11 15:27:11.098393+00	2192	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
2522	2016-03-11 15:27:11.106814+00	2191	Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)	3		9	1
2523	2016-03-11 15:27:11.115093+00	2190	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
2524	2016-03-11 15:27:11.123346+00	2189	Mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
2525	2016-03-11 15:27:11.131704+00	2188	Materialshunoslik va yangi materiallar texnologiyasi	3		9	1
2526	2016-03-11 15:27:11.140046+00	2187	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)	3		9	1
2527	2016-03-11 15:27:11.148405+00	2186	Maktabgacha ta'lim	3		9	1
2528	2016-03-11 15:27:11.156703+00	2185	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
2529	2016-03-11 15:27:11.165028+00	2184	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
2530	2016-03-11 15:27:11.173463+00	2183	Xorijiy til va adabiyoti: fransuz tili	3		9	1
2531	2016-03-11 15:27:11.181727+00	2182	Xorijiy til va adabiyoti: nemis tili	3		9	1
2532	2016-03-11 15:27:11.190046+00	2181	Xorijiy til va adabiyoti: ingliz tili	3		9	1
2533	2016-03-11 15:27:11.198609+00	2180	Musiqa ta'limie	3		9	1
2534	2016-03-11 15:27:11.206814+00	2179	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
2535	2016-03-11 15:27:11.21528+00	2178	Pedagogika va psixologiya	3		9	1
2536	2016-03-11 15:27:11.223446+00	2177	Tasviriy san'at va muhandislik grafikasi	3		9	1
2537	2016-03-11 15:27:11.23193+00	2176	Jismoniy madaniyat	3		9	1
2538	2016-03-11 15:27:11.240178+00	2175	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
2539	2016-03-11 15:27:11.248587+00	2174	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
2540	2016-03-11 15:27:11.256776+00	2173	Mehnat iqtisodiyoti va sotsiologiyasi	3		9	1
2541	2016-03-11 15:27:11.265095+00	2172	Geografiya	3		9	1
2542	2016-03-11 15:27:11.273476+00	2171	Kimyo	3		9	1
2543	2016-03-11 15:27:11.281758+00	2170	Fizika	3		9	1
2544	2016-03-11 15:27:11.290121+00	2169	Biologiya (turlari bo`yicha)	3		9	1
2545	2016-03-11 15:27:11.298468+00	2168	Matematika	3		9	1
2546	2016-03-11 15:27:11.306756+00	2167	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
2547	2016-03-11 15:27:11.315081+00	2166	Filologiya va tillarni o`qitish: O`zbekiston tili	3		9	1
2548	2016-03-11 15:27:11.323493+00	2165	Mehnat ta'limi	3		9	1
2549	2016-03-11 15:27:11.33186+00	2164	Informatika o`qitish metodikasi	3		9	1
2550	2016-03-11 15:27:56.298302+00	159	Toshkent arxitektura-qurilish instituti	2	Changed name.	7	1
2551	2016-03-11 15:29:43.445817+00	160	Toshkent to'qimachilik va yengil sanoat instituti	2	Changed name.	7	1
2552	2016-03-11 15:30:43.997615+00	160	Toshkent to`qimachilik va yengil sanoat instituti	2	Changed name.	7	1
2553	2016-03-11 15:31:16.426521+00	163	Toshkent avtomobil-yo`llar instituti	2	Changed name.	7	1
2554	2016-03-11 15:31:40.861397+00	163	Toshkent avtomobil-yo`llari instituti	2	Changed name.	7	1
2555	2016-03-11 15:32:03.538677+00	162	Toshkent kimyo-texnologiya instituti	2	Changed name.	7	1
2556	2016-03-11 15:32:40.921834+00	231	Toshkent tibbiyot akademiyasi Urganch filiali	1	Added.	7	1
2557	2016-03-11 15:33:56.455386+00	232	Toshkent tibbiyot akademiyasi Farg`ona filiali	1	Added.	7	1
2558	2016-03-11 15:34:20.37705+00	233	Toshkent pediatriya tibbiyot institutining Nukus filiali	1	Added.	7	1
2559	2016-03-11 15:36:51.051942+00	234	Navoiy davlat konchilik institutining Olmaliq fakulteti	1	Added.	7	1
2560	2016-03-11 15:37:23.049163+00	192	Andijon qishloq xo`jalik instituti	2	Changed name and address.	7	1
2561	2016-03-11 15:38:08.489459+00	207	Qarshi muhandislik - iqtisodiyot instituti	2	Changed name.	7	1
2562	2016-03-11 15:38:36.131765+00	177	Toshkent axborot texnologiyalari universiteti	2	Changed name.	7	1
2563	2016-03-11 15:39:19.486308+00	179	Toshkent temir yo`l transporti muhandislari instituti	2	Changed name.	7	1
2564	2016-03-11 15:39:52.269302+00	235	Toshkent davlat agrar universitetining Nukus filiali	1	Added.	7	1
2565	2016-03-11 15:40:10.410686+00	236	Toshkent axborot texnologiyalari universitetining Samarqand filiali	1	Added.	7	1
2566	2016-03-11 15:40:30.046296+00	237	Toshkent axborot texnologiyalari universitetining Qarshi filiali	1	Added.	7	1
2567	2016-03-11 15:41:16.382811+00	222	Toshkent axborot texnologiyalari universitetining Urganch filiali	2	Changed name.	7	1
2568	2016-03-11 15:41:44.691181+00	205	Toshkent axborot texnologiyalar universitetining Nukus filiali	2	Changed name.	7	1
2569	2016-03-11 15:42:07.408429+00	205	Toshkent axborot texnologiyalari universitetining Nukus filiali	2	Changed name.	7	1
2570	2016-03-11 15:42:31.604652+00	227	Toshkent axborot texnologiyalari universitetining Farg`ona filiali	2	Changed name.	7	1
2571	2016-03-11 15:43:09.123113+00	238	Toshkent kimyo-texnologiya instituti Qo`ng`irot bo`limi	1	Added.	7	1
2572	2016-03-11 15:43:49.8752+00	208	Toshkent axborot texnologiyalari universitetining Qarshi filiali	2	Changed name.	7	1
2573	2016-03-11 15:44:03.863039+00	218	Toshkent axborot texnologiyalari universitetining Samarqand filiali	2	Changed name.	7	1
2574	2016-03-11 15:44:24.233909+00	236	Toshkent axborot texnologiyalari universitetining Samarqand filiali	3		7	1
2575	2016-03-11 15:44:44.732306+00	237	Toshkent axborot texnologiyalari universitetining Qarshi filiali	3		7	1
2576	2016-03-11 15:45:30.7955+00	203	Toshkent davlat agrar universitetining Nukus filiali	2	Changed name.	7	1
2577	2016-03-11 15:46:13.505095+00	202	Toshkent pediatriya tibbiyot institutining Nukus filiali	2	Changed name.	7	1
2578	2016-03-11 15:47:20.66974+00	235	Toshkent davlat agrar universitetining Nukus filiali	3		7	1
2579	2016-03-11 15:47:20.680227+00	233	Toshkent pediatriya tibbiyot institutining Nukus filiali	3		7	1
2580	2016-03-11 15:47:20.68857+00	232	Toshkent tibbiyot akademiyasi Farg`ona filiali	3		7	1
2581	2016-03-11 15:47:20.696825+00	231	Toshkent tibbiyot akademiyasi Urganch filiali	3		7	1
2582	2016-03-11 15:47:31.495543+00	3365	Neft va neft-gazni qayta ishlash texnologiyasi	3		9	1
2583	2016-03-11 15:47:31.504717+00	3364	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
2584	2016-03-11 15:47:31.513205+00	3363	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
2585	2016-03-11 15:47:31.521414+00	3362	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)	3		9	1
2586	2016-03-11 15:47:31.529722+00	3361	Kasb ta'limi: suv xo`jaligi va melioratsiya	3		9	1
2587	2016-03-11 15:47:31.538047+00	3360	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)	3		9	1
2588	2016-03-11 15:47:31.546489+00	3359	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)	3		9	1
2589	2016-03-11 15:47:31.554732+00	3358	Gidrotexnika qurilishi (turlari bo`yicha)	3		9	1
2590	2016-03-11 15:47:31.563055+00	3357	Yer tuzish va yer kadastri	3		9	1
2591	2016-03-11 15:47:31.571524+00	3356	Suv xo`jaligi va melioratsiya	3		9	1
2592	2016-03-11 15:47:31.579824+00	3355	Suv xo`jaligi va melioratsiya ishlarini mexanizatsiyalashtirish	3		9	1
2593	2016-03-11 15:47:31.588085+00	3354	Gidrotexnika inshootlari va nasos stansiyalaridan foydalanish	3		9	1
2594	2016-03-11 15:47:31.59646+00	3353	Kompyuter injiniringi ("Kompyuter injiniringi", "AT-Servis")	3		9	1
2595	2016-03-11 15:47:31.604888+00	3352	Dasturiy injiniring	3		9	1
2596	2016-03-11 15:47:31.613134+00	3351	Telekommunikatsiya texnologiyalari ("Telekommunikatsiyalar")	3		9	1
2597	2016-03-11 15:47:31.621474+00	3350	Axborot-kommunikatsiya texnologiyalari sohasida kasb ta'limi	3		9	1
2598	2016-03-11 15:47:31.629796+00	3349	Axborot-kommunikatsiya texnologiyalari sohasida kasb ta'limi	3		9	1
2599	2016-03-11 15:47:31.638247+00	3348	Telekommunikatsiya texnologiyalari ("Telekommunikatsiyalar")	3		9	1
2600	2016-03-11 15:47:31.646523+00	3347	Dasturiy injiniring	3		9	1
2601	2016-03-11 15:47:31.654856+00	3346	Kompyuter injiniringi ("Kompyuter injiniringi", "AT-Servis")	3		9	1
2602	2016-03-11 15:47:31.663328+00	3345	Kompyuter injiniringi ("Kompyuter injiniringi", "AT-Servis")	3		9	1
2603	2016-03-11 15:47:31.671563+00	3344	Dasturiy injiniring	3		9	1
2604	2016-03-11 15:47:31.679804+00	3343	Telekommunikatsiya texnologiyalari ("Telekommunikatsiyalar")	3		9	1
2605	2016-03-11 15:47:31.688093+00	3342	Axborot-kommunikatsiya texnologiyalari sohasida kasb ta'limi	3		9	1
2606	2016-03-11 15:47:31.696566+00	3325	Kasb ta'limi: buxgalteriya hisobi va audit	3		9	1
2607	2016-03-11 15:47:31.704791+00	3324	Kasb ta'limi: iqtisodiyot	3		9	1
2608	2016-03-11 15:47:31.713157+00	3323	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
2609	2016-03-11 15:47:31.721597+00	3322	Menejment (turizm)	3		9	1
2610	2016-03-11 15:47:31.729932+00	3321	Marketing (turizm)	3		9	1
2611	2016-03-11 15:47:31.738172+00	3320	Moliya	3		9	1
2612	2016-03-11 15:47:31.746495+00	3319	Bank ishi	3		9	1
2613	2016-03-11 15:47:31.75512+00	3318	Buxgalteriya hisobi va audit (tarmoqlar bo`yicha)	3		9	1
2614	2016-03-11 15:47:31.763237+00	3317	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
2615	2016-03-11 15:47:31.771526+00	3316	Mehmonxona xo`jaligini tashkil etish va boshqarish	3		9	1
2616	2016-03-11 15:47:31.779846+00	3315	Turizm (faoliyat yo`nalishlari bo`yicha)	3		9	1
2617	2016-03-11 15:47:31.788271+00	3314	Yurisprudensiya (faoliyat turlari bo`yicha)	3		9	1
2618	2016-03-11 15:47:31.796551+00	3313	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
2619	2016-03-11 15:47:31.804907+00	3312	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)	3		9	1
2620	2016-03-11 15:47:31.813216+00	3311	Buxgalteriya hisobi va audit (tarmoqlar bo`yicha)	3		9	1
2621	2016-03-11 15:47:31.821594+00	3310	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
2622	2016-03-11 15:47:31.82988+00	3309	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
2623	2016-03-11 15:47:31.838253+00	3308	Kasb ta'limi: transport inshootlarining ekspluatatsiyasi	3		9	1
2624	2016-03-11 15:47:31.846582+00	3307	Kasb ta'limi: texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish	3		9	1
2625	2016-03-11 15:47:31.854912+00	3306	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
2695	2016-03-11 15:47:32.438415+00	3236	Cholg`u ijrochiligi: mis - damli va zarbli cholg`ular	3		9	1
2626	2016-03-11 15:47:31.863271+00	3305	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)	3		9	1
2627	2016-03-11 15:47:31.871566+00	3304	Tashishni tashkil etish va transport logistikasi (transport turlari bo`yicha)	3		9	1
2628	2016-03-11 15:47:31.879943+00	3303	Xizmat ko`rsatish texnikasi va texnologiyasi (xizmat ko`rsatish tarmoqlari bo`yicha)	3		9	1
2629	2016-03-11 15:47:31.888247+00	3302	Telekommunikatsiya texnologiyalari ("Telekommunikatsiyalar")	3		9	1
2630	2016-03-11 15:47:31.896604+00	3301	Transport inshootlarining ekspluatatsiyasi (transport inshootlari turlari bo`yicha)	3		9	1
2631	2016-03-11 15:47:31.905012+00	3300	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)	3		9	1
2632	2016-03-11 15:47:31.913422+00	3299	Bino va inshootlar qurilishi (turlari bo`yicha)	3		9	1
2633	2016-03-11 15:47:31.921659+00	3298	Informatika va axborot texnologiyalari (temir yo`l transportida)	3		9	1
2634	2016-03-11 15:47:31.930008+00	3297	Sport faoliyati: qilichbozlik	3		9	1
2635	2016-03-11 15:47:31.938491+00	3296	Sport faoliyati: og`ir atletika	3		9	1
2636	2016-03-11 15:47:31.946574+00	3295	Sport faoliyati: eshkak eshish	3		9	1
2637	2016-03-11 15:47:31.954895+00	3294	Sport faoliyati: tennis	3		9	1
2638	2016-03-11 15:47:31.963206+00	3293	Sport faoliyati: futbol	3		9	1
2639	2016-03-11 15:47:31.971671+00	3292	Sport faoliyati: badiiy gimnastika	3		9	1
2640	2016-03-11 15:47:31.979956+00	3291	Sport faoliyati: dzu-do	3		9	1
2641	2016-03-11 15:47:31.988229+00	3290	Sport faoliyati: erkin va yunon-rum kurashi	3		9	1
2642	2016-03-11 15:47:31.996719+00	3289	Sport faoliyati: qo`l to`pi	3		9	1
2643	2016-03-11 15:47:32.004941+00	3288	Sport faoliyati: yengil atletika	3		9	1
2644	2016-03-11 15:47:32.013277+00	3287	Kasb ta'limi: jismoniy tarbiya va jismoniy madaniyat	3		9	1
2645	2016-03-11 15:47:32.021606+00	3286	Psixologiya (sport psixologiyasi)	3		9	1
2646	2016-03-11 15:47:32.030127+00	3285	Sport faoliyati: basketbol	3		9	1
2647	2016-03-11 15:47:32.038296+00	3284	Sport faoliyati: boks	3		9	1
2648	2016-03-11 15:47:32.046629+00	3283	Sport faoliyati: voleybol	3		9	1
2649	2016-03-11 15:47:32.054955+00	3282	Sport faoliyati: velosport	3		9	1
2650	2016-03-11 15:47:32.063365+00	3281	Sport faoliyati: gimnastika	3		9	1
2651	2016-03-11 15:47:32.071651+00	3280	Sport faoliyati: suzish	3		9	1
2652	2016-03-11 15:47:32.079974+00	3279	Sport faoliyati: belbog`li kurash	3		9	1
2653	2016-03-11 15:47:32.088424+00	3278	Sport faoliyati: taekvondo (WTF)	3		9	1
2654	2016-03-11 15:47:32.096712+00	3277	Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Surxondaryo)	3		9	1
2655	2016-03-11 15:47:32.10496+00	3276	Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Farg`ona)	3		9	1
2656	2016-03-11 15:47:32.113309+00	3275	Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Xorazm)	3		9	1
2657	2016-03-11 15:47:32.121832+00	3274	Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Qashqadaryo)	3		9	1
2658	2016-03-11 15:47:32.130023+00	3273	Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Toshkent viloyati)	3		9	1
2659	2016-03-11 15:47:32.138377+00	3272	Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Toshkent shahri)	3		9	1
2660	2016-03-11 15:47:32.146827+00	3271	Sport faoliyati: sinxron suzish	3		9	1
2661	2016-03-11 15:47:32.155113+00	3270	Sport faoliyati: badminton	3		9	1
2662	2016-03-11 15:47:32.163417+00	3269	Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Sirdaryo)	3		9	1
2663	2016-03-11 15:47:32.171776+00	3268	Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Samarqand)	3		9	1
2664	2016-03-11 15:47:32.180056+00	3267	Sport faoliyati: sambo	3		9	1
2665	2016-03-11 15:47:32.188441+00	3266	Sport faoliyati: kurash	3		9	1
2666	2016-03-11 15:47:32.196724+00	3265	Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Qoraqalpog`iston Respublikasi)	3		9	1
2667	2016-03-11 15:47:32.205144+00	3264	Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Andijon)	3		9	1
2668	2016-03-11 15:47:32.213417+00	3263	Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Buxoro)	3		9	1
2669	2016-03-11 15:47:32.221828+00	3262	Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Jizzax)	3		9	1
2670	2016-03-11 15:47:32.230065+00	3261	Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Navoiy)	3		9	1
2671	2016-03-11 15:47:32.238475+00	3260	Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Namangan)	3		9	1
2672	2016-03-11 15:47:32.246854+00	3259	Kompyuter injiniringi ("Kompyuter injiniringi", "AT-Servis", "Axborot xavfsizligi", "Multimedia texnologiyalari")	3		9	1
2673	2016-03-11 15:47:32.255178+00	3258	Dasturiy injiniring	3		9	1
2674	2016-03-11 15:47:32.263409+00	3257	Telekommunikatsiya texnologiyalari ("Telekommunikatsiyalar", "Teleradioeshittirish", "Mobil tizimlar")	3		9	1
2675	2016-03-11 15:47:32.271757+00	3256	Televizion texnologiyalar ("Audiovizual texnologiyalar", "Telestudiya tizimlari va ilovalari")	3		9	1
2676	2016-03-11 15:47:32.28014+00	3255	Axborot-kommunikatsiya texnologiyalari sohasida iqtisodiyot va menejment	3		9	1
2677	2016-03-11 15:47:32.288459+00	3254	Axborot-kommunikatsiya texnologiyalari sohasida kasb ta'limi	3		9	1
2678	2016-03-11 15:47:32.29669+00	3253	Pochta aloqasi texnologiyasi	3		9	1
2679	2016-03-11 15:47:32.305242+00	3252	Axborotlashtirish va kutubxonashunoslik	3		9	1
2680	2016-03-11 15:47:32.313344+00	3251	Cholg`u ijrochiligi: fortepiano (organ)	3		9	1
2681	2016-03-11 15:47:32.321859+00	3250	Vokal san'ati: estrada xonandaligi	3		9	1
2682	2016-03-11 15:47:32.330055+00	3249	Vokal san'ati: an'anaviy xonandalik	3		9	1
2683	2016-03-11 15:47:32.33855+00	3248	Vokal san'ati: akademik xonandalik	3		9	1
2684	2016-03-11 15:47:32.346725+00	3247	dirijorlik (xor dirijorligi)	3		9	1
2685	2016-03-11 15:47:32.355158+00	3246	San'atshunoslik: musiqashunoslik	3		9	1
2686	2016-03-11 15:47:32.363482+00	3245	Bastakorlik san'ati	3		9	1
2687	2016-03-11 15:47:32.371834+00	3244	Cholg`u ijrochiligi: torli cholg`ular	3		9	1
2688	2016-03-11 15:47:32.3801+00	3243	Cholg`u ijrochiligi: yog`och - damli cholg`ular	3		9	1
2689	2016-03-11 15:47:32.388485+00	3242	Texnogen san'at (musiqiy ovoz rejissorligi)	3		9	1
2690	2016-03-11 15:47:32.396835+00	3241	Cholg`u ijrochiligi: estrada cholg`ulari	3		9	1
2691	2016-03-11 15:47:32.405156+00	3240	Cholg`u ijrochiligi: an'anaviy cholg`ular	3		9	1
2692	2016-03-11 15:47:32.413444+00	3239	Cholg`u ijrochiligi: damli va urma xalq cholg`ulari	3		9	1
2693	2016-03-11 15:47:32.42177+00	3238	Cholg`u ijrochiligi: kamonli O`zbekiston xalq cholg`ulari	3		9	1
2694	2016-03-11 15:47:32.430179+00	3237	Cholg`u ijrochiligi: mizrobli xalq cholg`ulari	3		9	1
2696	2016-03-11 15:47:32.44676+00	3235	Aktyorlik san'ati: qo`g`irchoq teatri aktyorligi	3		9	1
2697	2016-03-11 15:47:32.455223+00	3234	Aktyorlik san'ati: musiqiy teatr aktyorligi	3		9	1
2698	2016-03-11 15:47:32.463531+00	3233	Aktyorlik san'ati: dramatik teatr va kino aktyorligi	3		9	1
2699	2016-03-11 15:47:32.471817+00	3232	San'atshunoslik: sahna va ekran san'ati dramaturgiyasi	3		9	1
2700	2016-03-11 15:47:32.480113+00	3231	San'atshunoslik: teatrshunoslik	3		9	1
2701	2016-03-11 15:47:32.488578+00	3230	Kasb ta'limi: madaniyat va san'at muassasalarini tashkil etish va boshqarish	3		9	1
2702	2016-03-11 15:47:32.496835+00	3229	Kasb ta'limi: xalq ijodiyoti	3		9	1
2703	2016-03-11 15:47:32.505148+00	3228	Kasb ta'limi: aktyorlik san'ati	3		9	1
2704	2016-03-11 15:47:32.513679+00	3227	rejissorlik: estrada va ommaviy tomoshalar rejissorligi	3		9	1
2705	2016-03-11 15:47:32.521866+00	3226	rejissorlik: televideniye va radio rejissorligi	3		9	1
2706	2016-03-11 15:47:32.530096+00	3225	Madaniyat va san'at muassasalarini tashkil etish va boshqarish	3		9	1
2707	2016-03-11 15:47:32.538509+00	3224	Xalq ijodiyoti: xalq ashula va raqs ansambli rahbari	3		9	1
2708	2016-03-11 15:47:32.546832+00	3223	Xalq ijodiyoti: cholg`u jamoalari rahbari	3		9	1
2709	2016-03-11 15:47:32.555201+00	3222	Xalq ijodiyoti: vokal jamoalari rahbari	3		9	1
2710	2016-03-11 15:47:32.563483+00	3221	Xalq ijodiyoti: folklor-etnografik jamoalari rahbari	3		9	1
2711	2016-03-11 15:47:32.571925+00	3220	Kino-teleoperatorlik	3		9	1
2712	2016-03-11 15:47:32.580224+00	3219	Texnogen san'at: kino, televideniye va radio ovoz rejissorligi	3		9	1
2713	2016-03-11 15:47:32.588612+00	3218	rejissorlik: musiqiy teatr rejissorligi	3		9	1
2714	2016-03-11 15:47:32.596813+00	3217	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)	3		9	1
2715	2016-03-11 15:47:32.605241+00	3216	Buxgalteriya hisobi va audit (tarmoqlar bo`yicha)	3		9	1
2716	2016-03-11 15:47:32.613506+00	3215	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
2717	2016-03-11 15:47:32.621899+00	3214	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
2718	2016-03-11 15:47:32.630135+00	3213	Gidrologiya (suv omborlari bo`yicha)	3		9	1
2719	2016-03-11 15:47:32.638639+00	3212	Kasb ta'limi: suv xo`jaligi va melioratsiya	3		9	1
2720	2016-03-11 15:47:32.646912+00	3211	Kasb ta'limi: yer tuzish va yer kadastri	3		9	1
2721	2016-03-11 15:47:32.655229+00	3210	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)	3		9	1
2722	2016-03-11 15:47:32.663533+00	3209	Geodeziya, kartografiya va kadastr (funksiyalari bo`yicha)	3		9	1
2723	2016-03-11 15:47:32.672079+00	3208	Gidrotexnika qurilishi (turlari bo`yicha)	3		9	1
2724	2016-03-11 15:47:32.68022+00	3207	Hayotiy faoliyat xavfsizligi	3		9	1
2725	2016-03-11 15:47:32.688521+00	3206	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
2726	2016-03-11 15:47:32.696956+00	3205	Gidrotexnika inshootlari va nasos stansiyalaridan foydalanish	3		9	1
2727	2016-03-11 15:47:32.705303+00	3204	Suv xo`jaligi va melioratsiya ishlarini mexanizatsiyalashtirish	3		9	1
2728	2016-03-11 15:47:32.71351+00	3203	Suv xo`jaligi va melioratsiya	3		9	1
2729	2016-03-11 15:47:32.721923+00	3202	Irrigatsiya tizimlarida suv energiyasidan foydalanish	3		9	1
2730	2016-03-11 15:47:32.730259+00	3201	Yer tuzish va yer kadastri	3		9	1
2731	2016-03-11 15:47:32.738645+00	3200	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)	3		9	1
2732	2016-03-11 15:47:32.746884+00	3199	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
2733	2016-03-11 15:47:32.755281+00	3198	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)	3		9	1
2734	2016-03-11 15:47:32.763697+00	3197	Energetika (tarmoqlar bo`yicha)	3		9	1
2735	2016-03-11 15:47:32.771995+00	3196	Buxgalteriya hisobi va audit (tarmoqlar bo`yicha)	3		9	1
2736	2016-03-11 15:47:32.780334+00	3195	Moliya	3		9	1
2737	2016-03-11 15:47:32.788641+00	3194	Marketing (tarmoqlar va sohalar bo`yicha)	3		9	1
2738	2016-03-11 15:47:32.796996+00	3193	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
2739	2016-03-11 15:47:32.805276+00	3192	Kasb ta'limi: texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish	3		9	1
2740	2016-03-11 15:47:32.813588+00	3191	Kasb ta'limi: iqtisodiyot	3		9	1
2741	2016-03-11 15:47:32.821981+00	3190	Geodeziya, kartografiya va kadastr (funksiyalari bo`yicha)	3		9	1
2742	2016-03-11 15:47:32.830279+00	3189	Konchilik ishi	3		9	1
2743	2016-03-11 15:47:32.838585+00	3188	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
2744	2016-03-11 15:47:32.84692+00	3187	Xizmat ko`rsatish texnikasi va texnologiyasi (xizmat ko`rsatish tarmoqlari bo`yicha)	3		9	1
2745	2016-03-11 15:47:32.855421+00	3186	Gidrotexnika inshootlari va nasos stansiyalaridan foydalanish	3		9	1
2746	2016-03-11 15:47:32.863591+00	3185	Qishloq xo`jaligini mexanizatsiyalashtirish	3		9	1
2747	2016-03-11 15:47:32.87192+00	3184	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
2748	2016-03-11 15:47:32.880289+00	3183	Oziq-ovqat texnologiyasi (mahsulotlar turlari bo`yicha)	3		9	1
2749	2016-03-11 15:47:32.888789+00	3182	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
2750	2016-03-11 15:47:32.896981+00	3181	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
2751	2016-03-11 15:47:32.905294+00	3180	Neft va gaz konlarini ishga tushirish va ulardan foydalanish	3		9	1
2752	2016-03-11 15:47:32.913694+00	3179	Foydali qazilma konlari geologiyasi, qidiruv va razvedkasi (kon turlari bo`yicha)	3		9	1
2753	2016-03-11 15:47:32.922012+00	3178	Agronomiya (dehqonchilik mahsulotlari turlari bo`yicha)	3		9	1
2754	2016-03-11 15:47:32.930323+00	3177	Agrokimyo va agrotuproqshunoslik	3		9	1
2755	2016-03-11 15:47:32.938592+00	3176	Buxgalteriya hisobi va audit (tarmoqlar bo`yicha)	3		9	1
2756	2016-03-11 15:47:32.947097+00	3175	Marketing (tarmoqlar va sohalar bo`yicha)	3		9	1
2757	2016-03-11 15:47:32.955276+00	3174	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
2758	2016-03-11 15:47:32.963596+00	3173	Kasb ta'limi: qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
2759	2016-03-11 15:47:32.97193+00	3172	Kasb ta'limi: qishloq xo`jaligini elektrlashtirish va avtomatlashtirish	3		9	1
2760	2016-03-11 15:47:32.980427+00	3171	Kasb ta'limi: qishloq xo`jaligini mexanizatsiyalashtirish	3		9	1
2761	2016-03-11 15:47:32.988657+00	3170	Kasb ta'limi: agronomiya	3		9	1
2762	2016-03-11 15:47:32.996994+00	3169	O`simliklar himoyasi va karantini	3		9	1
2763	2016-03-11 15:47:33.005522+00	3168	Qishloq xo`jaligi ekinlari seleksiyasi va urug`chiligi	3		9	1
2764	2016-03-11 15:47:33.013752+00	3167	Qishloq xo`jaligini elektrlashtirish va avtomatlashtirish	3		9	1
2765	2016-03-11 15:47:33.022027+00	3166	Qishloq xo`jaligini mexanizatsiyalashtirish	3		9	1
2767	2016-03-11 15:47:33.038819+00	3164	Dorivor o`simliklarni yetishtirish texnologiyasi	3		9	1
2768	2016-03-11 15:47:33.047047+00	3163	Meva-sabzavotchilik va uzumchilik	3		9	1
2769	2016-03-11 15:47:33.055385+00	3162	Ipakchilik	3		9	1
2770	2016-03-11 15:47:33.063714+00	3161	O`rmonchilik va aholi yashash joylarini ko`kalamzorlashtirish	3		9	1
2771	2016-03-11 15:47:33.072185+00	3160	Zootexniya (turlari bo`yicha)	3		9	1
2772	2016-03-11 15:47:33.080389+00	3159	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
2773	2016-03-11 15:47:33.088709+00	3158	Agrokimyo va agrotuproqshunoslik	3		9	1
2774	2016-03-11 15:47:33.097136+00	3157	Buxgalteriya hisobi va audit (tarmoqlar bo`yicha)	3		9	1
2775	2016-03-11 15:47:33.105421+00	3156	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
2776	2016-03-11 15:47:33.113696+00	3155	Kasb ta'limi: zootexniya	3		9	1
2777	2016-03-11 15:47:33.122035+00	3154	Kasb ta'limi: veterinariya	3		9	1
2778	2016-03-11 15:47:33.130479+00	3153	Kasb ta'limi: agronomiya	3		9	1
2779	2016-03-11 15:47:33.138758+00	3152	Agronomiya (dehqonchilik mahsulotlari turlari bo`yicha)	3		9	1
2780	2016-03-11 15:47:33.147089+00	3151	O`simliklar himoyasi va karantini	3		9	1
2781	2016-03-11 15:47:33.155447+00	3150	Qishloq xo`jaligi ekinlari seleksiyasi va urug`chiligi	3		9	1
2782	2016-03-11 15:47:33.163805+00	3149	Veterinariya	3		9	1
2783	2016-03-11 15:47:33.172092+00	3148	Qishloq xo`jaligini mexanizatsiyalashtirish	3		9	1
2784	2016-03-11 15:47:33.180414+00	3147	Qishloq xo`jaligida menejment	3		9	1
2785	2016-03-11 15:47:33.188886+00	3146	Meva-sabzavotchilik va uzumchilik	3		9	1
2786	2016-03-11 15:47:33.19709+00	3145	Zootexniya (turlari bo`yicha)	3		9	1
2787	2016-03-11 15:47:33.205429+00	3144	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
2788	2016-03-11 15:47:33.213755+00	3143	Agronomiya (dehqonchilik mahsulotlari turlari bo`yicha)	3		9	1
2789	2016-03-11 15:47:33.222231+00	3142	Buxgalteriya hisobi va audit (tarmoqlar bo`yicha)	3		9	1
2790	2016-03-11 15:47:33.230423+00	3141	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
2791	2016-03-11 15:47:33.238795+00	3140	Kasb ta'limi: qishloq xo`jaligini mexanizatsiyalashtirish	3		9	1
2792	2016-03-11 15:47:33.259666+00	3139	Kasb ta'limi: iqtisodiyot	3		9	1
2793	2016-03-11 15:47:33.280523+00	3138	Kasb ta'limi: agronomiya	3		9	1
2794	2016-03-11 15:47:33.288805+00	3137	O`simliklar himoyasi va karantini	3		9	1
2795	2016-03-11 15:47:33.297119+00	3136	Qishloq xo`jaligi ekinlari seleksiyasi va urug`chiligi	3		9	1
2796	2016-03-11 15:47:33.30542+00	3135	Gidrotexnika inshootlari va nasos stansiyalaridan foydalanish	3		9	1
2797	2016-03-11 15:47:33.313927+00	3134	Suv xo`jaligi va melioratsiya	3		9	1
2798	2016-03-11 15:47:33.322153+00	3133	Qishloq xo`jaligini mexanizatsiyalashtirish	3		9	1
2799	2016-03-11 15:47:33.330436+00	3132	Qishloq xo`jaligida menejment	3		9	1
2800	2016-03-11 15:47:33.3388+00	3131	Meva-sabzavotchilik va uzumchilik	3		9	1
2801	2016-03-11 15:47:33.347206+00	3130	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
2802	2016-03-11 15:47:33.355463+00	3129	Sanoat farmatsiyasi (turlari bo`yicha)	3		9	1
2803	2016-03-11 15:47:33.363789+00	3128	Farmatsiya (turlari bo`yicha)	3		9	1
2804	2016-03-11 15:47:33.372238+00	3127	Biotexnologiya (tarmoqlar bo`yicha)	3		9	1
2805	2016-03-11 15:47:33.380476+00	3126	Kasb ta'limi: farmatsiya	3		9	1
2806	2016-03-11 15:47:33.388793+00	3125	Kasb ta'limi: tibbiy pedagogik ish	3		9	1
2807	2016-03-11 15:47:33.397143+00	3124	Davolash ishi	3		9	1
2808	2016-03-11 15:47:33.405581+00	3123	Pediatriya ishi	3		9	1
2809	2016-03-11 15:47:33.413876+00	3122	Oliy hamshiralik ishi	3		9	1
2810	2016-03-11 15:47:33.422239+00	3121	Kasb ta'limi: konchilik ishi	3		9	1
2811	2016-03-11 15:47:33.430507+00	3120	Metallurgiya	3		9	1
2812	2016-03-11 15:47:33.438956+00	3119	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
2813	2016-03-11 15:47:33.447158+00	3118	Konchilik ishi	3		9	1
2814	2016-03-11 15:47:33.455515+00	3117	Mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
2815	2016-03-11 15:47:33.464012+00	3116	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
2816	2016-03-11 15:47:33.47218+00	3115	Kasb ta'limi: tibbiy pedagogik ish	3		9	1
2817	2016-03-11 15:47:33.4805+00	3114	Davolash ishi	3		9	1
2818	2016-03-11 15:47:33.488836+00	3113	Tibbiy profilaktika ishi	3		9	1
2819	2016-03-11 15:47:33.497288+00	3112	Stomatologiya	3		9	1
2820	2016-03-11 15:47:33.505574+00	3111	Oliy hamshiralik ishi	3		9	1
2821	2016-03-11 15:47:33.513905+00	3110	Kasb ta'limi: tibbiy pedagogik ish	3		9	1
2822	2016-03-11 15:47:33.522269+00	3109	Davolash ishi	3		9	1
2823	2016-03-11 15:47:33.530579+00	3108	Pediatriya ishi	3		9	1
2824	2016-03-11 15:47:33.53884+00	3107	Stomatologiya	3		9	1
2825	2016-03-11 15:47:33.547207+00	3106	Oliy hamshiralik ishi	3		9	1
2826	2016-03-11 15:47:33.555682+00	3105	Oliy hamshiralik ishi	3		9	1
2827	2016-03-11 15:47:33.56385+00	3104	Stomatologiya	3		9	1
2828	2016-03-11 15:47:33.572206+00	3103	Davolash ishi	3		9	1
2829	2016-03-11 15:47:33.580546+00	3102	Kasb ta'limi: tibbiy pedagogik ish	3		9	1
2830	2016-03-11 15:47:33.588992+00	3101	Kasb ta'limi: tibbiy pedagogik ish	3		9	1
2831	2016-03-11 15:47:33.597208+00	3100	Davolash ishi	3		9	1
2832	2016-03-11 15:47:33.605539+00	3099	Pediatriya ishi	3		9	1
2833	2016-03-11 15:47:33.613981+00	3098	Stomatologiya	3		9	1
2834	2016-03-11 15:47:33.62232+00	3097	Oliy hamshiralik ishi	3		9	1
2835	2016-03-11 15:47:33.630605+00	3096	Informatika o`qitish metodikasi	3		9	1
2836	2016-03-11 15:47:33.638931+00	3095	Tarix o`qitish metodikasi	3		9	1
2837	2016-03-11 15:47:33.647446+00	3094	Geografiya o`qitish metodikasi	3		9	1
2838	2016-03-11 15:47:33.655615+00	3093	Biologiya o`qitish metodikasi	3		9	1
2839	2016-03-11 15:47:33.663917+00	3092	Kimyo o`qitish metodikasi	3		9	1
2840	2016-03-11 15:47:33.6723+00	3091	Fizika va astronomiya o`qitish metodikasi	3		9	1
2841	2016-03-11 15:47:33.680952+00	3090	Matematika o`qitish metodikasi	3		9	1
2842	2016-03-11 15:47:33.689252+00	3089	Tasviriy san'at va muhandislik grafikasi	3		9	1
2843	2016-03-11 15:47:33.697497+00	3088	Musiqa ta'limi	3		9	1
2844	2016-03-11 15:47:33.705813+00	3087	O`zbekiston tili va adabiyoti	3		9	1
2845	2016-03-11 15:47:33.714118+00	3086	Mehnat ta'limi	3		9	1
2846	2016-03-11 15:47:33.722393+00	3085	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
2847	2016-03-11 15:47:33.730634+00	3084	Jismoniy madaniyat	3		9	1
2848	2016-03-11 15:47:33.739052+00	3083	Defektologiya	3		9	1
2849	2016-03-11 15:47:33.747356+00	3082	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
2850	2016-03-11 15:47:33.755656+00	3081	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
2851	2016-03-11 15:47:33.763984+00	3080	Xorijiy til va adabiyoti: ingliz tili	3		9	1
2852	2016-03-11 15:47:33.77246+00	3079	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
2853	2016-03-11 15:47:33.780694+00	3078	Kasb ta'limi: dizayn	3		9	1
2854	2016-03-11 15:47:33.789009+00	3077	Pedagogika va psixologiya	3		9	1
2855	2016-03-11 15:47:33.797352+00	3076	Tasviriy san'at va muhandislik grafikasi	3		9	1
2856	2016-03-11 15:47:33.805673+00	3075	Informatika o`qitish metodikasi	3		9	1
2857	2016-03-11 15:47:33.81395+00	3074	Tarix o`qitish metodikasi	3		9	1
2858	2016-03-11 15:47:33.822286+00	3073	Geografiya o`qitish metodikasi	3		9	1
2859	2016-03-11 15:47:33.83071+00	3072	Biologiya o`qitish metodikasi	3		9	1
2860	2016-03-11 15:47:33.838985+00	3071	Kimyo o`qitish metodikasi	3		9	1
2861	2016-03-11 15:47:33.847283+00	3070	Fizika va astronomiya o`qitish metodikasi	3		9	1
2862	2016-03-11 15:47:33.85562+00	3069	Matematika o`qitish metodikasi	3		9	1
2863	2016-03-11 15:47:33.864099+00	3068	Kasb ta'limi: kompyuter grafikasi va dizayn	3		9	1
2864	2016-03-11 15:47:33.872389+00	3067	Musiqa ta'limi	3		9	1
2865	2016-03-11 15:47:33.880718+00	3066	O`zbekiston tili va adabiyoti	3		9	1
2866	2016-03-11 15:47:33.889073+00	3065	Psixologiya (faoliyat turlari bo`yicha)	3		9	1
2867	2016-03-11 15:47:33.897782+00	3064	Mehnat ta'limi	3		9	1
2868	2016-03-11 15:47:33.905997+00	3063	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
2869	2016-03-11 15:47:33.914284+00	3062	Jismoniy madaniyat	3		9	1
2870	2016-03-11 15:47:33.922648+00	3061	Defektologiya	3		9	1
2871	2016-03-11 15:47:33.930896+00	3060	Maktabgacha ta'lim	3		9	1
2872	2016-03-11 15:47:33.939169+00	3059	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
2873	2016-03-11 15:47:33.947504+00	3058	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
2874	2016-03-11 15:47:33.955905+00	3057	Chaqiriqqacha harbiy ta'lim	3		9	1
2875	2016-03-11 15:47:33.964145+00	3056	Xorijiy til va adabiyoti: nemis tili	3		9	1
2876	2016-03-11 15:47:33.972468+00	3055	Xorijiy til va adabiyoti: ingliz tili	3		9	1
2877	2016-03-11 15:47:33.980809+00	3054	Informatika o`qitish metodikasi	3		9	1
2878	2016-03-11 15:47:33.989433+00	3053	Tarix o`qitish metodikasi	3		9	1
2879	2016-03-11 15:47:33.997711+00	3052	Geografiya o`qitish metodikasi	3		9	1
2880	2016-03-11 15:47:34.005985+00	3051	Biologiya o`qitish metodikasi	3		9	1
2881	2016-03-11 15:47:34.014288+00	3050	Kimyo o`qitish metodikasi	3		9	1
2882	2016-03-11 15:47:34.022593+00	3049	Fizika va astronomiya o`qitish metodikasi	3		9	1
2883	2016-03-11 15:47:34.030839+00	3048	Matematika o`qitish metodikasi	3		9	1
2884	2016-03-11 15:47:34.039165+00	3047	Tasviriy san'at va muhandislik grafikasi	3		9	1
2885	2016-03-11 15:47:34.047485+00	3046	Pedagogika va psixologiya	3		9	1
2886	2016-03-11 15:47:34.055738+00	3045	Musiqa ta'limi	3		9	1
2887	2016-03-11 15:47:34.064067+00	3044	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
2888	2016-03-11 15:47:34.072518+00	3043	Jismoniy madaniyat	3		9	1
2889	2016-03-11 15:47:34.080794+00	3042	Maktabgacha ta'lim	3		9	1
2890	2016-03-11 15:47:34.08904+00	3041	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
2891	2016-03-11 15:47:34.097396+00	3040	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
2892	2016-03-11 15:47:34.10586+00	3039	Xorijiy til va adabiyoti: ingliz tili	3		9	1
2893	2016-03-11 15:47:34.114128+00	3038	O`zbekiston tili va adabiyoti	3		9	1
2894	2016-03-11 15:47:34.122394+00	3037	Informatika o`qitish metodikasi	3		9	1
2895	2016-03-11 15:47:34.130751+00	3036	Tarix o`qitish metodikasi	3		9	1
2896	2016-03-11 15:47:34.139147+00	3035	Geografiya o`qitish metodikasi	3		9	1
2897	2016-03-11 15:47:34.147415+00	3034	Biologiya o`qitish metodikasi	3		9	1
2898	2016-03-11 15:47:34.155753+00	3033	Kimyo o`qitish metodikasi	3		9	1
2899	2016-03-11 15:47:34.164212+00	3032	Fizika va astronomiya o`qitish metodikasi	3		9	1
2900	2016-03-11 15:47:34.172623+00	3031	Matematika o`qitish metodikasi	3		9	1
2901	2016-03-11 15:47:34.180894+00	3030	Tasviriy san'at va muhandislik grafikasi	3		9	1
2902	2016-03-11 15:47:34.1892+00	3029	Pedagogika va psixologiya	3		9	1
2903	2016-03-11 15:47:34.197575+00	3028	Mehnat ta'limi	3		9	1
2904	2016-03-11 15:47:34.205711+00	3027	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
2905	2016-03-11 15:47:34.214072+00	3026	Jismoniy madaniyat	3		9	1
2906	2016-03-11 15:47:34.222412+00	3025	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
2907	2016-03-11 15:47:34.230839+00	3024	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
2908	2016-03-11 15:47:34.239077+00	3023	Xorijiy til va adabiyoti: ingliz tili	3		9	1
2909	2016-03-11 15:47:34.24741+00	3022	O`zbekiston tili va adabiyoti	3		9	1
2910	2016-03-11 15:47:34.255843+00	3021	Tasviriy san'at va muhandislik grafikasi	3		9	1
2911	2016-03-11 15:47:34.264167+00	3020	Informatika o`qitish metodikasi	3		9	1
2912	2016-03-11 15:47:34.272455+00	3019	Tarix o`qitish metodikasi	3		9	1
2913	2016-03-11 15:47:34.280786+00	3018	Geografiya o`qitish metodikasi	3		9	1
2914	2016-03-11 15:47:34.289214+00	3017	Biologiya o`qitish metodikasi	3		9	1
2915	2016-03-11 15:47:34.297456+00	3016	Kimyo o`qitish metodikasi	3		9	1
2916	2016-03-11 15:47:34.305796+00	3015	Fizika va astronomiya o`qitish metodikasi	3		9	1
2917	2016-03-11 15:47:34.314116+00	3014	Matematika o`qitish metodikasi	3		9	1
2918	2016-03-11 15:47:34.322593+00	3013	Pedagogika va psixologiya	3		9	1
2919	2016-03-11 15:47:34.330779+00	3012	Musiqa ta'limi	3		9	1
2920	2016-03-11 15:47:34.339116+00	3011	O`zbekiston tili va adabiyoti	3		9	1
2921	2016-03-11 15:47:34.347599+00	3010	Mehnat ta'limi	3		9	1
2922	2016-03-11 15:47:34.355878+00	3009	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
2923	2016-03-11 15:47:34.364158+00	3008	Jismoniy madaniyat	3		9	1
2924	2016-03-11 15:47:34.372485+00	3007	Defektologiya	3		9	1
2925	2016-03-11 15:47:34.380925+00	3006	Maktabgacha ta'lim	3		9	1
2926	2016-03-11 15:47:34.389159+00	3005	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
2927	2016-03-11 15:47:34.397522+00	3004	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
2928	2016-03-11 15:47:34.405918+00	3003	Xorijiy til va adabiyoti: ingliz tili	3		9	1
2929	2016-03-11 15:47:34.414239+00	3002	Yurisprudensiya (halqaro huquqiy faoliyat)	3		9	1
2930	2016-03-11 15:47:34.422494+00	3001	Jahon iqtisodiyoti va xalqaro iqtisodiy munosabatlar (mintaqalar va faoliyat turlari bo`yicha)	3		9	1
2931	2016-03-11 15:47:34.430839+00	3000	Jahon siyosati	3		9	1
2932	2016-03-11 15:47:34.439224+00	2994	Xorijiy til va adabiyoti: ingliz tili	3		9	1
2933	2016-03-11 15:47:34.447519+00	2993	Filologiya va tillarni o`qitish: koreys tili	3		9	1
2934	2016-03-11 15:47:34.455837+00	2992	Filologiya va tillarni o`qitish: yapon tili	3		9	1
2935	2016-03-11 15:47:34.464157+00	2991	Filologiya va tillarni o`qitish: arab tili	3		9	1
2936	2016-03-11 15:47:34.472586+00	2990	Filologiya va tillarni o`qitish: italyan tili	3		9	1
2937	2016-03-11 15:47:34.480799+00	2989	Filologiya va tillarni o`qitish: xitoy tili	3		9	1
2938	2016-03-11 15:47:34.489155+00	2988	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
2939	2016-03-11 15:47:34.497489+00	2987	Filologiya va tillarni o`qitish: nemis tili	3		9	1
2940	2016-03-11 15:47:34.506009+00	2986	Filologiya va tillarni o`qitish: fransuz tili	3		9	1
2941	2016-03-11 15:47:34.51424+00	2985	Filologiya va tillarni o`qitish: ispan tili	3		9	1
2942	2016-03-11 15:47:34.522554+00	2984	Tarjima nazariyasi va amaliyoti (tillar bo`yicha)	3		9	1
2943	2016-03-11 15:47:34.531092+00	2983	Fizika	3		9	1
2944	2016-03-11 15:47:34.539228+00	2982	Kimyo	3		9	1
2945	2016-03-11 15:47:34.547534+00	2981	Geografiya	3		9	1
2946	2016-03-11 15:47:34.555876+00	2980	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
2947	2016-03-11 15:47:34.564281+00	2979	Moliya	3		9	1
2948	2016-03-11 15:47:34.572533+00	2978	Biologiya (turlari bo`yicha)	3		9	1
2949	2016-03-11 15:47:34.580863+00	2977	Amaliy matematika va informatika	3		9	1
2950	2016-03-11 15:47:34.589263+00	2976	Matematika	3		9	1
2951	2016-03-11 15:47:34.597576+00	2975	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
2952	2016-03-11 15:47:34.605821+00	2974	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
2953	2016-03-11 15:47:34.614189+00	2973	Filologiya va tillarni o`qitish: O`zbekiston tili	3		9	1
2954	2016-03-11 15:47:34.622686+00	2972	Jismoniy madaniyat	3		9	1
2955	2016-03-11 15:47:34.630812+00	2971	Xorijiy til va adabiyoti: ingliz tili	3		9	1
2956	2016-03-11 15:47:34.639156+00	2970	Buxgalteriya hisobi va audit (tarmoqlar bo`yicha)	3		9	1
2957	2016-03-11 15:47:34.647539+00	2969	Yurisprudensiya (faoliyat turlari bo`yicha)	3		9	1
2958	2016-03-11 15:47:34.656012+00	2968	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
2959	2016-03-11 15:47:34.664227+00	2967	Avtomobil yo`llari va aerodromlar	3		9	1
2960	2016-03-11 15:47:34.714501+00	2966	Qurilish materiallari, buyumlari va konstruksiyalarini ishlab chiqarish	3		9	1
2961	2016-03-11 15:47:34.722579+00	2965	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)	3		9	1
2962	2016-03-11 15:47:34.730898+00	2964	Bino va inshootlar qurilishi (turlari bo`yicha)	3		9	1
2963	2016-03-11 15:47:34.73924+00	2963	Arxitektura (turlari bo`yicha)	3		9	1
2964	2016-03-11 15:47:34.747652+00	2962	Neft va neft-gazni qayta ishlash texnologiyasi	3		9	1
2965	2016-03-11 15:47:34.755917+00	2961	Yengil sanoat buyumlari konstruksiyasini ishlash va texnologiyasi (ishlab chiqarish turlari bo`yicha)	3		9	1
2966	2016-03-11 15:47:34.764285+00	2960	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)	3		9	1
2967	2016-03-11 15:47:34.772722+00	2959	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
2968	2016-03-11 15:47:34.781001+00	2958	Geodeziya, kartografiya va kadastr (funksiyalari bo`yicha)	3		9	1
2969	2016-03-11 15:47:34.789276+00	2957	Neft va gaz konlarini ishga tushirish va ulardan foydalanish	3		9	1
2970	2016-03-11 15:47:34.797606+00	2956	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
2971	2016-03-11 15:47:34.847716+00	2955	Filologiya va tillarni o`qitish: O`zbekiston tili	3		9	1
2972	2016-03-11 15:47:34.855954+00	2954	Mehnat ta'limi	3		9	1
2973	2016-03-11 15:47:34.864347+00	2953	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
2974	2016-03-11 15:47:34.872661+00	2952	Jismoniy madaniyat	3		9	1
2975	2016-03-11 15:47:34.880947+00	2951	Maktabgacha ta'lim	3		9	1
2976	2016-03-11 15:47:34.889277+00	2950	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
2977	2016-03-11 15:47:34.897718+00	2949	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
2978	2016-03-11 15:47:34.905946+00	2948	Xorijiy til va adabiyoti: ingliz tili	3		9	1
2979	2016-03-11 15:47:34.914322+00	2947	Musiqa ta'limi	3		9	1
2980	2016-03-11 15:47:34.922684+00	2946	Kasb ta'limi: energetika	3		9	1
2981	2016-03-11 15:47:34.931055+00	2945	Tasviriy san'at va muhandislik grafikasi	3		9	1
2982	2016-03-11 15:47:34.989437+00	2944	Informatika o`qitish metodikasi	3		9	1
2983	2016-03-11 15:47:34.997649+00	2943	Geografiya o`qitish metodikasi	3		9	1
2984	2016-03-11 15:47:35.005984+00	2942	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
2985	2016-03-11 15:47:35.014293+00	2941	Filologiya va tillarni o`qitish: nemis tili	3		9	1
2986	2016-03-11 15:47:35.022899+00	2940	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
2987	2016-03-11 15:47:35.031091+00	2939	Turizm (faoliyat yo`nalishlari bo`yicha)	3		9	1
2988	2016-03-11 15:47:35.039388+00	2938	Biotexnologiya (tarmoqlar bo`yicha)	3		9	1
2989	2016-03-11 15:47:35.047873+00	2937	Mehnat iqtisodiyoti va sotsiologiyasi	3		9	1
2990	2016-03-11 15:47:35.056039+00	2936	Psixologiya (faoliyat turlari bo`yicha)	3		9	1
2991	2016-03-11 15:47:35.0643+00	2935	Tuproqshunoslik	3		9	1
2992	2016-03-11 15:47:35.072656+00	2934	Kimyo	3		9	1
2993	2016-03-11 15:47:35.131176+00	2933	Fizika	3		9	1
2994	2016-03-11 15:47:35.139422+00	2932	Biologiya (turlari bo`yicha)	3		9	1
2995	2016-03-11 15:47:35.147739+00	2931	Amaliy matematika va informatika	3		9	1
2996	2016-03-11 15:47:35.156029+00	2930	Matematika	3		9	1
2997	2016-03-11 15:47:35.164331+00	2929	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
2998	2016-03-11 15:47:35.172778+00	2928	Filologiya va tillarni o`qitish: fransuz tili	3		9	1
2999	2016-03-11 15:47:35.181022+00	2924	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)	3		9	1
3000	2016-03-11 15:47:35.189349+00	2923	Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)	3		9	1
3001	2016-03-11 15:47:35.197685+00	2922	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
3002	2016-03-11 15:47:35.206116+00	2921	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)	3		9	1
3003	2016-03-11 15:47:35.21436+00	2920	Buxgalteriya hisobi va audit (tarmoqlar bo`yicha)	3		9	1
3004	2016-03-11 15:47:35.27281+00	2919	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
3005	2016-03-11 15:47:35.280993+00	2918	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
3006	2016-03-11 15:47:35.28935+00	2917	Kasb ta'limi: elektr energetikasi	3		9	1
3007	2016-03-11 15:47:35.297792+00	2916	Kasb ta'limi: iqtisodiyot	3		9	1
3008	2016-03-11 15:47:35.306041+00	2915	Geodeziya, kartografiya va kadastr (funksiyalari bo`yicha)	3		9	1
3009	2016-03-11 15:47:35.314323+00	2914	Mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
3010	2016-03-11 15:47:35.322839+00	2913	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
3011	2016-03-11 15:47:35.331122+00	2912	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
3012	2016-03-11 15:47:35.339379+00	2911	Qishloq hududlarini arxitektura-loyihaviy tashkil etish	3		9	1
3013	2016-03-11 15:47:35.347708+00	2910	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)	3		9	1
3014	2016-03-11 15:47:35.356234+00	2909	Shahar qurilishi va xo`jaligi	3		9	1
3015	2016-03-11 15:47:35.364383+00	2908	Arxitektura (turlari bo`yicha)	3		9	1
3016	2016-03-11 15:47:35.37273+00	2907	Oziq-ovqat texnologiyasi (mahsulotlar turlari bo`yicha)	3		9	1
3017	2016-03-11 15:47:35.381055+00	2906	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
3018	2016-03-11 15:47:35.389467+00	2905	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
3019	2016-03-11 15:47:35.397735+00	2904	Jismoniy madaniyat	3		9	1
3020	2016-03-11 15:47:35.406039+00	2903	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
3021	2016-03-11 15:47:35.414399+00	2902	Chaqiriqqacha harbiy ta'lim	3		9	1
3022	2016-03-11 15:47:35.422816+00	2901	Xorijiy til va adabiyoti: ingliz tili	3		9	1
3023	2016-03-11 15:47:35.431072+00	2900	Kasb ta'limi: iqtisodiyot	3		9	1
3024	2016-03-11 15:47:35.439396+00	2899	Tasviriy san'at va muhandislik grafikasi	3		9	1
3025	2016-03-11 15:47:35.447887+00	2898	Informatika o`qitish metodikasi	3		9	1
3026	2016-03-11 15:47:35.456148+00	2897	Biologiya o`qitish metodikasi	3		9	1
3027	2016-03-11 15:47:35.464439+00	2896	Kimyo o`qitish metodikasi	3		9	1
3028	2016-03-11 15:47:35.472742+00	2895	Fizika va astronomiya o`qitish metodikasi	3		9	1
3029	2016-03-11 15:47:35.481209+00	2894	Matematika o`qitish metodikasi	3		9	1
3030	2016-03-11 15:47:35.539652+00	2893	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
3031	2016-03-11 15:47:35.547755+00	2892	Mehnat ta'limi	3		9	1
3032	2016-03-11 15:47:35.55611+00	2891	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
3033	2016-03-11 15:47:35.564436+00	2890	Ijtimoiy ish (faoliyatning turli sohalari bo`yicha)	3		9	1
3034	2016-03-11 15:47:35.572871+00	2889	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
3035	2016-03-11 15:47:35.581095+00	2888	Psixologiya (faoliyat turlari bo`yicha)	3		9	1
3036	2016-03-11 15:47:35.589525+00	2887	Tuproqshunoslik	3		9	1
3037	2016-03-11 15:47:35.597736+00	2886	Geografiya	3		9	1
3038	2016-03-11 15:47:35.606227+00	2885	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
3039	2016-03-11 15:47:35.614437+00	2884	Filologiya va tillarni o`qitish: fransuz tili	3		9	1
3040	2016-03-11 15:47:35.622785+00	2883	Filologiya va tillarni o`qitish: nemis tili	3		9	1
3041	2016-03-11 15:47:35.631321+00	2882	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
3042	2016-03-11 15:47:35.639481+00	2881	Filologiya va tillarni o`qitish: O`zbekiston tili	3		9	1
3043	2016-03-11 15:47:35.697902+00	2880	Jismoniy madaniyat	3		9	1
3044	2016-03-11 15:47:35.706143+00	2879	Mehnat ta'limi	3		9	1
3045	2016-03-11 15:47:35.714478+00	2878	Filologiya va tillarni o`qitish: O`zbekiston tili	3		9	1
3046	2016-03-11 15:47:35.722901+00	2877	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
3047	2016-03-11 15:47:35.731134+00	2876	Filologiya va tillarni o`qitish: nemis tili	3		9	1
3048	2016-03-11 15:47:35.739468+00	2875	Filologiya va tillarni o`qitish: fransuz tili	3		9	1
3049	2016-03-11 15:47:35.747799+00	2874	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
3050	2016-03-11 15:47:35.756194+00	2873	Matematika	3		9	1
3051	2016-03-11 15:47:35.764476+00	2872	Maktabgacha ta'lim	3		9	1
3052	2016-03-11 15:47:35.772801+00	2871	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
3053	2016-03-11 15:47:35.781136+00	2870	Tasviriy san'at va muhandislik grafikasi	3		9	1
3054	2016-03-11 15:47:35.789541+00	2869	Pedagogika va psixologiya	3		9	1
3055	2016-03-11 15:47:35.797883+00	2868	Kasb ta'limi: agronomiya	3		9	1
3056	2016-03-11 15:47:35.806237+00	2867	Kasb ta'limi: buxgalteriya hisobi va audit	3		9	1
3057	2016-03-11 15:47:35.814588+00	2866	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
3058	2016-03-11 15:47:35.822879+00	2865	Musiqa ta'limi	3		9	1
3059	2016-03-11 15:47:35.831181+00	2864	Xorijiy til va adabiyoti: ingliz tili	3		9	1
3060	2016-03-11 15:47:35.839514+00	2863	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
3061	2016-03-11 15:47:35.847924+00	2862	Amaliy matematika va informatika	3		9	1
3062	2016-03-11 15:47:35.856215+00	2861	Biologiya (turlari bo`yicha)	3		9	1
3063	2016-03-11 15:47:35.864513+00	2860	Fizika	3		9	1
3064	2016-03-11 15:47:35.872959+00	2859	Oziq-ovqat texnologiyasi (mahsulotlar turlari bo`yicha)	3		9	1
3065	2016-03-11 15:47:35.881247+00	2858	Arxitektura (turlari bo`yicha)	3		9	1
3066	2016-03-11 15:47:35.889503+00	2857	Shahar qurilishi va xo`jaligi	3		9	1
3067	2016-03-11 15:47:35.897824+00	2856	Qishloq hududlarini arxitektura-loyihaviy tashkil etish	3		9	1
3068	2016-03-11 15:47:35.906296+00	2855	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
3069	2016-03-11 15:47:35.914503+00	2854	Mehmonxona xo`jaligini tashkil etish va boshqarish	3		9	1
3070	2016-03-11 15:47:35.922845+00	2853	Turizm (faoliyat yo`nalishlari bo`yicha)	3		9	1
3071	2016-03-11 15:47:35.931219+00	2852	Sport faoliyati (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
3072	2016-03-11 15:47:35.939674+00	2851	Biotexnologiya (tarmoqlar bo`yicha)	3		9	1
3073	2016-03-11 15:47:35.9479+00	2850	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
3074	2016-03-11 15:47:35.956237+00	2849	Kimyo	3		9	1
3075	2016-03-11 15:47:35.964568+00	2848	Geografiya	3		9	1
3076	2016-03-11 15:47:35.972955+00	2847	Tuproqshunoslik	3		9	1
3077	2016-03-11 15:47:35.981211+00	2846	Psixologiya (faoliyat turlari bo`yicha)	3		9	1
3078	2016-03-11 15:47:35.98956+00	2845	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
3079	2016-03-11 15:47:35.998053+00	2844	Avtomobilsozlik va traktorsozlik	3		9	1
3080	2016-03-11 15:47:36.006233+00	2843	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
3081	2016-03-11 15:47:36.014554+00	2842	Geodeziya, kartografiya va kadastr (funksiyalari bo`yicha)	3		9	1
3082	2016-03-11 15:47:36.022866+00	2841	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
3083	2016-03-11 15:47:36.031295+00	2840	Maktabgacha ta'lim	3		9	1
3084	2016-03-11 15:47:36.039564+00	2839	Jismoniy madaniyat	3		9	1
3085	2016-03-11 15:47:36.047888+00	2838	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
3602	2016-03-11 15:48:59.651532+00	4273	Sport faoliyati: og`ir atletika	3		9	1
3086	2016-03-11 15:47:36.056309+00	2837	Filologiya va tillarni o`qitish: O`zbekiston tili	3		9	1
3087	2016-03-11 15:47:36.064678+00	2836	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
3088	2016-03-11 15:47:36.072925+00	2835	Xorijiy til va adabiyoti: nemis tili	3		9	1
3089	2016-03-11 15:47:36.081264+00	2834	Xorijiy til va adabiyoti: ingliz tili	3		9	1
3090	2016-03-11 15:47:36.089693+00	2833	Musiqa ta'limi	3		9	1
3091	2016-03-11 15:47:36.0979+00	2832	Kasb ta'limi: qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
3092	2016-03-11 15:47:36.10627+00	2831	Kasb ta'limi: kimyoviy texnologiya	3		9	1
3093	2016-03-11 15:47:36.114624+00	2830	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
3094	2016-03-11 15:47:36.122976+00	2829	Tasviriy san'at va muhandislik grafikasi	3		9	1
3095	2016-03-11 15:47:36.131272+00	2828	Informatika o`qitish metodikasi	3		9	1
3096	2016-03-11 15:47:36.1396+00	2827	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
3097	2016-03-11 15:47:36.147935+00	2826	Matematika	3		9	1
3098	2016-03-11 15:47:36.156418+00	2825	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
3099	2016-03-11 15:47:36.164654+00	2824	Avtomobil yo`llari va aerodromlar	3		9	1
3100	2016-03-11 15:47:36.172958+00	2823	Transport inshootlarining ekspluatatsiyasi (transport inshootlari turlari bo`yicha)	3		9	1
3101	2016-03-11 15:47:36.181379+00	2822	Yengil sanoat buyumlari konstruksiyasini ishlash va texnologiyasi (ishlab chiqarish turlari bo`yicha)	3		9	1
3102	2016-03-11 15:47:36.189632+00	2821	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
3103	2016-03-11 15:47:36.197968+00	2820	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
3104	2016-03-11 15:47:36.206421+00	2819	Kadrlar menejmenti	3		9	1
3105	2016-03-11 15:47:36.214695+00	2818	Moliya	3		9	1
3106	2016-03-11 15:47:36.222957+00	2817	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
3107	2016-03-11 15:47:36.231305+00	2816	Geografiya	3		9	1
3108	2016-03-11 15:47:36.239843+00	2815	Kimyo	3		9	1
3109	2016-03-11 15:47:36.247963+00	2814	Fizika	3		9	1
3110	2016-03-11 15:47:36.256311+00	2813	Biologiya (turlari bo`yicha)	3		9	1
3111	2016-03-11 15:47:36.264653+00	2812	Amaliy matematika va informatika	3		9	1
3112	2016-03-11 15:47:36.273096+00	2807	Kasb ta'limi: kimyoviy texnologiya	3		9	1
3113	2016-03-11 15:47:36.281284+00	2806	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
3114	2016-03-11 15:47:36.28963+00	2805	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
3115	2016-03-11 15:47:36.297964+00	2804	Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)	3		9	1
3116	2016-03-11 15:47:36.306396+00	2803	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)	3		9	1
3117	2016-03-11 15:47:36.314639+00	2802	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
3118	2016-03-11 15:47:36.32301+00	2801	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
3119	2016-03-11 15:47:36.331439+00	2800	Hayotiy faoliyat xavfsizligi	3		9	1
3120	2016-03-11 15:47:36.339671+00	2799	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
3121	2016-03-11 15:47:36.348009+00	2798	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)	3		9	1
3122	2016-03-11 15:47:36.356349+00	2797	Neft va neft-gazni qayta ishlash texnologiyasi	3		9	1
3123	2016-03-11 15:47:36.364755+00	2796	Oziq-ovqat texnologiyasi (mahsulotlar turlari bo`yicha)	3		9	1
3124	2016-03-11 15:47:36.372981+00	2795	Biotexnologiya (tarmoqlar bo`yicha)	3		9	1
3125	2016-03-11 15:47:36.381365+00	2794	Kasb ta'limi: bank ishi	3		9	1
3126	2016-03-11 15:47:36.389817+00	2793	Kasb ta'limi: buxgalteriya hisobi va audit	3		9	1
3127	2016-03-11 15:47:36.398153+00	2792	Kasb ta'limi: moliya	3		9	1
3128	2016-03-11 15:47:36.40645+00	2791	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
3129	2016-03-11 15:47:36.41477+00	2790	Moliya	3		9	1
3130	2016-03-11 15:47:36.423233+00	2789	Bank ishi	3		9	1
3131	2016-03-11 15:47:36.43138+00	2788	Soliqlar va soliqqa tortish	3		9	1
3132	2016-03-11 15:47:36.439741+00	2787	Baholash ishi	3		9	1
3133	2016-03-11 15:47:36.448047+00	2786	Pensiya ishi	3		9	1
3134	2016-03-11 15:47:36.456445+00	2785	Sug`urta ishi	3		9	1
3135	2016-03-11 15:47:36.464721+00	2784	Buxgalteriya hisobi va audit (tarmoqlar bo`yicha)	3		9	1
3136	2016-03-11 15:47:36.473043+00	2783	Kasb ta'limi: avtomobil yo`llari va aerodromlar	3		9	1
3137	2016-03-11 15:47:36.48138+00	2782	Kasb ta'limi: yerusti transport tizimlari va ularning ekspluatatsiyasi	3		9	1
3138	2016-03-11 15:47:36.48978+00	2781	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
3139	2016-03-11 15:47:36.498087+00	2780	Marketing (tarmoqlar va sohalar bo`yicha)	3		9	1
3140	2016-03-11 15:47:36.506502+00	2779	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
3141	2016-03-11 15:47:36.514963+00	2778	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
3142	2016-03-11 15:47:36.523144+00	2777	Transport inshootlarining ekspluatatsiyasi (transport inshootlari turlari bo`yicha)	3		9	1
3143	2016-03-11 15:47:36.531427+00	2776	Avtomobil yo`llari va aerodromlar	3		9	1
3144	2016-03-11 15:47:36.53974+00	2775	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
3145	2016-03-11 15:47:36.548145+00	2774	Tashishni tashkil etish va transport logistikasi (transport turlari bo`yicha)	3		9	1
3146	2016-03-11 15:47:36.556403+00	2773	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
3147	2016-03-11 15:47:36.564727+00	2772	Buxgalteriya hisobi va audit (tarmoqlar bo`yicha)	3		9	1
3148	2016-03-11 15:47:36.573223+00	2771	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
3149	2016-03-11 15:47:36.581452+00	2770	Dizayn (turlari bo`yicha)	3		9	1
3150	2016-03-11 15:47:36.589752+00	2769	Kasb ta'limi: tabiiy tolalarni dastlabki ishlash texnologiyasi	3		9	1
3151	2016-03-11 15:47:36.598092+00	2768	Kasb ta'limi: yengil sanoat buyumlari konstruksiyasini ishlash va texnologiyasi	3		9	1
3152	2016-03-11 15:47:36.623168+00	2767	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)	3		9	1
3153	2016-03-11 15:47:36.631381+00	2766	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
3154	2016-03-11 15:47:36.639855+00	2765	Xizmat ko`rsatish texnikasi va texnologiyasi (xizmat ko`rsatish tarmoqlari bo`yicha)	3		9	1
3155	2016-03-11 15:47:36.648136+00	2764	Tabiiy tolalarni dastlabki ishlash texnologiyasi (xom ashyo turlari bo`yicha)	3		9	1
3156	2016-03-11 15:47:36.656471+00	2763	Yengil sanoat buyumlari konstruksiyasini ishlash va texnologiyasi (ishlab chiqarish turlari bo`yicha)	3		9	1
3157	2016-03-11 15:47:36.664798+00	2762	Matbaa va qadoqlash jarayonlari texnologiyasi	3		9	1
3158	2016-03-11 15:47:36.723363+00	2761	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
3159	2016-03-11 15:47:36.731527+00	2760	Rangtasvir: teatr-bezak rangtasviri	3		9	1
3160	2016-03-11 15:47:36.739813+00	2759	Rangtasvir: mahobatli rangtasvir	3		9	1
3161	2016-03-11 15:47:36.748133+00	2758	Rangtasvir: dastgohli rangtasvir	3		9	1
3162	2016-03-11 15:47:36.756556+00	2757	San'atshunoslik: muzeyshunoslik; konservatsiya va badiiy yodgorliklarni saqlash	3		9	1
3163	2016-03-11 15:47:36.764817+00	2756	San'atshunoslik: tasviriy va amaliy san'at	3		9	1
3164	2016-03-11 15:47:36.773132+00	2755	Kasb ta'limi: dizayn (libos dizayni va gazlamalarning badiiy yechimi)	3		9	1
3165	2016-03-11 15:47:36.781419+00	2754	Kasb ta'limi: dizayn (interyerni loyihalash)	3		9	1
3166	2016-03-11 15:47:36.789866+00	2753	Kasb ta'limi: rangtasvir	3		9	1
3167	2016-03-11 15:47:36.798218+00	2752	Rangtasvir: filmning tasviriy yechimi	3		9	1
3168	2016-03-11 15:47:36.80653+00	2751	Dizayn: kompyuter grafikasi va badiiy foto	3		9	1
3169	2016-03-11 15:47:36.864905+00	2750	Dizayn: reklama va amaliy grafika	3		9	1
3170	2016-03-11 15:47:36.873179+00	2749	Amaliy sanat: amaliy san'at asarlarini ta'mirlash	3		9	1
3171	2016-03-11 15:47:36.881583+00	2748	Amaliy sanat: memoriy yodgorliklar bezagini tamirlash	3		9	1
3172	2016-03-11 15:47:36.889839+00	2747	Amaliy sanat: badiiy kulolchilik	3		9	1
3173	2016-03-11 15:47:36.898168+00	2746	Haykaltaroshlik (turlari bo`yicha)	3		9	1
3174	2016-03-11 15:47:36.906637+00	2745	Grafika: xattotlik va miniatura	3		9	1
3175	2016-03-11 15:47:36.91489+00	2744	Grafika: dastgoh va kitob grafikasi	3		9	1
3176	2016-03-11 15:47:36.92314+00	2743	Dizayn: libos dizayni va gazlamalarning badiiy yechimi	3		9	1
3177	2016-03-11 15:47:36.93147+00	2742	Dizayn: interyerni loyihalash	3		9	1
3178	2016-03-11 15:47:36.940037+00	2741	Bino va inshootlar qurilishi (turlari bo`yicha)	3		9	1
3179	2016-03-11 15:47:36.948153+00	2740	Arxitektura (turlari bo`yicha)	3		9	1
3180	2016-03-11 15:47:37.006605+00	2739	Geodeziya, kartografiya va kadastr (funksiyalari bo`yicha)	3		9	1
3181	2016-03-11 15:47:37.014778+00	2738	Dizayn (turlari bo`yicha)	3		9	1
3182	2016-03-11 15:47:37.023081+00	2737	Kasb ta'limi: xizmatlar sohasi	3		9	1
3183	2016-03-11 15:47:37.03168+00	2736	Kasb ta'limi: bino va inshootlar qurilishi	3		9	1
3184	2016-03-11 15:47:37.039804+00	2735	Shahar qurilishi va xo`jaligi	3		9	1
3185	2016-03-11 15:47:37.048129+00	2734	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)	3		9	1
3186	2016-03-11 15:47:37.056511+00	2733	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
3187	2016-03-11 15:47:37.064952+00	2732	Qiymat injiniringi	3		9	1
3188	2016-03-11 15:47:37.073204+00	2731	Qishloq hududlarini arxitektura-loyihaviy tashkil etish	3		9	1
3189	2016-03-11 15:47:37.081519+00	2730	Ko`chmas mulk ekspertizasi va uni boshqarish	3		9	1
3190	2016-03-11 15:47:37.08991+00	2729	Gidrotexnika qurilishi (turlari bo`yicha)	3		9	1
3191	2016-03-11 15:47:37.148278+00	2728	Qurilish materiallari, buyumlari va konstruksiyalarini ishlab chiqarish	3		9	1
3192	2016-03-11 15:47:37.156585+00	2727	Filologiya va tillarni o`qitish: arab, fors, turk, uyg`ur, dariy, pushtu tullari	3		9	1
3193	2016-03-11 15:47:37.164824+00	2726	Filologiya va tillarni o`qitish: yapon, xitoy, koreys, hind, urdu, indonez, malay, vyetnam tillari	3		9	1
3194	2016-03-11 15:47:37.173217+00	2725	Filologiya va tillarni o`qitish: sharq mumtoz tillari	3		9	1
3195	2016-03-11 15:47:37.18152+00	2724	Tarjima nazariyasi va amaliyoti (tillar bo`yicha)	3		9	1
3196	2016-03-11 15:47:37.190051+00	2723	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
3197	2016-03-11 15:47:37.1983+00	2722	Falsafa	3		9	1
3198	2016-03-11 15:47:37.206634+00	2721	Jahon siyosati	3		9	1
3199	2016-03-11 15:47:37.215074+00	2720	Xorijiy mamlakatlar iqtisodiyoti va mamlakatshunoslik: MDH mamlakatlari	3		9	1
3200	2016-03-11 15:47:37.223188+00	2719	Xorijiy mamlakatlar iqtisodiyoti va mamlakatshunoslik: Yaqin va O`rta Sharq mamlakatlari	3		9	1
3201	2016-03-11 15:47:37.231584+00	2718	Xorijiy mamlakatlar iqtisodiyoti va mamlakatshunoslik: Uzoq Sharq mamlakatlari	3		9	1
3202	2016-03-11 15:47:37.281805+00	2717	Xorijiy mamlakatlar iqtisodiyoti va mamlakatshunoslik: Xitoy va Janubiy-Sharqiy Osiyo mamlakatlari	3		9	1
3203	2016-03-11 15:47:37.289906+00	2716	Xorijiy til va adabiyoti: ingliz tili	3		9	1
3204	2016-03-11 15:47:37.298229+00	2715	Filologiya va tillarni o`qitish: yapon tili	3		9	1
3205	2016-03-11 15:47:37.306647+00	2714	Filologiya va tillarni o`qitish: xitoy tili	3		9	1
3206	2016-03-11 15:47:37.31491+00	2713	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
3207	2016-03-11 15:47:37.323211+00	2712	Filologiya va tillarni o`qitish: nemis tili	3		9	1
3208	2016-03-11 15:47:37.331529+00	2711	Filologiya va tillarni o`qitish: fransuz tili	3		9	1
3209	2016-03-11 15:47:37.339996+00	2710	Filologiya va tillarni o`qitish: ispan tili	3		9	1
3210	2016-03-11 15:47:37.348244+00	2709	Tarjima nazariyasi va amaliyoti (tillar bo`yicha)	3		9	1
3211	2016-03-11 15:47:37.356578+00	2708	Jurnalistika (faoliyat turlari bo`yicha)	3		9	1
3212	2016-03-11 15:47:37.364909+00	2707	Xoreografiya (turlari bo`yicha)	3		9	1
3213	2016-03-11 15:47:37.423333+00	2706	San'atshunoslik: xoreografiya	3		9	1
3214	2016-03-11 15:47:37.431629+00	2705	Bank ishi	3		9	1
3215	2016-03-11 15:47:37.439928+00	2704	Marketing (tarmoqlar va sohalar bo`yicha)	3		9	1
3216	2016-03-11 15:47:37.448245+00	2703	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
3217	2016-03-11 15:47:37.456696+00	2702	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
3218	2016-03-11 15:47:37.464983+00	2701	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
3219	2016-03-11 15:47:37.473281+00	2700	Kasb ta'limi: iqtisodiyot	3		9	1
3220	2016-03-11 15:47:37.481613+00	2699	Soliqlar va soliqqa tortish	3		9	1
3221	2016-03-11 15:47:37.490046+00	2698	Buxgalteriya hisobi va audit (tarmoqlar bo`yicha)	3		9	1
3222	2016-03-11 15:47:37.498278+00	2697	Mehmonxona xo`jaligini tashkil etish va boshqarish	3		9	1
3223	2016-03-11 15:47:37.506614+00	2696	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
3224	2016-03-11 15:47:37.56508+00	2695	Informatika va axborot texnologiyalari (tarmoqlar va sohalar bo`yicha)	3		9	1
3225	2016-03-11 15:47:37.57325+00	2694	Kadrlar menejmenti	3		9	1
3226	2016-03-11 15:47:37.581694+00	2693	Mehnat iqtisodiyoti va sotsiologiyasi	3		9	1
3227	2016-03-11 15:47:37.589912+00	2692	Statistika (tarmoqlar va sohalar bo`yicha)	3		9	1
3228	2016-03-11 15:47:37.598242+00	2691	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)	3		9	1
3229	2016-03-11 15:47:37.606602+00	2690	Metallurgiya	3		9	1
3230	2016-03-11 15:47:37.615058+00	2689	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
3231	2016-03-11 15:47:37.623257+00	2688	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)	3		9	1
3232	2016-03-11 15:47:37.63165+00	2687	Konchilik ishi	3		9	1
3233	2016-03-11 15:47:37.640132+00	2686	Foydali qazilma konlari geologiyasi, qidiruv va razvedkasi (kon turlari bo`yicha)	3		9	1
3234	2016-03-11 15:47:37.648366+00	2685	Mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
3235	2016-03-11 15:47:37.706828+00	2684	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
3236	2016-03-11 15:47:37.715014+00	2683	Noyob va radioaktiv metallar rudalarini qazib olish, qayta ishlash texnikasi va texnologiyasi	3		9	1
3237	2016-03-11 15:47:37.723346+00	2682	Soliqlar va soliqqa tortish	3		9	1
3238	2016-03-11 15:47:37.731685+00	2681	Metallurgiya	3		9	1
3239	2016-03-11 15:47:37.740133+00	2680	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
3240	2016-03-11 15:47:37.748349+00	2679	Konchilik ishi	3		9	1
3241	2016-03-11 15:47:37.756684+00	2678	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)	3		9	1
3242	2016-03-11 15:47:37.76516+00	2677	Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)	3		9	1
3243	2016-03-11 15:47:37.773284+00	2676	Elektronika va asbobsozlik (tarmoqlar bo`yicha)	3		9	1
3244	2016-03-11 15:47:37.781614+00	2675	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
3245	2016-03-11 15:47:37.790176+00	2674	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
3246	2016-03-11 15:47:37.848442+00	2673	Avtomobilsozlik va traktorsozlik	3		9	1
3247	2016-03-11 15:47:37.856803+00	2672	Aviasozlik va havo kemalaridan texnik foydalanish	3		9	1
3248	2016-03-11 15:47:37.865072+00	2671	Metallurgiya	3		9	1
3249	2016-03-11 15:47:37.873353+00	2670	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)	3		9	1
3250	2016-03-11 15:47:37.881681+00	2669	Energetika (tarmoqlar bo`yicha)	3		9	1
3251	2016-03-11 15:47:37.890117+00	2668	Marketing (tarmoqlar va sohalar bo`yicha)	3		9	1
3252	2016-03-11 15:47:37.898433+00	2667	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
3253	2016-03-11 15:47:37.906685+00	2666	Dizayn (turlari bo`yicha)	3		9	1
3254	2016-03-11 15:47:37.915245+00	2665	Kasb ta'limi: texnologik mashinalar va jihozlar	3		9	1
3255	2016-03-11 15:47:37.923375+00	2664	Geodeziya, kartografiya va kadastr (funksiyalari bo`yicha)	3		9	1
3256	2016-03-11 15:47:37.931735+00	2663	Konchilik ishi	3		9	1
3257	2016-03-11 15:47:37.990163+00	2662	Foydali qazilma konlari geologiyasi, qidiruv va razvedkasi (kon turlari bo`yicha)	3		9	1
3258	2016-03-11 15:47:37.99841+00	2661	Hayotiy faoliyat xavfsizligi	3		9	1
3259	2016-03-11 15:47:38.00681+00	2660	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
3260	2016-03-11 15:47:38.015051+00	2659	Havodagi harakatni boshqarish	3		9	1
3261	2016-03-11 15:47:38.023403+00	2658	Xizmat ko`rsatish texnikasi va texnologiyasi (xizmat ko`rsatish tarmoqlari bo`yicha)	3		9	1
3262	2016-03-11 15:47:38.031767+00	2657	Radioelektron qurilmalar va tizimlar (tarmoqlar bo`yicha)	3		9	1
3263	2016-03-11 15:47:38.040113+00	2656	Informatika va axborot texnologiyalari (tarmoqlar va sohalar bo`yicha)	3		9	1
3264	2016-03-11 15:47:38.048372+00	2655	Neft va neft-gazni qayta ishlash texnologiyasi	3		9	1
3265	2016-03-11 15:47:38.056728+00	2654	Biotexnologiya (tarmoqlar bo`yicha)	3		9	1
3266	2016-03-11 15:47:38.06506+00	2653	Gidrogeologiya va muhandislik geologiyasi	3		9	1
3267	2016-03-11 15:47:38.073513+00	2652	Neft va gaz konlarini ishga tushirish va ulardan foydalanish	3		9	1
3268	2016-03-11 15:47:38.13183+00	2651	Neft-gazni qayta ishlash sanoati obyektlarini loyihalashtirish, qurish va ulardan foydalanish	3		9	1
3269	2016-03-11 15:47:38.140099+00	2650	Materialshunoslik va yangi materiallar texnologiyasi	3		9	1
3270	2016-03-11 15:47:38.148427+00	2649	Mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
3271	2016-03-11 15:47:38.157048+00	2648	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
3272	2016-03-11 15:47:38.165168+00	2647	Matematika	3		9	1
3273	2016-03-11 15:47:38.173638+00	2646	Amaliy matematika va informatika	3		9	1
3274	2016-03-11 15:47:38.181832+00	2645	Biologiya (turlari bo`yicha)	3		9	1
3275	2016-03-11 15:47:38.190273+00	2644	Fizika	3		9	1
3276	2016-03-11 15:47:38.198392+00	2643	Mexanika	3		9	1
3277	2016-03-11 15:47:38.206774+00	2642	Astronomiya	3		9	1
3278	2016-03-11 15:47:38.215071+00	2641	Kimyo	3		9	1
3279	2016-03-11 15:47:38.273613+00	2640	Falsafa	3		9	1
3280	2016-03-11 15:47:38.292912+00	2639	Arxeologiya	3		9	1
3281	2016-03-11 15:47:38.315196+00	2638	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
3282	2016-03-11 15:47:38.323419+00	2637	Filologiya va tillarni o`qitish: fransuz tili	3		9	1
3283	2016-03-11 15:47:38.331731+00	2636	Filologiya va tillarni o`qitish: nemis tili	3		9	1
3284	2016-03-11 15:47:38.340292+00	2635	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
3285	2016-03-11 15:47:38.348476+00	2634	Filologiya va tillarni o`qitish: O`zbekiston tili	3		9	1
3286	2016-03-11 15:47:38.356795+00	2633	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
3287	2016-03-11 15:47:38.365118+00	2632	Xorijiy til va adabiyoti: ingliz tili	3		9	1
3288	2016-03-11 15:47:38.423616+00	2631	Geografiya	3		9	1
3289	2016-03-11 15:47:38.46535+00	2630	Gidrometeorologiya	3		9	1
3290	2016-03-11 15:47:38.521306+00	2629	Ijtimoiy ish (pensiya ta'minoti)	3		9	1
3291	2016-03-11 15:47:38.615383+00	2628	Ijtimoiy ish (faoliyatning turli sohalari bo`yicha)	3		9	1
3292	2016-03-11 15:47:38.623548+00	2627	Axborot xavfsizligi (sohalar bo`yicha)	3		9	1
3293	2016-03-11 15:47:38.631795+00	2626	Informatika va axborot texnologiyalari (tarmoqlar va sohalar bo`yicha)	3		9	1
3294	2016-03-11 15:47:38.640151+00	2625	Axborot tizimlarining matematik va dasturiy ta'minoti	3		9	1
3295	2016-03-11 15:47:38.648522+00	2624	Geodeziya, kartografiya va kadastr (funksiyalari bo`yicha)	3		9	1
3296	2016-03-11 15:47:38.656799+00	2623	Kadrlar menejmenti	3		9	1
3297	2016-03-11 15:47:38.665125+00	2622	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
3298	2016-03-11 15:47:38.673503+00	2621	Arxivshunoslik	3		9	1
3299	2016-03-11 15:47:38.68186+00	2620	Geologiya	3		9	1
3300	2016-03-11 15:47:38.690183+00	2619	Geofizika	3		9	1
3301	2016-03-11 15:47:38.6985+00	2618	Tuproqshunoslik	3		9	1
3302	2016-03-11 15:47:38.757011+00	2617	Gidrologiya (tarmoqlar bo`yicha)	3		9	1
3303	2016-03-11 15:47:38.765221+00	2616	Sotsiologiya	3		9	1
3304	2016-03-11 15:47:38.773579+00	2615	Psixologiya (faoliyat turlari bo`yicha)	3		9	1
3305	2016-03-11 15:47:38.78186+00	2614	Jurnalistika (faoliyat turlari bo`yicha)	3		9	1
3306	2016-03-11 15:47:38.790177+00	2613	Geodeziya, kartografiya va kadastr (funksiyalari bo`yicha)	3		9	1
3307	2016-03-11 15:47:38.798474+00	2612	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
3308	2016-03-11 15:47:38.806912+00	2611	Dizayn (turlari bo`yicha)	3		9	1
3309	2016-03-11 15:47:38.815167+00	2610	Kasb ta'limi: tasviriy san'at va muhandislik grafikasi	3		9	1
3310	2016-03-11 15:47:38.823493+00	2609	Kasb ta'limi: muhandislik kommunikatsiyalari qurilishi va montaji	3		9	1
3311	2016-03-11 15:47:38.831937+00	2608	Kasb ta'limi: bino va inshootlar qurilishi	3		9	1
3312	2016-03-11 15:47:38.840159+00	2607	Arxitektura (turlari bo`yicha)	3		9	1
3313	2016-03-11 15:47:38.898652+00	2606	Bino va inshootlar qurilishi (turlari bo`yicha)	3		9	1
3314	2016-03-11 15:47:38.90684+00	2605	Shahar qurilishi va xo`jaligi	3		9	1
3315	2016-03-11 15:47:38.915222+00	2604	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
3316	2016-03-11 15:47:38.923673+00	2603	Qishloq hududlarini arxitektura-loyihaviy tashkil etish	3		9	1
3317	2016-03-11 15:47:38.931894+00	2602	Ko`chmas mulk ekspertizasi va uni boshqarish	3		9	1
3318	2016-03-11 15:47:38.94023+00	2601	Avtomobil yo`llari va aerodromlar	3		9	1
3319	2016-03-11 15:47:38.94856+00	2600	Qurilish materiallari, buyumlari va konstruksiyalarini ishlab chiqarish	3		9	1
3320	2016-03-11 15:47:38.957029+00	2599	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)	3		9	1
3321	2016-03-11 15:47:38.965246+00	2598	Arxeologiya	3		9	1
3322	2016-03-11 15:47:38.973576+00	2597	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
3323	2016-03-11 15:47:38.98201+00	2596	Filologiya va tillarni o`qitish: O`zbekiston tili	3		9	1
3324	2016-03-11 15:47:39.040366+00	2595	Mehnat ta'limi	3		9	1
3325	2016-03-11 15:47:39.048627+00	2594	Jismoniy madaniyat	3		9	1
3326	2016-03-11 15:47:39.056873+00	2593	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
3327	2016-03-11 15:47:39.0652+00	2592	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
3328	2016-03-11 15:47:39.073625+00	2591	Musiqa ta'limi	3		9	1
3329	2016-03-11 15:47:39.08187+00	2590	Kasb ta'limi: elektronika va asbobsozlik	3		9	1
3330	2016-03-11 15:47:39.0902+00	2589	Kasb ta'limi: amaliy san'at	3		9	1
3331	2016-03-11 15:47:39.098521+00	2588	Kasb ta'limi: iqtisodiyot	3		9	1
3332	2016-03-11 15:47:39.106973+00	2587	Tasviriy san'at va muhandislik grafikasi	3		9	1
3333	2016-03-11 15:47:39.115244+00	2586	Informatika o`qitish metodikasi	3		9	1
3334	2016-03-11 15:47:39.12357+00	2585	Matematika	3		9	1
3335	2016-03-11 15:47:39.173698+00	2584	Amaliy matematika va informatika	3		9	1
3336	2016-03-11 15:47:39.18191+00	2583	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
3337	2016-03-11 15:47:39.190253+00	2582	Sport faoliyati (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
3338	2016-03-11 15:47:39.198623+00	2581	Ijtimoiy ish (faoliyatning turli sohalari bo`yicha)	3		9	1
3339	2016-03-11 15:47:39.206846+00	2580	Kadrlar menejmenti	3		9	1
3340	2016-03-11 15:47:39.215183+00	2579	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
3341	2016-03-11 15:47:39.223659+00	2578	Psixologiya (faoliyat turlari bo`yicha)	3		9	1
3342	2016-03-11 15:47:39.231925+00	2577	Gidrometeorologiya	3		9	1
3343	2016-03-11 15:47:39.240206+00	2576	Geografiya	3		9	1
3344	2016-03-11 15:47:39.248581+00	2575	Biologiya (turlari bo`yicha)	3		9	1
3345	2016-03-11 15:47:39.257053+00	2574	Fizika	3		9	1
3346	2016-03-11 15:47:39.33204+00	2573	Mexanika	3		9	1
3347	2016-03-11 15:47:39.340254+00	2572	Astronomiya	3		9	1
3348	2016-03-11 15:47:39.348707+00	2571	Kimyo	3		9	1
3349	2016-03-11 15:47:39.356913+00	2570	Dizayn (turlari bo`yicha)	3		9	1
3350	2016-03-11 15:47:39.365253+00	2569	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
3351	2016-03-11 15:47:39.37372+00	2568	Marketing (tarmoqlar va sohalar bo`yicha)	3		9	1
3352	2016-03-11 15:47:39.38201+00	2567	Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)	3		9	1
3353	2016-03-11 15:47:39.39028+00	2566	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)	3		9	1
3354	2016-03-11 15:47:39.39861+00	2565	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
3355	2016-03-11 15:47:39.407105+00	2564	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
3356	2016-03-11 15:47:39.415362+00	2563	Matbaa va qadoqlash jarayonlari texnologiyasi	3		9	1
3357	2016-03-11 15:47:39.473783+00	2562	Yengil sanoat buyumlari konstruksiyasini ishlash va texnologiyasi (ishlab chiqarish turlari bo`yicha)	3		9	1
3358	2016-03-11 15:47:39.481997+00	2561	Tabiiy tolalarni dastlabki ishlash texnologiyasi (xom ashyo turlari bo`yicha)	3		9	1
3359	2016-03-11 15:47:39.490267+00	2560	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
3360	2016-03-11 15:47:39.498649+00	2559	Energetika (tarmoqlar bo`yicha)	3		9	1
3361	2016-03-11 15:47:39.507066+00	2558	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
3362	2016-03-11 15:47:39.515319+00	2557	Kasb ta'limi: muhandislik kommunikatsiyalari qurilishi va montaji	3		9	1
3363	2016-03-11 15:47:39.523621+00	2556	Kasb ta'limi: qishloq xo`jaligini mexanizatsiyalashtirish	3		9	1
3364	2016-03-11 15:47:39.532142+00	2555	Kasb ta'limi: kimyoviy texnologiya	3		9	1
3365	2016-03-11 15:47:39.540326+00	2554	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
3366	2016-03-11 15:47:39.548647+00	2553	Kasb ta'limi: iqtisodiyot	3		9	1
3367	2016-03-11 15:47:39.557094+00	2552	Kasb ta'limi: yerusti transport tizimlari va ularning ekspluatatsiyasi	3		9	1
3368	2016-03-11 15:47:39.615998+00	2551	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)	3		9	1
3369	2016-03-11 15:47:39.623653+00	2550	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
3370	2016-03-11 15:47:39.632065+00	2549	Mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
3371	2016-03-11 15:47:39.640355+00	2548	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
3372	2016-03-11 15:47:39.648954+00	2547	Qishloq hududlarini arxitektura-loyihaviy tashkil etish	3		9	1
3373	2016-03-11 15:47:39.657009+00	2546	Avtomobil yo`llari va aerodromlar	3		9	1
3374	2016-03-11 15:47:39.665677+00	2545	Qurilish materiallari, buyumlari va konstruksiyalarini ishlab chiqarish	3		9	1
3375	2016-03-11 15:47:39.673713+00	2544	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)	3		9	1
3376	2016-03-11 15:47:39.682347+00	2543	Bino va inshootlar qurilishi (turlari bo`yicha)	3		9	1
3377	2016-03-11 15:47:39.690386+00	2542	Oziq-ovqat texnologiyasi (mahsulotlar turlari bo`yicha)	3		9	1
3378	2016-03-11 15:47:39.698702+00	2541	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
3603	2016-03-11 15:48:59.659759+00	4272	Sport faoliyati: eshkak eshish	3		9	1
3379	2016-03-11 15:47:39.75713+00	2540	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
3380	2016-03-11 15:47:39.765516+00	2539	Filologiya va tillarni o`qitish: O`zbekiston tili	3		9	1
3381	2016-03-11 15:47:39.773724+00	2538	Jismoniy madaniyat	3		9	1
3382	2016-03-11 15:47:39.782089+00	2537	Maktabgacha ta'lim	3		9	1
3383	2016-03-11 15:47:39.790406+00	2536	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
3384	2016-03-11 15:47:39.798699+00	2535	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
3385	2016-03-11 15:47:39.807091+00	2534	Xorijiy til va adabiyoti: ingliz tili	3		9	1
3386	2016-03-11 15:47:39.815343+00	2533	Musiqa ta'limi	3		9	1
3387	2016-03-11 15:47:39.823762+00	2532	Kasb ta'limi: iqtisodiyot	3		9	1
3388	2016-03-11 15:47:39.831998+00	2531	Pedagogika va psixologiya	3		9	1
3389	2016-03-11 15:47:39.840463+00	2530	Tasviriy san'at va muhandislik grafikasi	3		9	1
3390	2016-03-11 15:47:39.898831+00	2529	Filologiya va tillarni o`qitish: nemis tili	3		9	1
3391	2016-03-11 15:47:39.907072+00	2528	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
3392	2016-03-11 15:47:39.915389+00	2527	Hayotiy faoliyat xavfsizligi	3		9	1
3393	2016-03-11 15:47:39.92377+00	2526	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
3394	2016-03-11 15:47:39.932216+00	2525	Sport faoliyati (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
3395	2016-03-11 15:47:39.940469+00	2524	Ijtimoiy-madaniy faoliyat	3		9	1
3396	2016-03-11 15:47:39.948788+00	2523	Arxivshunoslik	3		9	1
3397	2016-03-11 15:47:39.957259+00	2522	Geografiya	3		9	1
3398	2016-03-11 15:47:39.965487+00	2521	Kimyo	3		9	1
3399	2016-03-11 15:47:39.973822+00	2520	Fizika	3		9	1
3400	2016-03-11 15:47:39.982103+00	2519	Biologiya (turlari bo`yicha)	3		9	1
3401	2016-03-11 15:47:40.040546+00	2518	Amaliy matematika va informatika	3		9	1
3402	2016-03-11 15:47:40.048808+00	2517	Matematika	3		9	1
3403	2016-03-11 15:47:40.057203+00	2516	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
3404	2016-03-11 15:47:40.06545+00	2515	Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)	3		9	1
3405	2016-03-11 15:47:40.073843+00	2514	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
3406	2016-03-11 15:47:40.08224+00	2513	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
3407	2016-03-11 15:47:40.090524+00	2512	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)	3		9	1
3408	2016-03-11 15:47:40.098758+00	2511	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
3409	2016-03-11 15:47:40.107268+00	2510	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
3410	2016-03-11 15:47:40.115461+00	2509	Kasb ta'limi: iqtisodiyot	3		9	1
3411	2016-03-11 15:47:40.123909+00	2508	Yengil sanoat buyumlari konstruksiyasini ishlash va texnologiyasi (ishlab chiqarish turlari bo`yicha)	3		9	1
3412	2016-03-11 15:47:40.18223+00	2507	Bino va inshootlar qurilishi (turlari bo`yicha)	3		9	1
3413	2016-03-11 15:47:40.190487+00	2506	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
3414	2016-03-11 15:47:40.199022+00	2505	Tashishni tashkil etish va transport logistikasi (transport turlari bo`yicha)	3		9	1
3415	2016-03-11 15:47:40.207203+00	2504	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
3416	2016-03-11 15:47:40.215474+00	2503	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
3417	2016-03-11 15:47:40.223899+00	2502	Avtomobil yo`llari va aerodromlar	3		9	1
3418	2016-03-11 15:47:40.232108+00	2501	Transport inshootlarining ekspluatatsiyasi (transport inshootlari turlari bo`yicha)	3		9	1
3419	2016-03-11 15:47:40.240548+00	2500	Qurilish materiallari, buyumlari va konstruksiyalarini ishlab chiqarish	3		9	1
3420	2016-03-11 15:47:40.248803+00	2499	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)	3		9	1
3421	2016-03-11 15:47:40.257142+00	2498	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
3422	2016-03-11 15:47:40.26556+00	2497	Jismoniy madaniyat	3		9	1
3423	2016-03-11 15:47:40.323921+00	2496	Maktabgacha ta'lim	3		9	1
3424	2016-03-11 15:47:40.332131+00	2495	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
3425	2016-03-11 15:47:40.340445+00	2494	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
3426	2016-03-11 15:47:40.348815+00	2493	Xorijiy til va adabiyoti: ingliz tili	3		9	1
3427	2016-03-11 15:47:40.357235+00	2492	Musiqa ta'limi	3		9	1
3428	2016-03-11 15:47:40.365459+00	2491	Kasb ta'limi: agronomiya	3		9	1
3429	2016-03-11 15:47:40.373818+00	2490	Pedagogika va psixologiya	3		9	1
3430	2016-03-11 15:47:40.382171+00	2489	Informatika o`qitish metodikasi	3		9	1
3431	2016-03-11 15:47:40.390643+00	2488	Geografiya o`qitish metodikasi	3		9	1
3432	2016-03-11 15:47:40.398841+00	2487	Mehnat ta'limi	3		9	1
3433	2016-03-11 15:47:40.407397+00	2486	Filologiya va tillarni o`qitish: O`zbekiston tili	3		9	1
3434	2016-03-11 15:47:40.465624+00	2485	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
3435	2016-03-11 15:47:40.473959+00	2484	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
3436	2016-03-11 15:47:40.482298+00	2483	Oziq-ovqat texnologiyasi (mahsulotlar turlari bo`yicha)	3		9	1
3437	2016-03-11 15:47:40.490558+00	2482	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
3438	2016-03-11 15:47:40.49888+00	2481	Tuproqshunoslik	3		9	1
3439	2016-03-11 15:47:40.507174+00	2480	Kimyo	3		9	1
3440	2016-03-11 15:47:40.515607+00	2479	Fizika	3		9	1
3441	2016-03-11 15:47:40.523842+00	2478	Biologiya (turlari bo`yicha)	3		9	1
3442	2016-03-11 15:47:40.532149+00	2477	Matematika	3		9	1
3443	2016-03-11 15:47:40.540594+00	2476	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
3444	2016-03-11 15:47:40.548857+00	2475	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
3445	2016-03-11 15:47:40.607322+00	2474	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
3446	2016-03-11 15:47:40.615529+00	2473	Tarix (Islom tarixi va manbashunosligi)	3		9	1
3447	2016-03-11 15:47:40.623922+00	2472	Dinshunoslik	3		9	1
3448	2016-03-11 15:47:40.632276+00	2471	Psixologiya (din sotsiopsixologiyasi)	3		9	1
3449	2016-03-11 15:47:40.640516+00	2470	Jahon iqtisodiyoti va xalqaro iqtisodiy munosabatlar (mintaqalar va faoliyat turlari bo`yicha)	3		9	1
3450	2016-03-11 15:47:40.648847+00	2469	Informatika va axborot texnologiyalari (tarmoqlar va sohalar bo`yicha)	3		9	1
3451	2016-03-11 15:47:40.657392+00	2468	Kasb ta'limi: yengil sanoat texnologiyalari va jihozlari	3		9	1
3452	2016-03-11 15:47:40.665533+00	2467	Kasb ta'limi: elektr texnikasi, elektr mexanikasi va elektr texnologiyalari	3		9	1
3453	2016-03-11 15:47:40.673881+00	2466	Kasb ta'limi: menejment	3		9	1
3531	2016-03-11 15:48:17.050052+00	221	Toshkent tibbiyot akademiyasi Urganch filiali	2	Changed name.	7	1
3454	2016-03-11 15:47:40.682182+00	2465	Kasb ta'limi: mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
3455	2016-03-11 15:47:40.690607+00	2464	Kasb ta'limi: kimyoviy texnologiya	3		9	1
3456	2016-03-11 15:47:40.749134+00	2463	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
3457	2016-03-11 15:47:40.757275+00	2462	Kasb ta'limi: neft-gazkimyo sanoati texnologiyasi	3		9	1
3458	2016-03-11 15:47:40.765513+00	2461	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
3459	2016-03-11 15:47:40.773884+00	2460	Texnologik jarayonlarni boshqarishning axborot-kommunikatsiya tizimlari	3		9	1
3460	2016-03-11 15:47:40.782318+00	2459	Yengil sanoat texnologiyalari va jihozlari	3		9	1
3461	2016-03-11 15:47:40.790556+00	2458	Texnologiyalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
3462	2016-03-11 15:47:40.798897+00	2457	Neft-gazkimyo sanoati texnologiyasi	3		9	1
3463	2016-03-11 15:47:40.807374+00	2456	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
3464	2016-03-11 15:47:40.81561+00	2455	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
3465	2016-03-11 15:47:40.823886+00	2454	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
3466	2016-03-11 15:47:40.832211+00	2453	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
3467	2016-03-11 15:47:40.890715+00	2452	Maktabgacha ta'lim	3		9	1
3468	2016-03-11 15:47:40.899066+00	2451	Jismoniy madaniyat	3		9	1
3469	2016-03-11 15:47:40.907307+00	2450	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
3470	2016-03-11 15:47:40.915625+00	2449	Mehnat ta'limi	3		9	1
3471	2016-03-11 15:47:40.923977+00	2448	Chaqiriqqacha harbiy ta'lim	3		9	1
3472	2016-03-11 15:47:40.932292+00	2447	Xorijiy til va adabiyoti: ingliz tili	3		9	1
3473	2016-03-11 15:47:40.940556+00	2446	Musiqa ta'limi	3		9	1
3474	2016-03-11 15:47:40.949017+00	2445	Kasb ta'limi: amaliy san'at	3		9	1
3475	2016-03-11 15:47:40.957439+00	2444	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
3476	2016-03-11 15:47:40.965648+00	2443	Kasb ta'limi: iqtisodiyot	3		9	1
3477	2016-03-11 15:47:40.973994+00	2442	Kasb ta'limi: agronomiya	3		9	1
3478	2016-03-11 15:47:41.032371+00	2441	Pedagogika va psixologiya	3		9	1
3479	2016-03-11 15:47:41.040585+00	2440	Tasviriy san'at va muhandislik grafikasi	3		9	1
3480	2016-03-11 15:47:41.049042+00	2439	Filologiya va tillarni o`qitish: O`zbekiston tili	3		9	1
3481	2016-03-11 15:47:41.057407+00	2438	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
3482	2016-03-11 15:47:41.065653+00	2437	Filologiya va tillarni o`qitish: nemis tili	3		9	1
3483	2016-03-11 15:47:41.074019+00	2436	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
3484	2016-03-11 15:47:41.082254+00	2435	Turizm (faoliyat yo`nalishlari bo`yicha)	3		9	1
3485	2016-03-11 15:47:41.090676+00	2434	Mehmonxona xo`jaligini tashkil etish va boshqarish	3		9	1
3486	2016-03-11 15:47:41.098926+00	2433	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
3487	2016-03-11 15:47:41.107286+00	2432	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
3488	2016-03-11 15:47:41.115731+00	2431	Arxivshunoslik	3		9	1
3489	2016-03-11 15:47:41.174322+00	2430	Psixologiya (faoliyat turlari bo`yicha)	3		9	1
3490	2016-03-11 15:47:41.182397+00	2429	Tuproqshunoslik	3		9	1
3491	2016-03-11 15:47:41.190767+00	2428	Geografiya	3		9	1
3492	2016-03-11 15:47:41.199087+00	2427	Filologiya va tillarni o`qitish: fransuz tili	3		9	1
3493	2016-03-11 15:47:41.207428+00	2426	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
3494	2016-03-11 15:47:41.215747+00	2425	Matematika	3		9	1
3495	2016-03-11 15:47:41.224121+00	2424	Biologiya (turlari bo`yicha)	3		9	1
3496	2016-03-11 15:47:41.23264+00	2423	Fizika	3		9	1
3497	2016-03-11 15:47:41.240761+00	2422	Kimyo	3		9	1
3498	2016-03-11 15:47:41.249234+00	2421	Kasb ta'limi: mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
3499	2016-03-11 15:47:41.25745+00	2420	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
3500	2016-03-11 15:47:41.31576+00	2419	Avtomobilsozlik va traktorsozlik	3		9	1
3501	2016-03-11 15:47:41.324156+00	2418	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
3502	2016-03-11 15:47:41.332493+00	2417	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
3503	2016-03-11 15:47:41.340715+00	2416	Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)	3		9	1
3504	2016-03-11 15:47:41.349044+00	2415	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
3505	2016-03-11 15:47:41.357498+00	2414	Mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
3506	2016-03-11 15:47:41.365717+00	2413	Materialshunoslik va yangi materiallar texnologiyasi	3		9	1
3507	2016-03-11 15:47:41.374029+00	2412	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)	3		9	1
3508	2016-03-11 15:47:41.382443+00	2411	Maktabgacha ta'lim	3		9	1
3509	2016-03-11 15:47:41.390742+00	2410	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
3510	2016-03-11 15:47:41.399143+00	2409	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
3511	2016-03-11 15:47:41.449287+00	2408	Xorijiy til va adabiyoti: fransuz tili	3		9	1
3512	2016-03-11 15:47:41.457454+00	2407	Xorijiy til va adabiyoti: nemis tili	3		9	1
3513	2016-03-11 15:47:41.465697+00	2406	Xorijiy til va adabiyoti: ingliz tili	3		9	1
3514	2016-03-11 15:47:41.474029+00	2405	Musiqa ta'limie	3		9	1
3515	2016-03-11 15:47:41.482362+00	2404	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
3516	2016-03-11 15:47:41.490744+00	2403	Pedagogika va psixologiya	3		9	1
3517	2016-03-11 15:47:41.499021+00	2402	Tasviriy san'at va muhandislik grafikasi	3		9	1
3518	2016-03-11 15:47:41.507431+00	2401	Jismoniy madaniyat	3		9	1
3519	2016-03-11 15:47:41.515767+00	2400	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
3520	2016-03-11 15:47:41.524062+00	2399	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
3521	2016-03-11 15:47:41.532399+00	2398	Mehnat iqtisodiyoti va sotsiologiyasi	3		9	1
3522	2016-03-11 15:47:41.590901+00	2397	Geografiya	3		9	1
3523	2016-03-11 15:47:41.59911+00	2396	Kimyo	3		9	1
3524	2016-03-11 15:47:41.740851+00	2395	Fizika	3		9	1
3525	2016-03-11 15:47:41.749055+00	2394	Biologiya (turlari bo`yicha)	3		9	1
3526	2016-03-11 15:47:41.757597+00	2393	Matematika	3		9	1
3527	2016-03-11 15:47:41.765879+00	2392	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
3528	2016-03-11 15:47:41.774157+00	2391	Filologiya va tillarni o`qitish: O`zbekiston tili	3		9	1
3529	2016-03-11 15:47:41.782488+00	2390	Mehnat ta'limi	3		9	1
3532	2016-03-11 15:48:35.917928+00	226	Toshkent tibbiyot akademiyasi Farg`ona filiali	2	Changed name.	7	1
3533	2016-03-11 15:48:59.060685+00	4342	Neft va neft-gazni qayta ishlash texnologiyasi	3		9	1
3534	2016-03-11 15:48:59.084889+00	4341	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
3535	2016-03-11 15:48:59.092889+00	4340	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
3536	2016-03-11 15:48:59.101278+00	4339	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)	3		9	1
3537	2016-03-11 15:48:59.109529+00	4338	Kasb ta'limi: suv xo`jaligi va melioratsiya	3		9	1
3538	2016-03-11 15:48:59.117851+00	4337	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)	3		9	1
3539	2016-03-11 15:48:59.126382+00	4336	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)	3		9	1
3540	2016-03-11 15:48:59.134669+00	4335	Gidrotexnika qurilishi (turlari bo`yicha)	3		9	1
3541	2016-03-11 15:48:59.142912+00	4334	Yer tuzish va yer kadastri	3		9	1
3542	2016-03-11 15:48:59.151253+00	4333	Suv xo`jaligi va melioratsiya	3		9	1
3543	2016-03-11 15:48:59.15976+00	4332	Suv xo`jaligi va melioratsiya ishlarini mexanizatsiyalashtirish	3		9	1
3544	2016-03-11 15:48:59.167944+00	4331	Gidrotexnika inshootlari va nasos stansiyalaridan foydalanish	3		9	1
3545	2016-03-11 15:48:59.176293+00	4330	Kompyuter injiniringi ("Kompyuter injiniringi", "AT-Servis")	3		9	1
3546	2016-03-11 15:48:59.184586+00	4329	Dasturiy injiniring	3		9	1
3547	2016-03-11 15:48:59.193266+00	4328	Telekommunikatsiya texnologiyalari ("Telekommunikatsiyalar")	3		9	1
3548	2016-03-11 15:48:59.201293+00	4327	Axborot-kommunikatsiya texnologiyalari sohasida kasb ta'limi	3		9	1
3549	2016-03-11 15:48:59.20958+00	4326	Axborot-kommunikatsiya texnologiyalari sohasida kasb ta'limi	3		9	1
3550	2016-03-11 15:48:59.217978+00	4325	Telekommunikatsiya texnologiyalari ("Telekommunikatsiyalar")	3		9	1
3551	2016-03-11 15:48:59.226247+00	4324	Dasturiy injiniring	3		9	1
3552	2016-03-11 15:48:59.234548+00	4323	Kompyuter injiniringi ("Kompyuter injiniringi", "AT-Servis")	3		9	1
3553	2016-03-11 15:48:59.242869+00	4322	Kompyuter injiniringi ("Kompyuter injiniringi", "AT-Servis")	3		9	1
3554	2016-03-11 15:48:59.251386+00	4321	Dasturiy injiniring	3		9	1
3555	2016-03-11 15:48:59.259617+00	4320	Telekommunikatsiya texnologiyalari ("Telekommunikatsiyalar")	3		9	1
3556	2016-03-11 15:48:59.267925+00	4319	Axborot-kommunikatsiya texnologiyalari sohasida kasb ta'limi	3		9	1
3557	2016-03-11 15:48:59.276309+00	4318	Axborot-kommunikatsiya texnologiyalari sohasida kasb ta'limi	3		9	1
3558	2016-03-11 15:48:59.284671+00	4317	Telekommunikatsiya texnologiyalari ("Telekommunikatsiyalar")	3		9	1
3559	2016-03-11 15:48:59.292997+00	4316	Dasturiy injiniring	3		9	1
3560	2016-03-11 15:48:59.301214+00	4315	Kompyuter injiniringi ("Kompyuter injiniringi", "AT-Servis")	3		9	1
3561	2016-03-11 15:48:59.30961+00	4314	Kompyuter injiniringi ("Kompyuter injiniringi", "AT-Servis")	3		9	1
3562	2016-03-11 15:48:59.317967+00	4313	Dasturiy injiniring	3		9	1
3563	2016-03-11 15:48:59.326355+00	4312	Telekommunikatsiya texnologiyalari ("Telekommunikatsiyalar")	3		9	1
3564	2016-03-11 15:48:59.334615+00	4311	Axborot-kommunikatsiya texnologiyalari sohasida kasb ta'limi	3		9	1
3565	2016-03-11 15:48:59.343031+00	4310	Agrokimyo va agrotuproqshunoslik	3		9	1
3566	2016-03-11 15:48:59.351312+00	4309	Agronomiya (dehqonchilik mahsulotlari turlari bo`yicha)	3		9	1
3567	2016-03-11 15:48:59.359668+00	4308	O`simliklar himoyasi va karantini	3		9	1
3568	2016-03-11 15:48:59.367962+00	4307	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
3569	2016-03-11 15:48:59.376426+00	4306	Zootexniya (turlari bo`yicha)	3		9	1
3570	2016-03-11 15:48:59.384684+00	4305	Qishloq xo`jaligida menejment	3		9	1
3571	2016-03-11 15:48:59.393108+00	4304	Qishloq xo`jaligini mexanizatsiyalashtirish	3		9	1
3572	2016-03-11 15:48:59.401458+00	4303	Suv xo`jaligi va melioratsiya	3		9	1
3573	2016-03-11 15:48:59.409716+00	4302	Kasb ta'limi: buxgalteriya hisobi va audit	3		9	1
3574	2016-03-11 15:48:59.417961+00	4301	Kasb ta'limi: iqtisodiyot	3		9	1
3575	2016-03-11 15:48:59.426304+00	4300	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
3576	2016-03-11 15:48:59.434886+00	4299	Menejment (turizm)	3		9	1
3577	2016-03-11 15:48:59.443011+00	4298	Marketing (turizm)	3		9	1
3578	2016-03-11 15:48:59.451297+00	4297	Moliya	3		9	1
3579	2016-03-11 15:48:59.459638+00	4296	Bank ishi	3		9	1
3580	2016-03-11 15:48:59.46805+00	4295	Buxgalteriya hisobi va audit (tarmoqlar bo`yicha)	3		9	1
3581	2016-03-11 15:48:59.47629+00	4294	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
3582	2016-03-11 15:48:59.484614+00	4293	Mehmonxona xo`jaligini tashkil etish va boshqarish	3		9	1
3583	2016-03-11 15:48:59.493147+00	4292	Turizm (faoliyat yo`nalishlari bo`yicha)	3		9	1
3584	2016-03-11 15:48:59.501397+00	4291	Yurisprudensiya (faoliyat turlari bo`yicha)	3		9	1
3585	2016-03-11 15:48:59.509683+00	4290	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
3586	2016-03-11 15:48:59.51801+00	4289	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)	3		9	1
3587	2016-03-11 15:48:59.526459+00	4288	Buxgalteriya hisobi va audit (tarmoqlar bo`yicha)	3		9	1
3588	2016-03-11 15:48:59.534803+00	4287	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
3589	2016-03-11 15:48:59.543018+00	4286	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
3590	2016-03-11 15:48:59.551332+00	4285	Kasb ta'limi: transport inshootlarining ekspluatatsiyasi	3		9	1
3591	2016-03-11 15:48:59.55984+00	4284	Kasb ta'limi: texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish	3		9	1
3592	2016-03-11 15:48:59.568023+00	4283	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
3593	2016-03-11 15:48:59.576352+00	4282	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)	3		9	1
3594	2016-03-11 15:48:59.584768+00	4281	Tashishni tashkil etish va transport logistikasi (transport turlari bo`yicha)	3		9	1
3595	2016-03-11 15:48:59.593135+00	4280	Xizmat ko`rsatish texnikasi va texnologiyasi (xizmat ko`rsatish tarmoqlari bo`yicha)	3		9	1
3596	2016-03-11 15:48:59.601432+00	4279	Telekommunikatsiya texnologiyalari ("Telekommunikatsiyalar")	3		9	1
3597	2016-03-11 15:48:59.609673+00	4278	Transport inshootlarining ekspluatatsiyasi (transport inshootlari turlari bo`yicha)	3		9	1
3598	2016-03-11 15:48:59.618186+00	4277	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)	3		9	1
3599	2016-03-11 15:48:59.626478+00	4276	Bino va inshootlar qurilishi (turlari bo`yicha)	3		9	1
3600	2016-03-11 15:48:59.634756+00	4275	Informatika va axborot texnologiyalari (temir yo`l transportida)	3		9	1
3601	2016-03-11 15:48:59.643042+00	4274	Sport faoliyati: qilichbozlik	3		9	1
3604	2016-03-11 15:48:59.668074+00	4271	Sport faoliyati: tennis	3		9	1
3605	2016-03-11 15:48:59.6764+00	4270	Sport faoliyati: futbol	3		9	1
3606	2016-03-11 15:48:59.684809+00	4269	Sport faoliyati: badiiy gimnastika	3		9	1
3607	2016-03-11 15:48:59.693076+00	4268	Sport faoliyati: dzu-do	3		9	1
3608	2016-03-11 15:48:59.701373+00	4267	Sport faoliyati: erkin va yunon-rum kurashi	3		9	1
3609	2016-03-11 15:48:59.709837+00	4266	Sport faoliyati: qo`l to`pi	3		9	1
3610	2016-03-11 15:48:59.718118+00	4265	Sport faoliyati: yengil atletika	3		9	1
3611	2016-03-11 15:48:59.726403+00	4264	Kasb ta'limi: jismoniy tarbiya va jismoniy madaniyat	3		9	1
3612	2016-03-11 15:48:59.73475+00	4263	Psixologiya (sport psixologiyasi)	3		9	1
3613	2016-03-11 15:48:59.743232+00	4262	Sport faoliyati: basketbol	3		9	1
3614	2016-03-11 15:48:59.751497+00	4261	Sport faoliyati: boks	3		9	1
3615	2016-03-11 15:48:59.759798+00	4260	Sport faoliyati: voleybol	3		9	1
3616	2016-03-11 15:48:59.768129+00	4259	Sport faoliyati: velosport	3		9	1
3617	2016-03-11 15:48:59.776474+00	4258	Sport faoliyati: gimnastika	3		9	1
3618	2016-03-11 15:48:59.784751+00	4257	Sport faoliyati: suzish	3		9	1
3619	2016-03-11 15:48:59.793112+00	4256	Sport faoliyati: belbog`li kurash	3		9	1
3620	2016-03-11 15:48:59.801535+00	4255	Sport faoliyati: taekvondo (WTF)	3		9	1
3621	2016-03-11 15:48:59.80982+00	4254	Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Surxondaryo)	3		9	1
3622	2016-03-11 15:48:59.81812+00	4253	Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Farg`ona)	3		9	1
3623	2016-03-11 15:48:59.82644+00	4252	Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Xorazm)	3		9	1
3624	2016-03-11 15:48:59.834967+00	4251	Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Qashqadaryo)	3		9	1
3625	2016-03-11 15:48:59.84312+00	4250	Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Toshkent viloyati)	3		9	1
3626	2016-03-11 15:48:59.851442+00	4249	Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Toshkent shahri)	3		9	1
3627	2016-03-11 15:48:59.859767+00	4248	Sport faoliyati: sinxron suzish	3		9	1
3628	2016-03-11 15:48:59.868189+00	4247	Sport faoliyati: badminton	3		9	1
3629	2016-03-11 15:48:59.884883+00	4246	Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Sirdaryo)	3		9	1
3630	2016-03-11 15:48:59.893291+00	4245	Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Samarqand)	3		9	1
3631	2016-03-11 15:48:59.901591+00	4244	Sport faoliyati: sambo	3		9	1
3632	2016-03-11 15:48:59.909853+00	4243	Sport faoliyati: kurash	3		9	1
3633	2016-03-11 15:48:59.918183+00	4242	Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Qoraqalpog`iston Respublikasi)	3		9	1
3634	2016-03-11 15:48:59.926599+00	4241	Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Andijon)	3		9	1
3635	2016-03-11 15:48:59.934952+00	4240	Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Buxoro)	3		9	1
3636	2016-03-11 15:48:59.943246+00	4239	Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Jizzax)	3		9	1
3637	2016-03-11 15:48:59.951595+00	4238	Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Navoiy)	3		9	1
3638	2016-03-11 15:48:59.959953+00	4237	Sport faoliyati: xotin-qizlar sportini rivojlantirish yo`nalishi bo`yicha (Namangan)	3		9	1
3639	2016-03-11 15:48:59.968245+00	4236	Kompyuter injiniringi ("Kompyuter injiniringi", "AT-Servis", "Axborot xavfsizligi", "Multimedia texnologiyalari")	3		9	1
3640	2016-03-11 15:48:59.976567+00	4235	Dasturiy injiniring	3		9	1
3641	2016-03-11 15:48:59.985018+00	4234	Telekommunikatsiya texnologiyalari ("Telekommunikatsiyalar", "Teleradioeshittirish", "Mobil tizimlar")	3		9	1
3642	2016-03-11 15:48:59.993267+00	4233	Televizion texnologiyalar ("Audiovizual texnologiyalar", "Telestudiya tizimlari va ilovalari")	3		9	1
3643	2016-03-11 15:49:00.001557+00	4232	Axborot-kommunikatsiya texnologiyalari sohasida iqtisodiyot va menejment	3		9	1
3644	2016-03-11 15:49:00.009914+00	4231	Axborot-kommunikatsiya texnologiyalari sohasida kasb ta'limi	3		9	1
3645	2016-03-11 15:49:00.018353+00	4230	Pochta aloqasi texnologiyasi	3		9	1
3646	2016-03-11 15:49:00.02655+00	4229	Axborotlashtirish va kutubxonashunoslik	3		9	1
3647	2016-03-11 15:49:00.034935+00	4228	Cholg`u ijrochiligi: fortepiano (organ)	3		9	1
3648	2016-03-11 15:49:00.043268+00	4227	Vokal san'ati: estrada xonandaligi	3		9	1
3649	2016-03-11 15:49:00.051615+00	4226	Vokal san'ati: an'anaviy xonandalik	3		9	1
3650	2016-03-11 15:49:00.059922+00	4225	Vokal san'ati: akademik xonandalik	3		9	1
3651	2016-03-11 15:49:00.06826+00	4224	dirijorlik (xor dirijorligi)	3		9	1
3652	2016-03-11 15:49:00.076653+00	4223	San'atshunoslik: musiqashunoslik	3		9	1
3653	2016-03-11 15:49:00.08506+00	4222	Bastakorlik san'ati	3		9	1
3654	2016-03-11 15:49:00.093321+00	4221	Cholg`u ijrochiligi: torli cholg`ular	3		9	1
3655	2016-03-11 15:49:00.101663+00	4220	Cholg`u ijrochiligi: yog`och - damli cholg`ular	3		9	1
3656	2016-03-11 15:49:00.110062+00	4219	Texnogen san'at (musiqiy ovoz rejissorligi)	3		9	1
3657	2016-03-11 15:49:00.118314+00	4218	Cholg`u ijrochiligi: estrada cholg`ulari	3		9	1
3658	2016-03-11 15:49:00.12662+00	4217	Cholg`u ijrochiligi: an'anaviy cholg`ular	3		9	1
3659	2016-03-11 15:49:00.13498+00	4216	Cholg`u ijrochiligi: damli va urma xalq cholg`ulari	3		9	1
3660	2016-03-11 15:49:00.143339+00	4215	Cholg`u ijrochiligi: kamonli O`zbekiston xalq cholg`ulari	3		9	1
3661	2016-03-11 15:49:00.151645+00	4214	Cholg`u ijrochiligi: mizrobli xalq cholg`ulari	3		9	1
3662	2016-03-11 15:49:00.16+00	4213	Cholg`u ijrochiligi: mis - damli va zarbli cholg`ular	3		9	1
3663	2016-03-11 15:49:00.16838+00	4212	Aktyorlik san'ati: qo`g`irchoq teatri aktyorligi	3		9	1
3664	2016-03-11 15:49:00.176703+00	4211	Aktyorlik san'ati: musiqiy teatr aktyorligi	3		9	1
3665	2016-03-11 15:49:00.184986+00	4210	Aktyorlik san'ati: dramatik teatr va kino aktyorligi	3		9	1
3666	2016-03-11 15:49:00.19332+00	4209	San'atshunoslik: sahna va ekran san'ati dramaturgiyasi	3		9	1
3667	2016-03-11 15:49:00.20174+00	4208	San'atshunoslik: teatrshunoslik	3		9	1
3668	2016-03-11 15:49:00.209991+00	4207	Kasb ta'limi: madaniyat va san'at muassasalarini tashkil etish va boshqarish	3		9	1
3669	2016-03-11 15:49:00.21829+00	4206	Kasb ta'limi: xalq ijodiyoti	3		9	1
3670	2016-03-11 15:49:00.226684+00	4205	Kasb ta'limi: aktyorlik san'ati	3		9	1
3671	2016-03-11 15:49:00.235037+00	4204	rejissorlik: estrada va ommaviy tomoshalar rejissorligi	3		9	1
3672	2016-03-11 15:49:00.243328+00	4203	rejissorlik: televideniye va radio rejissorligi	3		9	1
3673	2016-03-11 15:49:00.251651+00	4202	Madaniyat va san'at muassasalarini tashkil etish va boshqarish	3		9	1
3674	2016-03-11 15:49:00.260021+00	4201	Xalq ijodiyoti: xalq ashula va raqs ansambli rahbari	3		9	1
3675	2016-03-11 15:49:00.268362+00	4200	Xalq ijodiyoti: cholg`u jamoalari rahbari	3		9	1
3676	2016-03-11 15:49:00.276654+00	4199	Xalq ijodiyoti: vokal jamoalari rahbari	3		9	1
3677	2016-03-11 15:49:00.285028+00	4198	Xalq ijodiyoti: folklor-etnografik jamoalari rahbari	3		9	1
3678	2016-03-11 15:49:00.29343+00	4197	Kino-teleoperatorlik	3		9	1
3679	2016-03-11 15:49:00.3017+00	4196	Texnogen san'at: kino, televideniye va radio ovoz rejissorligi	3		9	1
3680	2016-03-11 15:49:00.31007+00	4195	rejissorlik: musiqiy teatr rejissorligi	3		9	1
3681	2016-03-11 15:49:00.318371+00	4194	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)	3		9	1
3682	2016-03-11 15:49:00.326704+00	4193	Buxgalteriya hisobi va audit (tarmoqlar bo`yicha)	3		9	1
3683	2016-03-11 15:49:00.334997+00	4192	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
3684	2016-03-11 15:49:00.343332+00	4191	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
3685	2016-03-11 15:49:00.351784+00	4190	Gidrologiya (suv omborlari bo`yicha)	3		9	1
3686	2016-03-11 15:49:00.360029+00	4189	Kasb ta'limi: suv xo`jaligi va melioratsiya	3		9	1
3687	2016-03-11 15:49:00.368306+00	4188	Kasb ta'limi: yer tuzish va yer kadastri	3		9	1
3688	2016-03-11 15:49:00.376659+00	4187	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)	3		9	1
3689	2016-03-11 15:49:00.385042+00	4186	Geodeziya, kartografiya va kadastr (funksiyalari bo`yicha)	3		9	1
3690	2016-03-11 15:49:00.393342+00	4185	Gidrotexnika qurilishi (turlari bo`yicha)	3		9	1
3691	2016-03-11 15:49:00.401654+00	4184	Hayotiy faoliyat xavfsizligi	3		9	1
3692	2016-03-11 15:49:00.410033+00	4183	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
3693	2016-03-11 15:49:00.418459+00	4182	Gidrotexnika inshootlari va nasos stansiyalaridan foydalanish	3		9	1
3694	2016-03-11 15:49:00.426745+00	4181	Suv xo`jaligi va melioratsiya ishlarini mexanizatsiyalashtirish	3		9	1
3695	2016-03-11 15:49:00.435064+00	4180	Suv xo`jaligi va melioratsiya	3		9	1
3696	2016-03-11 15:49:00.443638+00	4179	Irrigatsiya tizimlarida suv energiyasidan foydalanish	3		9	1
3697	2016-03-11 15:49:00.45179+00	4178	Yer tuzish va yer kadastri	3		9	1
3698	2016-03-11 15:49:00.460074+00	4177	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)	3		9	1
3699	2016-03-11 15:49:00.468395+00	4176	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
3700	2016-03-11 15:49:00.476842+00	4175	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)	3		9	1
3701	2016-03-11 15:49:00.485103+00	4174	Energetika (tarmoqlar bo`yicha)	3		9	1
3702	2016-03-11 15:49:00.493421+00	4173	Buxgalteriya hisobi va audit (tarmoqlar bo`yicha)	3		9	1
3703	2016-03-11 15:49:00.501816+00	4172	Moliya	3		9	1
3704	2016-03-11 15:49:00.510122+00	4171	Marketing (tarmoqlar va sohalar bo`yicha)	3		9	1
3705	2016-03-11 15:49:00.518409+00	4170	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
3706	2016-03-11 15:49:00.526741+00	4169	Kasb ta'limi: texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish	3		9	1
3707	2016-03-11 15:49:00.535262+00	4168	Kasb ta'limi: iqtisodiyot	3		9	1
3708	2016-03-11 15:49:00.543435+00	4167	Geodeziya, kartografiya va kadastr (funksiyalari bo`yicha)	3		9	1
3709	2016-03-11 15:49:00.551743+00	4166	Konchilik ishi	3		9	1
3710	2016-03-11 15:49:00.560077+00	4165	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
3711	2016-03-11 15:49:00.568486+00	4164	Xizmat ko`rsatish texnikasi va texnologiyasi (xizmat ko`rsatish tarmoqlari bo`yicha)	3		9	1
3712	2016-03-11 15:49:00.576753+00	4163	Gidrotexnika inshootlari va nasos stansiyalaridan foydalanish	3		9	1
3713	2016-03-11 15:49:00.585074+00	4162	Qishloq xo`jaligini mexanizatsiyalashtirish	3		9	1
3714	2016-03-11 15:49:00.593601+00	4161	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
3715	2016-03-11 15:49:00.601892+00	4160	Oziq-ovqat texnologiyasi (mahsulotlar turlari bo`yicha)	3		9	1
3716	2016-03-11 15:49:00.610187+00	4159	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
3717	2016-03-11 15:49:00.618508+00	4158	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
3718	2016-03-11 15:49:00.626855+00	4157	Neft va gaz konlarini ishga tushirish va ulardan foydalanish	3		9	1
3719	2016-03-11 15:49:00.635149+00	4156	Foydali qazilma konlari geologiyasi, qidiruv va razvedkasi (kon turlari bo`yicha)	3		9	1
3720	2016-03-11 15:49:00.643482+00	4155	Agronomiya (dehqonchilik mahsulotlari turlari bo`yicha)	3		9	1
3721	2016-03-11 15:49:00.651803+00	4154	Agrokimyo va agrotuproqshunoslik	3		9	1
3722	2016-03-11 15:49:00.660275+00	4153	Buxgalteriya hisobi va audit (tarmoqlar bo`yicha)	3		9	1
3723	2016-03-11 15:49:00.668535+00	4152	Marketing (tarmoqlar va sohalar bo`yicha)	3		9	1
3724	2016-03-11 15:49:00.676815+00	4151	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
3725	2016-03-11 15:49:00.685263+00	4150	Kasb ta'limi: qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
3726	2016-03-11 15:49:00.693502+00	4149	Kasb ta'limi: qishloq xo`jaligini elektrlashtirish va avtomatlashtirish	3		9	1
3727	2016-03-11 15:49:00.701814+00	4148	Kasb ta'limi: qishloq xo`jaligini mexanizatsiyalashtirish	3		9	1
3728	2016-03-11 15:49:00.710138+00	4147	Kasb ta'limi: agronomiya	3		9	1
3729	2016-03-11 15:49:00.718556+00	4146	O`simliklar himoyasi va karantini	3		9	1
3730	2016-03-11 15:49:00.726865+00	4145	Qishloq xo`jaligi ekinlari seleksiyasi va urug`chiligi	3		9	1
3731	2016-03-11 15:49:00.735191+00	4144	Qishloq xo`jaligini elektrlashtirish va avtomatlashtirish	3		9	1
3732	2016-03-11 15:49:00.743587+00	4143	Qishloq xo`jaligini mexanizatsiyalashtirish	3		9	1
3733	2016-03-11 15:49:00.751901+00	4142	Qishloq xo`jaligida menejment	3		9	1
3734	2016-03-11 15:49:00.760202+00	4141	Dorivor o`simliklarni yetishtirish texnologiyasi	3		9	1
3735	2016-03-11 15:49:00.768518+00	4140	Meva-sabzavotchilik va uzumchilik	3		9	1
3736	2016-03-11 15:49:00.776929+00	4139	Ipakchilik	3		9	1
3737	2016-03-11 15:49:00.785266+00	4138	O`rmonchilik va aholi yashash joylarini ko`kalamzorlashtirish	3		9	1
3738	2016-03-11 15:49:00.793551+00	4137	Zootexniya (turlari bo`yicha)	3		9	1
3739	2016-03-11 15:49:00.801909+00	4136	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
3740	2016-03-11 15:49:00.810315+00	4135	Agrokimyo va agrotuproqshunoslik	3		9	1
3741	2016-03-11 15:49:00.818543+00	4134	Buxgalteriya hisobi va audit (tarmoqlar bo`yicha)	3		9	1
3742	2016-03-11 15:49:00.826842+00	4133	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
3743	2016-03-11 15:49:00.835146+00	4132	Kasb ta'limi: zootexniya	3		9	1
3744	2016-03-11 15:49:00.84356+00	4131	Kasb ta'limi: veterinariya	3		9	1
3745	2016-03-11 15:49:00.85187+00	4130	Kasb ta'limi: agronomiya	3		9	1
3746	2016-03-11 15:49:00.860209+00	4129	Agronomiya (dehqonchilik mahsulotlari turlari bo`yicha)	3		9	1
3747	2016-03-11 15:49:00.86864+00	4128	O`simliklar himoyasi va karantini	3		9	1
3748	2016-03-11 15:49:00.876992+00	4127	Qishloq xo`jaligi ekinlari seleksiyasi va urug`chiligi	3		9	1
3749	2016-03-11 15:49:00.885302+00	4126	Veterinariya	3		9	1
3750	2016-03-11 15:49:00.893608+00	4125	Qishloq xo`jaligini mexanizatsiyalashtirish	3		9	1
3751	2016-03-11 15:49:00.902057+00	4124	Qishloq xo`jaligida menejment	3		9	1
3752	2016-03-11 15:49:00.910241+00	4123	Meva-sabzavotchilik va uzumchilik	3		9	1
3753	2016-03-11 15:49:00.918564+00	4122	Zootexniya (turlari bo`yicha)	3		9	1
3754	2016-03-11 15:49:00.926967+00	4121	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
3755	2016-03-11 15:49:00.935276+00	4120	Agronomiya (dehqonchilik mahsulotlari turlari bo`yicha)	3		9	1
3756	2016-03-11 15:49:00.943568+00	4119	Buxgalteriya hisobi va audit (tarmoqlar bo`yicha)	3		9	1
3757	2016-03-11 15:49:00.951885+00	4118	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
3758	2016-03-11 15:49:00.960422+00	4117	Kasb ta'limi: qishloq xo`jaligini mexanizatsiyalashtirish	3		9	1
3759	2016-03-11 15:49:00.968607+00	4116	Kasb ta'limi: iqtisodiyot	3		9	1
3760	2016-03-11 15:49:00.976916+00	4115	Kasb ta'limi: agronomiya	3		9	1
3761	2016-03-11 15:49:00.985271+00	4114	O`simliklar himoyasi va karantini	3		9	1
3762	2016-03-11 15:49:00.99368+00	4113	Qishloq xo`jaligi ekinlari seleksiyasi va urug`chiligi	3		9	1
3763	2016-03-11 15:49:01.001957+00	4112	Gidrotexnika inshootlari va nasos stansiyalaridan foydalanish	3		9	1
3764	2016-03-11 15:49:01.010243+00	4111	Suv xo`jaligi va melioratsiya	3		9	1
3765	2016-03-11 15:49:01.018662+00	4110	Qishloq xo`jaligini mexanizatsiyalashtirish	3		9	1
3766	2016-03-11 15:49:01.026906+00	4109	Qishloq xo`jaligida menejment	3		9	1
3767	2016-03-11 15:49:01.03522+00	4108	Meva-sabzavotchilik va uzumchilik	3		9	1
3768	2016-03-11 15:49:01.043576+00	4107	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
3769	2016-03-11 15:49:01.051956+00	4106	Sanoat farmatsiyasi (turlari bo`yicha)	3		9	1
3770	2016-03-11 15:49:01.060248+00	4105	Farmatsiya (turlari bo`yicha)	3		9	1
3771	2016-03-11 15:49:01.068572+00	4104	Biotexnologiya (tarmoqlar bo`yicha)	3		9	1
3772	2016-03-11 15:49:01.076985+00	4103	Kasb ta'limi: farmatsiya	3		9	1
3773	2016-03-11 15:49:01.085321+00	4102	Kasb ta'limi: tibbiy pedagogik ish	3		9	1
3774	2016-03-11 15:49:01.093605+00	4101	Davolash ishi	3		9	1
3775	2016-03-11 15:49:01.101971+00	4100	Pediatriya ishi	3		9	1
3776	2016-03-11 15:49:01.110463+00	4099	Oliy hamshiralik ishi	3		9	1
3777	2016-03-11 15:49:01.118762+00	4098	Kasb ta'limi: konchilik ishi	3		9	1
3778	2016-03-11 15:49:01.127045+00	4097	Metallurgiya	3		9	1
3779	2016-03-11 15:49:01.135375+00	4096	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
3780	2016-03-11 15:49:01.143808+00	4095	Konchilik ishi	3		9	1
3781	2016-03-11 15:49:01.152363+00	4094	Mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
3782	2016-03-11 15:49:01.160405+00	4093	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
3783	2016-03-11 15:49:01.168749+00	4092	Kasb ta'limi: tibbiy pedagogik ish	3		9	1
3784	2016-03-11 15:49:01.177085+00	4091	Davolash ishi	3		9	1
3785	2016-03-11 15:49:01.185408+00	4090	Tibbiy profilaktika ishi	3		9	1
3786	2016-03-11 15:49:01.193985+00	4089	Stomatologiya	3		9	1
3787	2016-03-11 15:49:01.202101+00	4088	Oliy hamshiralik ishi	3		9	1
3788	2016-03-11 15:49:01.210445+00	4087	Kasb ta'limi: tibbiy pedagogik ish	3		9	1
3789	2016-03-11 15:49:01.218734+00	4086	Davolash ishi	3		9	1
3790	2016-03-11 15:49:01.22711+00	4085	Pediatriya ishi	3		9	1
3791	2016-03-11 15:49:01.235488+00	4084	Stomatologiya	3		9	1
3792	2016-03-11 15:49:01.243764+00	4083	Oliy hamshiralik ishi	3		9	1
3793	2016-03-11 15:49:01.252094+00	4082	Oliy hamshiralik ishi	3		9	1
3794	2016-03-11 15:49:01.260428+00	4081	Stomatologiya	3		9	1
3795	2016-03-11 15:49:01.269027+00	4080	Davolash ishi	3		9	1
3796	2016-03-11 15:49:01.276998+00	4079	Kasb ta'limi: tibbiy pedagogik ish	3		9	1
3797	2016-03-11 15:49:01.285308+00	4078	Kasb ta'limi: tibbiy pedagogik ish	3		9	1
3798	2016-03-11 15:49:01.335506+00	4077	Davolash ishi	3		9	1
3799	2016-03-11 15:49:01.368929+00	4076	Pediatriya ishi	3		9	1
3800	2016-03-11 15:49:01.442028+00	4075	Stomatologiya	3		9	1
3801	2016-03-11 15:49:01.477378+00	4074	Oliy hamshiralik ishi	3		9	1
3802	2016-03-11 15:49:01.485436+00	4073	Informatika o`qitish metodikasi	3		9	1
3803	2016-03-11 15:49:01.493685+00	4072	Tarix o`qitish metodikasi	3		9	1
3804	2016-03-11 15:49:01.502023+00	4071	Geografiya o`qitish metodikasi	3		9	1
3805	2016-03-11 15:49:01.510374+00	4070	Biologiya o`qitish metodikasi	3		9	1
3806	2016-03-11 15:49:01.518706+00	4069	Kimyo o`qitish metodikasi	3		9	1
3807	2016-03-11 15:49:01.527048+00	4068	Fizika va astronomiya o`qitish metodikasi	3		9	1
3808	2016-03-11 15:49:01.535631+00	4067	Matematika o`qitish metodikasi	3		9	1
3809	2016-03-11 15:49:01.543774+00	4066	Tasviriy san'at va muhandislik grafikasi	3		9	1
3810	2016-03-11 15:49:01.552058+00	4065	Musiqa ta'limi	3		9	1
3811	2016-03-11 15:49:01.560381+00	4064	O`zbekiston tili va adabiyoti	3		9	1
3812	2016-03-11 15:49:01.56882+00	4063	Mehnat ta'limi	3		9	1
3813	2016-03-11 15:49:01.577056+00	4062	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
3814	2016-03-11 15:49:01.585359+00	4061	Jismoniy madaniyat	3		9	1
3815	2016-03-11 15:49:01.593686+00	4060	Defektologiya	3		9	1
3816	2016-03-11 15:49:01.602081+00	4059	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
3817	2016-03-11 15:49:01.610374+00	4058	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
3818	2016-03-11 15:49:01.61869+00	4057	Xorijiy til va adabiyoti: ingliz tili	3		9	1
3819	2016-03-11 15:49:01.627199+00	4056	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
3820	2016-03-11 15:49:01.635435+00	4055	Kasb ta'limi: dizayn	3		9	1
3821	2016-03-11 15:49:01.643724+00	4054	Pedagogika va psixologiya	3		9	1
3822	2016-03-11 15:49:01.652088+00	4053	Tasviriy san'at va muhandislik grafikasi	3		9	1
3823	2016-03-11 15:49:01.660507+00	4052	Informatika o`qitish metodikasi	3		9	1
3824	2016-03-11 15:49:01.668815+00	4051	Tarix o`qitish metodikasi	3		9	1
3825	2016-03-11 15:49:01.677089+00	4050	Geografiya o`qitish metodikasi	3		9	1
3826	2016-03-11 15:49:01.685421+00	4049	Biologiya o`qitish metodikasi	3		9	1
3827	2016-03-11 15:49:01.69381+00	4048	Kimyo o`qitish metodikasi	3		9	1
4138	2016-03-11 15:49:05.18622+00	3737	Rangtasvir: teatr-bezak rangtasviri	3		9	1
3828	2016-03-11 15:49:01.702092+00	4047	Fizika va astronomiya o`qitish metodikasi	3		9	1
3829	2016-03-11 15:49:01.710428+00	4046	Matematika o`qitish metodikasi	3		9	1
3830	2016-03-11 15:49:01.718864+00	4045	Kasb ta'limi: kompyuter grafikasi va dizayn	3		9	1
3831	2016-03-11 15:49:01.727121+00	4044	Musiqa ta'limi	3		9	1
3832	2016-03-11 15:49:01.73542+00	4043	O`zbekiston tili va adabiyoti	3		9	1
3833	2016-03-11 15:49:01.743747+00	4042	Psixologiya (faoliyat turlari bo`yicha)	3		9	1
3834	2016-03-11 15:49:01.752138+00	4041	Mehnat ta'limi	3		9	1
3835	2016-03-11 15:49:01.760428+00	4040	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
3836	2016-03-11 15:49:01.76875+00	4039	Jismoniy madaniyat	3		9	1
3837	2016-03-11 15:49:01.777183+00	4038	Defektologiya	3		9	1
3838	2016-03-11 15:49:01.785566+00	4037	Maktabgacha ta'lim	3		9	1
3839	2016-03-11 15:49:01.793853+00	4036	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
3840	2016-03-11 15:49:01.802151+00	4035	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
3841	2016-03-11 15:49:01.810691+00	4034	Chaqiriqqacha harbiy ta'lim	3		9	1
3842	2016-03-11 15:49:01.818842+00	4033	Xorijiy til va adabiyoti: nemis tili	3		9	1
3843	2016-03-11 15:49:01.827147+00	4032	Xorijiy til va adabiyoti: ingliz tili	3		9	1
3844	2016-03-11 15:49:01.835476+00	4031	Informatika o`qitish metodikasi	3		9	1
3845	2016-03-11 15:49:01.843889+00	4030	Tarix o`qitish metodikasi	3		9	1
3846	2016-03-11 15:49:01.852164+00	4029	Geografiya o`qitish metodikasi	3		9	1
3847	2016-03-11 15:49:01.860487+00	4028	Biologiya o`qitish metodikasi	3		9	1
3848	2016-03-11 15:49:01.868904+00	4027	Kimyo o`qitish metodikasi	3		9	1
3849	2016-03-11 15:49:01.87712+00	4026	Fizika va astronomiya o`qitish metodikasi	3		9	1
3850	2016-03-11 15:49:01.885441+00	4025	Matematika o`qitish metodikasi	3		9	1
3851	2016-03-11 15:49:01.893757+00	4024	Tasviriy san'at va muhandislik grafikasi	3		9	1
3852	2016-03-11 15:49:01.902216+00	4023	Pedagogika va psixologiya	3		9	1
3853	2016-03-11 15:49:01.910465+00	4022	Musiqa ta'limi	3		9	1
3854	2016-03-11 15:49:01.918807+00	4021	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
3855	2016-03-11 15:49:01.927134+00	4020	Jismoniy madaniyat	3		9	1
3856	2016-03-11 15:49:01.935547+00	4019	Maktabgacha ta'lim	3		9	1
3857	2016-03-11 15:49:01.943851+00	4018	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
3858	2016-03-11 15:49:01.952167+00	4017	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
3859	2016-03-11 15:49:01.960589+00	4016	Xorijiy til va adabiyoti: ingliz tili	3		9	1
3860	2016-03-11 15:49:01.968871+00	4015	O`zbekiston tili va adabiyoti	3		9	1
3861	2016-03-11 15:49:01.977172+00	4014	Informatika o`qitish metodikasi	3		9	1
3862	2016-03-11 15:49:01.985497+00	4013	Tarix o`qitish metodikasi	3		9	1
3863	2016-03-11 15:49:01.993923+00	4012	Geografiya o`qitish metodikasi	3		9	1
3864	2016-03-11 15:49:02.002172+00	4011	Biologiya o`qitish metodikasi	3		9	1
3865	2016-03-11 15:49:02.010489+00	4010	Kimyo o`qitish metodikasi	3		9	1
3866	2016-03-11 15:49:02.018828+00	4009	Fizika va astronomiya o`qitish metodikasi	3		9	1
3867	2016-03-11 15:49:02.027202+00	4008	Matematika o`qitish metodikasi	3		9	1
3868	2016-03-11 15:49:02.035577+00	4007	Tasviriy san'at va muhandislik grafikasi	3		9	1
3869	2016-03-11 15:49:02.043896+00	4006	Pedagogika va psixologiya	3		9	1
3870	2016-03-11 15:49:02.052275+00	4005	Mehnat ta'limi	3		9	1
3871	2016-03-11 15:49:02.060578+00	4004	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
3872	2016-03-11 15:49:02.068851+00	4003	Jismoniy madaniyat	3		9	1
3873	2016-03-11 15:49:02.077191+00	4002	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
3874	2016-03-11 15:49:02.085568+00	4001	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
3875	2016-03-11 15:49:02.093873+00	4000	Xorijiy til va adabiyoti: ingliz tili	3		9	1
3876	2016-03-11 15:49:02.102192+00	3999	O`zbekiston tili va adabiyoti	3		9	1
3877	2016-03-11 15:49:02.110587+00	3998	Tasviriy san'at va muhandislik grafikasi	3		9	1
3878	2016-03-11 15:49:02.118888+00	3997	Informatika o`qitish metodikasi	3		9	1
3879	2016-03-11 15:49:02.127164+00	3996	Tarix o`qitish metodikasi	3		9	1
3880	2016-03-11 15:49:02.135483+00	3995	Geografiya o`qitish metodikasi	3		9	1
3881	2016-03-11 15:49:02.14397+00	3994	Biologiya o`qitish metodikasi	3		9	1
3882	2016-03-11 15:49:02.152181+00	3993	Kimyo o`qitish metodikasi	3		9	1
3883	2016-03-11 15:49:02.160494+00	3992	Fizika va astronomiya o`qitish metodikasi	3		9	1
3884	2016-03-11 15:49:02.168866+00	3991	Matematika o`qitish metodikasi	3		9	1
3885	2016-03-11 15:49:02.177444+00	3990	Pedagogika va psixologiya	3		9	1
3886	2016-03-11 15:49:02.185591+00	3989	Musiqa ta'limi	3		9	1
3887	2016-03-11 15:49:02.193871+00	3988	O`zbekiston tili va adabiyoti	3		9	1
3888	2016-03-11 15:49:02.202237+00	3987	Mehnat ta'limi	3		9	1
3889	2016-03-11 15:49:02.210656+00	3986	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
3890	2016-03-11 15:49:02.218908+00	3985	Jismoniy madaniyat	3		9	1
3891	2016-03-11 15:49:02.227278+00	3984	Defektologiya	3		9	1
3892	2016-03-11 15:49:02.235581+00	3983	Maktabgacha ta'lim	3		9	1
3893	2016-03-11 15:49:02.285619+00	3982	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
3894	2016-03-11 15:49:02.293978+00	3981	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
3895	2016-03-11 15:49:02.302307+00	3980	Xorijiy til va adabiyoti: ingliz tili	3		9	1
3896	2016-03-11 15:49:02.310625+00	3979	Yurisprudensiya (halqaro huquqiy faoliyat)	3		9	1
3897	2016-03-11 15:49:02.319071+00	3978	Jahon iqtisodiyoti va xalqaro iqtisodiy munosabatlar (mintaqalar va faoliyat turlari bo`yicha)	3		9	1
3898	2016-03-11 15:49:02.327282+00	3977	Jahon siyosati	3		9	1
3899	2016-03-11 15:49:02.335703+00	3976	Davolash ishi	3		9	1
3900	2016-03-11 15:49:02.344012+00	3975	Pediatriya ishi	3		9	1
3901	2016-03-11 15:49:02.352292+00	3974	Tibbiy profilaktika ishi	3		9	1
3902	2016-03-11 15:49:02.360996+00	3973	Stomatologiya	3		9	1
3903	2016-03-11 15:49:02.36895+00	3972	Oliy hamshiralik ishi	3		9	1
3904	2016-03-11 15:49:02.378005+00	3971	Xorijiy til va adabiyoti: ingliz tili	3		9	1
3905	2016-03-11 15:49:02.435764+00	3970	Filologiya va tillarni o`qitish: koreys tili	3		9	1
3906	2016-03-11 15:49:02.444094+00	3969	Filologiya va tillarni o`qitish: yapon tili	3		9	1
3907	2016-03-11 15:49:02.452342+00	3968	Filologiya va tillarni o`qitish: arab tili	3		9	1
3908	2016-03-11 15:49:02.460741+00	3967	Filologiya va tillarni o`qitish: italyan tili	3		9	1
3909	2016-03-11 15:49:02.468949+00	3966	Filologiya va tillarni o`qitish: xitoy tili	3		9	1
3910	2016-03-11 15:49:02.477472+00	3965	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
4139	2016-03-11 15:49:05.194672+00	3736	Rangtasvir: mahobatli rangtasvir	3		9	1
3911	2016-03-11 15:49:02.485753+00	3964	Filologiya va tillarni o`qitish: nemis tili	3		9	1
3912	2016-03-11 15:49:02.494063+00	3963	Filologiya va tillarni o`qitish: fransuz tili	3		9	1
3913	2016-03-11 15:49:02.502346+00	3962	Filologiya va tillarni o`qitish: ispan tili	3		9	1
3914	2016-03-11 15:49:02.510679+00	3961	Tarjima nazariyasi va amaliyoti (tillar bo`yicha)	3		9	1
3915	2016-03-11 15:49:02.518994+00	3960	Fizika	3		9	1
3916	2016-03-11 15:49:02.577584+00	3959	Kimyo	3		9	1
3917	2016-03-11 15:49:02.585728+00	3958	Geografiya	3		9	1
3918	2016-03-11 15:49:02.594012+00	3957	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
3919	2016-03-11 15:49:02.602537+00	3956	Moliya	3		9	1
3920	2016-03-11 15:49:02.610722+00	3955	Biologiya (turlari bo`yicha)	3		9	1
3921	2016-03-11 15:49:02.618999+00	3954	Amaliy matematika va informatika	3		9	1
3922	2016-03-11 15:49:02.627324+00	3953	Matematika	3		9	1
3923	2016-03-11 15:49:02.635815+00	3952	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
3924	2016-03-11 15:49:02.644005+00	3951	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
3925	2016-03-11 15:49:02.652341+00	3950	Filologiya va tillarni o`qitish: O`zbekiston tili	3		9	1
3926	2016-03-11 15:49:02.660725+00	3949	Jismoniy madaniyat	3		9	1
3927	2016-03-11 15:49:02.66908+00	3948	Xorijiy til va adabiyoti: ingliz tili	3		9	1
3928	2016-03-11 15:49:02.727565+00	3947	Buxgalteriya hisobi va audit (tarmoqlar bo`yicha)	3		9	1
3929	2016-03-11 15:49:02.735738+00	3946	Yurisprudensiya (faoliyat turlari bo`yicha)	3		9	1
3930	2016-03-11 15:49:02.744027+00	3945	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
3931	2016-03-11 15:49:02.752445+00	3944	Avtomobil yo`llari va aerodromlar	3		9	1
3932	2016-03-11 15:49:02.760846+00	3943	Qurilish materiallari, buyumlari va konstruksiyalarini ishlab chiqarish	3		9	1
3933	2016-03-11 15:49:02.769116+00	3942	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)	3		9	1
3934	2016-03-11 15:49:02.777437+00	3941	Bino va inshootlar qurilishi (turlari bo`yicha)	3		9	1
3935	2016-03-11 15:49:02.785852+00	3940	Arxitektura (turlari bo`yicha)	3		9	1
3936	2016-03-11 15:49:02.794086+00	3939	Neft va neft-gazni qayta ishlash texnologiyasi	3		9	1
3937	2016-03-11 15:49:02.80238+00	3938	Yengil sanoat buyumlari konstruksiyasini ishlash va texnologiyasi (ishlab chiqarish turlari bo`yicha)	3		9	1
3938	2016-03-11 15:49:02.810746+00	3937	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)	3		9	1
3939	2016-03-11 15:49:02.819174+00	3936	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
3940	2016-03-11 15:49:02.877748+00	3935	Geodeziya, kartografiya va kadastr (funksiyalari bo`yicha)	3		9	1
3941	2016-03-11 15:49:02.885777+00	3934	Neft va gaz konlarini ishga tushirish va ulardan foydalanish	3		9	1
3942	2016-03-11 15:49:02.894143+00	3933	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
3943	2016-03-11 15:49:02.902422+00	3932	Filologiya va tillarni o`qitish: O`zbekiston tili	3		9	1
3944	2016-03-11 15:49:02.910966+00	3931	Mehnat ta'limi	3		9	1
3945	2016-03-11 15:49:02.919131+00	3930	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
3946	2016-03-11 15:49:02.92742+00	3929	Jismoniy madaniyat	3		9	1
3947	2016-03-11 15:49:02.935904+00	3928	Maktabgacha ta'lim	3		9	1
3948	2016-03-11 15:49:02.94414+00	3927	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
3949	2016-03-11 15:49:02.952417+00	3926	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
3950	2016-03-11 15:49:02.960741+00	3925	Xorijiy til va adabiyoti: ingliz tili	3		9	1
3951	2016-03-11 15:49:02.969173+00	3924	Musiqa ta'limi	3		9	1
3952	2016-03-11 15:49:02.977439+00	3923	Kasb ta'limi: energetika	3		9	1
3953	2016-03-11 15:49:02.985816+00	3922	Tasviriy san'at va muhandislik grafikasi	3		9	1
3954	2016-03-11 15:49:02.994113+00	3921	Informatika o`qitish metodikasi	3		9	1
3955	2016-03-11 15:49:03.002484+00	3920	Geografiya o`qitish metodikasi	3		9	1
3956	2016-03-11 15:49:03.010781+00	3919	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
3957	2016-03-11 15:49:03.019105+00	3918	Filologiya va tillarni o`qitish: nemis tili	3		9	1
3958	2016-03-11 15:49:03.027492+00	3917	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
3959	2016-03-11 15:49:03.03583+00	3916	Turizm (faoliyat yo`nalishlari bo`yicha)	3		9	1
3960	2016-03-11 15:49:03.044115+00	3915	Biotexnologiya (tarmoqlar bo`yicha)	3		9	1
3961	2016-03-11 15:49:03.052433+00	3914	Mehnat iqtisodiyoti va sotsiologiyasi	3		9	1
3962	2016-03-11 15:49:03.06085+00	3913	Psixologiya (faoliyat turlari bo`yicha)	3		9	1
3963	2016-03-11 15:49:03.069115+00	3912	Tuproqshunoslik	3		9	1
3964	2016-03-11 15:49:03.077387+00	3911	Kimyo	3		9	1
3965	2016-03-11 15:49:03.085737+00	3910	Fizika	3		9	1
3966	2016-03-11 15:49:03.094223+00	3909	Biologiya (turlari bo`yicha)	3		9	1
3967	2016-03-11 15:49:03.102516+00	3908	Amaliy matematika va informatika	3		9	1
3968	2016-03-11 15:49:03.110803+00	3907	Matematika	3		9	1
3969	2016-03-11 15:49:03.119233+00	3906	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
3970	2016-03-11 15:49:03.127509+00	3905	Filologiya va tillarni o`qitish: fransuz tili	3		9	1
3971	2016-03-11 15:49:03.135801+00	3904	Kasb ta'limi: tibbiy pedagogik ish	3		9	1
3972	2016-03-11 15:49:03.144117+00	3903	Tibbiy profilaktika ishi	3		9	1
3973	2016-03-11 15:49:03.152509+00	3902	Oliy hamshiralik ishi	3		9	1
3974	2016-03-11 15:49:03.160809+00	3901	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)	3		9	1
3975	2016-03-11 15:49:03.169114+00	3900	Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)	3		9	1
3976	2016-03-11 15:49:03.177484+00	3899	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
3977	2016-03-11 15:49:03.185837+00	3898	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)	3		9	1
3978	2016-03-11 15:49:03.194211+00	3897	Buxgalteriya hisobi va audit (tarmoqlar bo`yicha)	3		9	1
3979	2016-03-11 15:49:03.202448+00	3896	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
3980	2016-03-11 15:49:03.210891+00	3895	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
3981	2016-03-11 15:49:03.21917+00	3894	Kasb ta'limi: elektr energetikasi	3		9	1
3982	2016-03-11 15:49:03.227544+00	3893	Kasb ta'limi: iqtisodiyot	3		9	1
3983	2016-03-11 15:49:03.235827+00	3892	Geodeziya, kartografiya va kadastr (funksiyalari bo`yicha)	3		9	1
3984	2016-03-11 15:49:03.244299+00	3891	Mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
3985	2016-03-11 15:49:03.252536+00	3890	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
3986	2016-03-11 15:49:03.260862+00	3889	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
3987	2016-03-11 15:49:03.269185+00	3888	Qishloq hududlarini arxitektura-loyihaviy tashkil etish	3		9	1
3988	2016-03-11 15:49:03.277659+00	3887	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)	3		9	1
3989	2016-03-11 15:49:03.285822+00	3886	Shahar qurilishi va xo`jaligi	3		9	1
3990	2016-03-11 15:49:03.294272+00	3885	Arxitektura (turlari bo`yicha)	3		9	1
3991	2016-03-11 15:49:03.302598+00	3884	Oziq-ovqat texnologiyasi (mahsulotlar turlari bo`yicha)	3		9	1
3992	2016-03-11 15:49:03.310914+00	3883	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
3993	2016-03-11 15:49:03.319193+00	3882	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
3994	2016-03-11 15:49:03.32754+00	3881	Jismoniy madaniyat	3		9	1
3995	2016-03-11 15:49:03.33587+00	3880	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
3996	2016-03-11 15:49:03.344218+00	3879	Chaqiriqqacha harbiy ta'lim	3		9	1
3997	2016-03-11 15:49:03.402608+00	3878	Xorijiy til va adabiyoti: ingliz tili	3		9	1
3998	2016-03-11 15:49:03.41094+00	3877	Kasb ta'limi: iqtisodiyot	3		9	1
3999	2016-03-11 15:49:03.419226+00	3876	Tasviriy san'at va muhandislik grafikasi	3		9	1
4000	2016-03-11 15:49:03.428164+00	3875	Informatika o`qitish metodikasi	3		9	1
4001	2016-03-11 15:49:03.436006+00	3874	Biologiya o`qitish metodikasi	3		9	1
4002	2016-03-11 15:49:03.444206+00	3873	Kimyo o`qitish metodikasi	3		9	1
4003	2016-03-11 15:49:03.452689+00	3872	Fizika va astronomiya o`qitish metodikasi	3		9	1
4004	2016-03-11 15:49:03.461085+00	3871	Matematika o`qitish metodikasi	3		9	1
4005	2016-03-11 15:49:03.469242+00	3870	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
4006	2016-03-11 15:49:03.477719+00	3869	Mehnat ta'limi	3		9	1
4007	2016-03-11 15:49:03.486032+00	3868	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
4008	2016-03-11 15:49:03.561002+00	3867	Ijtimoiy ish (faoliyatning turli sohalari bo`yicha)	3		9	1
4009	2016-03-11 15:49:03.569184+00	3866	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
4010	2016-03-11 15:49:03.577659+00	3865	Psixologiya (faoliyat turlari bo`yicha)	3		9	1
4011	2016-03-11 15:49:03.585849+00	3864	Tuproqshunoslik	3		9	1
4012	2016-03-11 15:49:03.594262+00	3863	Geografiya	3		9	1
4013	2016-03-11 15:49:03.60252+00	3862	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
4014	2016-03-11 15:49:03.61096+00	3861	Filologiya va tillarni o`qitish: fransuz tili	3		9	1
4015	2016-03-11 15:49:03.619264+00	3860	Filologiya va tillarni o`qitish: nemis tili	3		9	1
4016	2016-03-11 15:49:03.627716+00	3859	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
4017	2016-03-11 15:49:03.636084+00	3858	Filologiya va tillarni o`qitish: O`zbekiston tili	3		9	1
4018	2016-03-11 15:49:03.644471+00	3857	Jismoniy madaniyat	3		9	1
4019	2016-03-11 15:49:03.702692+00	3856	Mehnat ta'limi	3		9	1
4020	2016-03-11 15:49:03.711066+00	3855	Filologiya va tillarni o`qitish: O`zbekiston tili	3		9	1
4021	2016-03-11 15:49:03.719425+00	3854	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
4022	2016-03-11 15:49:03.727762+00	3853	Filologiya va tillarni o`qitish: nemis tili	3		9	1
4023	2016-03-11 15:49:03.736099+00	3852	Filologiya va tillarni o`qitish: fransuz tili	3		9	1
4024	2016-03-11 15:49:03.744448+00	3851	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
4025	2016-03-11 15:49:03.752799+00	3850	Matematika	3		9	1
4026	2016-03-11 15:49:03.761144+00	3849	Maktabgacha ta'lim	3		9	1
4027	2016-03-11 15:49:03.769415+00	3848	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
4028	2016-03-11 15:49:03.777755+00	3847	Tasviriy san'at va muhandislik grafikasi	3		9	1
4029	2016-03-11 15:49:03.7861+00	3846	Pedagogika va psixologiya	3		9	1
4030	2016-03-11 15:49:03.836041+00	3845	Kasb ta'limi: agronomiya	3		9	1
4031	2016-03-11 15:49:03.844243+00	3844	Kasb ta'limi: buxgalteriya hisobi va audit	3		9	1
4032	2016-03-11 15:49:03.852766+00	3843	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
4033	2016-03-11 15:49:03.860947+00	3842	Musiqa ta'limi	3		9	1
4034	2016-03-11 15:49:03.869243+00	3841	Xorijiy til va adabiyoti: ingliz tili	3		9	1
4035	2016-03-11 15:49:03.877564+00	3840	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
4036	2016-03-11 15:49:03.886042+00	3839	Amaliy matematika va informatika	3		9	1
4037	2016-03-11 15:49:03.894265+00	3838	Biologiya (turlari bo`yicha)	3		9	1
4038	2016-03-11 15:49:03.902637+00	3837	Fizika	3		9	1
4039	2016-03-11 15:49:03.911046+00	3836	Oziq-ovqat texnologiyasi (mahsulotlar turlari bo`yicha)	3		9	1
4040	2016-03-11 15:49:03.919403+00	3835	Arxitektura (turlari bo`yicha)	3		9	1
4041	2016-03-11 15:49:03.977924+00	3834	Shahar qurilishi va xo`jaligi	3		9	1
4042	2016-03-11 15:49:03.986363+00	3833	Qishloq hududlarini arxitektura-loyihaviy tashkil etish	3		9	1
4043	2016-03-11 15:49:03.994492+00	3832	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
4044	2016-03-11 15:49:04.002672+00	3831	Mehmonxona xo`jaligini tashkil etish va boshqarish	3		9	1
4045	2016-03-11 15:49:04.011035+00	3830	Turizm (faoliyat yo`nalishlari bo`yicha)	3		9	1
4046	2016-03-11 15:49:04.01935+00	3829	Sport faoliyati (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
4047	2016-03-11 15:49:04.027666+00	3828	Biotexnologiya (tarmoqlar bo`yicha)	3		9	1
4048	2016-03-11 15:49:04.036166+00	3827	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
4049	2016-03-11 15:49:04.044371+00	3826	Kimyo	3		9	1
4050	2016-03-11 15:49:04.052682+00	3825	Geografiya	3		9	1
4051	2016-03-11 15:49:04.061003+00	3824	Tuproqshunoslik	3		9	1
4052	2016-03-11 15:49:04.119411+00	3823	Psixologiya (faoliyat turlari bo`yicha)	3		9	1
4053	2016-03-11 15:49:04.127869+00	3822	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
4054	2016-03-11 15:49:04.136119+00	3821	Avtomobilsozlik va traktorsozlik	3		9	1
4055	2016-03-11 15:49:04.144421+00	3820	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
4056	2016-03-11 15:49:04.15274+00	3819	Geodeziya, kartografiya va kadastr (funksiyalari bo`yicha)	3		9	1
4057	2016-03-11 15:49:04.161181+00	3818	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
4058	2016-03-11 15:49:04.169416+00	3817	Maktabgacha ta'lim	3		9	1
4059	2016-03-11 15:49:04.177737+00	3816	Jismoniy madaniyat	3		9	1
4060	2016-03-11 15:49:04.186057+00	3815	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
4061	2016-03-11 15:49:04.194536+00	3814	Filologiya va tillarni o`qitish: O`zbekiston tili	3		9	1
4062	2016-03-11 15:49:04.202728+00	3813	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
4063	2016-03-11 15:49:04.261127+00	3812	Xorijiy til va adabiyoti: nemis tili	3		9	1
4064	2016-03-11 15:49:04.269394+00	3811	Xorijiy til va adabiyoti: ingliz tili	3		9	1
4065	2016-03-11 15:49:04.277748+00	3810	Musiqa ta'limi	3		9	1
4066	2016-03-11 15:49:04.286107+00	3809	Kasb ta'limi: qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
4067	2016-03-11 15:49:04.294399+00	3808	Kasb ta'limi: kimyoviy texnologiya	3		9	1
4068	2016-03-11 15:49:04.302728+00	3807	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
4069	2016-03-11 15:49:04.311272+00	3806	Tasviriy san'at va muhandislik grafikasi	3		9	1
4070	2016-03-11 15:49:04.319448+00	3805	Informatika o`qitish metodikasi	3		9	1
4071	2016-03-11 15:49:04.327739+00	3804	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
4072	2016-03-11 15:49:04.33607+00	3803	Matematika	3		9	1
4073	2016-03-11 15:49:04.344499+00	3802	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
4074	2016-03-11 15:49:04.40286+00	3801	Avtomobil yo`llari va aerodromlar	3		9	1
4075	2016-03-11 15:49:04.411071+00	3800	Transport inshootlarining ekspluatatsiyasi (transport inshootlari turlari bo`yicha)	3		9	1
4076	2016-03-11 15:49:04.419396+00	3799	Yengil sanoat buyumlari konstruksiyasini ishlash va texnologiyasi (ishlab chiqarish turlari bo`yicha)	3		9	1
4077	2016-03-11 15:49:04.427745+00	3798	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
4078	2016-03-11 15:49:04.43617+00	3797	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
4079	2016-03-11 15:49:04.44441+00	3796	Kadrlar menejmenti	3		9	1
4080	2016-03-11 15:49:04.452727+00	3795	Moliya	3		9	1
4081	2016-03-11 15:49:04.461182+00	3794	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
4082	2016-03-11 15:49:04.469456+00	3793	Geografiya	3		9	1
4083	2016-03-11 15:49:04.47778+00	3792	Kimyo	3		9	1
4084	2016-03-11 15:49:04.486104+00	3791	Fizika	3		9	1
4085	2016-03-11 15:49:04.544563+00	3790	Biologiya (turlari bo`yicha)	3		9	1
4086	2016-03-11 15:49:04.552907+00	3789	Amaliy matematika va informatika	3		9	1
4087	2016-03-11 15:49:04.561172+00	3788	Kasb ta'limi: tibbiy pedagogik ish	3		9	1
4088	2016-03-11 15:49:04.569446+00	3787	Davolash ishi	3		9	1
4089	2016-03-11 15:49:04.577775+00	3786	Pediatriya ishi	3		9	1
4090	2016-03-11 15:49:04.586194+00	3785	Oliy hamshiralik ishi	3		9	1
4091	2016-03-11 15:49:04.594448+00	3784	Kasb ta'limi: kimyoviy texnologiya	3		9	1
4092	2016-03-11 15:49:04.602775+00	3783	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
4093	2016-03-11 15:49:04.611136+00	3782	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
4094	2016-03-11 15:49:04.619517+00	3781	Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)	3		9	1
4095	2016-03-11 15:49:04.627786+00	3780	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)	3		9	1
4096	2016-03-11 15:49:04.686506+00	3779	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
4097	2016-03-11 15:49:04.694651+00	3778	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
4098	2016-03-11 15:49:04.702858+00	3777	Hayotiy faoliyat xavfsizligi	3		9	1
4099	2016-03-11 15:49:04.711243+00	3776	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
4100	2016-03-11 15:49:04.719473+00	3775	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)	3		9	1
4101	2016-03-11 15:49:04.72783+00	3774	Neft va neft-gazni qayta ishlash texnologiyasi	3		9	1
4102	2016-03-11 15:49:04.736226+00	3773	Oziq-ovqat texnologiyasi (mahsulotlar turlari bo`yicha)	3		9	1
4103	2016-03-11 15:49:04.744503+00	3772	Biotexnologiya (tarmoqlar bo`yicha)	3		9	1
4104	2016-03-11 15:49:04.7528+00	3771	Kasb ta'limi: bank ishi	3		9	1
4105	2016-03-11 15:49:04.761133+00	3770	Kasb ta'limi: buxgalteriya hisobi va audit	3		9	1
4106	2016-03-11 15:49:04.7697+00	3769	Kasb ta'limi: moliya	3		9	1
4107	2016-03-11 15:49:04.828117+00	3768	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
4108	2016-03-11 15:49:04.836316+00	3767	Moliya	3		9	1
4109	2016-03-11 15:49:04.84459+00	3766	Bank ishi	3		9	1
4110	2016-03-11 15:49:04.852797+00	3765	Soliqlar va soliqqa tortish	3		9	1
4111	2016-03-11 15:49:04.861249+00	3764	Baholash ishi	3		9	1
4112	2016-03-11 15:49:04.869476+00	3763	Pensiya ishi	3		9	1
4113	2016-03-11 15:49:04.877808+00	3762	Sug`urta ishi	3		9	1
4114	2016-03-11 15:49:04.886201+00	3761	Buxgalteriya hisobi va audit (tarmoqlar bo`yicha)	3		9	1
4115	2016-03-11 15:49:04.894729+00	3760	Kasb ta'limi: avtomobil yo`llari va aerodromlar	3		9	1
4116	2016-03-11 15:49:04.90295+00	3759	Kasb ta'limi: yerusti transport tizimlari va ularning ekspluatatsiyasi	3		9	1
4117	2016-03-11 15:49:04.911198+00	3758	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
4118	2016-03-11 15:49:04.969653+00	3757	Marketing (tarmoqlar va sohalar bo`yicha)	3		9	1
4119	2016-03-11 15:49:04.977883+00	3756	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
4120	2016-03-11 15:49:04.986184+00	3755	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
4121	2016-03-11 15:49:04.994491+00	3754	Transport inshootlarining ekspluatatsiyasi (transport inshootlari turlari bo`yicha)	3		9	1
4122	2016-03-11 15:49:05.002844+00	3753	Avtomobil yo`llari va aerodromlar	3		9	1
4123	2016-03-11 15:49:05.011348+00	3752	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
4124	2016-03-11 15:49:05.019561+00	3751	Tashishni tashkil etish va transport logistikasi (transport turlari bo`yicha)	3		9	1
4125	2016-03-11 15:49:05.027845+00	3750	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
4126	2016-03-11 15:49:05.036179+00	3749	Buxgalteriya hisobi va audit (tarmoqlar bo`yicha)	3		9	1
4127	2016-03-11 15:49:05.044619+00	3748	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
4128	2016-03-11 15:49:05.052878+00	3747	Dizayn (turlari bo`yicha)	3		9	1
4129	2016-03-11 15:49:05.111325+00	3746	Kasb ta'limi: tabiiy tolalarni dastlabki ishlash texnologiyasi	3		9	1
4130	2016-03-11 15:49:05.119558+00	3745	Kasb ta'limi: yengil sanoat buyumlari konstruksiyasini ishlash va texnologiyasi	3		9	1
4131	2016-03-11 15:49:05.12789+00	3744	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)	3		9	1
4132	2016-03-11 15:49:05.136292+00	3743	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
4133	2016-03-11 15:49:05.144551+00	3742	Xizmat ko`rsatish texnikasi va texnologiyasi (xizmat ko`rsatish tarmoqlari bo`yicha)	3		9	1
4134	2016-03-11 15:49:05.15288+00	3741	Tabiiy tolalarni dastlabki ishlash texnologiyasi (xom ashyo turlari bo`yicha)	3		9	1
4135	2016-03-11 15:49:05.161212+00	3740	Yengil sanoat buyumlari konstruksiyasini ishlash va texnologiyasi (ishlab chiqarish turlari bo`yicha)	3		9	1
4136	2016-03-11 15:49:05.169592+00	3739	Matbaa va qadoqlash jarayonlari texnologiyasi	3		9	1
4137	2016-03-11 15:49:05.1779+00	3738	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
4140	2016-03-11 15:49:05.202901+00	3735	Rangtasvir: dastgohli rangtasvir	3		9	1
4141	2016-03-11 15:49:05.21121+00	3734	San'atshunoslik: muzeyshunoslik; konservatsiya va badiiy yodgorliklarni saqlash	3		9	1
4142	2016-03-11 15:49:05.219548+00	3733	San'atshunoslik: tasviriy va amaliy san'at	3		9	1
4143	2016-03-11 15:49:05.228016+00	3732	Kasb ta'limi: dizayn (libos dizayni va gazlamalarning badiiy yechimi)	3		9	1
4144	2016-03-11 15:49:05.236257+00	3731	Kasb ta'limi: dizayn (interyerni loyihalash)	3		9	1
4145	2016-03-11 15:49:05.244603+00	3730	Kasb ta'limi: rangtasvir	3		9	1
4146	2016-03-11 15:49:05.252922+00	3729	Rangtasvir: filmning tasviriy yechimi	3		9	1
4147	2016-03-11 15:49:05.26144+00	3728	Dizayn: kompyuter grafikasi va badiiy foto	3		9	1
4148	2016-03-11 15:49:05.269598+00	3727	Dizayn: reklama va amaliy grafika	3		9	1
4149	2016-03-11 15:49:05.277928+00	3726	Amaliy sanat: amaliy san'at asarlarini ta'mirlash	3		9	1
4150	2016-03-11 15:49:05.286346+00	3725	Amaliy sanat: memoriy yodgorliklar bezagini tamirlash	3		9	1
4151	2016-03-11 15:49:05.294592+00	3724	Amaliy sanat: badiiy kulolchilik	3		9	1
4152	2016-03-11 15:49:05.302966+00	3723	Haykaltaroshlik (turlari bo`yicha)	3		9	1
4153	2016-03-11 15:49:05.311292+00	3722	Grafika: xattotlik va miniatura	3		9	1
4154	2016-03-11 15:49:05.319689+00	3721	Grafika: dastgoh va kitob grafikasi	3		9	1
4155	2016-03-11 15:49:05.327987+00	3720	Dizayn: libos dizayni va gazlamalarning badiiy yechimi	3		9	1
4156	2016-03-11 15:49:05.336318+00	3719	Dizayn: interyerni loyihalash	3		9	1
4157	2016-03-11 15:49:05.344747+00	3718	Bino va inshootlar qurilishi (turlari bo`yicha)	3		9	1
4158	2016-03-11 15:49:05.352993+00	3717	Arxitektura (turlari bo`yicha)	3		9	1
4159	2016-03-11 15:49:05.361325+00	3716	Geodeziya, kartografiya va kadastr (funksiyalari bo`yicha)	3		9	1
4160	2016-03-11 15:49:05.369644+00	3715	Dizayn (turlari bo`yicha)	3		9	1
4161	2016-03-11 15:49:05.378063+00	3714	Kasb ta'limi: xizmatlar sohasi	3		9	1
4162	2016-03-11 15:49:05.386289+00	3713	Kasb ta'limi: bino va inshootlar qurilishi	3		9	1
4163	2016-03-11 15:49:05.394651+00	3712	Shahar qurilishi va xo`jaligi	3		9	1
4164	2016-03-11 15:49:05.402976+00	3711	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)	3		9	1
4165	2016-03-11 15:49:05.411465+00	3710	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
4166	2016-03-11 15:49:05.419658+00	3709	Qiymat injiniringi	3		9	1
4167	2016-03-11 15:49:05.428026+00	3708	Qishloq hududlarini arxitektura-loyihaviy tashkil etish	3		9	1
4168	2016-03-11 15:49:05.436555+00	3707	Ko`chmas mulk ekspertizasi va uni boshqarish	3		9	1
4169	2016-03-11 15:49:05.444696+00	3706	Gidrotexnika qurilishi (turlari bo`yicha)	3		9	1
4170	2016-03-11 15:49:05.452985+00	3705	Qurilish materiallari, buyumlari va konstruksiyalarini ishlab chiqarish	3		9	1
4171	2016-03-11 15:49:05.461322+00	3704	Filologiya va tillarni o`qitish: arab, fors, turk, uyg`ur, dariy, pushtu tullari	3		9	1
4172	2016-03-11 15:49:05.469733+00	3703	Filologiya va tillarni o`qitish: yapon, xitoy, koreys, hind, urdu, indonez, malay, vyetnam tillari	3		9	1
4173	2016-03-11 15:49:05.477997+00	3702	Filologiya va tillarni o`qitish: sharq mumtoz tillari	3		9	1
4174	2016-03-11 15:49:05.486349+00	3701	Tarjima nazariyasi va amaliyoti (tillar bo`yicha)	3		9	1
4175	2016-03-11 15:49:05.494781+00	3700	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
4176	2016-03-11 15:49:05.502988+00	3699	Falsafa	3		9	1
4177	2016-03-11 15:49:05.511342+00	3698	Jahon siyosati	3		9	1
4178	2016-03-11 15:49:05.519673+00	3697	Xorijiy mamlakatlar iqtisodiyoti va mamlakatshunoslik: MDH mamlakatlari	3		9	1
4179	2016-03-11 15:49:05.528125+00	3696	Xorijiy mamlakatlar iqtisodiyoti va mamlakatshunoslik: Yaqin va O`rta Sharq mamlakatlari	3		9	1
4180	2016-03-11 15:49:05.536344+00	3695	Xorijiy mamlakatlar iqtisodiyoti va mamlakatshunoslik: Uzoq Sharq mamlakatlari	3		9	1
4181	2016-03-11 15:49:05.544666+00	3694	Xorijiy mamlakatlar iqtisodiyoti va mamlakatshunoslik: Xitoy va Janubiy-Sharqiy Osiyo mamlakatlari	3		9	1
4182	2016-03-11 15:49:05.553039+00	3693	Xorijiy til va adabiyoti: ingliz tili	3		9	1
4183	2016-03-11 15:49:05.561531+00	3692	Filologiya va tillarni o`qitish: yapon tili	3		9	1
4184	2016-03-11 15:49:05.569749+00	3691	Filologiya va tillarni o`qitish: xitoy tili	3		9	1
4185	2016-03-11 15:49:05.578073+00	3690	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
4186	2016-03-11 15:49:05.586386+00	3689	Filologiya va tillarni o`qitish: nemis tili	3		9	1
4187	2016-03-11 15:49:05.594873+00	3688	Filologiya va tillarni o`qitish: fransuz tili	3		9	1
4188	2016-03-11 15:49:05.603028+00	3687	Filologiya va tillarni o`qitish: ispan tili	3		9	1
4189	2016-03-11 15:49:05.611378+00	3686	Tarjima nazariyasi va amaliyoti (tillar bo`yicha)	3		9	1
4190	2016-03-11 15:49:05.619803+00	3685	Jurnalistika (faoliyat turlari bo`yicha)	3		9	1
4191	2016-03-11 15:49:05.628063+00	3684	Xoreografiya (turlari bo`yicha)	3		9	1
4192	2016-03-11 15:49:05.686516+00	3683	San'atshunoslik: xoreografiya	3		9	1
4193	2016-03-11 15:49:05.694693+00	3682	Bank ishi	3		9	1
4194	2016-03-11 15:49:05.703046+00	3681	Marketing (tarmoqlar va sohalar bo`yicha)	3		9	1
4195	2016-03-11 15:49:05.711523+00	3680	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
4196	2016-03-11 15:49:05.719748+00	3679	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
4197	2016-03-11 15:49:05.728104+00	3678	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
4198	2016-03-11 15:49:05.736424+00	3677	Kasb ta'limi: iqtisodiyot	3		9	1
4199	2016-03-11 15:49:05.744846+00	3676	Soliqlar va soliqqa tortish	3		9	1
4200	2016-03-11 15:49:05.753105+00	3675	Buxgalteriya hisobi va audit (tarmoqlar bo`yicha)	3		9	1
4201	2016-03-11 15:49:05.76144+00	3674	Mehmonxona xo`jaligini tashkil etish va boshqarish	3		9	1
4202	2016-03-11 15:49:05.769772+00	3673	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
4203	2016-03-11 15:49:05.828275+00	3672	Informatika va axborot texnologiyalari (tarmoqlar va sohalar bo`yicha)	3		9	1
4204	2016-03-11 15:49:05.836646+00	3671	Kadrlar menejmenti	3		9	1
4205	2016-03-11 15:49:05.844857+00	3670	Mehnat iqtisodiyoti va sotsiologiyasi	3		9	1
4206	2016-03-11 15:49:05.853151+00	3669	Statistika (tarmoqlar va sohalar bo`yicha)	3		9	1
4207	2016-03-11 15:49:05.861484+00	3668	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)	3		9	1
4208	2016-03-11 15:49:05.869774+00	3667	Metallurgiya	3		9	1
4209	2016-03-11 15:49:05.878085+00	3666	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
4210	2016-03-11 15:49:05.886425+00	3665	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)	3		9	1
4211	2016-03-11 15:49:05.894819+00	3664	Konchilik ishi	3		9	1
4212	2016-03-11 15:49:05.903159+00	3663	Foydali qazilma konlari geologiyasi, qidiruv va razvedkasi (kon turlari bo`yicha)	3		9	1
4213	2016-03-11 15:49:05.911458+00	3662	Mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
4214	2016-03-11 15:49:05.91979+00	3661	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
4215	2016-03-11 15:49:05.928243+00	3660	Noyob va radioaktiv metallar rudalarini qazib olish, qayta ishlash texnikasi va texnologiyasi	3		9	1
4216	2016-03-11 15:49:05.93646+00	3659	Soliqlar va soliqqa tortish	3		9	1
4217	2016-03-11 15:49:05.944783+00	3658	Metallurgiya	3		9	1
4218	2016-03-11 15:49:05.953115+00	3657	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
4219	2016-03-11 15:49:05.961534+00	3656	Konchilik ishi	3		9	1
4220	2016-03-11 15:49:05.969796+00	3655	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)	3		9	1
4221	2016-03-11 15:49:05.978116+00	3654	Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)	3		9	1
4222	2016-03-11 15:49:05.986545+00	3653	Elektronika va asbobsozlik (tarmoqlar bo`yicha)	3		9	1
4223	2016-03-11 15:49:05.994822+00	3652	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
4224	2016-03-11 15:49:06.003124+00	3651	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
4225	2016-03-11 15:49:06.011463+00	3650	Avtomobilsozlik va traktorsozlik	3		9	1
4226	2016-03-11 15:49:06.019893+00	3649	Aviasozlik va havo kemalaridan texnik foydalanish	3		9	1
4227	2016-03-11 15:49:06.028188+00	3648	Metallurgiya	3		9	1
4228	2016-03-11 15:49:06.036477+00	3647	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)	3		9	1
4229	2016-03-11 15:49:06.044947+00	3646	Energetika (tarmoqlar bo`yicha)	3		9	1
4230	2016-03-11 15:49:06.05317+00	3645	Marketing (tarmoqlar va sohalar bo`yicha)	3		9	1
4231	2016-03-11 15:49:06.06151+00	3644	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
4232	2016-03-11 15:49:06.069829+00	3643	Dizayn (turlari bo`yicha)	3		9	1
4233	2016-03-11 15:49:06.078276+00	3642	Kasb ta'limi: texnologik mashinalar va jihozlar	3		9	1
4234	2016-03-11 15:49:06.086504+00	3641	Geodeziya, kartografiya va kadastr (funksiyalari bo`yicha)	3		9	1
4235	2016-03-11 15:49:06.094833+00	3640	Konchilik ishi	3		9	1
4236	2016-03-11 15:49:06.103161+00	3639	Foydali qazilma konlari geologiyasi, qidiruv va razvedkasi (kon turlari bo`yicha)	3		9	1
4237	2016-03-11 15:49:06.111611+00	3638	Hayotiy faoliyat xavfsizligi	3		9	1
4238	2016-03-11 15:49:06.119847+00	3637	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
4239	2016-03-11 15:49:06.128162+00	3636	Havodagi harakatni boshqarish	3		9	1
4240	2016-03-11 15:49:06.136492+00	3635	Xizmat ko`rsatish texnikasi va texnologiyasi (xizmat ko`rsatish tarmoqlari bo`yicha)	3		9	1
4241	2016-03-11 15:49:06.144919+00	3634	Radioelektron qurilmalar va tizimlar (tarmoqlar bo`yicha)	3		9	1
4242	2016-03-11 15:49:06.153194+00	3633	Informatika va axborot texnologiyalari (tarmoqlar va sohalar bo`yicha)	3		9	1
4243	2016-03-11 15:49:06.161525+00	3632	Neft va neft-gazni qayta ishlash texnologiyasi	3		9	1
4244	2016-03-11 15:49:06.169964+00	3631	Biotexnologiya (tarmoqlar bo`yicha)	3		9	1
4245	2016-03-11 15:49:06.178214+00	3630	Gidrogeologiya va muhandislik geologiyasi	3		9	1
4246	2016-03-11 15:49:06.186518+00	3629	Neft va gaz konlarini ishga tushirish va ulardan foydalanish	3		9	1
4247	2016-03-11 15:49:06.19485+00	3628	Neft-gazni qayta ishlash sanoati obyektlarini loyihalashtirish, qurish va ulardan foydalanish	3		9	1
4248	2016-03-11 15:49:06.203262+00	3627	Materialshunoslik va yangi materiallar texnologiyasi	3		9	1
4249	2016-03-11 15:49:06.21153+00	3626	Mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
4250	2016-03-11 15:49:06.219848+00	3625	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
4251	2016-03-11 15:49:06.228242+00	3624	Matematika	3		9	1
4252	2016-03-11 15:49:06.236559+00	3623	Amaliy matematika va informatika	3		9	1
4253	2016-03-11 15:49:06.244856+00	3622	Biologiya (turlari bo`yicha)	3		9	1
4254	2016-03-11 15:49:06.253179+00	3621	Fizika	3		9	1
4255	2016-03-11 15:49:06.261752+00	3620	Mexanika	3		9	1
4256	2016-03-11 15:49:06.269937+00	3619	Astronomiya	3		9	1
4257	2016-03-11 15:49:06.278296+00	3618	Kimyo	3		9	1
4258	2016-03-11 15:49:06.286632+00	3617	Falsafa	3		9	1
4259	2016-03-11 15:49:06.295017+00	3616	Arxeologiya	3		9	1
4260	2016-03-11 15:49:06.303302+00	3615	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
4261	2016-03-11 15:49:06.311629+00	3614	Filologiya va tillarni o`qitish: fransuz tili	3		9	1
4262	2016-03-11 15:49:06.319922+00	3613	Filologiya va tillarni o`qitish: nemis tili	3		9	1
4263	2016-03-11 15:49:06.328382+00	3612	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
4264	2016-03-11 15:49:06.336602+00	3611	Filologiya va tillarni o`qitish: O`zbekiston tili	3		9	1
4265	2016-03-11 15:49:06.344921+00	3610	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
4266	2016-03-11 15:49:06.353368+00	3609	Xorijiy til va adabiyoti: ingliz tili	3		9	1
4267	2016-03-11 15:49:06.361608+00	3608	Geografiya	3		9	1
4268	2016-03-11 15:49:06.369925+00	3607	Gidrometeorologiya	3		9	1
4269	2016-03-11 15:49:06.378277+00	3606	Ijtimoiy ish (pensiya ta'minoti)	3		9	1
4270	2016-03-11 15:49:06.386629+00	3605	Ijtimoiy ish (faoliyatning turli sohalari bo`yicha)	3		9	1
4271	2016-03-11 15:49:06.394867+00	3604	Axborot xavfsizligi (sohalar bo`yicha)	3		9	1
4272	2016-03-11 15:49:06.403217+00	3603	Informatika va axborot texnologiyalari (tarmoqlar va sohalar bo`yicha)	3		9	1
4273	2016-03-11 15:49:06.411649+00	3602	Axborot tizimlarining matematik va dasturiy ta'minoti	3		9	1
4274	2016-03-11 15:49:06.419963+00	3601	Geodeziya, kartografiya va kadastr (funksiyalari bo`yicha)	3		9	1
4275	2016-03-11 15:49:06.428268+00	3600	Kadrlar menejmenti	3		9	1
4276	2016-03-11 15:49:06.436597+00	3599	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
4277	2016-03-11 15:49:06.445004+00	3598	Arxivshunoslik	3		9	1
4278	2016-03-11 15:49:06.463168+00	3597	Geologiya	3		9	1
4279	2016-03-11 15:49:06.486668+00	3596	Geofizika	3		9	1
4280	2016-03-11 15:49:06.494938+00	3595	Tuproqshunoslik	3		9	1
4281	2016-03-11 15:49:06.503267+00	3594	Gidrologiya (tarmoqlar bo`yicha)	3		9	1
4282	2016-03-11 15:49:06.511748+00	3593	Sotsiologiya	3		9	1
4283	2016-03-11 15:49:06.519986+00	3592	Psixologiya (faoliyat turlari bo`yicha)	3		9	1
4284	2016-03-11 15:49:06.528284+00	3591	Jurnalistika (faoliyat turlari bo`yicha)	3		9	1
4285	2016-03-11 15:49:06.536714+00	3590	Geodeziya, kartografiya va kadastr (funksiyalari bo`yicha)	3		9	1
4286	2016-03-11 15:49:06.544958+00	3589	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
4287	2016-03-11 15:49:06.553303+00	3588	Dizayn (turlari bo`yicha)	3		9	1
4288	2016-03-11 15:49:06.561692+00	3587	Kasb ta'limi: tasviriy san'at va muhandislik grafikasi	3		9	1
4289	2016-03-11 15:49:06.570073+00	3586	Kasb ta'limi: muhandislik kommunikatsiyalari qurilishi va montaji	3		9	1
4290	2016-03-11 15:49:06.578373+00	3585	Kasb ta'limi: bino va inshootlar qurilishi	3		9	1
4291	2016-03-11 15:49:06.586674+00	3584	Arxitektura (turlari bo`yicha)	3		9	1
4292	2016-03-11 15:49:06.595125+00	3583	Bino va inshootlar qurilishi (turlari bo`yicha)	3		9	1
4293	2016-03-11 15:49:06.603362+00	3582	Shahar qurilishi va xo`jaligi	3		9	1
4294	2016-03-11 15:49:06.611674+00	3581	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
4295	2016-03-11 15:49:06.62+00	3580	Qishloq hududlarini arxitektura-loyihaviy tashkil etish	3		9	1
4296	2016-03-11 15:49:06.628427+00	3579	Ko`chmas mulk ekspertizasi va uni boshqarish	3		9	1
4297	2016-03-11 15:49:06.636721+00	3578	Avtomobil yo`llari va aerodromlar	3		9	1
4298	2016-03-11 15:49:06.645045+00	3577	Qurilish materiallari, buyumlari va konstruksiyalarini ishlab chiqarish	3		9	1
4299	2016-03-11 15:49:06.670112+00	3576	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)	3		9	1
4300	2016-03-11 15:49:06.678432+00	3575	Arxeologiya	3		9	1
4301	2016-03-11 15:49:06.686874+00	3574	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
4302	2016-03-11 15:49:06.695099+00	3573	Filologiya va tillarni o`qitish: O`zbekiston tili	3		9	1
4303	2016-03-11 15:49:06.70341+00	3572	Mehnat ta'limi	3		9	1
4304	2016-03-11 15:49:06.711736+00	3571	Jismoniy madaniyat	3		9	1
4305	2016-03-11 15:49:06.720158+00	3570	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
4306	2016-03-11 15:49:06.728418+00	3569	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
4307	2016-03-11 15:49:06.736738+00	3568	Musiqa ta'limi	3		9	1
4308	2016-03-11 15:49:06.745084+00	3567	Kasb ta'limi: elektronika va asbobsozlik	3		9	1
4309	2016-03-11 15:49:06.753454+00	3566	Kasb ta'limi: amaliy san'at	3		9	1
4310	2016-03-11 15:49:06.761764+00	3565	Kasb ta'limi: iqtisodiyot	3		9	1
4311	2016-03-11 15:49:06.770041+00	3564	Tasviriy san'at va muhandislik grafikasi	3		9	1
4312	2016-03-11 15:49:06.778562+00	3563	Informatika o`qitish metodikasi	3		9	1
4313	2016-03-11 15:49:06.786775+00	3562	Matematika	3		9	1
4314	2016-03-11 15:49:06.79508+00	3561	Amaliy matematika va informatika	3		9	1
4315	2016-03-11 15:49:06.803417+00	3560	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
4316	2016-03-11 15:49:06.811762+00	3559	Sport faoliyati (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
4317	2016-03-11 15:49:06.820056+00	3558	Ijtimoiy ish (faoliyatning turli sohalari bo`yicha)	3		9	1
4318	2016-03-11 15:49:06.828384+00	3557	Kadrlar menejmenti	3		9	1
4319	2016-03-11 15:49:06.836794+00	3556	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
4320	2016-03-11 15:49:06.845178+00	3555	Psixologiya (faoliyat turlari bo`yicha)	3		9	1
4321	2016-03-11 15:49:06.853443+00	3554	Gidrometeorologiya	3		9	1
4322	2016-03-11 15:49:06.861727+00	3553	Geografiya	3		9	1
4323	2016-03-11 15:49:06.870199+00	3552	Biologiya (turlari bo`yicha)	3		9	1
4324	2016-03-11 15:49:06.878401+00	3551	Fizika	3		9	1
4325	2016-03-11 15:49:06.886714+00	3550	Mexanika	3		9	1
4326	2016-03-11 15:49:06.895043+00	3549	Astronomiya	3		9	1
4327	2016-03-11 15:49:06.903454+00	3548	Kimyo	3		9	1
4328	2016-03-11 15:49:06.911745+00	3547	Dizayn (turlari bo`yicha)	3		9	1
4329	2016-03-11 15:49:06.920065+00	3546	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
4330	2016-03-11 15:49:06.928523+00	3545	Marketing (tarmoqlar va sohalar bo`yicha)	3		9	1
4331	2016-03-11 15:49:06.9368+00	3544	Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)	3		9	1
4332	2016-03-11 15:49:06.945102+00	3543	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)	3		9	1
4333	2016-03-11 15:49:06.95342+00	3542	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
4334	2016-03-11 15:49:06.961833+00	3541	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
4335	2016-03-11 15:49:06.97008+00	3540	Matbaa va qadoqlash jarayonlari texnologiyasi	3		9	1
4336	2016-03-11 15:49:06.978414+00	3539	Yengil sanoat buyumlari konstruksiyasini ishlash va texnologiyasi (ishlab chiqarish turlari bo`yicha)	3		9	1
4337	2016-03-11 15:49:06.986727+00	3538	Tabiiy tolalarni dastlabki ishlash texnologiyasi (xom ashyo turlari bo`yicha)	3		9	1
4338	2016-03-11 15:49:06.995162+00	3537	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
4339	2016-03-11 15:49:07.00344+00	3536	Energetika (tarmoqlar bo`yicha)	3		9	1
4340	2016-03-11 15:49:07.011731+00	3535	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
4341	2016-03-11 15:49:07.020076+00	3534	Kasb ta'limi: muhandislik kommunikatsiyalari qurilishi va montaji	3		9	1
4342	2016-03-11 15:49:07.02856+00	3533	Kasb ta'limi: qishloq xo`jaligini mexanizatsiyalashtirish	3		9	1
4343	2016-03-11 15:49:07.036849+00	3532	Kasb ta'limi: kimyoviy texnologiya	3		9	1
4344	2016-03-11 15:49:07.045189+00	3531	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
4345	2016-03-11 15:49:07.053695+00	3530	Kasb ta'limi: iqtisodiyot	3		9	1
4346	2016-03-11 15:49:07.061891+00	3529	Kasb ta'limi: yerusti transport tizimlari va ularning ekspluatatsiyasi	3		9	1
4347	2016-03-11 15:49:07.070186+00	3528	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)	3		9	1
4348	2016-03-11 15:49:07.078463+00	3527	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
4349	2016-03-11 15:49:07.086861+00	3526	Mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
4350	2016-03-11 15:49:07.095145+00	3525	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
4351	2016-03-11 15:49:07.103467+00	3524	Qishloq hududlarini arxitektura-loyihaviy tashkil etish	3		9	1
4352	2016-03-11 15:49:07.111892+00	3523	Avtomobil yo`llari va aerodromlar	3		9	1
4353	2016-03-11 15:49:07.120138+00	3522	Qurilish materiallari, buyumlari va konstruksiyalarini ishlab chiqarish	3		9	1
4354	2016-03-11 15:49:07.128479+00	3521	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)	3		9	1
4355	2016-03-11 15:49:07.136759+00	3520	Bino va inshootlar qurilishi (turlari bo`yicha)	3		9	1
4356	2016-03-11 15:49:07.145173+00	3519	Oziq-ovqat texnologiyasi (mahsulotlar turlari bo`yicha)	3		9	1
4357	2016-03-11 15:49:07.153521+00	3518	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
4358	2016-03-11 15:49:07.161881+00	3517	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
4359	2016-03-11 15:49:07.170218+00	3516	Filologiya va tillarni o`qitish: O`zbekiston tili	3		9	1
4360	2016-03-11 15:49:07.178575+00	3515	Jismoniy madaniyat	3		9	1
4361	2016-03-11 15:49:07.186881+00	3514	Maktabgacha ta'lim	3		9	1
4362	2016-03-11 15:49:07.195206+00	3513	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
4363	2016-03-11 15:49:07.203531+00	3512	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
4364	2016-03-11 15:49:07.211974+00	3511	Xorijiy til va adabiyoti: ingliz tili	3		9	1
4365	2016-03-11 15:49:07.220214+00	3510	Musiqa ta'limi	3		9	1
4366	2016-03-11 15:49:07.228536+00	3509	Kasb ta'limi: iqtisodiyot	3		9	1
4367	2016-03-11 15:49:07.236946+00	3508	Pedagogika va psixologiya	3		9	1
4368	2016-03-11 15:49:07.245224+00	3507	Tasviriy san'at va muhandislik grafikasi	3		9	1
4369	2016-03-11 15:49:07.25353+00	3506	Filologiya va tillarni o`qitish: nemis tili	3		9	1
4370	2016-03-11 15:49:07.261944+00	3505	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
4371	2016-03-11 15:49:07.270256+00	3504	Hayotiy faoliyat xavfsizligi	3		9	1
4372	2016-03-11 15:49:07.278539+00	3503	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
4373	2016-03-11 15:49:07.28694+00	3502	Sport faoliyati (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
4374	2016-03-11 15:49:07.29544+00	3501	Ijtimoiy-madaniy faoliyat	3		9	1
4375	2016-03-11 15:49:07.303643+00	3500	Arxivshunoslik	3		9	1
4376	2016-03-11 15:49:07.311991+00	3499	Geografiya	3		9	1
4377	2016-03-11 15:49:07.320486+00	3498	Kimyo	3		9	1
4378	2016-03-11 15:49:07.328605+00	3497	Fizika	3		9	1
4379	2016-03-11 15:49:07.336879+00	3496	Biologiya (turlari bo`yicha)	3		9	1
4380	2016-03-11 15:49:07.395339+00	3495	Amaliy matematika va informatika	3		9	1
4381	2016-03-11 15:49:07.403524+00	3494	Matematika	3		9	1
4382	2016-03-11 15:49:07.411918+00	3493	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
4383	2016-03-11 15:49:07.420357+00	3492	Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)	3		9	1
4384	2016-03-11 15:49:07.428609+00	3491	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
4385	2016-03-11 15:49:07.436907+00	3490	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
4386	2016-03-11 15:49:07.445246+00	3489	Elektr energetikasi (tarmoqlar va yo`nalishlar bo`yicha)	3		9	1
4387	2016-03-11 15:49:07.453603+00	3488	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
4388	2016-03-11 15:49:07.46193+00	3487	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
4389	2016-03-11 15:49:07.470293+00	3486	Kasb ta'limi: iqtisodiyot	3		9	1
4390	2016-03-11 15:49:07.478726+00	3485	Yengil sanoat buyumlari konstruksiyasini ishlash va texnologiyasi (ishlab chiqarish turlari bo`yicha)	3		9	1
4391	2016-03-11 15:49:07.537039+00	3484	Bino va inshootlar qurilishi (turlari bo`yicha)	3		9	1
4392	2016-03-11 15:49:07.545359+00	3483	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
4393	2016-03-11 15:49:07.553635+00	3482	Tashishni tashkil etish va transport logistikasi (transport turlari bo`yicha)	3		9	1
4394	2016-03-11 15:49:07.56192+00	3481	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
4395	2016-03-11 15:49:07.570465+00	3480	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
4396	2016-03-11 15:49:07.578607+00	3479	Avtomobil yo`llari va aerodromlar	3		9	1
4397	2016-03-11 15:49:07.586918+00	3478	Transport inshootlarining ekspluatatsiyasi (transport inshootlari turlari bo`yicha)	3		9	1
4398	2016-03-11 15:49:07.595248+00	3477	Qurilish materiallari, buyumlari va konstruksiyalarini ishlab chiqarish	3		9	1
4399	2016-03-11 15:49:07.603686+00	3476	Muhandislik kommunikatsiyalari qurilishi va montaji (turlari bo`yicha)	3		9	1
4400	2016-03-11 15:49:07.611933+00	3475	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
4401	2016-03-11 15:49:07.620237+00	3474	Jismoniy madaniyat	3		9	1
4402	2016-03-11 15:49:07.670391+00	3473	Maktabgacha ta'lim	3		9	1
4403	2016-03-11 15:49:07.678649+00	3472	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
4404	2016-03-11 15:49:07.686988+00	3471	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
4405	2016-03-11 15:49:07.695407+00	3470	Xorijiy til va adabiyoti: ingliz tili	3		9	1
4406	2016-03-11 15:49:07.703623+00	3469	Musiqa ta'limi	3		9	1
4407	2016-03-11 15:49:07.711987+00	3468	Kasb ta'limi: agronomiya	3		9	1
4408	2016-03-11 15:49:07.720342+00	3467	Pedagogika va psixologiya	3		9	1
4409	2016-03-11 15:49:07.728696+00	3466	Informatika o`qitish metodikasi	3		9	1
4410	2016-03-11 15:49:07.736997+00	3465	Geografiya o`qitish metodikasi	3		9	1
4411	2016-03-11 15:49:07.745315+00	3464	Mehnat ta'limi	3		9	1
4412	2016-03-11 15:49:07.753795+00	3463	Filologiya va tillarni o`qitish: O`zbekiston tili	3		9	1
4413	2016-03-11 15:49:07.762006+00	3462	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
4414	2016-03-11 15:49:07.820428+00	3461	Qishloq xo`jalik mahsulotlarini saqlash va dastlabki ishlash texnologiyasi	3		9	1
4415	2016-03-11 15:49:07.82867+00	3460	Oziq-ovqat texnologiyasi (mahsulotlar turlari bo`yicha)	3		9	1
4416	2016-03-11 15:49:07.836981+00	3459	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
4417	2016-03-11 15:49:07.8454+00	3458	Tuproqshunoslik	3		9	1
4418	2016-03-11 15:49:07.853772+00	3457	Kimyo	3		9	1
4419	2016-03-11 15:49:07.862077+00	3456	Fizika	3		9	1
4420	2016-03-11 15:49:07.870402+00	3455	Biologiya (turlari bo`yicha)	3		9	1
4421	2016-03-11 15:49:07.878734+00	3454	Matematika	3		9	1
4422	2016-03-11 15:49:07.887022+00	3453	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
4423	2016-03-11 15:49:07.895365+00	3452	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
4424	2016-03-11 15:49:07.903663+00	3451	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
4425	2016-03-11 15:49:07.912152+00	3450	Tarix (Islom tarixi va manbashunosligi)	3		9	1
4426	2016-03-11 15:49:07.97047+00	3449	Dinshunoslik	3		9	1
4427	2016-03-11 15:49:07.978706+00	3448	Psixologiya (din sotsiopsixologiyasi)	3		9	1
4428	2016-03-11 15:49:07.987028+00	3447	Jahon iqtisodiyoti va xalqaro iqtisodiy munosabatlar (mintaqalar va faoliyat turlari bo`yicha)	3		9	1
4429	2016-03-11 15:49:07.995427+00	3446	Informatika va axborot texnologiyalari (tarmoqlar va sohalar bo`yicha)	3		9	1
4430	2016-03-11 15:49:08.003719+00	3445	Kasb ta'limi: yengil sanoat texnologiyalari va jihozlari	3		9	1
4431	2016-03-11 15:49:08.012006+00	3444	Kasb ta'limi: elektr texnikasi, elektr mexanikasi va elektr texnologiyalari	3		9	1
4432	2016-03-11 15:49:08.020338+00	3443	Kasb ta'limi: menejment	3		9	1
4433	2016-03-11 15:49:08.028819+00	3442	Kasb ta'limi: mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
4434	2016-03-11 15:49:08.037052+00	3441	Kasb ta'limi: kimyoviy texnologiya	3		9	1
4435	2016-03-11 15:49:08.045386+00	3440	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
4436	2016-03-11 15:49:08.053693+00	3439	Kasb ta'limi: neft-gazkimyo sanoati texnologiyasi	3		9	1
4437	2016-03-11 15:49:08.11216+00	3438	Menejment (tarmoqlar va sohalar bo`yicha)	3		9	1
4438	2016-03-11 15:49:08.120481+00	3437	Texnologik jarayonlarni boshqarishning axborot-kommunikatsiya tizimlari	3		9	1
4439	2016-03-11 15:49:08.128703+00	3436	Yengil sanoat texnologiyalari va jihozlari	3		9	1
4440	2016-03-11 15:49:08.137037+00	3435	Texnologiyalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
4441	2016-03-11 15:49:08.145544+00	3434	Neft-gazkimyo sanoati texnologiyasi	3		9	1
4442	2016-03-11 15:49:08.153728+00	3433	Kimyoviy texnologiya (ishlab chiqarish turlari bo`yicha)	3		9	1
4443	2016-03-11 15:49:08.162043+00	3432	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
4444	2016-03-11 15:49:08.170365+00	3431	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
4445	2016-03-11 15:49:08.178839+00	3430	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
4446	2016-03-11 15:49:08.187053+00	3429	Maktabgacha ta'lim	3		9	1
4447	2016-03-11 15:49:08.195411+00	3428	Jismoniy madaniyat	3		9	1
4448	2016-03-11 15:49:08.253939+00	3427	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
4449	2016-03-11 15:49:08.262153+00	3426	Mehnat ta'limi	3		9	1
4450	2016-03-11 15:49:08.270578+00	3425	Chaqiriqqacha harbiy ta'lim	3		9	1
4451	2016-03-11 15:49:08.278725+00	3424	Xorijiy til va adabiyoti: ingliz tili	3		9	1
4452	2016-03-11 15:49:08.287051+00	3423	Musiqa ta'limi	3		9	1
4453	2016-03-11 15:49:08.295387+00	3422	Kasb ta'limi: amaliy san'at	3		9	1
4454	2016-03-11 15:49:08.303886+00	3421	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
4455	2016-03-11 15:49:08.312115+00	3420	Kasb ta'limi: iqtisodiyot	3		9	1
4456	2016-03-11 15:49:08.320445+00	3419	Kasb ta'limi: agronomiya	3		9	1
4457	2016-03-11 15:49:08.328892+00	3418	Pedagogika va psixologiya	3		9	1
4458	2016-03-11 15:49:08.337148+00	3417	Tasviriy san'at va muhandislik grafikasi	3		9	1
4459	2016-03-11 15:49:08.395521+00	3416	Filologiya va tillarni o`qitish: O`zbekiston tili	3		9	1
4460	2016-03-11 15:49:08.403754+00	3415	Filologiya va tillarni o`qitish: ingliz tili	3		9	1
4461	2016-03-11 15:49:08.412085+00	3414	Filologiya va tillarni o`qitish: nemis tili	3		9	1
4462	2016-03-11 15:49:08.420461+00	3413	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
4463	2016-03-11 15:49:08.428954+00	3412	Turizm (faoliyat yo`nalishlari bo`yicha)	3		9	1
4464	2016-03-11 15:49:08.437167+00	3411	Mehmonxona xo`jaligini tashkil etish va boshqarish	3		9	1
4465	2016-03-11 15:49:08.445485+00	3410	Xizmatlar sohasi (faoliyat turlari va yo`nalishlari bo`yicha)	3		9	1
4466	2016-03-11 15:49:08.453994+00	3409	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
4467	2016-03-11 15:49:08.46213+00	3408	Arxivshunoslik	3		9	1
4468	2016-03-11 15:49:08.470497+00	3407	Psixologiya (faoliyat turlari bo`yicha)	3		9	1
4469	2016-03-11 15:49:08.478792+00	3406	Tuproqshunoslik	3		9	1
4470	2016-03-11 15:49:08.537234+00	3405	Geografiya	3		9	1
4471	2016-03-11 15:49:08.545651+00	3404	Filologiya va tillarni o`qitish: fransuz tili	3		9	1
4472	2016-03-11 15:49:08.553871+00	3403	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
4473	2016-03-11 15:49:08.562111+00	3402	Matematika	3		9	1
4474	2016-03-11 15:49:08.570451+00	3401	Biologiya (turlari bo`yicha)	3		9	1
4475	2016-03-11 15:49:08.578879+00	3400	Fizika	3		9	1
4476	2016-03-11 15:49:08.587161+00	3399	Kimyo	3		9	1
4477	2016-03-11 15:49:08.595458+00	3398	Kasb ta'limi: mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
4478	2016-03-11 15:49:08.603829+00	3397	Iqtisodiyot (tarmoqlar va sohalar bo`yicha)	3		9	1
4479	2016-03-11 15:49:08.61227+00	3396	Avtomobilsozlik va traktorsozlik	3		9	1
4480	2016-03-11 15:49:08.620526+00	3395	Yerusti transport tizimlari va ularning ekspluatatsiyasi (transport turlari bo`yicha)	3		9	1
4481	2016-03-11 15:49:08.678976+00	3394	Elektr texnikasi, elektr mexanikasi va elektr texnologiyalari (tarmoqlar bo`yicha)	3		9	1
4482	2016-03-11 15:49:08.68719+00	3393	Metrologiya, standartlashtirish va maxsulot sifati menejmenti (tarmoqlar bo`yicha)	3		9	1
4483	2016-03-11 15:49:08.695576+00	3392	Texnologik mashinalar va jihozlar (tarmoqlar bo`yicha)	3		9	1
4484	2016-03-11 15:49:08.703904+00	3391	Mashinasozlik texnologiyasi, mashinasozlik ishlab chiqarishini jihozlash va avtomatlashtirish	3		9	1
4485	2016-03-11 15:49:08.712171+00	3390	Materialshunoslik va yangi materiallar texnologiyasi	3		9	1
4486	2016-03-11 15:49:08.720499+00	3389	Texnologik jarayonlar va ishlab chiqarishni avtomatlashtirish va boshqarish (tarmoqlar bo`yicha)	3		9	1
4487	2016-03-11 15:49:08.728934+00	3388	Maktabgacha ta'lim	3		9	1
4488	2016-03-11 15:49:08.737152+00	3387	Boshlang`ich ta'lim va sport-tarbiyaviy ish	3		9	1
4489	2016-03-11 15:49:08.745501+00	3386	Milliy g`oya, ma'naviyat asoslari va huquq ta'limi	3		9	1
4490	2016-03-11 15:49:08.753875+00	3385	Xorijiy til va adabiyoti: fransuz tili	3		9	1
4491	2016-03-11 15:49:08.76225+00	3384	Xorijiy til va adabiyoti: nemis tili	3		9	1
4492	2016-03-11 15:49:08.820702+00	3383	Xorijiy til va adabiyoti: ingliz tili	3		9	1
4493	2016-03-11 15:49:08.828864+00	3382	Musiqa ta'limie	3		9	1
4494	2016-03-11 15:49:08.837194+00	3381	Kasb ta'limi: informatika va axborot texnologiyalari	3		9	1
4495	2016-03-11 15:49:08.84561+00	3380	Pedagogika va psixologiya	3		9	1
4496	2016-03-11 15:49:08.853955+00	3379	Tasviriy san'at va muhandislik grafikasi	3		9	1
4497	2016-03-11 15:49:08.862219+00	3378	Jismoniy madaniyat	3		9	1
4498	2016-03-11 15:49:08.870547+00	3377	Jismoniy madaniyat (xotin-qizlar sporti yo`nalishi bo`yicha)	3		9	1
4499	2016-03-11 15:49:08.879006+00	3376	Ekologiya va atrof-muhit muhofazasi (tarmoqlar bo`yicha)	3		9	1
4500	2016-03-11 15:49:08.887192+00	3375	Mehnat iqtisodiyoti va sotsiologiyasi	3		9	1
4501	2016-03-11 15:49:08.895539+00	3374	Geografiya	3		9	1
4502	2016-03-11 15:49:08.903861+00	3373	Kimyo	3		9	1
4503	2016-03-11 15:49:08.962311+00	3372	Fizika	3		9	1
4504	2016-03-11 15:49:08.970651+00	3371	Biologiya (turlari bo`yicha)	3		9	1
4505	2016-03-11 15:49:08.978865+00	3370	Matematika	3		9	1
4506	2016-03-11 15:49:08.987197+00	3369	Tarix (mamlakatlar va mintaqalar bo`yicha)	3		9	1
4507	2016-03-11 15:49:08.995528+00	3368	Filologiya va tillarni o`qitish: O`zbekiston tili	3		9	1
4508	2016-03-11 15:49:09.003995+00	3367	Mehnat ta'limi	3		9	1
4509	2016-03-11 15:49:09.012243+00	3366	Informatika o`qitish metodikasi	3		9	1
4510	2016-06-10 14:36:09.210617+00	166	Jahon iqtisodiyoti va diplomatiya universiteti	2	Changed college_type and address.	7	1
4511	2016-06-10 15:16:05.611937+00	1	Subject object	1	Added.	12	1
4512	2016-06-10 15:16:50.732824+00	2	ona tili va adabiyot	1	Added.	12	1
4513	2016-06-10 15:16:58.351349+00	3	ingliz tili	1	Added.	12	1
4514	2016-06-10 15:17:04.027346+00	4	rus tili	1	Added.	12	1
4515	2016-06-10 15:17:09.475005+00	5	fizika	1	Added.	12	1
4516	2016-06-10 15:17:15.589195+00	6	kimyo	1	Added.	12	1
4517	2016-06-10 15:17:21.855843+00	7	geografiya	1	Added.	12	1
4518	2016-06-10 15:17:55.594088+00	1	rus	1	Added.	10	1
4519	2016-06-10 15:18:01.297116+00	2	o'zbek	1	Added.	10	1
4520	2016-06-13 11:18:43.526179+00	4550	Samarqand davlat universiteti : Filologiya va tillarni o`qitish: O`zbek tili	2	Changed name.	9	1
4521	2016-06-13 12:20:03.666793+00	238	Toshkent kimyo-texnologiya instituti Qo`ng`irot bo`limi	2	Changed parent.	7	1
4522	2016-06-13 12:20:18.193075+00	234	Navoiy davlat konchilik institutining Olmaliq fakulteti	2	Changed parent.	7	1
4523	2016-06-13 12:20:31.669524+00	230	Navoiy davlat konchilik institutining Zarafshon fakulteti	2	Changed parent.	7	1
4524	2016-06-13 12:21:56.44396+00	191	Andijon davlat tibbiyot instituti	2	Changed college_type.	7	1
4525	2016-06-13 12:22:01.756934+00	189	Andijon davlat universiteti	2	Changed college_type.	7	1
4526	2016-06-13 12:22:07.335715+00	190	Andijon mashinasozlik instituti	2	Changed college_type and address.	7	1
4527	2016-06-13 12:22:16.560222+00	192	Andijon qishloq xo`jalik instituti	2	Changed college_type.	7	1
4528	2016-06-13 12:22:22.536204+00	195	Buxoro davlat tibbiyot instituti	2	Changed college_type and address.	7	1
4529	2016-06-13 12:22:28.903975+00	193	Buxoro davlat universiteti	2	Changed college_type.	7	1
4530	2016-06-13 12:22:35.157134+00	194	Buxoro muhandislik-texnologiya instituti	2	Changed college_type.	7	1
4531	2016-06-13 12:22:42.281565+00	223	Farg`ona davlat universiteti	2	Changed college_type.	7	1
4532	2016-06-13 12:22:58.668568+00	224	Farg`ona politexnika instituti	2	Changed college_type.	7	1
4533	2016-06-13 12:23:06.346653+00	197	Guliston davlat universiteti	2	Changed college_type.	7	1
4534	2016-06-13 12:23:19.533885+00	199	Jizzax davlat pedagogika instituti	2	Changed college_type.	7	1
4535	2016-06-13 12:23:35.984521+00	198	Jizzax politexnika instituti	2	Changed college_type.	7	1
4536	2016-06-13 12:23:43.859096+00	174	Milliy raqs va xoreografiya oliy maktabi	2	Changed college_type.	7	1
4537	2016-06-13 12:23:50.766132+00	176	Milliy rassomchilik va dizayn instituti	2	Changed college_type and address.	7	1
4538	2016-06-13 12:23:56.631588+00	209	Namangan davlat universiteti	2	Changed college_type.	7	1
4539	2016-06-13 12:24:02.323499+00	211	Namangan muhandislik-pedagogika instituti	2	Changed college_type and address.	7	1
4540	2016-06-13 12:24:10.34803+00	210	Namangan muhandislik-texnologik instituti	2	Changed college_type.	7	1
4541	2016-06-13 12:24:18.619003+00	229	Navoiy davlat konchilik instituti	2	Changed college_type.	7	1
4542	2016-06-13 12:24:27.846646+00	228	Navoiy davlat pedagogika instituti	2	Changed college_type.	7	1
4543	2016-06-13 12:24:36.678897+00	201	Nukus davlat pedagogika instituti	2	Changed college_type.	7	1
4544	2016-06-13 12:24:44.407626+00	157	O`zbekiston davlat jahon tillari universiteti	2	Changed college_type.	7	1
4545	2016-06-13 12:24:49.486009+00	175	O`zbekiston davlat jismoniy tarbiya instituti	2	Changed college_type.	7	1
4546	2016-06-13 12:24:54.622178+00	172	O`zbekiston davlat konservatoriyasi	2	Changed college_type.	7	1
4547	2016-06-13 12:24:59.483818+00	173	O`zbekiston davlat san'at va madaniyat instituti	2	Changed college_type.	7	1
4548	2016-06-13 12:25:13.238716+00	204	O`zbekiston davlat san'at va madaniyat instituti Nukus filiali	2	Changed parent.	7	1
4549	2016-06-13 12:25:20.388804+00	154	O`zbekiston milliy universiteti	2	Changed college_type and address.	7	1
4550	2016-06-13 12:25:27.468541+00	206	Qarshi davlat universiteti	2	Changed college_type.	7	1
4551	2016-06-13 12:25:33.599506+00	207	Qarshi muhandislik - iqtisodiyot instituti	2	Changed college_type.	7	1
4552	2016-06-13 12:25:38.921065+00	225	Qo`qon davlat pedagogika instituti	2	Changed college_type.	7	1
4553	2016-06-13 12:25:43.775985+00	200	Qoraqalpoq davlat universiteti	2	Changed college_type.	7	1
4554	2016-06-13 12:25:49.432966+00	213	Samarqand davlat arxitektura-qurilish instituti	2	Changed college_type.	7	1
4555	2016-06-13 12:25:55.705839+00	214	Samarqand davlat chet tillar instituti	2	Changed college_type.	7	1
4556	2016-06-13 12:26:01.726387+00	216	Samarqand davlat tibbiyot instituti	2	Changed college_type.	7	1
4557	2016-06-13 12:26:08.016977+00	212	Samarqand davlat universiteti	2	Changed college_type.	7	1
4558	2016-06-13 12:26:14.774249+00	215	Samarqand iqtisodiyot va servis instituti	2	Changed college_type.	7	1
4559	2016-06-13 12:26:20.369758+00	217	Samarqand qishloq xo`jalik instituti	2	Changed college_type.	7	1
4560	2016-06-13 12:26:34.086998+00	180	Soliq akademiyasi	2	Changed college_type and address.	7	1
4561	2016-06-13 12:26:41.114253+00	219	Termiz davlat universiteti	2	Changed college_type.	7	1
4562	2016-06-13 12:26:51.174625+00	159	Toshkent arxitektura-qurilish instituti	2	Changed college_type.	7	1
4563	2016-06-13 12:26:56.932029+00	163	Toshkent avtomobil-yo`llari instituti	2	Changed college_type.	7	1
4564	2016-06-13 12:27:04.576598+00	177	Toshkent axborot texnologiyalari universiteti	2	Changed college_type.	7	1
4565	2016-06-13 12:27:22.616103+00	227	Toshkent axborot texnologiyalari universitetining Farg`ona filiali	2	Changed parent.	7	1
4566	2016-06-13 12:27:35.252405+00	205	Toshkent axborot texnologiyalari universitetining Nukus filiali	2	Changed parent.	7	1
4567	2016-06-13 12:28:04.464418+00	208	Toshkent axborot texnologiyalari universitetining Qarshi filiali	2	Changed parent.	7	1
4568	2016-06-13 12:28:13.213451+00	218	Toshkent axborot texnologiyalari universitetining Samarqand filiali	2	Changed parent.	7	1
4569	2016-06-13 12:28:24.240205+00	222	Toshkent axborot texnologiyalari universitetining Urganch filiali	2	Changed parent.	7	1
4570	2016-06-13 12:28:33.769952+00	188	Toshkent davlat agrar universiteti	2	Changed college_type.	7	1
4571	2016-06-13 12:28:44.29735+00	203	Toshkent davlat agrar universitetining Nukus filiali	2	Changed parent.	7	1
4572	2016-06-13 12:28:54.016347+00	156	Toshkent davlat iqtisodiyot universiteti	2	Changed college_type.	7	1
4573	2016-06-13 12:29:05.072223+00	164	Toshkent davlat pedagogika universiteti	2	Changed college_type.	7	1
4574	2016-06-13 12:29:11.604622+00	158	Toshkent davlat sharqshunoslik instituti	2	Changed college_type.	7	1
4575	2016-06-13 12:29:17.044499+00	169	Toshkent davlat stomatologiya instituti	2	Changed college_type.	7	1
4576	2016-06-13 12:29:24.586128+00	155	Toshkent davlat texnika universiteti	2	Changed college_type.	7	1
4577	2016-06-13 12:29:31.986236+00	178	Toshkent davlat yuridik universiteti	2	Changed college_type.	7	1
4578	2016-06-13 12:29:44.330507+00	170	Toshkent farmatsevtika instituti	2	Changed college_type and address.	7	1
4579	2016-06-13 12:29:53.200899+00	171	Toshkent irrigatsiya va melioratsiya instituti	2	Changed college_type and address.	7	1
4580	2016-06-13 12:30:07.769095+00	196	Toshkent irrigatsiya va melioratsiya instituti Buxoro filiali	2	Changed parent.	7	1
4581	2016-06-13 12:30:21.066074+00	165	Toshkent islom universiteti	2	Changed college_type.	7	1
4582	2016-06-13 12:30:27.768576+00	162	Toshkent kimyo-texnologiya instituti	2	Changed college_type.	7	1
4583	2016-06-13 12:31:00.722673+00	161	Toshkent moliya instituti	2	Changed college_type.	7	1
4584	2016-06-13 12:31:10.022681+00	168	Toshkent pediatriya tibbiyot instituti	2	Changed college_type.	7	1
4585	2016-06-13 12:31:24.050766+00	202	Toshkent pediatriya tibbiyot institutining Nukus filiali	2	Changed parent.	7	1
4586	2016-06-13 12:31:37.183075+00	179	Toshkent temir yo`l transporti muhandislari instituti	2	Changed college_type.	7	1
4587	2016-06-13 12:31:57.45112+00	167	Toshkent tibbiyot akademiyasi	2	Changed college_type and address.	7	1
4588	2016-06-13 12:32:11.257077+00	226	Toshkent tibbiyot akademiyasi Farg`ona filiali	2	Changed parent.	7	1
4589	2016-06-13 12:32:35.389644+00	221	Toshkent tibbiyot akademiyasi Urganch filiali	2	Changed parent.	7	1
4590	2016-06-13 12:32:44.704763+00	160	Toshkent to`qimachilik va yengil sanoat instituti	2	Changed college_type.	7	1
4591	2016-06-13 12:33:03.514206+00	220	Urganch davlat universiteti	2	Changed college_type.	7	1
4592	2016-06-13 15:06:33.880364+00	317	5230200	3		8	1
4593	2016-06-13 15:08:16.605259+00	198	5240100	3		8	1
4594	2016-06-13 15:10:34.242281+00	319	5321300	3		8	1
4595	2016-06-13 15:10:56.46593+00	232	5141100	3		8	1
4596	2016-06-13 15:11:19.015169+00	78	5140600	3		8	1
4597	2016-06-13 15:11:33.231551+00	125	5310100	3		8	1
4598	2016-06-13 15:11:45.427677+00	184	5320400	3		8	1
4599	2016-06-13 15:11:57.585779+00	313	5330200	3		8	1
4600	2016-06-13 15:12:10.655964+00	64	5120300	3		8	1
4601	2016-06-13 15:12:49.353341+00	47	5111100	3		8	1
4602	2016-06-13 15:12:56.464969+00	17	5111100	2	Changed name.	8	1
4603	2016-06-13 15:13:06.294784+00	4359	Andijon davlat universiteti : Musiqa ta'limi	2	Changed name.	9	1
4604	2016-06-13 15:13:21.163132+00	316	5230400	3		8	1
4605	2016-06-13 15:13:33.019273+00	34	5130100	3		8	1
4606	2016-06-13 15:13:45.704167+00	121	5640100	3		8	1
4607	2016-06-13 15:33:41.423483+00	3	turkman	1	Added.	10	1
4608	2016-06-13 15:33:47.798908+00	4	tojik	1	Added.	10	1
4609	2016-06-13 15:33:57.515751+00	5	qoraqalpoq	1	Added.	10	1
4610	2016-06-13 15:34:05.359929+00	6	qozoq	1	Added.	10	1
4611	2016-06-13 15:34:19.609409+00	7	qirg'iz	1	Added.	10	1
4612	2016-06-13 18:31:12.066044+00	239	Toshkent davlat stomatologiya instituti Buxoro filiali	1	Added.	7	1
4613	2016-06-13 18:32:16.603684+00	240	Toshkent davlat stomatologiya instituti Samarqand filiali	1	Added.	7	1
4614	2016-06-13 18:33:55.129644+00	239	Toshkent davlat stomatologiya instituti Buxoro filiali	2	Changed region.	7	1
4615	2016-06-13 18:34:38.883822+00	241	Toshkent davlat stomatologiya instituti Andijon filiali	1	Added.	7	1
4616	2016-06-13 18:35:47.550471+00	242	Toshkent davlat stomatologiya instituti Nukus filiali	1	Added.	7	1
4617	2016-06-24 17:12:53.277711+00	7	geografiya	3		12	1
4618	2016-06-24 17:12:53.400737+00	6	kimyo	3		12	1
4619	2016-06-24 17:12:53.40895+00	5	fizika	3		12	1
4620	2016-06-24 17:12:53.41728+00	4	rus tili	3		12	1
4621	2016-06-24 17:12:53.425692+00	3	ingliz tili	3		12	1
4622	2016-06-24 17:12:53.433948+00	2	ona tili va adabiyot	3		12	1
4623	2016-06-24 17:12:53.442295+00	1	matematika	3		12	1
4624	2016-06-25 09:01:46.115983+00	354	5111010	2	Changed block_1, block_2 and block_3.	8	1
4625	2016-06-25 09:02:51.777502+00	351	5111042	2	Changed block_1, block_2 and block_3.	8	1
4626	2016-06-25 09:05:32.5441+00	348	5350702	2	Changed block_1, block_2 and block_3.	8	1
4627	2016-06-25 09:06:10.325685+00	347	5350701	2	Changed block_1, block_2 and block_3.	8	1
4628	2016-06-25 09:06:51.771536+00	346	5311702	2	Changed block_1, block_2 and block_3.	8	1
4629	2016-06-25 09:07:33.392215+00	345	5311701	2	Changed block_1, block_2 and block_3.	8	1
4630	2016-06-25 09:08:21.033743+00	344	5310703	2	Changed block_1, block_2 and block_3.	8	1
4631	2016-06-25 09:08:40.775478+00	343	5310702	2	Changed block_1, block_2 and block_3.	8	1
4632	2016-06-25 09:09:02.991733+00	342	5310701	2	Changed block_1, block_2 and block_3.	8	1
4633	2016-06-25 09:09:45.610386+00	341	5111031	2	Changed block_1, block_2 and block_3.	8	1
4634	2016-06-25 09:10:48.198591+00	340	5150404	2	Changed block_1, block_2 and block_3.	8	1
4635	2016-06-25 09:11:32.90858+00	338	5111056	2	Changed block_1, block_2 and block_3.	8	1
4636	2016-06-25 09:12:03.142746+00	337	5111055	2	Changed block_1, block_2 and block_3.	8	1
4637	2016-06-25 09:12:33.208917+00	336	5111054	2	Changed block_1, block_2 and block_3.	8	1
4638	2016-06-25 09:13:32.565796+00	335	5120301	2	Changed block_1, block_2 and block_3.	8	1
4639	2016-06-25 09:16:37.119883+00	330	5311300	2	Changed block_1, block_2 and block_3.	8	1
4640	2016-06-25 09:18:33.774643+00	329	5111036	2	Changed block_1, block_2 and block_3.	8	1
4641	2016-06-25 09:19:30.27078+00	325	5111061	2	Changed block_1, block_2 and block_3.	8	1
4642	2016-07-05 10:51:26.890719+00	26	Matematika	2	Changed name.	12	1
4643	2016-07-05 10:51:40.553586+00	12	Ijodiy imtihon	2	Changed name.	12	1
4644	2016-07-05 10:51:58.098896+00	17	Chet tili (ingliz/nemis/fransuz)	2	Changed name.	12	1
4645	2016-07-14 11:33:27.416951+00	1	admissions.uz	2	Changed domain and name.	15	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 4645, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	college	college
8	branch	branch
9	branch	faculty
10	branch	studylang
11	score	score
12	subject	subject
13	profession	profession
15	sites	site
16	robots	url
17	robots	rule
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_content_type_id_seq', 17, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2016-01-26 18:43:15.53336+00
2	auth	0001_initial	2016-01-26 18:43:16.346222+00
3	admin	0001_initial	2016-01-26 18:43:16.52081+00
4	admin	0002_logentry_remove_auto_add	2016-01-26 18:43:16.553383+00
5	contenttypes	0002_remove_content_type_name	2016-01-26 18:43:16.602833+00
6	auth	0002_alter_permission_name_max_length	2016-01-26 18:43:16.627446+00
7	auth	0003_alter_user_email_max_length	2016-01-26 18:43:16.644043+00
8	auth	0004_alter_user_username_opts	2016-01-26 18:43:16.658601+00
9	auth	0005_alter_user_last_login_null	2016-01-26 18:43:16.677365+00
10	auth	0006_require_contenttypes_0002	2016-01-26 18:43:16.686043+00
11	auth	0007_alter_validators_add_error_messages	2016-01-26 18:43:16.699825+00
12	sessions	0001_initial	2016-01-26 18:43:16.861546+00
13	branch	0001_initial	2016-01-28 17:43:23.215676+00
14	college	0001_initial	2016-01-28 17:43:23.323975+00
15	branch	0002_faculty_college	2016-01-28 17:43:23.400098+00
16	score	0001_initial	2016-01-28 17:43:23.541441+00
17	subject	0001_initial	2016-01-28 17:43:23.608383+00
18	profession	0001_initial	2016-01-30 00:09:58.520079+00
19	branch	0003_auto_20160130_0026	2016-01-30 00:26:52.10511+00
20	profession	0002_profession_subjects	2016-01-30 00:26:52.279745+00
21	college	0002_auto_20160130_0032	2016-01-30 00:32:24.354113+00
22	branch	0004_faculty_entrance_type	2016-01-30 00:34:38.829157+00
23	college	0003_auto_20160310_1548	2016-03-10 15:48:32.218465+00
24	college	0004_auto_20160310_1604	2016-03-10 16:04:15.147984+00
25	college	0005_auto_20160310_1605	2016-03-10 16:05:08.806638+00
26	college	0006_auto_20160310_1607	2016-03-10 16:07:49.305536+00
27	college	0007_auto_20160310_1610	2016-03-10 16:10:21.637065+00
28	branch	0005_auto_20160310_1628	2016-03-10 16:28:23.172985+00
29	branch	0006_faculty_name	2016-03-10 16:57:23.305415+00
30	branch	0007_auto_20160310_1701	2016-03-10 17:01:59.101976+00
31	branch	0008_auto_20160310_1704	2016-03-10 17:04:58.824428+00
32	branch	0009_auto_20160311_1508	2016-03-11 15:09:32.20686+00
33	score	0002_auto_20160613_1031	2016-06-13 10:31:27.364464+00
34	score	0003_auto_20160613_1038	2016-06-13 10:38:32.256324+00
35	college	0008_college_parent	2016-06-13 12:19:20.916901+00
36	branch	0010_auto_20160613_1456	2016-06-13 15:14:05.287111+00
37	college	0009_auto_20160613_1456	2016-06-13 15:14:05.385784+00
38	score	0004_auto_20160613_1610	2016-06-13 16:10:54.529395+00
39	score	0005_auto_20160613_1611	2016-06-13 16:11:28.920502+00
40	score	0006_auto_20160613_1620	2016-06-13 16:20:57.88335+00
41	sites	0001_initial	2016-07-14 11:31:49.714714+00
42	robots	0001_initial	2016-07-14 11:31:50.344786+00
43	sites	0002_alter_domain_unique	2016-07-14 11:31:50.600855+00
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_migrations_id_seq', 43, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
lylskvzra8oxf200ejyidi31n2z1r6g4	OTMyNWRjN2JjN2M4OTgyMDdkNzg0ZDMyNTkxMTQ5NjJhNmM2MDFjMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjBjZjczY2VlMGQ4MWNiMmZjOWEzY2Y3NDMyZmIyNDdiNDQ0ZTk3ZjMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2016-02-21 05:16:35.588927+00
uahxk4kcqbybmbg1rgmwdcjrb19fa5t0	NzhkMTkxMTZmMjNmNmFlNzczYjM5YmY1OWQwY2U0MWNkMDhlYWY5ZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiIwY2Y3M2NlZTBkODFjYjJmYzlhM2NmNzQzMmZiMjQ3YjQ0NGU5N2YzIn0=	2016-03-24 14:47:55.270246+00
jp4b1710sswlpop45y4vp4c30lg11w6c	MDAyYWI1MDY2ODRjZjJjNGM3NWZhODc4ZmY3Zjk4ZWQ1MzcyNTNhZjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMGNmNzNjZWUwZDgxY2IyZmM5YTNjZjc0MzJmYjI0N2I0NDRlOTdmMyIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2016-06-24 14:35:21.156601+00
uwddqb2eaipb0j452skdtb99n8u0ern2	MDAyYWI1MDY2ODRjZjJjNGM3NWZhODc4ZmY3Zjk4ZWQ1MzcyNTNhZjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMGNmNzNjZWUwZDgxY2IyZmM5YTNjZjc0MzJmYjI0N2I0NDRlOTdmMyIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2016-07-08 17:09:20.625592+00
cg2i4mlvjtd5x1y59p750ocga1y7go8r	NmEwOTRkZGEyM2VmYjJkMWI0ZTE3MjFkMTVlNWQ2ODBjMDlmM2Q4MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjBjZjczY2VlMGQ4MWNiMmZjOWEzY2Y3NDMyZmIyNDdiNDQ0ZTk3ZjMiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2016-07-09 15:43:58.262555+00
36rtgc4q79oyit5vmubzdmn374cpwjoc	YjYzZDZlMDM1MjgyNGZhMGZjMjVmOTgyYzU0YjljZTE1NDgwMjI0ZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiMGNmNzNjZWUwZDgxY2IyZmM5YTNjZjc0MzJmYjI0N2I0NDRlOTdmMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2016-07-19 10:50:32.534141+00
rfky3fuel1a395hoqpyjx4z0hqkwbsvi	YjYzZDZlMDM1MjgyNGZhMGZjMjVmOTgyYzU0YjljZTE1NDgwMjI0ZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiMGNmNzNjZWUwZDgxY2IyZmM5YTNjZjc0MzJmYjI0N2I0NDRlOTdmMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2016-07-19 10:50:39.336333+00
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: admissions_user
--

COPY django_site (id, domain, name) FROM stdin;
1	admissions.uz	admissions.uz
\.


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admissions_user
--

SELECT pg_catalog.setval('django_site_id_seq', 1, true);


--
-- Data for Name: profession_profession; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY profession_profession (id, name, description) FROM stdin;
\.


--
-- Name: profession_profession_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('profession_profession_id_seq', 1, false);


--
-- Data for Name: profession_profession_subjects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY profession_profession_subjects (id, profession_id, subject_id) FROM stdin;
\.


--
-- Name: profession_profession_subjects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('profession_profession_subjects_id_seq', 1, false);


--
-- Data for Name: robots_rule; Type: TABLE DATA; Schema: public; Owner: admissions_user
--

COPY robots_rule (id, robot, crawl_delay) FROM stdin;
\.


--
-- Data for Name: robots_rule_allowed; Type: TABLE DATA; Schema: public; Owner: admissions_user
--

COPY robots_rule_allowed (id, rule_id, url_id) FROM stdin;
\.


--
-- Name: robots_rule_allowed_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admissions_user
--

SELECT pg_catalog.setval('robots_rule_allowed_id_seq', 1, false);


--
-- Data for Name: robots_rule_disallowed; Type: TABLE DATA; Schema: public; Owner: admissions_user
--

COPY robots_rule_disallowed (id, rule_id, url_id) FROM stdin;
\.


--
-- Name: robots_rule_disallowed_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admissions_user
--

SELECT pg_catalog.setval('robots_rule_disallowed_id_seq', 1, false);


--
-- Name: robots_rule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admissions_user
--

SELECT pg_catalog.setval('robots_rule_id_seq', 1, false);


--
-- Data for Name: robots_rule_sites; Type: TABLE DATA; Schema: public; Owner: admissions_user
--

COPY robots_rule_sites (id, rule_id, site_id) FROM stdin;
\.


--
-- Name: robots_rule_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admissions_user
--

SELECT pg_catalog.setval('robots_rule_sites_id_seq', 1, false);


--
-- Data for Name: robots_url; Type: TABLE DATA; Schema: public; Owner: admissions_user
--

COPY robots_url (id, pattern) FROM stdin;
\.


--
-- Name: robots_url_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admissions_user
--

SELECT pg_catalog.setval('robots_url_id_seq', 1, false);


--
-- Data for Name: score_score; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY score_score (id, budget_score, contract_score, faculty_id, study_lang_id, applications, budget_places, contract_places, pub_date, year) FROM stdin;
3108	88.80	73.40	5315	2	177	5	15	2016-06-13 18:37:38.806407+00	2015
3109	122.80	74.70	5314	2	177	5	15	2016-06-13 18:37:38.878363+00	2015
3110	99.40	75.40	5313	2	194	5	25	2016-06-13 18:37:38.886515+00	2015
3111	100.50	76.60	5312	2	216	5	20	2016-06-13 18:37:38.89484+00	2015
3112	116.00	75.50	5311	2	354	10	40	2016-06-13 18:37:38.903173+00	2015
3113	120.10	79.50	5310	2	391	10	40	2016-06-13 18:37:38.911519+00	2015
3114	105.80	78.60	5309	2	427	15	50	2016-06-13 18:37:38.919832+00	2015
3115	110.70	79.50	5308	2	385	15	45	2016-06-13 18:37:38.928144+00	2015
3116	146.10	126.50	4736	2	421	5	20	2016-06-13 18:37:38.937501+00	2015
3117	173.00	151.20	4735	2	280	5	15	2016-06-13 18:37:38.944934+00	2015
3118	155.70	141.30	4733	2	1365	60	65	2016-06-13 18:37:38.953298+00	2015
3119	131.30	74.90	4733	1	224	35	40	2016-06-13 18:37:38.961607+00	2015
3120	161.70	138.70	4732	2	260	10	10	2016-06-13 18:37:38.969986+00	2015
3121	154.80	128.50	4732	1	42	5	5	2016-06-13 18:37:38.978314+00	2015
3122	148.50	131.70	4731	2	343	10	18	2016-06-13 18:37:38.986643+00	2015
3123	110.80	97.00	4731	1	78	5	12	2016-06-13 18:37:38.994988+00	2015
3124	149.20	131.10	4730	2	935	30	45	2016-06-13 18:37:39.003323+00	2015
3125	153.70	103.20	4730	1	86	10	15	2016-06-13 18:37:39.011687+00	2015
3126	137.80	118.00	4729	2	373	9	21	2016-06-13 18:37:39.020125+00	2015
3127	137.40	89.10	4729	1	89	6	14	2016-06-13 18:37:39.028315+00	2015
3128	164.70	133.50	4728	2	635	12	48	2016-06-13 18:37:39.036647+00	2015
3129	160.90	90.00	4728	1	120	8	22	2016-06-13 18:37:39.044969+00	2015
3130	137.80	118.80	4727	2	276	5	15	2016-06-13 18:37:39.05332+00	2015
3131	123.00	108.40	5370	2	74	6	9	2016-06-13 18:37:39.062447+00	2015
3132	132.90	113.90	5184	2	77	4	5	2016-06-13 18:37:39.070112+00	2015
3133	176.60	108.60	5184	1	17	2	4	2016-06-13 18:37:39.078452+00	2015
3134	142.00	116.80	5185	2	43	2	4	2016-06-13 18:37:39.086782+00	2015
3135	204.90	115.90	5185	1	11	1	3	2016-06-13 18:37:39.095121+00	2015
3136	170.30	141.10	5186	2	77	3	7	2016-06-13 18:37:39.103445+00	2015
3137	169.90	122.30	5187	2	419	7	17	2016-06-13 18:37:39.11193+00	2015
3138	146.10	120.60	5188	2	163	6	14	2016-06-13 18:37:39.136815+00	2015
3139	153.80	120.10	5189	2	183	3	11	2016-06-13 18:37:39.145191+00	2015
3140	144.00	97.40	5371	1	62	2	10	2016-06-13 18:37:39.153492+00	2015
3141	156.00	121.00	5181	2	142	3	7	2016-06-13 18:37:39.161828+00	2015
3142	155.70	119.20	5181	1	16	1	4	2016-06-13 18:37:39.170153+00	2015
3143	173.80	127.00	5180	2	115	3	5	2016-06-13 18:37:39.178478+00	2015
3144	176.40	123.70	5180	1	22	1	6	2016-06-13 18:37:39.186795+00	2015
3145	122.50	114.90	5173	2	50	2	4	2016-06-13 18:37:39.19517+00	2015
3146	142.20	93.90	5174	2	183	2	4	2016-06-13 18:37:39.203495+00	2015
3147	139.90	105.80	5175	2	102	2	8	2016-06-13 18:37:39.211877+00	2015
3148	134.50	112.80	5176	2	75	2	8	2016-06-13 18:37:39.220167+00	2015
3149	148.50	84.00	5176	1	15	1	5	2016-06-13 18:37:39.228501+00	2015
3150	137.80	107.60	5177	2	80	2	18	2016-06-13 18:37:39.236796+00	2015
3151	169.60	112.80	5178	2	255	3	21	2016-06-13 18:37:39.24516+00	2015
3152	178.00	126.50	5179	2	152	5	15	2016-06-13 18:37:39.253426+00	2015
3153	150.90	125.20	5179	1	21	1	4	2016-06-13 18:37:39.261819+00	2015
3154	158.70	117.30	5427	2	154	2	18	2016-06-13 18:37:39.286266+00	2015
3155	\N	126.50	5427	1	15	0	5	2016-06-13 18:37:39.295449+00	2015
3156	201.60	167.30	4654	2	101	9	21	2016-06-13 18:37:39.304645+00	2015
3157	204.80	183.80	4655	2	41	4	8	2016-06-13 18:37:39.312019+00	2015
3158	204.80	194.00	4655	1	43	2	6	2016-06-13 18:37:39.320462+00	2015
3159	217.10	134.40	4656	2	749	5	40	2016-06-13 18:37:39.328822+00	2015
3160	200.30	154.30	4656	1	169	5	10	2016-06-13 18:37:39.337131+00	2015
3161	199.20	169.10	4657	2	125	6	19	2016-06-13 18:37:39.345424+00	2015
3162	209.80	174.80	4658	2	351	4	76	2016-06-13 18:37:39.353761+00	2015
3163	207.50	180.20	4658	1	67	3	17	2016-06-13 18:37:39.362116+00	2015
3164	209.80	170.00	4659	2	236	4	46	2016-06-13 18:37:39.370443+00	2015
3165	206.60	170.90	4659	1	70	3	17	2016-06-13 18:37:39.378782+00	2015
3166	203.60	161.80	4653	2	142	5	25	2016-06-13 18:37:39.387112+00	2015
3167	210.80	175.30	4652	2	331	5	65	2016-06-13 18:37:39.395469+00	2015
3168	201.50	175.50	4652	1	65	3	17	2016-06-13 18:37:39.403842+00	2015
3169	206.40	174.90	4646	2	271	8	72	2016-06-13 18:37:39.41217+00	2015
3170	207.50	177.80	4647	2	113	5	20	2016-06-13 18:37:39.420494+00	2015
3171	206.80	175.30	4648	2	93	4	14	2016-06-13 18:37:39.4287+00	2015
3172	202.40	175.80	4648	1	44	1	11	2016-06-13 18:37:39.437168+00	2015
3173	203.90	172.60	5428	2	206	4	41	2016-06-13 18:37:39.470037+00	2015
3174	204.30	170.60	5428	1	54	1	14	2016-06-13 18:37:39.479175+00	2015
3175	201.40	146.90	4649	2	272	10	25	2016-06-13 18:37:39.487497+00	2015
3176	202.70	157.90	4649	1	83	5	20	2016-06-13 18:37:39.495814+00	2015
3177	209.00	97.70	4650	2	325	5	25	2016-06-13 18:37:39.504191+00	2015
3178	196.00	178.40	4650	1	65	5	15	2016-06-13 18:37:39.512469+00	2015
3179	204.80	146.00	4651	2	152	4	31	2016-06-13 18:37:39.520875+00	2015
3180	201.50	161.80	4651	1	50	1	14	2016-06-13 18:37:39.529203+00	2015
3181	131.70	87.80	5316	2	66	2	5	2016-06-13 18:37:39.538398+00	2015
3182	89.20	76.70	5316	5	123	3	15	2016-06-13 18:37:39.545847+00	2015
3183	109.60	95.20	5317	2	60	2	5	2016-06-13 18:37:39.570856+00	2015
3184	110.40	83.50	5317	5	144	3	15	2016-06-13 18:37:39.57917+00	2015
3185	80.70	75.50	5318	2	90	2	5	2016-06-13 18:37:39.587506+00	2015
3186	86.90	70.60	5318	5	124	3	15	2016-06-13 18:37:39.595895+00	2015
3187	88.50	70.30	5319	2	89	4	5	2016-06-13 18:37:39.604217+00	2015
3188	79.80	71.10	5319	5	134	6	10	2016-06-13 18:37:39.612604+00	2015
3189	197.00	157.40	5064	2	393	12	30	2016-06-13 18:37:39.62186+00	2015
3190	175.30	157.40	5064	1	53	2	6	2016-06-13 18:37:39.629282+00	2015
3191	182.60	146.70	5063	2	824	48	103	2016-06-13 18:37:39.637595+00	2015
3192	183.60	168.40	5063	1	105	4	10	2016-06-13 18:37:39.645913+00	2015
3193	166.10	120.30	5062	2	692	36	92	2016-06-13 18:37:39.654227+00	2015
3194	160.50	139.40	5062	1	84	4	8	2016-06-13 18:37:39.662596+00	2015
76	152.18	\N	4636	2	720	60	\N	2016-06-13 16:23:59.497235+00	2013
3195	151.10	113.40	5060	2	367	13	41	2016-06-13 18:37:39.670979+00	2015
3196	124.60	115.70	5060	1	15	2	4	2016-06-13 18:37:39.679919+00	2015
3197	132.50	110.50	4782	2	864	10	30	2016-06-13 18:37:39.705252+00	2015
3198	101.00	80.70	4783	2	170	10	40	2016-06-13 18:37:39.712731+00	2015
3199	133.30	107.40	4784	2	553	7	13	2016-06-13 18:37:39.721028+00	2015
3200	90.70	77.40	4785	2	699	9	21	2016-06-13 18:37:39.729349+00	2015
3201	107.70	89.00	4786	2	638	6	14	2016-06-13 18:37:39.737726+00	2015
3202	134.20	108.20	4787	2	251	5	35	2016-06-13 18:37:39.74603+00	2015
3203	120.10	105.80	5390	1	990	20	30	2016-06-13 18:37:39.754386+00	2015
3204	160.80	143.80	4788	2	1279	50	80	2016-06-13 18:37:39.762712+00	2015
3205	138.90	117.10	4789	2	190	4	8	2016-06-13 18:37:39.770932+00	2015
3206	130.50	120.60	4795	2	2287	37	53	2016-06-13 18:37:39.779393+00	2015
3207	130.20	106.60	4794	2	1514	10	40	2016-06-13 18:37:39.787717+00	2015
3208	160.90	141.20	4793	2	766	10	20	2016-06-13 18:37:39.796038+00	2015
3209	119.80	95.70	4792	2	348	5	25	2016-06-13 18:37:39.804392+00	2015
3210	161.70	148.80	4791	2	1634	40	60	2016-06-13 18:37:39.812714+00	2015
3211	121.30	102.40	5391	1	655	10	20	2016-06-13 18:37:39.821039+00	2015
3212	157.60	131.70	4790	2	258	4	16	2016-06-13 18:37:39.829378+00	2015
3213	94.00	82.80	5392	4	156	10	10	2016-06-13 18:37:39.837714+00	2015
3214	171.30	145.90	4781	2	1373	25	55	2016-06-13 18:37:39.846021+00	2015
3215	136.90	120.60	4780	2	1102	44	46	2016-06-13 18:37:39.854348+00	2015
3216	150.30	136.00	4766	2	589	15	25	2016-06-13 18:37:39.862783+00	2015
3217	139.90	126.40	4767	2	1851	30	40	2016-06-13 18:37:39.871103+00	2015
3218	124.40	110.50	4768	2	863	25	35	2016-06-13 18:37:39.879433+00	2015
3219	92.40	79.80	4769	2	1149	20	40	2016-06-13 18:37:39.887809+00	2015
3220	141.80	124.20	4770	2	1682	15	35	2016-06-13 18:37:39.896143+00	2015
3221	103.00	95.20	5429	2	846	9	11	2016-06-13 18:37:39.911974+00	2015
3222	173.80	142.60	4771	2	487	2	18	2016-06-13 18:37:39.921205+00	2015
3223	164.80	135.60	4772	2	469	2	18	2016-06-13 18:37:39.92953+00	2015
3224	156.80	116.00	4773	2	485	2	18	2016-06-13 18:37:39.9379+00	2015
3225	126.50	110.40	4774	2	1404	45	45	2016-06-13 18:37:39.946242+00	2015
3226	84.60	78.70	4775	2	1870	30	30	2016-06-13 18:37:39.954569+00	2015
3227	105.40	87.10	4776	2	2266	35	55	2016-06-13 18:37:39.9629+00	2015
3228	113.60	96.40	4777	2	1101	30	30	2016-06-13 18:37:39.971243+00	2015
3229	124.10	108.50	4778	2	1307	20	20	2016-06-13 18:37:39.97957+00	2015
3230	86.80	78.70	4779	2	1147	5	25	2016-06-13 18:37:39.987919+00	2015
3231	141.30	121.10	4645	2	537	16	32	2016-06-13 18:37:39.997016+00	2015
3232	119.30	97.10	4645	1	180	4	8	2016-06-13 18:37:40.004547+00	2015
3233	97.20	81.50	4644	2	829	20	28	2016-06-13 18:37:40.012884+00	2015
3234	82.70	77.20	4644	1	226	5	7	2016-06-13 18:37:40.021246+00	2015
3235	140.70	119.50	4643	2	543	16	32	2016-06-13 18:37:40.029553+00	2015
3236	110.60	85.80	4643	1	173	4	8	2016-06-13 18:37:40.037888+00	2015
3237	155.20	130.40	4642	2	415	16	23	2016-06-13 18:37:40.04623+00	2015
3238	134.80	102.10	4642	1	160	4	7	2016-06-13 18:37:40.054539+00	2015
3239	133.80	108.70	4641	2	844	21	39	2016-06-13 18:37:40.062947+00	2015
3240	130.60	79.80	4641	1	195	5	10	2016-06-13 18:37:40.07126+00	2015
3241	124.40	92.30	4640	2	661	16	32	2016-06-13 18:37:40.079643+00	2015
3242	120.40	77.40	4640	1	161	4	8	2016-06-13 18:37:40.087903+00	2015
3243	137.10	114.80	4639	2	669	28	32	2016-06-13 18:37:40.096222+00	2015
3244	125.30	111.00	4639	1	193	7	8	2016-06-13 18:37:40.104563+00	2015
3245	111.50	89.10	4638	2	811	20	27	2016-06-13 18:37:40.112887+00	2015
3246	88.80	79.50	4638	1	199	5	8	2016-06-13 18:37:40.121233+00	2015
3247	130.50	104.50	4637	2	513	12	16	2016-06-13 18:37:40.129549+00	2015
3248	118.90	99.10	4637	1	243	3	9	2016-06-13 18:37:40.137838+00	2015
3249	147.40	122.10	5292	2	900	22	60	2016-06-13 18:37:40.147078+00	2015
3250	119.10	96.90	5292	1	121	8	20	2016-06-13 18:37:40.154588+00	2015
3251	140.20	107.30	5293	2	320	7	19	2016-06-13 18:37:40.162929+00	2015
3252	124.00	103.10	5293	1	55	3	6	2016-06-13 18:37:40.171323+00	2015
3253	141.40	119.00	5294	2	487	11	34	2016-06-13 18:37:40.179651+00	2015
3254	125.20	102.20	5294	1	58	4	11	2016-06-13 18:37:40.188039+00	2015
3255	145.00	125.30	5295	2	451	7	7	2016-06-13 18:37:40.196378+00	2015
3256	81.10	78.50	5295	1	49	3	3	2016-06-13 18:37:40.204723+00	2015
3257	157.60	128.60	5291	2	979	45	105	2016-06-13 18:37:40.213868+00	2015
3258	137.90	107.50	5291	1	192	15	35	2016-06-13 18:37:40.221478+00	2015
3259	131.80	107.30	5290	2	279	7	18	2016-06-13 18:37:40.229637+00	2015
3260	143.90	110.30	5290	1	37	3	7	2016-06-13 18:37:40.237944+00	2015
3261	147.50	124.30	5289	2	398	10	30	2016-06-13 18:37:40.246384+00	2015
3262	139.90	109.00	5289	1	54	5	15	2016-06-13 18:37:40.254659+00	2015
3263	132.60	122.20	5288	2	329	6	6	2016-06-13 18:37:40.263018+00	2015
3264	100.10	94.10	5288	1	17	4	4	2016-06-13 18:37:40.27131+00	2015
3265	193.30	169.80	4948	2	1513	93	107	2016-06-13 18:37:40.280329+00	2015
3266	165.90	129.80	4948	1	136	10	30	2016-06-13 18:37:40.28801+00	2015
3267	150.50	129.00	4947	2	394	3	9	2016-06-13 18:37:40.296388+00	2015
3268	165.40	120.40	4947	1	40	2	6	2016-06-13 18:37:40.30473+00	2015
3269	170.00	150.40	4946	2	312	3	9	2016-06-13 18:37:40.313092+00	2015
3270	159.80	123.50	4946	1	50	2	6	2016-06-13 18:37:40.321378+00	2015
3271	152.90	136.80	4945	2	400	5	15	2016-06-13 18:37:40.329729+00	2015
3272	162.60	146.80	4944	2	317	3	9	2016-06-13 18:37:40.338033+00	2015
3273	151.50	113.40	4944	1	56	2	6	2016-06-13 18:37:40.346366+00	2015
3274	167.30	151.00	4943	2	321	3	9	2016-06-13 18:37:40.354702+00	2015
3275	148.00	119.60	4943	1	38	2	6	2016-06-13 18:37:40.36307+00	2015
3276	171.40	111.30	4942	2	58	15	20	2016-06-13 18:37:40.371449+00	2015
3277	152.20	83.00	4942	1	22	5	10	2016-06-13 18:37:40.379786+00	2015
3278	162.60	142.80	4941	2	114	3	9	2016-06-13 18:37:40.388116+00	2015
3279	134.80	91.00	4941	1	15	2	6	2016-06-13 18:37:40.396441+00	2015
3280	175.20	151.30	4940	2	81	3	9	2016-06-13 18:37:40.404786+00	2015
3281	158.20	71.10	4940	1	10	2	6	2016-06-13 18:37:40.413105+00	2015
3282	140.80	105.80	4939	2	12	3	9	2016-06-13 18:37:40.421442+00	2015
3283	136.30	107.50	4939	1	10	2	6	2016-06-13 18:37:40.429758+00	2015
3284	166.80	140.80	4938	2	395	15	15	2016-06-13 18:37:40.463191+00	2015
3285	155.00	121.50	4938	1	58	5	5	2016-06-13 18:37:40.471487+00	2015
3286	159.90	136.00	5023	2	440	32	33	2016-06-13 18:37:40.480627+00	2015
3287	\N	\N	5023	6	19	3	7	2016-06-13 18:37:40.488032+00	2015
3288	127.30	110.90	5023	1	52	5	10	2016-06-13 18:37:40.496528+00	2015
3289	161.80	148.90	5024	2	332	15	25	2016-06-13 18:37:40.504866+00	2015
3290	120.30	98.00	5024	1	44	5	10	2016-06-13 18:37:40.51317+00	2015
3291	161.80	120.30	5025	2	346	17	23	2016-06-13 18:37:40.521533+00	2015
3292	169.00	111.90	5025	1	30	3	7	2016-06-13 18:37:40.529849+00	2015
3293	180.40	148.50	5026	2	686	7	33	2016-06-13 18:37:40.538222+00	2015
3294	186.70	170.20	5026	1	62	3	7	2016-06-13 18:37:40.546524+00	2015
3295	169.80	140.90	5027	2	464	7	13	2016-06-13 18:37:40.554854+00	2015
3296	107.00	81.80	5027	1	60	3	7	2016-06-13 18:37:40.563185+00	2015
3297	187.40	165.60	5028	2	1125	12	43	2016-06-13 18:37:40.57153+00	2015
3298	147.20	119.00	5028	1	109	3	12	2016-06-13 18:37:40.579914+00	2015
3299	161.80	142.00	5029	2	466	10	15	2016-06-13 18:37:40.588252+00	2015
3300	129.30	96.30	5029	1	53	5	10	2016-06-13 18:37:40.596553+00	2015
3301	167.80	116.40	5030	2	346	7	43	2016-06-13 18:37:40.696572+00	2015
3302	156.00	109.90	5030	1	38	3	17	2016-06-13 18:37:40.704904+00	2015
3303	180.20	135.70	5031	2	954	5	40	2016-06-13 18:37:40.713227+00	2015
3304	148.60	108.80	5031	1	209	5	10	2016-06-13 18:37:40.721552+00	2015
3305	155.00	121.50	5032	2	186	12	28	2016-06-13 18:37:40.729885+00	2015
3306	147.70	109.20	5032	1	36	3	17	2016-06-13 18:37:40.738215+00	2015
3307	162.70	137.70	5022	2	79	7	18	2016-06-13 18:37:40.746538+00	2015
3308	138.20	115.10	5022	1	29	3	12	2016-06-13 18:37:40.755108+00	2015
3309	\N	125.50	5021	2	288	5	30	2016-06-13 18:37:40.763204+00	2015
3310	\N	115.70	5021	1	40	5	10	2016-06-13 18:37:40.771538+00	2015
3311	181.10	165.20	5020	2	1590	40	85	2016-06-13 18:37:40.779892+00	2015
3312	160.80	134.70	5394	1	479	20	30	2016-06-13 18:37:40.788213+00	2015
3313	168.40	125.70	5395	1	140	5	20	2016-06-13 18:37:40.796535+00	2015
3314	172.80	111.40	5396	6	61	5	15	2016-06-13 18:37:40.804937+00	2015
3315	151.20	132.10	5397	1	181	20	30	2016-06-13 18:37:40.813307+00	2015
3316	188.00	164.00	5009	2	1565	47	103	2016-06-13 18:37:40.821799+00	2015
3317	151.70	127.60	5009	1	353	18	32	2016-06-13 18:37:40.82994+00	2015
3318	173.30	149.40	5010	2	132	5	15	2016-06-13 18:37:40.838222+00	2015
3319	116.20	94.80	5011	2	169	27	48	2016-06-13 18:37:40.846554+00	2015
3320	111.00	93.30	5011	1	31	5	10	2016-06-13 18:37:40.854907+00	2015
3321	190.10	137.30	5012	2	613	7	23	2016-06-13 18:37:40.863319+00	2015
3322	152.10	105.40	5012	1	26	3	7	2016-06-13 18:37:40.871654+00	2015
3323	171.00	144.80	5013	2	1464	10	55	2016-06-13 18:37:40.880087+00	2015
3324	163.10	121.40	5013	1	147	5	15	2016-06-13 18:37:40.888577+00	2015
3325	157.60	110.60	5425	6	28	5	10	2016-06-13 18:37:40.896578+00	2015
3326	171.50	135.00	5014	2	1012	8	37	2016-06-13 18:37:40.904966+00	2015
3327	163.40	93.40	5014	1	108	2	13	2016-06-13 18:37:40.913288+00	2015
3328	183.90	123.50	5015	2	1255	7	58	2016-06-13 18:37:40.921647+00	2015
3329	158.20	110.10	5015	1	206	3	12	2016-06-13 18:37:40.929941+00	2015
3330	\N	142.30	5016	2	410	7	23	2016-06-13 18:37:40.938261+00	2015
3331	\N	113.10	5016	1	45	3	7	2016-06-13 18:37:40.946605+00	2015
3332	\N	148.40	5017	2	237	5	15	2016-06-13 18:37:40.954947+00	2015
3333	173.50	139.30	5018	2	1160	3	17	2016-06-13 18:37:40.963352+00	2015
3334	135.70	79.00	5018	1	28	2	8	2016-06-13 18:37:40.971694+00	2015
3335	194.20	166.70	5019	2	618	5	25	2016-06-13 18:37:40.980012+00	2015
3336	193.80	179.50	4954	2	336	15	25	2016-06-13 18:37:40.989024+00	2015
3337	203.30	169.10	4954	1	117	10	10	2016-06-13 18:37:40.996621+00	2015
3338	218.00	180.50	4955	2	228	4	50	2016-06-13 18:37:41.005035+00	2015
3339	213.10	159.50	4955	1	150	1	35	2016-06-13 18:37:41.013367+00	2015
3340	220.30	180.20	4956	2	329	4	50	2016-06-13 18:37:41.021659+00	2015
3341	225.70	163.90	4956	1	137	1	35	2016-06-13 18:37:41.030005+00	2015
3342	120.60	103.80	4824	2	144	5	15	2016-06-13 18:37:41.038992+00	2015
3343	133.60	104.50	4823	2	498	5	20	2016-06-13 18:37:41.046632+00	2015
3344	160.10	130.20	4821	2	196	5	20	2016-06-13 18:37:41.054999+00	2015
3345	116.90	73.50	4820	2	142	5	20	2016-06-13 18:37:41.063341+00	2015
3346	145.10	119.30	4819	2	225	5	20	2016-06-13 18:37:41.071682+00	2015
3347	135.90	124.00	5325	1	360	10	15	2016-06-13 18:37:41.080055+00	2015
3348	154.20	137.90	4818	2	613	35	55	2016-06-13 18:37:41.088387+00	2015
3349	165.40	138.90	4818	1	156	5	15	2016-06-13 18:37:41.096699+00	2015
3350	171.90	140.10	4817	2	373	5	35	2016-06-13 18:37:41.105058+00	2015
3351	150.30	121.80	4825	2	643	10	50	2016-06-13 18:37:41.113365+00	2015
3352	128.70	110.90	4826	2	508	5	15	2016-06-13 18:37:41.121703+00	2015
3353	\N	106.00	4834	2	748	10	75	2016-06-13 18:37:41.130034+00	2015
3354	127.40	91.30	4833	2	863	10	50	2016-06-13 18:37:41.138384+00	2015
3355	158.90	144.20	4832	2	566	25	25	2016-06-13 18:37:41.146712+00	2015
3356	165.00	148.20	4831	2	352	15	35	2016-06-13 18:37:41.155102+00	2015
3357	158.80	130.50	4830	2	109	5	15	2016-06-13 18:37:41.163433+00	2015
3358	171.10	150.10	4829	2	101	5	15	2016-06-13 18:37:41.171767+00	2015
3359	175.50	151.70	4828	2	690	23	47	2016-06-13 18:37:41.180098+00	2015
3360	160.00	115.00	4827	2	143	15	25	2016-06-13 18:37:41.188428+00	2015
3361	158.60	141.10	4816	2	142	5	20	2016-06-13 18:37:41.196753+00	2015
3362	140.90	129.30	4815	2	527	20	30	2016-06-13 18:37:41.205064+00	2015
3363	152.30	128.10	4814	2	199	20	30	2016-06-13 18:37:41.213422+00	2015
3364	122.90	82.80	5430	2	168	9	11	2016-06-13 18:37:41.229226+00	2015
3365	96.40	78.80	4803	2	384	20	30	2016-06-13 18:37:41.23841+00	2015
3366	123.90	106.30	4802	2	489	20	30	2016-06-13 18:37:41.246723+00	2015
3367	125.40	113.00	4801	2	472	10	15	2016-06-13 18:37:41.255075+00	2015
3368	135.20	123.90	4800	2	392	5	15	2016-06-13 18:37:41.263415+00	2015
3369	198.00	136.50	4799	2	205	2	28	2016-06-13 18:37:41.271761+00	2015
3370	127.50	99.00	4798	2	362	20	20	2016-06-13 18:37:41.28012+00	2015
3371	129.50	105.30	4797	2	377	20	30	2016-06-13 18:37:41.288512+00	2015
3372	122.20	103.50	4796	2	366	20	20	2016-06-13 18:37:41.296824+00	2015
3373	93.00	79.90	4804	2	991	35	35	2016-06-13 18:37:41.305187+00	2015
3374	88.90	81.90	4805	2	950	25	25	2016-06-13 18:37:41.313475+00	2015
3375	87.70	80.50	4813	2	1116	30	30	2016-06-13 18:37:41.321832+00	2015
3376	127.40	111.30	4812	2	206	20	20	2016-06-13 18:37:41.33017+00	2015
3377	121.10	90.20	4811	2	358	15	25	2016-06-13 18:37:41.338482+00	2015
3378	123.60	110.40	4810	2	224	20	20	2016-06-13 18:37:41.346796+00	2015
3379	109.50	91.20	4809	2	658	15	25	2016-06-13 18:37:41.355137+00	2015
3380	144.00	125.50	4808	2	171	10	15	2016-06-13 18:37:41.36351+00	2015
3381	157.40	132.60	4807	2	289	20	30	2016-06-13 18:37:41.371838+00	2015
3382	136.80	112.20	4806	2	322	15	20	2016-06-13 18:37:41.380159+00	2015
3383	82.00	76.60	5431	2	358	5	15	2016-06-13 18:37:41.395992+00	2015
3384	175.80	154.40	5056	2	180	5	10	2016-06-13 18:37:41.405935+00	2015
3385	160.00	116.90	5056	1	62	2	8	2016-06-13 18:37:41.413536+00	2015
3386	186.70	165.80	5057	2	714	27	60	2016-06-13 18:37:41.422112+00	2015
3387	172.00	149.10	5057	1	124	5	13	2016-06-13 18:37:41.43019+00	2015
3388	185.50	151.20	5059	2	224	3	18	2016-06-13 18:37:41.438537+00	2015
3389	143.50	118.40	5059	1	32	2	7	2016-06-13 18:37:41.446873+00	2015
3390	196.30	174.00	5432	2	2123	38	104	2016-06-13 18:37:41.462776+00	2015
3391	191.80	141.80	5432	1	452	13	35	2016-06-13 18:37:41.471939+00	2015
3392	169.70	147.50	5213	2	1813	104	195	2016-06-13 18:37:41.481037+00	2015
3393	153.10	125.00	5213	1	539	36	65	2016-06-13 18:37:41.488648+00	2015
3394	153.00	121.60	5212	2	615	45	67	2016-06-13 18:37:41.496944+00	2015
3395	150.90	127.10	5212	1	339	15	23	2016-06-13 18:37:41.505301+00	2015
3396	168.90	148.60	5211	2	2179	111	203	2016-06-13 18:37:41.513576+00	2015
3397	163.10	141.90	5211	1	526	39	67	2016-06-13 18:37:41.521972+00	2015
3398	\N	79.50	5210	2	257	0	37	2016-06-13 18:37:41.53027+00	2015
3399	155.70	120.20	5210	2	771	30	75	2016-06-13 18:37:41.538631+00	2015
3400	\N	69.50	5210	1	43	0	13	2016-06-13 18:37:41.548137+00	2015
3401	133.60	115.60	5210	1	249	10	25	2016-06-13 18:37:41.555836+00	2015
3402	189.80	166.60	5209	2	389	11	26	2016-06-13 18:37:41.564133+00	2015
3403	183.80	155.20	5209	1	146	4	9	2016-06-13 18:37:41.572448+00	2015
3404	163.80	142.20	5208	2	563	7	22	2016-06-13 18:37:41.580729+00	2015
3405	131.30	115.70	5208	1	108	3	8	2016-06-13 18:37:41.58878+00	2015
3406	145.10	131.70	5207	2	769	22	34	2016-06-13 18:37:41.59698+00	2015
3407	128.20	108.60	5207	1	153	8	11	2016-06-13 18:37:41.605344+00	2015
3408	161.60	129.40	5206	2	608	15	30	2016-06-13 18:37:41.613657+00	2015
3409	141.50	114.30	5206	1	133	5	10	2016-06-13 18:37:41.621989+00	2015
3410	124.40	97.90	5107	2	512	9	16	2016-06-13 18:37:41.631093+00	2015
3411	138.90	117.20	5108	2	381	8	17	2016-06-13 18:37:41.640482+00	2015
3412	112.90	87.40	5109	2	293	8	17	2016-06-13 18:37:41.64743+00	2015
3413	184.10	156.40	5110	2	271	3	12	2016-06-13 18:37:41.655779+00	2015
3414	175.90	132.00	5110	1	48	1	9	2016-06-13 18:37:41.664094+00	2015
3415	184.90	157.10	5111	2	202	4	16	2016-06-13 18:37:41.671983+00	2015
3416	107.80	85.80	5112	2	659	15	45	2016-06-13 18:37:41.68033+00	2015
3417	116.90	94.80	5106	2	908	40	90	2016-06-13 18:37:41.68867+00	2015
3418	108.70	82.00	5105	2	593	15	45	2016-06-13 18:37:41.69699+00	2015
3419	113.70	91.40	5104	2	615	20	55	2016-06-13 18:37:41.705389+00	2015
3420	115.70	75.30	5098	2	526	16	64	2016-06-13 18:37:41.713704+00	2015
3421	108.90	84.30	5098	1	58	4	16	2016-06-13 18:37:41.722053+00	2015
3422	103.50	83.50	5099	2	1447	52	128	2016-06-13 18:37:41.730358+00	2015
3423	94.90	79.40	5100	2	410	10	20	2016-06-13 18:37:41.738684+00	2015
3424	128.50	106.40	5101	2	1895	45	145	2016-06-13 18:37:41.747037+00	2015
3425	111.90	89.10	5101	1	63	5	15	2016-06-13 18:37:41.755375+00	2015
3426	125.20	104.60	5102	2	1006	45	65	2016-06-13 18:37:41.76377+00	2015
3427	105.50	83.70	5102	1	57	5	15	2016-06-13 18:37:41.772045+00	2015
3428	130.70	112.80	5103	2	1983	80	120	2016-06-13 18:37:41.780387+00	2015
3429	109.30	79.80	5103	1	119	5	15	2016-06-13 18:37:41.788758+00	2015
3430	175.20	154.30	5433	2	547	16	47	2016-06-13 18:37:41.804566+00	2015
3431	142.40	120.20	5433	1	126	4	8	2016-06-13 18:37:41.813755+00	2015
3432	147.50	130.90	4691	2	179	5	20	2016-06-13 18:37:41.822732+00	2015
3433	165.50	113.90	4692	2	453	7	63	2016-06-13 18:37:41.830425+00	2015
3434	163.60	123.10	4692	1	68	3	17	2016-06-13 18:37:41.838794+00	2015
3435	142.60	115.90	4693	2	795	15	30	2016-06-13 18:37:41.847109+00	2015
3436	135.60	111.50	4693	1	65	5	10	2016-06-13 18:37:41.855665+00	2015
3437	158.90	115.20	4694	2	316	15	35	2016-06-13 18:37:41.863847+00	2015
3438	157.80	121.80	4694	1	77	5	15	2016-06-13 18:37:41.872135+00	2015
3439	139.70	122.30	4695	2	1544	55	65	2016-06-13 18:37:41.880431+00	2015
3440	139.10	97.00	4695	1	274	10	20	2016-06-13 18:37:41.888786+00	2015
3441	153.50	118.70	4689	2	176	5	30	2016-06-13 18:37:41.897127+00	2015
3442	\N	102.10	4689	1	35	0	15	2016-06-13 18:37:41.905443+00	2015
3443	143.70	128.50	4688	2	341	27	28	2016-06-13 18:37:41.913765+00	2015
3444	154.20	99.90	4688	1	64	8	17	2016-06-13 18:37:41.922117+00	2015
3445	142.40	124.20	4682	2	429	31	44	2016-06-13 18:37:41.930416+00	2015
3446	133.40	106.60	4682	1	96	9	16	2016-06-13 18:37:41.938767+00	2015
3447	135.60	125.30	4683	2	220	18	22	2016-06-13 18:37:41.947148+00	2015
3448	133.50	107.60	4683	1	55	7	13	2016-06-13 18:37:41.955499+00	2015
3449	150.20	124.30	4684	2	193	7	18	2016-06-13 18:37:41.963842+00	2015
3450	152.40	120.90	4684	1	59	3	12	2016-06-13 18:37:41.972147+00	2015
3451	143.20	115.10	4685	2	248	31	44	2016-06-13 18:37:41.980501+00	2015
3452	153.40	136.70	4685	1	62	9	16	2016-06-13 18:37:41.988841+00	2015
3453	139.70	121.20	4686	2	125	14	16	2016-06-13 18:37:41.997168+00	2015
3454	137.90	117.10	4686	1	45	6	9	2016-06-13 18:37:42.005456+00	2015
3455	140.20	100.50	4687	2	159	5	15	2016-06-13 18:37:42.013821+00	2015
3456	175.70	159.30	5279	2	196	5	15	2016-06-13 18:37:42.023242+00	2015
3457	158.30	126.00	5278	2	201	5	15	2016-06-13 18:37:42.030486+00	2015
3458	205.80	166.20	5277	2	238	4	36	2016-06-13 18:37:42.038818+00	2015
3459	213.10	186.70	5277	1	38	1	9	2016-06-13 18:37:42.047245+00	2015
3460	191.20	138.40	5276	2	290	4	36	2016-06-13 18:37:42.055569+00	2015
3461	195.20	172.50	5276	1	49	1	9	2016-06-13 18:37:42.063911+00	2015
3462	196.10	160.20	5275	2	343	4	36	2016-06-13 18:37:42.07221+00	2015
3463	214.10	154.80	5275	1	41	1	9	2016-06-13 18:37:42.080546+00	2015
3464	206.80	183.80	5274	2	290	4	36	2016-06-13 18:37:42.088888+00	2015
3465	241.90	175.40	5274	1	48	1	9	2016-06-13 18:37:42.097217+00	2015
3466	209.90	157.60	5273	2	177	5	20	2016-06-13 18:37:42.105541+00	2015
3467	206.70	188.70	5272	2	349	4	36	2016-06-13 18:37:42.113862+00	2015
3468	202.70	112.00	5272	1	39	1	9	2016-06-13 18:37:42.122202+00	2015
3469	166.50	138.10	5271	2	354	8	32	2016-06-13 18:37:42.130555+00	2015
3470	184.90	157.00	5271	1	66	2	8	2016-06-13 18:37:42.138926+00	2015
3471	153.90	120.80	5270	2	390	8	42	2016-06-13 18:37:42.14725+00	2015
3472	181.50	139.10	5270	1	44	2	8	2016-06-13 18:37:42.155599+00	2015
3473	162.20	127.70	5269	2	330	8	32	2016-06-13 18:37:42.163927+00	2015
3474	179.90	127.80	5269	1	73	2	8	2016-06-13 18:37:42.172264+00	2015
3475	137.60	\N	4636	2	440	60	0	2016-06-13 18:37:42.181229+00	2015
3476	86.90	\N	4636	1	55	15	0	2016-06-13 18:37:42.188873+00	2015
3477	184.90	164.40	5055	2	509	6	14	2016-06-13 18:37:42.197996+00	2015
3478	176.40	146.10	5055	1	154	3	7	2016-06-13 18:37:42.205586+00	2015
3479	185.60	161.30	5054	2	1774	37	103	2016-06-13 18:37:42.213897+00	2015
3480	179.70	168.80	5054	1	242	8	12	2016-06-13 18:37:42.222238+00	2015
3481	175.30	155.80	5053	2	1738	37	103	2016-06-13 18:37:42.230577+00	2015
3482	169.80	149.90	5053	1	257	8	12	2016-06-13 18:37:42.238917+00	2015
3483	152.20	126.40	5051	2	424	5	19	2016-06-13 18:37:42.247244+00	2015
3484	\N	69.30	5051	1	14	0	6	2016-06-13 18:37:42.255605+00	2015
3485	83.30	75.70	4562	2	237	7	13	2016-06-13 18:37:42.264592+00	2015
3486	123.70	104.20	4563	2	346	6	14	2016-06-13 18:37:42.272285+00	2015
3487	111.60	85.10	4564	2	169	7	13	2016-06-13 18:37:42.280631+00	2015
3488	123.00	84.80	4565	2	335	10	40	2016-06-13 18:37:42.28899+00	2015
3489	121.80	68.00	4565	1	43	5	25	2016-06-13 18:37:42.297353+00	2015
3490	\N	160.00	4566	1	31	0	6	2016-06-13 18:37:42.305675+00	2015
3491	180.20	156.70	4566	2	186	2	12	2016-06-13 18:37:42.31402+00	2015
3492	121.00	95.20	4567	2	779	48	52	2016-06-13 18:37:42.322425+00	2015
3493	95.10	72.30	4567	1	91	7	13	2016-06-13 18:37:42.330711+00	2015
3494	98.90	76.70	4561	2	287	38	34	2016-06-13 18:37:42.339027+00	2015
3495	106.20	70.50	4561	1	34	7	11	2016-06-13 18:37:42.347348+00	2015
3496	102.10	84.50	4560	2	918	65	85	2016-06-13 18:37:42.355713+00	2015
3497	79.70	68.30	4560	1	80	10	15	2016-06-13 18:37:42.364046+00	2015
3498	126.40	109.60	4559	2	464	17	28	2016-06-13 18:37:42.372374+00	2015
3499	130.10	85.80	4559	1	53	3	12	2016-06-13 18:37:42.380703+00	2015
3500	117.40	96.20	4553	2	582	37	43	2016-06-13 18:37:42.389042+00	2015
3501	99.20	74.50	4553	1	68	8	12	2016-06-13 18:37:42.397373+00	2015
3502	93.30	68.10	4554	1	52	8	12	2016-06-13 18:37:42.406695+00	2015
3503	98.10	84.10	4554	2	521	37	43	2016-06-13 18:37:42.449633+00	2015
3504	124.20	110.10	4555	2	492	25	28	2016-06-13 18:37:42.464031+00	2015
3505	113.90	92.60	4555	1	97	5	12	2016-06-13 18:37:42.47238+00	2015
3506	109.20	84.10	4556	1	91	8	10	2016-06-13 18:37:42.480758+00	2015
3507	112.80	93.20	4556	2	360	22	25	2016-06-13 18:37:42.489148+00	2015
3508	78.40	\N	4557	1	31	8	12	2016-06-13 18:37:42.497409+00	2015
3509	83.60	68.10	4557	2	378	47	58	2016-06-13 18:37:42.505744+00	2015
3510	113.20	79.00	4558	2	443	7	43	2016-06-13 18:37:42.514079+00	2015
3511	114.70	72.40	4558	1	40	3	12	2016-06-13 18:37:42.522414+00	2015
3512	146.00	113.70	5299	2	405	22	52	2016-06-13 18:37:42.531526+00	2015
3513	115.70	83.80	5299	1	125	8	18	2016-06-13 18:37:42.540823+00	2015
3514	139.80	106.60	5298	2	164	7	19	2016-06-13 18:37:42.548253+00	2015
3515	114.50	92.50	5298	1	58	3	6	2016-06-13 18:37:42.555736+00	2015
3516	133.60	105.80	5297	2	134	7	15	2016-06-13 18:37:42.564086+00	2015
3517	114.90	94.30	5297	1	55	3	5	2016-06-13 18:37:42.572411+00	2015
3518	138.10	132.50	5296	2	124	7	7	2016-06-13 18:37:42.580745+00	2015
3519	106.30	96.20	5296	1	41	3	3	2016-06-13 18:37:42.589072+00	2015
3520	126.70	96.20	4540	2	288	10	15	2016-06-13 18:37:42.598113+00	2015
3521	155.60	119.20	4541	2	294	5	45	2016-06-13 18:37:42.605702+00	2015
3522	146.40	128.70	4542	2	209	5	10	2016-06-13 18:37:42.614115+00	2015
3523	160.60	137.10	4543	2	153	5	15	2016-06-13 18:37:42.622822+00	2015
3524	146.00	121.00	4544	2	181	5	10	2016-06-13 18:37:42.630749+00	2015
3525	178.40	134.70	4545	2	231	5	25	2016-06-13 18:37:42.639086+00	2015
3526	156.50	133.00	5356	1	944	20	30	2016-06-13 18:37:42.647453+00	2015
3527	211.00	167.80	4546	2	504	5	45	2016-06-13 18:37:42.65584+00	2015
3528	166.10	140.10	4547	2	1976	20	50	2016-06-13 18:37:42.664165+00	2015
3529	148.40	116.70	4547	1	170	6	12	2016-06-13 18:37:42.672453+00	2015
3530	161.70	118.00	5426	4	36	10	12	2016-06-13 18:37:42.68078+00	2015
3531	130.90	77.10	4548	1	38	5	15	2016-06-13 18:37:42.68912+00	2015
3532	164.20	130.00	4548	2	479	25	45	2016-06-13 18:37:42.697441+00	2015
3533	136.80	104.80	4549	2	1094	5	30	2016-06-13 18:37:42.705762+00	2015
3534	\N	\N	4549	4	31	5	10	2016-06-13 18:37:42.714066+00	2015
3535	187.90	170.10	4550	2	1370	35	65	2016-06-13 18:37:42.722407+00	2015
3536	155.00	135.80	5357	1	412	20	30	2016-06-13 18:37:42.730821+00	2015
3537	174.10	128.40	5358	4	73	10	20	2016-06-13 18:37:42.739157+00	2015
3538	193.20	179.00	4551	1	160	5	10	2016-06-13 18:37:42.747492+00	2015
3539	195.20	156.40	4551	2	1353	30	45	2016-06-13 18:37:42.755822+00	2015
3540	192.90	176.40	4552	2	535	12	13	2016-06-13 18:37:42.764154+00	2015
3541	\N	\N	4539	4	37	10	10	2016-06-13 18:37:42.772434+00	2015
3542	140.80	117.00	4539	1	77	6	9	2016-06-13 18:37:42.780826+00	2015
3543	157.50	144.80	4539	2	504	34	31	2016-06-13 18:37:42.789148+00	2015
3544	158.80	145.60	4538	2	596	25	25	2016-06-13 18:37:42.797488+00	2015
3545	108.60	91.70	4538	1	58	10	10	2016-06-13 18:37:42.805803+00	2015
3546	140.50	123.10	4529	1	160	10	10	2016-06-13 18:37:42.814146+00	2015
3547	\N	\N	4529	4	33	10	10	2016-06-13 18:37:42.822416+00	2015
3548	153.80	141.00	4529	2	1742	30	30	2016-06-13 18:37:42.8308+00	2015
3549	145.30	126.40	4528	2	384	30	30	2016-06-13 18:37:42.839149+00	2015
3550	84.90	71.40	4528	1	71	10	10	2016-06-13 18:37:42.847485+00	2015
3551	\N	\N	4528	4	30	10	10	2016-06-13 18:37:42.914155+00	2015
3552	144.30	131.90	4527	2	429	25	25	2016-06-13 18:37:42.922507+00	2015
3553	136.70	123.50	4526	2	254	12	13	2016-06-13 18:37:42.930803+00	2015
3554	136.40	76.60	4525	1	79	5	15	2016-06-13 18:37:42.939187+00	2015
3555	103.70	84.60	4525	2	665	30	25	2016-06-13 18:37:42.948343+00	2015
3556	139.60	113.60	4530	1	125	5	10	2016-06-13 18:37:42.95601+00	2015
3557	146.40	139.70	4530	2	728	20	15	2016-06-13 18:37:42.964259+00	2015
3558	126.10	112.40	4531	2	353	12	13	2016-06-13 18:37:42.972552+00	2015
3559	197.60	168.80	4532	2	1306	10	40	2016-06-13 18:37:42.980856+00	2015
3560	208.90	190.00	4533	2	381	5	35	2016-06-13 18:37:42.989244+00	2015
3561	196.30	174.80	4534	2	263	5	20	2016-06-13 18:37:42.997551+00	2015
3562	181.20	157.80	4535	2	395	10	30	2016-06-13 18:37:43.005891+00	2015
3563	157.50	133.70	4536	2	211	15	20	2016-06-13 18:37:43.014213+00	2015
3564	113.10	88.00	4537	2	748	10	20	2016-06-13 18:37:43.022546+00	2015
3565	133.90	91.90	4417	2	340	6	24	2016-06-13 18:37:43.031737+00	2015
3566	103.10	79.60	4418	2	167	4	16	2016-06-13 18:37:43.123505+00	2015
3567	125.40	95.10	4419	2	184	4	16	2016-06-13 18:37:43.13175+00	2015
3568	164.30	115.90	4420	2	205	4	16	2016-06-13 18:37:43.139859+00	2015
3569	138.80	83.70	4421	2	189	4	16	2016-06-13 18:37:43.147609+00	2015
3570	127.40	83.90	4422	2	227	4	16	2016-06-13 18:37:43.155977+00	2015
3571	127.10	82.90	4416	2	191	4	16	2016-06-13 18:37:43.164311+00	2015
3572	170.50	135.40	4415	2	269	5	25	2016-06-13 18:37:43.172647+00	2015
3573	106.70	93.80	4409	2	1156	90	45	2016-06-13 18:37:43.180988+00	2015
3574	114.90	95.90	5434	2	203	10	10	2016-06-13 18:37:43.20511+00	2015
3575	93.90	80.80	4410	2	1183	70	60	2016-06-13 18:37:43.264694+00	2015
3576	91.50	81.50	4410	1	180	5	15	2016-06-13 18:37:43.272703+00	2015
3577	112.80	81.10	4411	1	178	5	15	2016-06-13 18:37:43.28103+00	2015
3578	126.90	100.70	4411	2	1411	85	85	2016-06-13 18:37:43.289353+00	2015
3579	110.70	78.60	4412	1	161	5	15	2016-06-13 18:37:43.297673+00	2015
3580	103.20	84.00	4412	2	1403	95	95	2016-06-13 18:37:43.306016+00	2015
3581	87.10	74.70	4413	1	162	5	15	2016-06-13 18:37:43.314324+00	2015
3582	95.40	79.90	4413	2	1961	75	105	2016-06-13 18:37:43.322638+00	2015
3583	123.10	95.40	4414	2	965	60	70	2016-06-13 18:37:43.331021+00	2015
3584	117.00	99.40	4414	1	194	5	15	2016-06-13 18:37:43.33931+00	2015
3585	141.00	120.80	4394	2	203	5	25	2016-06-13 18:37:43.34835+00	2015
3586	132.70	108.60	4395	2	584	10	30	2016-06-13 18:37:43.406008+00	2015
3587	127.90	100.60	4396	2	166	3	15	2016-06-13 18:37:43.414305+00	2015
3588	168.20	119.20	4397	2	126	2	14	2016-06-13 18:37:43.422671+00	2015
3589	155.40	80.90	4398	2	127	3	15	2016-06-13 18:37:43.431+00	2015
3590	181.90	146.30	4399	2	141	2	16	2016-06-13 18:37:43.439313+00	2015
3591	177.30	128.60	4400	2	287	5	35	2016-06-13 18:37:43.447722+00	2015
3592	137.60	123.40	5337	1	305	20	30	2016-06-13 18:37:43.456053+00	2015
3593	155.70	128.40	4401	1	84	5	15	2016-06-13 18:37:43.464384+00	2015
3594	175.30	151.20	4401	2	251	17	28	2016-06-13 18:37:43.472729+00	2015
3595	131.40	95.20	4402	2	277	10	70	2016-06-13 18:37:43.481036+00	2015
3596	169.60	139.10	4408	2	455	5	45	2016-06-13 18:37:43.489368+00	2015
3597	116.30	94.40	4407	1	127	5	10	2016-06-13 18:37:43.54867+00	2015
3598	137.80	117.60	4407	2	1116	25	110	2016-06-13 18:37:43.556688+00	2015
3599	113.50	91.10	4406	2	738	10	40	2016-06-13 18:37:43.564376+00	2015
3600	\N	116.30	4405	1	79	3	12	2016-06-13 18:37:43.572692+00	2015
3601	\N	140.00	4405	2	724	7	78	2016-06-13 18:37:43.58103+00	2015
3602	144.80	120.90	4404	2	197	10	20	2016-06-13 18:37:43.589369+00	2015
3603	128.30	101.40	4403	2	358	10	20	2016-06-13 18:37:43.597691+00	2015
3604	160.80	146.40	4393	2	490	35	40	2016-06-13 18:37:43.606005+00	2015
3605	116.90	102.80	5338	1	213	15	15	2016-06-13 18:37:43.61435+00	2015
3606	163.60	120.00	4392	1	68	5	10	2016-06-13 18:37:43.622678+00	2015
3607	169.60	156.90	4392	2	263	20	25	2016-06-13 18:37:43.631195+00	2015
3608	158.00	133.00	4391	2	58	4	8	2016-06-13 18:37:43.689426+00	2015
3609	169.00	143.20	4381	2	56	4	8	2016-06-13 18:37:43.711763+00	2015
3610	185.40	157.10	4380	2	444	20	40	2016-06-13 18:37:43.731081+00	2015
3611	118.90	89.70	4379	1	56	5	9	2016-06-13 18:37:43.739403+00	2015
3612	173.10	161.90	4379	2	176	20	16	2016-06-13 18:37:43.747735+00	2015
3613	149.50	138.40	4378	2	417	20	20	2016-06-13 18:37:43.756053+00	2015
3614	150.40	132.30	4377	2	189	25	25	2016-06-13 18:37:43.76448+00	2015
3615	104.50	86.00	4376	2	215	25	25	2016-06-13 18:37:43.772726+00	2015
3616	113.50	103.20	4382	2	361	20	20	2016-06-13 18:37:43.781065+00	2015
3617	114.90	106.40	4383	2	297	15	15	2016-06-13 18:37:43.789392+00	2015
3618	156.70	132.00	4384	2	347	10	20	2016-06-13 18:37:43.797722+00	2015
3619	120.30	101.20	4385	2	210	5	15	2016-06-13 18:37:43.80604+00	2015
3620	191.00	149.20	4386	2	239	5	25	2016-06-13 18:37:43.814379+00	2015
3621	159.90	129.20	4387	2	169	5	15	2016-06-13 18:37:43.82298+00	2015
3622	149.80	115.30	4388	2	269	10	30	2016-06-13 18:37:43.831042+00	2015
3623	158.50	115.50	4389	2	164	5	15	2016-06-13 18:37:43.839438+00	2015
3624	86.60	75.50	4390	2	292	5	15	2016-06-13 18:37:43.847742+00	2015
3625	187.40	170.00	5435	2	70	4	7	2016-06-13 18:37:43.863589+00	2015
3626	182.60	146.60	5435	1	79	3	6	2016-06-13 18:37:43.872824+00	2015
3627	176.40	153.10	4681	2	405	22	23	2016-06-13 18:37:43.881168+00	2015
3628	176.40	144.60	4681	1	82	3	12	2016-06-13 18:37:43.889473+00	2015
3629	171.30	144.80	4680	2	289	19	29	2016-06-13 18:37:43.897816+00	2015
3630	159.70	139.80	4680	1	130	8	14	2016-06-13 18:37:43.906196+00	2015
3631	183.40	150.90	4679	2	112	8	12	2016-06-13 18:37:43.914496+00	2015
3632	182.80	155.70	4678	2	109	5	15	2016-06-13 18:37:43.922854+00	2015
3633	199.70	176.70	4677	2	433	15	30	2016-06-13 18:37:43.931155+00	2015
3634	150.10	125.40	4677	1	68	5	10	2016-06-13 18:37:43.939509+00	2015
3635	203.20	163.40	4675	2	213	3	27	2016-06-13 18:37:43.947857+00	2015
3636	194.70	162.60	4675	1	119	2	18	2016-06-13 18:37:43.956199+00	2015
3637	171.60	165.80	5436	2	163	6	5	2016-06-13 18:37:43.980329+00	2015
3638	163.50	138.60	5436	1	47	4	5	2016-06-13 18:37:43.989531+00	2015
3639	197.70	147.00	4674	2	91	2	13	2016-06-13 18:37:43.997843+00	2015
3640	187.60	174.40	4673	2	65	1	7	2016-06-13 18:37:44.006175+00	2015
3641	190.10	156.50	4673	1	61	1	6	2016-06-13 18:37:44.014484+00	2015
3642	197.30	156.50	5437	2	76	2	13	2016-06-13 18:37:44.038693+00	2015
3643	201.40	158.20	5437	1	94	1	11	2016-06-13 18:37:44.047891+00	2015
3644	201.60	172.50	5438	2	58	2	11	2016-06-13 18:37:44.072094+00	2015
3645	200.60	150.10	5438	1	77	1	9	2016-06-13 18:37:44.081266+00	2015
3646	140.10	128.00	5124	2	279	4	10	2016-06-13 18:37:44.090238+00	2015
3647	139.90	111.60	5125	2	144	3	11	2016-06-13 18:37:44.097876+00	2015
3648	141.70	104.50	5126	2	117	3	11	2016-06-13 18:37:44.106238+00	2015
3649	138.10	105.80	5127	2	119	3	10	2016-06-13 18:37:44.114549+00	2015
3650	181.70	163.00	5128	2	329	5	15	2016-06-13 18:37:44.122933+00	2015
3651	164.50	120.10	5129	2	185	5	15	2016-06-13 18:37:44.131239+00	2015
3652	176.70	157.80	5130	2	342	5	15	2016-06-13 18:37:44.139592+00	2015
3653	139.70	119.10	5131	2	517	20	40	2016-06-13 18:37:44.147896+00	2015
3654	135.90	114.80	5132	2	1307	30	90	2016-06-13 18:37:44.156234+00	2015
3655	100.00	78.80	5132	1	150	5	15	2016-06-13 18:37:44.1646+00	2015
3656	140.20	119.00	5123	2	825	17	38	2016-06-13 18:37:44.222938+00	2015
3657	112.70	81.00	5123	1	155	3	17	2016-06-13 18:37:44.231233+00	2015
3658	130.40	119.00	5122	2	430	15	25	2016-06-13 18:37:44.239595+00	2015
3659	133.50	108.70	5113	2	779	20	55	2016-06-13 18:37:44.247923+00	2015
3660	121.40	107.30	5114	2	943	40	60	2016-06-13 18:37:44.256258+00	2015
3661	138.00	113.80	5115	2	1725	17	83	2016-06-13 18:37:44.264596+00	2015
3662	114.60	77.50	5115	1	172	3	22	2016-06-13 18:37:44.272928+00	2015
3663	132.40	101.50	5116	2	745	15	60	2016-06-13 18:37:44.281251+00	2015
3664	128.20	106.50	5117	2	580	20	55	2016-06-13 18:37:44.28956+00	2015
3665	134.30	104.70	5118	2	378	5	35	2016-06-13 18:37:44.297899+00	2015
3666	128.00	110.70	5119	2	2350	80	165	2016-06-13 18:37:44.306233+00	2015
3667	119.70	96.40	5119	1	159	5	20	2016-06-13 18:37:44.364615+00	2015
3668	135.30	116.90	5120	2	1491	45	95	2016-06-13 18:37:44.372924+00	2015
3669	118.60	99.00	5120	1	98	5	15	2016-06-13 18:37:44.381253+00	2015
3670	152.40	124.00	5121	2	285	7	33	2016-06-13 18:37:44.389616+00	2015
3671	113.10	83.40	5121	1	84	3	17	2016-06-13 18:37:44.397936+00	2015
3672	132.50	116.70	5439	2	460	10	15	2016-06-13 18:37:44.413758+00	2015
3673	152.40	134.50	5348	2	223	10	30	2016-06-13 18:37:44.424951+00	2015
3674	202.50	162.20	5263	2	107	4	13	2016-06-13 18:37:44.432209+00	2015
3675	186.00	141.60	5263	1	35	1	7	2016-06-13 18:37:44.439796+00	2015
3676	185.80	166.00	5264	2	70	4	8	2016-06-13 18:37:44.448114+00	2015
3677	180.70	148.80	5264	1	37	1	7	2016-06-13 18:37:44.506569+00	2015
3678	179.20	155.00	5265	2	105	4	13	2016-06-13 18:37:44.514627+00	2015
3679	182.90	154.60	5265	1	52	1	7	2016-06-13 18:37:44.52296+00	2015
3680	173.30	158.90	5266	2	556	25	40	2016-06-13 18:37:44.531299+00	2015
3681	148.10	129.40	5266	1	99	8	12	2016-06-13 18:37:44.539684+00	2015
3682	157.40	130.10	5267	2	346	40	42	2016-06-13 18:37:44.548009+00	2015
3683	154.80	124.10	5267	1	141	15	28	2016-06-13 18:37:44.556339+00	2015
3684	163.00	151.00	5260	2	173	7	12	2016-06-13 18:37:44.564664+00	2015
3685	160.70	132.80	5260	1	48	3	8	2016-06-13 18:37:44.572988+00	2015
3686	176.60	147.30	5259	2	346	22	63	2016-06-13 18:37:44.581333+00	2015
3687	166.70	132.80	5259	1	92	8	17	2016-06-13 18:37:44.589658+00	2015
3688	169.10	146.30	5252	2	192	8	18	2016-06-13 18:37:44.597971+00	2015
3689	137.10	120.20	5252	1	80	4	10	2016-06-13 18:37:44.60631+00	2015
3690	154.50	131.40	5253	2	247	20	32	2016-06-13 18:37:44.614644+00	2015
3691	139.70	86.90	5253	1	85	5	18	2016-06-13 18:37:44.622984+00	2015
3692	163.80	140.10	5254	2	208	8	19	2016-06-13 18:37:44.63132+00	2015
3693	135.50	112.70	5254	1	118	7	16	2016-06-13 18:37:44.689656+00	2015
3694	161.80	139.50	5255	2	388	37	58	2016-06-13 18:37:44.697967+00	2015
3695	146.50	103.70	5255	1	89	8	17	2016-06-13 18:37:44.706294+00	2015
3696	175.00	141.90	5257	2	125	8	19	2016-06-13 18:37:44.714634+00	2015
3697	159.40	127.40	5257	1	72	6	17	2016-06-13 18:37:44.723027+00	2015
3698	180.80	158.30	5258	2	410	25	52	2016-06-13 18:37:44.731354+00	2015
3699	159.10	110.40	5258	1	96	5	18	2016-06-13 18:37:44.739685+00	2015
3700	156.40	122.30	4463	2	339	4	16	2016-06-13 18:37:44.748737+00	2015
3701	147.30	116.10	4464	2	357	3	12	2016-06-13 18:37:44.756392+00	2015
3702	116.80	82.50	5440	2	198	3	12	2016-06-13 18:37:44.772209+00	2015
3703	175.30	147.80	4465	2	363	5	15	2016-06-13 18:37:44.781485+00	2015
3704	147.20	91.30	4466	1	80	5	10	2016-06-13 18:37:44.78977+00	2015
3705	134.60	111.90	4466	2	854	30	55	2016-06-13 18:37:44.798099+00	2015
3706	123.30	97.70	4467	1	78	5	10	2016-06-13 18:37:44.806432+00	2015
3707	123.30	101.40	4467	2	554	25	40	2016-06-13 18:37:44.814751+00	2015
3708	137.40	120.10	4468	2	568	25	35	2016-06-13 18:37:44.823122+00	2015
3709	123.30	99.30	4469	2	716	25	35	2016-06-13 18:37:44.831446+00	2015
3710	112.10	98.50	4470	2	883	40	45	2016-06-13 18:37:44.839756+00	2015
3711	92.30	71.30	4462	1	65	5	10	2016-06-13 18:37:44.906495+00	2015
3712	111.70	92.90	4462	2	1367	45	50	2016-06-13 18:37:44.914778+00	2015
3713	113.70	99.00	4461	2	843	45	30	2016-06-13 18:37:44.924707+00	2015
3714	90.30	79.60	4461	1	69	5	10	2016-06-13 18:37:44.932876+00	2015
3715	99.40	76.50	4453	1	47	3	7	2016-06-13 18:37:44.941184+00	2015
3716	121.30	109.80	4453	2	842	37	33	2016-06-13 18:37:44.949432+00	2015
3717	126.10	110.90	4454	2	798	35	45	2016-06-13 18:37:44.957789+00	2015
3718	129.80	111.90	4455	2	706	35	40	2016-06-13 18:37:44.964772+00	2015
3719	126.70	99.90	4455	1	67	5	10	2016-06-13 18:37:44.973192+00	2015
3720	123.20	90.00	4456	2	631	20	30	2016-06-13 18:37:44.981444+00	2015
3721	118.00	99.80	4457	2	721	20	30	2016-06-13 18:37:44.989813+00	2015
3722	131.60	99.00	4458	2	513	10	40	2016-06-13 18:37:44.998129+00	2015
3723	128.40	86.60	4459	2	431	5	55	2016-06-13 18:37:45.006461+00	2015
3724	123.70	84.50	4460	2	543	5	15	2016-06-13 18:37:45.0672+00	2015
3725	152.60	130.40	5044	2	575	30	55	2016-06-13 18:37:45.074184+00	2015
3726	95.10	77.70	5044	1	206	5	10	2016-06-13 18:37:45.081435+00	2015
3727	140.70	110.50	5045	2	575	20	40	2016-06-13 18:37:45.089792+00	2015
3728	91.10	80.50	5046	2	547	15	30	2016-06-13 18:37:45.098123+00	2015
3729	88.60	80.60	5046	1	244	5	10	2016-06-13 18:37:45.106461+00	2015
3730	142.50	128.70	5047	2	1057	20	30	2016-06-13 18:37:45.114788+00	2015
3731	118.90	97.20	5048	2	923	15	45	2016-06-13 18:37:45.124157+00	2015
3732	164.00	141.80	5049	2	1321	30	60	2016-06-13 18:37:45.132431+00	2015
3733	133.40	114.00	5050	2	896	25	35	2016-06-13 18:37:45.140749+00	2015
3734	109.80	95.80	5043	2	400	15	25	2016-06-13 18:37:45.149013+00	2015
3735	113.90	98.80	5042	2	460	15	35	2016-06-13 18:37:45.207162+00	2015
3736	147.40	134.50	5041	2	1196	40	50	2016-06-13 18:37:45.214846+00	2015
3737	116.30	103.80	5415	1	325	10	15	2016-06-13 18:37:45.223163+00	2015
3738	128.70	113.00	5416	1	507	15	25	2016-06-13 18:37:45.231504+00	2015
3739	157.40	139.70	5034	2	1131	45	70	2016-06-13 18:37:45.239838+00	2015
3740	147.40	125.70	5034	1	222	5	10	2016-06-13 18:37:45.248161+00	2015
3741	152.30	137.60	5035	2	745	10	30	2016-06-13 18:37:45.256494+00	2015
3742	129.80	118.20	5036	2	1473	15	30	2016-06-13 18:37:45.26484+00	2015
3743	93.20	85.80	5036	1	244	5	10	2016-06-13 18:37:45.273173+00	2015
3744	127.40	110.80	5037	2	1418	15	35	2016-06-13 18:37:45.281476+00	2015
3745	\N	100.10	5038	2	539	15	55	2016-06-13 18:37:45.289802+00	2015
3746	119.80	91.80	5039	2	285	10	20	2016-06-13 18:37:45.348196+00	2015
3747	108.60	88.90	5040	2	997	20	30	2016-06-13 18:37:45.356494+00	2015
3748	178.90	150.30	4428	2	230	5	19	2016-06-13 18:37:45.365524+00	2015
3749	153.60	127.70	4427	1	77	2	5	2016-06-13 18:37:45.373189+00	2015
3750	174.40	161.20	4427	2	274	8	10	2016-06-13 18:37:45.381538+00	2015
3751	168.10	151.50	4426	2	295	8	10	2016-06-13 18:37:45.389869+00	2015
3752	153.40	122.20	4426	1	41	2	5	2016-06-13 18:37:45.398189+00	2015
3753	172.80	160.50	4425	2	314	7	13	2016-06-13 18:37:45.406523+00	2015
3754	220.90	161.80	4424	2	149	2	18	2016-06-13 18:37:45.41486+00	2015
3755	141.90	129.30	4423	2	165	7	13	2016-06-13 18:37:45.423165+00	2015
3756	177.70	152.90	4881	2	815	7	18	2016-06-13 18:37:45.432087+00	2015
3757	147.30	125.40	4881	1	59	2	3	2016-06-13 18:37:45.43991+00	2015
3758	153.40	131.30	4880	2	1420	12	38	2016-06-13 18:37:45.448286+00	2015
3759	117.10	104.90	4880	1	109	3	7	2016-06-13 18:37:45.456618+00	2015
3760	176.30	159.10	4879	2	899	10	22	2016-06-13 18:37:45.465022+00	2015
3761	136.00	121.50	4879	1	54	2	6	2016-06-13 18:37:45.473304+00	2015
3762	170.00	131.50	4722	2	444	3	12	2016-06-13 18:37:45.482351+00	2015
3763	119.10	83.80	4722	1	65	2	8	2016-06-13 18:37:45.489945+00	2015
3764	173.40	82.80	4724	2	132	3	22	2016-06-13 18:37:45.49829+00	2015
3765	126.90	79.70	4724	1	49	2	13	2016-06-13 18:37:45.506628+00	2015
3766	188.80	148.20	5441	2	306	3	12	2016-06-13 18:37:45.522399+00	2015
3767	168.70	144.70	5441	1	74	2	3	2016-06-13 18:37:45.531625+00	2015
3768	148.20	83.90	5442	2	298	3	17	2016-06-13 18:37:45.547475+00	2015
3769	157.50	104.00	5442	1	88	2	8	2016-06-13 18:37:45.556748+00	2015
3770	136.90	114.70	4721	2	335	15	20	2016-06-13 18:37:45.565003+00	2015
3771	130.90	92.20	4721	1	96	5	10	2016-06-13 18:37:45.573328+00	2015
3772	135.70	113.70	4720	2	782	40	50	2016-06-13 18:37:45.581656+00	2015
3773	115.60	101.10	4720	1	204	15	20	2016-06-13 18:37:45.589999+00	2015
3774	107.80	97.30	4715	2	566	30	35	2016-06-13 18:37:45.598281+00	2015
3775	109.20	87.50	4715	1	132	10	15	2016-06-13 18:37:45.606741+00	2015
3776	110.50	84.80	4716	2	579	12	25	2016-06-13 18:37:45.981446+00	2015
3777	104.50	78.50	4716	1	122	3	10	2016-06-13 18:37:46.000629+00	2015
3778	138.90	123.70	4717	2	2918	80	105	2016-06-13 18:37:46.008946+00	2015
3779	100.30	83.10	4717	1	437	30	35	2016-06-13 18:37:46.016266+00	2015
3780	149.10	134.80	4718	2	575	23	27	2016-06-13 18:37:46.023572+00	2015
3781	106.40	73.40	4718	1	92	7	13	2016-06-13 18:37:46.031891+00	2015
3782	156.20	109.70	4719	2	356	3	25	2016-06-13 18:37:46.040149+00	2015
3783	107.60	72.70	4719	1	81	2	10	2016-06-13 18:37:46.048452+00	2015
3784	149.20	112.70	4985	2	151	10	25	2016-06-13 18:37:46.057472+00	2015
3785	140.10	98.60	4985	5	238	20	40	2016-06-13 18:37:46.06499+00	2015
3786	\N	\N	4985	6	24	5	10	2016-06-13 18:37:46.073269+00	2015
3787	129.20	91.20	4985	1	93	5	10	2016-06-13 18:37:46.081638+00	2015
3788	118.90	101.20	4986	2	127	10	10	2016-06-13 18:37:46.089978+00	2015
3789	115.70	93.00	4986	5	212	15	28	2016-06-13 18:37:46.09832+00	2015
3790	\N	\N	4986	6	26	5	7	2016-06-13 18:37:46.106592+00	2015
3791	85.90	74.50	4987	2	142	5	15	2016-06-13 18:37:46.114972+00	2015
3792	86.80	71.10	4987	5	194	10	30	2016-06-13 18:37:46.123336+00	2015
3793	\N	\N	4987	6	22	5	5	2016-06-13 18:37:46.181601+00	2015
3794	130.40	114.90	4988	2	227	5	15	2016-06-13 18:37:46.189965+00	2015
3795	143.80	115.10	4988	5	285	10	25	2016-06-13 18:37:46.198349+00	2015
3796	122.10	95.40	4989	2	198	5	15	2016-06-13 18:37:46.209011+00	2015
3797	105.30	79.80	4989	5	254	12	18	2016-06-13 18:37:46.217192+00	2015
3798	\N	\N	4989	6	24	3	7	2016-06-13 18:37:46.225597+00	2015
3799	155.60	144.00	4990	2	204	5	10	2016-06-13 18:37:46.233769+00	2015
3800	147.30	111.80	4990	5	224	10	25	2016-06-13 18:37:46.240635+00	2015
3801	123.90	91.70	4991	2	169	5	15	2016-06-13 18:37:46.248382+00	2015
3802	113.00	84.60	4991	5	234	5	25	2016-06-13 18:37:46.256794+00	2015
3803	103.60	77.10	4984	2	60	2	5	2016-06-13 18:37:46.265034+00	2015
3804	106.90	79.50	4984	5	88	3	10	2016-06-13 18:37:46.27333+00	2015
3805	108.70	95.10	4983	2	335	10	20	2016-06-13 18:37:46.28168+00	2015
3806	149.20	112.90	4983	5	414	15	35	2016-06-13 18:37:46.29+00	2015
3807	150.30	105.70	5351	5	141	5	25	2016-06-13 18:37:46.298331+00	2015
3808	140.10	127.60	4976	2	581	30	50	2016-06-13 18:37:46.306667+00	2015
3809	112.70	93.10	5352	1	183	10	15	2016-06-13 18:37:46.36535+00	2015
3810	130.40	115.60	5353	5	471	30	50	2016-06-13 18:37:46.373442+00	2015
3811	129.90	80.50	5354	6	52	10	15	2016-06-13 18:37:46.381809+00	2015
3812	129.90	109.00	5355	1	152	5	10	2016-06-13 18:37:46.391469+00	2015
3813	90.20	80.80	5418	1	153	15	20	2016-06-13 18:37:46.398384+00	2015
3814	150.30	125.10	4977	2	262	10	35	2016-06-13 18:37:46.4067+00	2015
655	\N	\N	5191	1	1	1	\N	2016-06-13 16:24:04.802794+00	2013
3815	157.60	130.60	4977	5	284	15	55	2016-06-13 18:37:46.415081+00	2015
3816	154.00	138.40	4977	1	100	5	10	2016-06-13 18:37:46.423404+00	2015
3817	155.50	143.80	4978	2	198	5	10	2016-06-13 18:37:46.43173+00	2015
3818	123.40	111.80	4978	5	212	10	15	2016-06-13 18:37:46.440047+00	2015
3819	124.40	110.30	4979	2	347	15	20	2016-06-13 18:37:46.448382+00	2015
3820	130.10	115.00	4979	5	421	20	35	2016-06-13 18:37:46.506746+00	2015
3821	93.50	83.80	4979	1	90	5	10	2016-06-13 18:37:46.51514+00	2015
3822	129.10	93.30	5419	6	36	5	10	2016-06-13 18:37:46.523417+00	2015
3823	103.40	88.20	5420	2	109	2	5	2016-06-13 18:37:46.531718+00	2015
3824	164.60	104.60	5420	5	179	3	10	2016-06-13 18:37:46.540037+00	2015
3825	144.20	123.20	4980	2	190	5	15	2016-06-13 18:37:46.548387+00	2015
3826	149.70	123.00	4980	5	311	10	25	2016-06-13 18:37:46.55683+00	2015
3827	\N	\N	4980	6	39	5	10	2016-06-13 18:37:46.565045+00	2015
3828	127.20	110.60	4981	2	65	5	5	2016-06-13 18:37:46.573424+00	2015
3829	145.40	109.30	4981	5	88	5	15	2016-06-13 18:37:46.581745+00	2015
3830	96.20	77.70	4982	2	213	7	10	2016-06-13 18:37:46.590078+00	2015
3831	93.10	77.70	4982	5	290	13	20	2016-06-13 18:37:46.649789+00	2015
3832	218.40	186.30	5268	2	4003	41	349	2016-06-13 18:37:46.657475+00	2015
3833	204.30	168.90	5268	1	614	7	53	2016-06-13 18:37:46.665077+00	2015
3834	158.90	140.60	4765	2	114	4	8	2016-06-13 18:37:46.674066+00	2015
3835	126.20	101.60	4765	1	51	2	6	2016-06-13 18:37:46.681696+00	2015
3836	174.70	153.20	4764	2	633	17	58	2016-06-13 18:37:46.690059+00	2015
3837	160.70	126.50	4764	1	76	3	12	2016-06-13 18:37:46.698397+00	2015
3838	160.40	149.20	4763	2	473	17	38	2016-06-13 18:37:46.706724+00	2015
3839	143.50	124.50	4763	1	67	3	7	2016-06-13 18:37:46.715062+00	2015
3840	152.20	130.10	4762	2	308	9	16	2016-06-13 18:37:46.723386+00	2015
3841	183.90	150.00	5443	2	444	11	30	2016-06-13 18:37:46.739236+00	2015
3842	182.40	126.70	5443	1	96	3	6	2016-06-13 18:37:46.748415+00	2015
3843	129.20	109.60	5092	2	246	8	7	2016-06-13 18:37:46.815753+00	2015
3844	106.30	95.20	5094	2	162	7	8	2016-06-13 18:37:46.823653+00	2015
3845	181.90	146.70	5095	2	622	5	30	2016-06-13 18:37:46.83161+00	2015
3846	180.50	127.10	5096	2	578	5	35	2016-06-13 18:37:46.84008+00	2015
3847	126.30	93.10	5097	2	1212	10	80	2016-06-13 18:37:46.848332+00	2015
3848	96.80	83.40	5091	2	2372	40	70	2016-06-13 18:37:46.856843+00	2015
3849	115.00	99.00	5090	2	1018	25	45	2016-06-13 18:37:46.865096+00	2015
3850	126.30	81.30	5084	2	716	10	50	2016-06-13 18:37:46.873399+00	2015
3851	96.00	84.80	5444	2	328	10	10	2016-06-13 18:37:46.889184+00	2015
3852	115.60	100.20	5085	2	964	20	30	2016-06-13 18:37:46.898393+00	2015
3853	106.20	81.90	5445	2	287	5	15	2016-06-13 18:37:46.964195+00	2015
3854	127.70	93.90	5086	2	2034	20	110	2016-06-13 18:37:46.973473+00	2015
3855	119.30	102.40	5087	2	2157	50	80	2016-06-13 18:37:46.981769+00	2015
3856	110.90	95.10	5446	2	293	10	10	2016-06-13 18:37:46.997567+00	2015
3857	108.50	92.00	5088	2	1754	30	70	2016-06-13 18:37:47.00677+00	2015
3858	107.50	86.90	5089	2	311	10	20	2016-06-13 18:37:47.01508+00	2015
3859	182.50	161.10	5080	2	286	5	20	2016-06-13 18:37:47.02405+00	2015
3860	184.20	133.80	5447	2	241	5	15	2016-06-13 18:37:47.097567+00	2015
3861	162.60	134.60	5081	2	246	5	15	2016-06-13 18:37:47.106743+00	2015
3862	211.00	173.70	5082	2	946	12	88	2016-06-13 18:37:47.115076+00	2015
3863	189.90	149.00	5082	1	129	4	16	2016-06-13 18:37:47.123471+00	2015
3864	201.40	157.60	5083	2	990	14	101	2016-06-13 18:37:47.131736+00	2015
3865	161.60	131.70	5083	1	140	4	16	2016-06-13 18:37:47.14007+00	2015
3866	204.60	177.20	5339	1	131	5	20	2016-06-13 18:37:47.149109+00	2015
3867	196.20	171.90	4586	2	221	12	28	2016-06-13 18:37:47.156867+00	2015
3868	194.30	128.80	4586	1	55	3	7	2016-06-13 18:37:47.165127+00	2015
3869	203.50	180.10	4587	2	259	5	15	2016-06-13 18:37:47.173443+00	2015
3870	189.40	168.50	4588	2	583	30	35	2016-06-13 18:37:47.181772+00	2015
3871	204.80	128.50	5340	1	138	5	15	2016-06-13 18:37:47.19012+00	2015
3872	195.40	150.30	4589	1	75	5	10	2016-06-13 18:37:47.248757+00	2015
3873	188.10	168.80	4589	2	302	15	35	2016-06-13 18:37:47.282023+00	2015
4674	172.20	132.60	4488	1	196	5	15	2016-06-13 18:37:57.509787+00	2015
4675	161.30	135.60	4488	2	1050	34	62	2016-06-13 18:37:57.518471+00	2015
4676	162.10	145.10	4489	2	409	5	15	2016-06-13 18:37:57.526472+00	2015
4677	128.10	101.80	4490	1	98	1	9	2016-06-13 18:37:57.535127+00	2015
4678	157.90	118.50	4490	2	1177	9	51	2016-06-13 18:37:57.543154+00	2015
4679	129.20	108.70	4491	2	724	5	20	2016-06-13 18:37:57.551773+00	2015
4680	\N	146.90	4492	2	393	4	26	2016-06-13 18:37:57.559784+00	2015
4681	\N	127.40	4492	1	82	1	9	2016-06-13 18:37:57.568431+00	2015
4682	169.60	146.00	4493	2	807	15	35	2016-06-13 18:37:57.576506+00	2015
4683	165.90	143.00	4494	2	231	5	15	2016-06-13 18:37:57.585171+00	2015
4684	128.40	107.40	4483	2	137	4	8	2016-06-13 18:37:57.59324+00	2015
4685	190.70	172.00	4482	2	738	17	23	2016-06-13 18:37:57.660463+00	2015
4686	156.30	103.40	4482	1	75	3	7	2016-06-13 18:37:57.668394+00	2015
4687	93.00	82.90	4471	1	86	5	5	2016-06-13 18:37:57.676745+00	2015
4688	156.70	138.70	4471	2	482	30	30	2016-06-13 18:37:57.68501+00	2015
4689	150.00	122.20	4472	2	295	10	15	2016-06-13 18:37:57.693257+00	2015
4690	128.30	89.20	4473	1	99	4	6	2016-06-13 18:37:57.701741+00	2015
4691	144.60	126.50	4473	2	1054	20	30	2016-06-13 18:37:57.710002+00	2015
4692	104.70	81.70	4474	1	114	5	5	2016-06-13 18:37:57.718296+00	2015
4693	128.90	109.70	4474	2	521	24	26	2016-06-13 18:37:57.726591+00	2015
4694	93.70	79.90	4475	2	669	26	34	2016-06-13 18:37:57.734863+00	2015
4695	111.10	85.00	4475	1	99	4	6	2016-06-13 18:37:57.743219+00	2015
4696	134.30	124.80	4476	2	487	10	15	2016-06-13 18:37:57.80194+00	2015
4697	145.80	128.30	4477	2	388	5	15	2016-06-13 18:37:57.810051+00	2015
4698	208.00	190.80	4478	2	277	5	15	2016-06-13 18:37:57.818357+00	2015
4699	\N	117.80	4479	1	38	5	5	2016-06-13 18:37:57.826775+00	2015
4700	174.20	157.60	4479	2	206	10	10	2016-06-13 18:37:57.835256+00	2015
4701	94.40	81.80	4480	2	525	5	15	2016-06-13 18:37:57.844303+00	2015
4702	128.40	101.10	4481	2	411	5	15	2016-06-13 18:37:57.852102+00	2015
4703	153.80	122.40	5422	5	85	4	8	2016-06-13 18:37:57.86127+00	2015
3874	185.90	145.60	4590	1	21	1	4	2016-06-13 18:37:47.299089+00	2015
3875	189.00	142.10	4590	2	77	4	11	2016-06-13 18:37:47.315553+00	2015
3876	177.40	145.20	4591	2	96	5	15	2016-06-13 18:37:47.323799+00	2015
3877	181.20	128.90	4592	1	75	3	12	2016-06-13 18:37:47.332113+00	2015
3878	193.50	174.30	4592	2	900	12	33	2016-06-13 18:37:47.340467+00	2015
3879	177.40	157.80	4593	2	338	10	15	2016-06-13 18:37:47.348746+00	2015
3880	191.90	177.70	4594	2	569	9	10	2016-06-13 18:37:47.357093+00	2015
3881	110.90	100.10	4594	1	35	1	5	2016-06-13 18:37:47.415463+00	2015
3882	168.30	145.20	4601	2	220	20	20	2016-06-13 18:37:47.423836+00	2015
3883	126.40	86.80	4601	1	33	5	10	2016-06-13 18:37:47.434356+00	2015
3884	171.80	153.60	4600	2	274	22	18	2016-06-13 18:37:47.442501+00	2015
3885	125.90	88.00	4600	1	24	3	7	2016-06-13 18:37:47.450122+00	2015
3886	186.80	146.10	4599	2	767	16	39	2016-06-13 18:37:47.458385+00	2015
3887	137.50	102.60	4599	1	77	4	11	2016-06-13 18:37:47.466654+00	2015
3888	166.10	130.60	4598	2	377	31	24	2016-06-13 18:37:47.475009+00	2015
3889	142.50	86.90	4598	1	42	4	11	2016-06-13 18:37:47.483173+00	2015
3890	137.00	103.30	4597	2	179	10	15	2016-06-13 18:37:47.491468+00	2015
3891	134.70	118.80	4596	2	308	10	10	2016-06-13 18:37:47.499649+00	2015
3892	147.70	132.70	4595	2	652	30	25	2016-06-13 18:37:47.565633+00	2015
3893	134.50	99.40	4595	1	41	5	10	2016-06-13 18:37:47.573817+00	2015
3894	171.30	152.30	4585	2	470	17	13	2016-06-13 18:37:47.582182+00	2015
3895	138.70	85.00	4585	1	35	3	7	2016-06-13 18:37:47.590533+00	2015
3896	147.10	126.30	4584	2	150	10	10	2016-06-13 18:37:47.598862+00	2015
3897	108.60	77.60	4574	1	49	2	8	2016-06-13 18:37:47.607189+00	2015
3898	157.40	127.20	4574	2	374	18	22	2016-06-13 18:37:47.615519+00	2015
3899	126.20	71.40	4573	1	19	2	5	2016-06-13 18:37:47.623857+00	2015
3900	141.40	122.00	4573	2	139	8	10	2016-06-13 18:37:47.632176+00	2015
3901	148.40	130.50	4572	2	193	10	10	2016-06-13 18:37:47.640522+00	2015
3902	77.40	70.40	4571	1	29	2	5	2016-06-13 18:37:47.648847+00	2015
3903	143.90	102.50	4571	2	148	8	10	2016-06-13 18:37:47.65723+00	2015
3904	179.00	125.30	4570	2	142	4	16	2016-06-13 18:37:47.665484+00	2015
3905	202.50	160.70	4570	1	31	1	4	2016-06-13 18:37:47.723864+00	2015
3906	200.50	177.20	4569	2	378	4	26	2016-06-13 18:37:47.732174+00	2015
3907	199.80	160.40	4569	1	54	1	9	2016-06-13 18:37:47.740518+00	2015
3908	236.30	150.10	4568	1	42	2	8	2016-06-13 18:37:47.748843+00	2015
3909	241.70	200.70	4568	2	335	13	47	2016-06-13 18:37:47.757226+00	2015
3910	151.20	128.90	4575	2	228	4	11	2016-06-13 18:37:47.765545+00	2015
3911	173.60	147.90	4575	1	23	1	4	2016-06-13 18:37:47.773976+00	2015
3912	192.10	167.40	4576	2	355	4	21	2016-06-13 18:37:47.78222+00	2015
3913	190.90	152.70	4576	1	38	1	4	2016-06-13 18:37:47.790517+00	2015
3914	182.90	159.60	4577	2	241	10	25	2016-06-13 18:37:47.798865+00	2015
3915	134.80	71.40	4578	1	37	2	8	2016-06-13 18:37:47.807207+00	2015
3916	155.30	89.60	4578	2	305	13	32	2016-06-13 18:37:47.815552+00	2015
3917	142.30	81.70	4579	1	27	2	8	2016-06-13 18:37:47.873899+00	2015
3918	162.40	134.70	4579	2	345	13	27	2016-06-13 18:37:47.882205+00	2015
3919	143.10	129.10	4580	2	476	14	18	2016-06-13 18:37:47.890531+00	2015
3920	94.30	78.60	4580	1	38	3	5	2016-06-13 18:37:47.898882+00	2015
3921	179.70	116.40	4581	2	112	5	15	2016-06-13 18:37:47.907165+00	2015
3922	185.00	162.00	4582	2	144	1	19	2016-06-13 18:37:47.915533+00	2015
3923	196.10	161.70	4582	1	22	1	4	2016-06-13 18:37:47.923871+00	2015
3924	185.10	134.90	4583	2	176	3	22	2016-06-13 18:37:47.932202+00	2015
3925	151.90	80.30	5448	2	234	5	15	2016-06-13 18:37:47.948074+00	2015
3926	133.30	106.30	4442	2	453	5	15	2016-06-13 18:37:47.957993+00	2015
3927	132.20	107.20	4443	2	637	15	35	2016-06-13 18:37:48.015602+00	2015
3928	149.10	115.80	4444	2	652	5	20	2016-06-13 18:37:48.023974+00	2015
3929	112.50	90.90	4445	2	393	10	15	2016-06-13 18:37:48.032499+00	2015
3930	144.50	125.70	4446	2	251	5	15	2016-06-13 18:37:48.04062+00	2015
3931	127.40	107.70	5330	1	631	15	25	2016-06-13 18:37:48.048899+00	2015
3932	143.40	116.20	4447	1	171	3	12	2016-06-13 18:37:48.057268+00	2015
3933	164.10	153.20	4447	2	754	22	23	2016-06-13 18:37:48.065585+00	2015
3934	153.10	140.70	4448	2	600	5	15	2016-06-13 18:37:48.073904+00	2015
3935	139.30	119.10	4449	2	1118	10	40	2016-06-13 18:37:48.082216+00	2015
3936	124.10	89.90	4450	2	514	5	20	2016-06-13 18:37:48.090574+00	2015
3937	\N	116.60	4451	2	553	4	61	2016-06-13 18:37:48.098894+00	2015
3938	\N	109.00	4451	1	82	1	14	2016-06-13 18:37:48.107213+00	2015
3939	\N	114.20	4452	2	173	4	11	2016-06-13 18:37:48.115552+00	2015
3940	\N	102.20	4452	1	18	1	4	2016-06-13 18:37:48.123947+00	2015
3941	115.80	86.90	4441	2	531	5	20	2016-06-13 18:37:48.132295+00	2015
3942	157.60	145.80	4440	2	833	20	30	2016-06-13 18:37:48.140637+00	2015
3943	143.60	78.80	5331	6	43	5	15	2016-06-13 18:37:48.148962+00	2015
3944	167.90	158.20	4430	2	605	15	15	2016-06-13 18:37:48.157305+00	2015
3945	142.70	122.30	4431	2	574	20	30	2016-06-13 18:37:48.165562+00	2015
3946	134.30	124.30	4432	2	894	25	25	2016-06-13 18:37:48.173945+00	2015
3947	122.00	106.30	4433	2	641	25	25	2016-06-13 18:37:48.182277+00	2015
3948	101.80	87.00	4434	2	331	10	15	2016-06-13 18:37:48.190611+00	2015
3949	103.30	92.10	4435	2	498	10	10	2016-06-13 18:37:48.19897+00	2015
3950	176.40	144.00	4436	2	483	5	15	2016-06-13 18:37:48.207287+00	2015
3951	87.00	78.80	4437	2	1575	40	40	2016-06-13 18:37:48.215615+00	2015
3952	90.90	79.80	4438	2	1415	20	60	2016-06-13 18:37:48.223947+00	2015
3953	108.70	79.40	4439	2	422	5	15	2016-06-13 18:37:48.28229+00	2015
3954	150.10	127.00	4897	2	892	10	40	2016-06-13 18:37:48.291338+00	2015
3955	122.20	88.00	4898	2	395	10	20	2016-06-13 18:37:48.298846+00	2015
3956	149.40	135.70	4899	2	452	10	20	2016-06-13 18:37:48.307324+00	2015
3957	147.40	103.60	5449	2	637	5	15	2016-06-13 18:37:48.323137+00	2015
3958	165.80	89.40	5360	2	351	2	18	2016-06-13 18:37:48.332332+00	2015
3959	151.60	106.30	4900	2	428	3	27	2016-06-13 18:37:48.340641+00	2015
3960	195.60	153.70	4901	2	325	5	25	2016-06-13 18:37:48.34898+00	2015
3961	143.50	123.30	5362	1	998	20	40	2016-06-13 18:37:48.357322+00	2015
3962	179.60	155.50	4902	2	1396	41	84	2016-06-13 18:37:48.365633+00	2015
3963	190.30	165.80	4902	1	147	4	11	2016-06-13 18:37:48.424905+00	2015
3964	191.50	166.20	4903	2	903	5	25	2016-06-13 18:37:48.43358+00	2015
3965	166.90	137.80	4904	2	1598	8	62	2016-06-13 18:37:48.441553+00	2015
3966	136.60	85.30	4904	1	108	2	8	2016-06-13 18:37:48.449903+00	2015
3967	130.50	109.50	4905	2	589	10	15	2016-06-13 18:37:48.458117+00	2015
3968	\N	156.80	4906	2	532	10	30	2016-06-13 18:37:48.466299+00	2015
3969	173.60	145.40	4907	2	457	10	25	2016-06-13 18:37:48.474651+00	2015
3970	148.20	86.00	4908	2	902	5	35	2016-06-13 18:37:48.482998+00	2015
3971	172.30	150.30	4909	2	1614	45	55	2016-06-13 18:37:48.491321+00	2015
3972	176.10	158.60	4896	2	329	6	14	2016-06-13 18:37:48.499547+00	2015
3973	157.60	137.70	4895	2	234	5	15	2016-06-13 18:37:48.50786+00	2015
3974	151.30	122.20	4882	2	211	5	15	2016-06-13 18:37:48.566263+00	2015
3975	176.60	142.00	4883	2	1483	25	45	2016-06-13 18:37:48.574437+00	2015
3976	149.10	132.70	4884	2	663	30	30	2016-06-13 18:37:48.582334+00	2015
3977	147.30	112.70	4885	2	302	10	15	2016-06-13 18:37:48.59066+00	2015
3978	152.40	137.70	4886	2	1533	25	35	2016-06-13 18:37:48.598995+00	2015
3979	138.70	123.70	4887	2	644	27	33	2016-06-13 18:37:48.607388+00	2015
3980	125.30	107.00	4888	2	765	30	30	2016-06-13 18:37:48.61572+00	2015
3981	128.10	108.40	4889	2	648	10	10	2016-06-13 18:37:48.624088+00	2015
3982	198.30	176.20	4890	2	514	5	15	2016-06-13 18:37:48.63263+00	2015
3983	171.60	137.20	4891	2	352	5	20	2016-06-13 18:37:48.640718+00	2015
3984	106.80	83.90	4892	2	527	8	12	2016-06-13 18:37:48.649056+00	2015
3985	143.20	106.70	4893	2	368	5	15	2016-06-13 18:37:48.707394+00	2015
3986	103.40	82.80	4894	2	535	5	15	2016-06-13 18:37:48.715713+00	2015
3987	153.50	89.20	5380	1	31	2	5	2016-06-13 18:37:48.73702+00	2015
3988	161.20	140.70	5380	2	139	3	10	2016-06-13 18:37:48.75738+00	2015
3989	\N	134.50	4620	1	24	2	5	2016-06-13 18:37:48.765678+00	2015
3990	158.90	131.00	4620	2	60	3	10	2016-06-13 18:37:48.77402+00	2015
3991	193.60	170.00	5450	2	164	3	10	2016-06-13 18:37:48.789822+00	2015
3992	183.90	174.40	5450	1	61	2	5	2016-06-13 18:37:48.798987+00	2015
3993	155.20	140.60	4623	1	412	35	40	2016-06-13 18:37:48.857463+00	2015
3994	161.90	148.40	4623	2	1585	80	95	2016-06-13 18:37:48.865732+00	2015
3995	163.90	145.90	4624	2	1164	50	90	2016-06-13 18:37:48.874063+00	2015
3996	155.60	141.80	4624	1	376	25	35	2016-06-13 18:37:48.882381+00	2015
3997	141.10	110.50	4625	2	427	28	46	2016-06-13 18:37:48.890714+00	2015
3998	154.40	137.40	4625	1	125	22	24	2016-06-13 18:37:48.899054+00	2015
3999	142.00	128.50	4626	1	76	4	6	2016-06-13 18:37:48.907393+00	2015
4000	163.40	133.80	4626	2	179	6	9	2016-06-13 18:37:48.915695+00	2015
4001	162.30	143.80	4627	1	67	5	8	2016-06-13 18:37:48.924048+00	2015
4002	152.70	132.70	4627	2	413	10	17	2016-06-13 18:37:48.932377+00	2015
4003	148.40	127.70	4628	1	84	10	13	2016-06-13 18:37:48.940709+00	2015
4004	142.80	129.30	4628	2	400	20	27	2016-06-13 18:37:48.999088+00	2015
4005	157.30	139.80	4629	2	603	45	48	2016-06-13 18:37:49.007402+00	2015
4006	160.90	133.80	4629	1	184	15	22	2016-06-13 18:37:49.015726+00	2015
4007	151.20	133.50	4630	1	110	17	22	2016-06-13 18:37:49.024028+00	2015
4008	162.10	147.00	4630	2	614	33	48	2016-06-13 18:37:49.032435+00	2015
4009	159.00	142.10	4631	2	349	23	22	2016-06-13 18:37:49.040772+00	2015
4010	171.40	157.90	4631	1	75	12	13	2016-06-13 18:37:49.049102+00	2015
4011	164.30	149.20	4632	2	466	40	38	2016-06-13 18:37:49.057403+00	2015
4012	132.50	115.60	4632	1	147	20	22	2016-06-13 18:37:49.065768+00	2015
4013	168.60	148.10	4618	2	196	12	20	2016-06-13 18:37:49.07409+00	2015
4014	146.60	126.70	4618	1	30	8	10	2016-06-13 18:37:49.082424+00	2015
4015	160.60	140.60	4617	2	515	30	35	2016-06-13 18:37:49.140754+00	2015
4016	141.90	121.80	4617	1	78	15	20	2016-06-13 18:37:49.149097+00	2015
4017	162.90	152.70	4616	2	852	47	48	2016-06-13 18:37:49.157411+00	2015
4018	140.80	118.90	4616	1	146	28	32	2016-06-13 18:37:49.165703+00	2015
4019	144.60	108.90	4607	1	27	6	8	2016-06-13 18:37:49.174022+00	2015
4020	167.90	151.20	4607	2	134	9	17	2016-06-13 18:37:49.182346+00	2015
4021	180.90	166.30	4606	2	366	17	23	2016-06-13 18:37:49.190691+00	2015
4022	159.60	147.30	4606	1	98	8	12	2016-06-13 18:37:49.199029+00	2015
4023	183.50	161.60	4605	2	319	11	23	2016-06-13 18:37:49.207387+00	2015
4024	178.00	163.70	4605	1	64	4	12	2016-06-13 18:37:49.215748+00	2015
4025	139.70	122.40	5451	1	45	3	3	2016-06-13 18:37:49.281799+00	2015
4026	153.10	128.30	5451	2	105	7	7	2016-06-13 18:37:49.290785+00	2015
4027	151.40	107.40	5452	2	83	7	10	2016-06-13 18:37:49.314886+00	2015
4028	127.70	105.60	5452	1	18	3	5	2016-06-13 18:37:49.324082+00	2015
4029	134.70	112.60	5453	1	22	3	5	2016-06-13 18:37:49.348175+00	2015
4030	139.80	94.30	5453	2	49	7	10	2016-06-13 18:37:49.357399+00	2015
4031	139.10	125.10	4604	1	160	8	15	2016-06-13 18:37:49.365743+00	2015
4032	149.10	128.30	4604	2	675	22	35	2016-06-13 18:37:49.424877+00	2015
4033	117.60	98.20	4603	1	133	15	17	2016-06-13 18:37:49.433421+00	2015
4034	142.20	115.80	4603	2	558	30	38	2016-06-13 18:37:49.441614+00	2015
4035	156.50	147.20	4602	2	1484	65	65	2016-06-13 18:37:49.450016+00	2015
4036	138.20	125.60	4602	1	359	35	35	2016-06-13 18:37:49.458279+00	2015
4037	130.00	116.40	4608	2	215	11	15	2016-06-13 18:37:49.465762+00	2015
4038	112.60	96.20	4608	1	41	4	10	2016-06-13 18:37:49.474092+00	2015
4039	164.50	142.40	4609	1	126	8	10	2016-06-13 18:37:49.482424+00	2015
4040	166.70	157.60	4609	2	551	17	20	2016-06-13 18:37:49.490776+00	2015
4041	176.60	164.90	4610	2	481	10	17	2016-06-13 18:37:49.499096+00	2015
4042	166.20	155.90	4610	1	40	5	8	2016-06-13 18:37:49.507386+00	2015
4043	153.00	135.90	4611	2	328	14	35	2016-06-13 18:37:49.565928+00	2015
4044	162.40	128.50	4611	1	65	6	15	2016-06-13 18:37:49.574085+00	2015
4045	152.70	81.80	4612	2	119	3	10	2016-06-13 18:37:49.582406+00	2015
4046	137.80	86.80	4612	1	19	2	5	2016-06-13 18:37:49.590769+00	2015
4047	159.60	140.70	4613	2	48	6	9	2016-06-13 18:37:49.600221+00	2015
4048	144.30	127.90	4613	1	27	4	6	2016-06-13 18:37:49.607405+00	2015
4049	148.30	105.40	4614	1	24	2	5	2016-06-13 18:37:49.615752+00	2015
4050	151.60	120.10	4614	2	163	3	10	2016-06-13 18:37:49.624094+00	2015
4051	145.30	129.50	4615	1	42	3	5	2016-06-13 18:37:49.63248+00	2015
4052	177.30	132.20	4615	2	99	7	10	2016-06-13 18:37:49.640859+00	2015
4053	180.70	117.00	4848	2	607	10	45	2016-06-13 18:37:49.649874+00	2015
4054	109.10	78.80	4848	1	177	5	10	2016-06-13 18:37:49.708004+00	2015
4055	151.80	104.20	4849	2	667	15	35	2016-06-13 18:37:49.724133+00	2015
4056	103.60	82.50	4850	2	826	15	35	2016-06-13 18:37:49.732461+00	2015
4057	163.40	138.70	4851	2	1018	12	28	2016-06-13 18:37:49.740798+00	2015
4058	104.50	92.00	4851	1	123	3	7	2016-06-13 18:37:49.749129+00	2015
4059	141.00	119.20	4852	2	1391	20	40	2016-06-13 18:37:49.75743+00	2015
4060	120.20	88.30	4852	1	316	5	10	2016-06-13 18:37:49.765801+00	2015
4061	165.80	142.90	4853	2	592	5	35	2016-06-13 18:37:49.774152+00	2015
4062	162.60	130.80	4854	2	476	5	15	2016-06-13 18:37:49.782496+00	2015
4063	137.50	107.70	5375	1	613	10	40	2016-06-13 18:37:49.790848+00	2015
4064	174.50	148.50	4855	2	1367	27	103	2016-06-13 18:37:49.849171+00	2015
4065	113.50	103.40	4856	2	751	39	61	2016-06-13 18:37:49.857676+00	2015
4066	135.60	119.10	4857	2	2171	18	57	2016-06-13 18:37:49.86591+00	2015
4067	\N	163.90	4858	2	525	10	35	2016-06-13 18:37:49.874208+00	2015
4068	\N	116.10	4858	1	144	5	20	2016-06-13 18:37:49.882519+00	2015
4069	\N	155.40	4847	2	436	10	20	2016-06-13 18:37:49.890863+00	2015
4070	116.00	97.10	4846	2	1275	10	15	2016-06-13 18:37:49.899174+00	2015
4071	155.60	140.80	4835	2	1656	50	60	2016-06-13 18:37:49.90755+00	2015
4072	132.00	115.80	5376	1	328	10	15	2016-06-13 18:37:49.915867+00	2015
4073	176.80	153.50	4836	2	429	10	25	2016-06-13 18:37:49.924212+00	2015
4074	169.30	148.90	4836	1	190	5	10	2016-06-13 18:37:49.932545+00	2015
4075	155.50	135.30	4837	2	165	4	8	2016-06-13 18:37:49.990898+00	2015
4076	126.10	106.70	4838	2	171	4	8	2016-06-13 18:37:49.999209+00	2015
4077	189.40	156.50	4839	2	1105	12	48	2016-06-13 18:37:50.007505+00	2015
4078	176.70	129.10	4839	1	170	3	7	2016-06-13 18:37:50.015869+00	2015
4079	133.20	126.00	4840	2	1197	25	25	2016-06-13 18:37:50.0242+00	2015
4080	133.30	124.20	4841	2	935	10	15	2016-06-13 18:37:50.03252+00	2015
4081	171.00	143.10	4842	2	882	5	20	2016-06-13 18:37:50.040852+00	2015
4082	207.50	154.80	4843	2	371	2	18	2016-06-13 18:37:50.049218+00	2015
4083	182.70	166.90	4844	2	342	5	15	2016-06-13 18:37:50.057544+00	2015
4084	90.20	81.60	4845	2	837	5	15	2016-06-13 18:37:50.065902+00	2015
4085	152.70	86.80	5145	2	319	3	17	2016-06-13 18:37:50.074885+00	2015
4086	156.50	89.90	5146	2	399	2	18	2016-06-13 18:37:50.140904+00	2015
4087	187.70	170.80	5147	2	443	5	15	2016-06-13 18:37:50.149212+00	2015
4088	180.60	166.00	5149	2	409	5	15	2016-06-13 18:37:50.157552+00	2015
4089	169.60	149.00	5150	2	330	5	15	2016-06-13 18:37:50.165885+00	2015
4090	134.80	120.60	5151	2	1299	60	75	2016-06-13 18:37:50.17421+00	2015
4091	105.90	92.30	5151	1	212	10	15	2016-06-13 18:37:50.182554+00	2015
4092	140.20	123.80	5152	2	1351	60	75	2016-06-13 18:37:50.190903+00	2015
4093	119.70	98.20	5152	1	257	10	15	2016-06-13 18:37:50.199227+00	2015
4094	139.40	121.90	5153	2	986	40	50	2016-06-13 18:37:50.207556+00	2015
4095	141.00	121.20	5154	2	1207	35	50	2016-06-13 18:37:50.215894+00	2015
4096	124.40	109.40	5144	2	799	26	34	2016-06-13 18:37:50.224218+00	2015
4097	134.80	101.00	5143	2	653	15	35	2016-06-13 18:37:50.28252+00	2015
4098	138.70	122.30	5133	2	980	65	60	2016-06-13 18:37:50.290922+00	2015
4099	116.10	83.10	5133	1	134	10	15	2016-06-13 18:37:50.299257+00	2015
4100	147.40	122.50	5134	2	1582	85	135	2016-06-13 18:37:50.307589+00	2015
4101	132.60	100.10	5134	1	222	10	20	2016-06-13 18:37:50.315957+00	2015
4102	139.70	123.20	5135	2	1233	65	65	2016-06-13 18:37:50.324265+00	2015
4103	111.70	97.20	5135	1	170	5	15	2016-06-13 18:37:50.332597+00	2015
4104	120.40	105.90	5136	2	1613	75	60	2016-06-13 18:37:50.34091+00	2015
4105	109.50	74.80	5136	1	205	5	20	2016-06-13 18:37:50.349246+00	2015
4106	96.80	82.80	5137	2	2499	65	85	2016-06-13 18:37:50.357586+00	2015
4107	131.40	101.20	5138	2	742	25	45	2016-06-13 18:37:50.365914+00	2015
4108	109.50	82.70	5454	2	371	5	20	2016-06-13 18:37:50.432966+00	2015
4109	138.70	94.00	5139	2	419	5	25	2016-06-13 18:37:50.44253+00	2015
4110	120.00	99.30	5140	2	725	30	40	2016-06-13 18:37:50.450848+00	2015
4111	145.10	115.00	5141	2	318	5	15	2016-06-13 18:37:50.459076+00	2015
4112	89.90	81.60	5142	2	553	10	10	2016-06-13 18:37:50.467439+00	2015
4113	154.20	128.20	5165	2	99	2	8	2016-06-13 18:37:50.474924+00	2015
4114	140.10	118.50	5166	2	114	3	7	2016-06-13 18:37:50.482564+00	2015
4115	136.60	104.40	5167	2	191	10	15	2016-06-13 18:37:50.490965+00	2015
4116	179.80	163.70	5168	2	272	4	10	2016-06-13 18:37:50.499314+00	2015
4117	162.30	139.00	5168	1	55	1	5	2016-06-13 18:37:50.507641+00	2015
4118	186.30	155.30	5169	2	170	4	10	2016-06-13 18:37:50.566147+00	2015
4119	155.80	141.50	5169	1	47	1	5	2016-06-13 18:37:50.574299+00	2015
4120	172.40	157.10	5170	2	224	4	10	2016-06-13 18:37:50.582629+00	2015
4121	141.80	103.60	5170	1	43	1	5	2016-06-13 18:37:50.590947+00	2015
4122	143.80	132.30	5171	2	384	17	25	2016-06-13 18:37:50.599296+00	2015
4123	136.40	111.80	5171	1	94	3	10	2016-06-13 18:37:50.60763+00	2015
4124	139.00	117.90	5164	2	392	20	40	2016-06-13 18:37:50.61596+00	2015
4125	116.30	81.40	5164	1	65	5	10	2016-06-13 18:37:50.624277+00	2015
4126	151.20	127.70	5163	2	461	16	49	2016-06-13 18:37:50.632583+00	2015
4127	128.30	112.90	5162	2	399	17	31	2016-06-13 18:37:50.732604+00	2015
4128	101.30	75.60	5162	1	51	3	9	2016-06-13 18:37:50.740983+00	2015
4129	144.80	124.20	5155	2	692	25	60	2016-06-13 18:37:50.749325+00	2015
4130	142.00	110.60	5155	1	72	5	10	2016-06-13 18:37:50.757638+00	2015
4131	128.30	108.40	5156	2	310	17	23	2016-06-13 18:37:50.765975+00	2015
4132	138.80	87.20	5156	1	57	3	7	2016-06-13 18:37:50.774297+00	2015
4133	124.40	102.40	5157	2	2612	100	215	2016-06-13 18:37:50.782634+00	2015
4134	98.10	85.00	5157	1	136	10	15	2016-06-13 18:37:50.79094+00	2015
4135	122.20	96.60	5158	2	1102	55	120	2016-06-13 18:37:50.7993+00	2015
4136	117.20	79.30	5158	1	72	5	10	2016-06-13 18:37:50.807615+00	2015
4137	136.00	109.70	5159	2	525	25	50	2016-06-13 18:37:50.815974+00	2015
4138	114.10	76.80	5159	1	60	5	10	2016-06-13 18:37:50.874295+00	2015
4139	129.20	104.30	5160	2	475	4	31	2016-06-13 18:37:50.884678+00	2015
4140	115.50	80.50	5160	1	84	1	14	2016-06-13 18:37:50.892925+00	2015
4141	129.30	111.80	5161	2	210	10	15	2016-06-13 18:37:50.901067+00	2015
4142	191.90	173.50	5069	2	707	19	41	2016-06-13 18:37:50.910507+00	2015
4143	170.60	155.50	5069	1	84	3	7	2016-06-13 18:37:50.917695+00	2015
4144	196.70	172.90	5068	2	2322	68	128	2016-06-13 18:37:50.92575+00	2015
4145	183.30	156.60	5068	1	263	12	22	2016-06-13 18:37:50.93266+00	2015
4146	160.70	148.60	5067	2	747	23	28	2016-06-13 18:37:50.94101+00	2015
4147	136.80	121.50	5067	1	57	4	5	2016-06-13 18:37:50.949437+00	2015
4148	169.30	140.00	5065	2	819	12	63	2016-06-13 18:37:50.957682+00	2015
4149	116.80	92.70	5065	1	37	3	12	2016-06-13 18:37:51.024898+00	2015
4150	133.50	113.50	4343	2	1143	20	40	2016-06-13 18:37:51.034009+00	2015
4151	156.00	143.00	4356	2	416	5	15	2016-06-13 18:37:51.041+00	2015
4152	140.90	112.90	4357	2	760	5	20	2016-06-13 18:37:51.049327+00	2015
4153	145.80	99.30	4358	2	922	5	45	2016-06-13 18:37:51.057654+00	2015
4154	180.50	159.80	4359	2	620	5	20	2016-06-13 18:37:51.065993+00	2015
4155	183.80	139.30	5363	7	49	5	15	2016-06-13 18:37:51.074322+00	2015
4156	133.60	112.90	5421	1	423	10	15	2016-06-13 18:37:51.082638+00	2015
4157	166.50	139.10	4360	1	486	12	38	2016-06-13 18:37:51.090998+00	2015
4158	168.10	146.60	4360	2	2688	88	162	2016-06-13 18:37:51.099333+00	2015
4159	151.10	123.00	4361	2	217	5	15	2016-06-13 18:37:51.107715+00	2015
4160	146.40	110.80	4362	2	211	5	15	2016-06-13 18:37:51.166043+00	2015
4161	202.90	183.10	4363	2	611	5	25	2016-06-13 18:37:51.174355+00	2015
4162	165.60	119.60	4364	2	1654	8	65	2016-06-13 18:37:51.182689+00	2015
4163	178.60	106.10	4364	1	213	2	15	2016-06-13 18:37:51.191037+00	2015
4164	135.60	114.00	4365	2	1442	7	33	2016-06-13 18:37:51.199363+00	2015
4165	85.90	78.70	4365	1	125	3	7	2016-06-13 18:37:51.207698+00	2015
4166	\N	124.90	4355	2	489	5	40	2016-06-13 18:37:51.216025+00	2015
4167	\N	129.40	4355	1	122	5	10	2016-06-13 18:37:51.224344+00	2015
4168	\N	129.40	4354	2	323	10	20	2016-06-13 18:37:51.232664+00	2015
4169	125.50	93.50	4344	2	1020	5	20	2016-06-13 18:37:51.241026+00	2015
4170	179.20	158.70	4345	2	1534	40	60	2016-06-13 18:37:51.249332+00	2015
4171	129.50	115.20	5364	1	782	27	33	2016-06-13 18:37:51.307696+00	2015
4172	192.60	164.70	4346	2	699	10	28	2016-06-13 18:37:51.316034+00	2015
4173	183.20	148.10	4346	1	176	5	7	2016-06-13 18:37:51.324247+00	2015
4174	147.60	130.70	4347	2	692	35	30	2016-06-13 18:37:51.332749+00	2015
4175	104.50	80.70	4347	1	150	5	10	2016-06-13 18:37:51.341064+00	2015
4176	144.00	132.50	4348	2	1291	22	18	2016-06-13 18:37:51.3494+00	2015
4177	121.70	97.40	4348	1	142	3	7	2016-06-13 18:37:51.357716+00	2015
4178	91.00	72.70	4349	1	185	5	15	2016-06-13 18:37:51.366052+00	2015
4179	132.40	100.30	4349	2	466	20	40	2016-06-13 18:37:51.374386+00	2015
4180	91.70	86.10	4350	1	151	5	5	2016-06-13 18:37:51.382716+00	2015
4181	117.10	93.50	4350	2	593	20	30	2016-06-13 18:37:51.391054+00	2015
4182	131.20	116.40	4351	2	769	10	15	2016-06-13 18:37:51.450987+00	2015
4183	157.10	126.10	4352	2	616	5	20	2016-06-13 18:37:51.459224+00	2015
4184	113.80	83.00	4353	2	639	5	15	2016-06-13 18:37:51.467337+00	2015
4185	144.60	91.10	5388	2	223	5	20	2016-06-13 18:37:51.474933+00	2015
4186	186.40	174.90	4760	2	224	3	12	2016-06-13 18:37:51.482671+00	2015
4187	177.60	147.20	4760	1	54	2	3	2016-06-13 18:37:51.491039+00	2015
4188	\N	\N	4759	2	\N	15	0	2016-06-13 18:37:51.499311+00	2015
4189	162.10	142.60	4758	2	188	7	18	2016-06-13 18:37:51.50771+00	2015
4190	164.40	142.60	4758	1	51	3	12	2016-06-13 18:37:51.516106+00	2015
4191	168.40	145.80	4757	2	291	15	25	2016-06-13 18:37:51.524431+00	2015
4192	129.80	109.80	4757	1	66	10	10	2016-06-13 18:37:51.53277+00	2015
4193	161.80	142.40	4756	2	685	25	40	2016-06-13 18:37:51.599551+00	2015
4194	\N	\N	4756	2	\N	15	0	2016-06-13 18:37:51.607708+00	2015
4195	139.70	117.90	4756	1	128	15	20	2016-06-13 18:37:51.616072+00	2015
4196	\N	\N	4755	2	\N	20	0	2016-06-13 18:37:51.624361+00	2015
4197	148.60	134.10	4755	2	1391	65	60	2016-06-13 18:37:51.632756+00	2015
4198	139.10	95.30	4755	1	116	20	25	2016-06-13 18:37:51.64108+00	2015
4199	165.00	150.40	4749	2	323	15	25	2016-06-13 18:37:51.649411+00	2015
4200	135.60	97.10	4749	1	58	5	15	2016-06-13 18:37:51.657738+00	2015
4201	152.50	132.20	4750	2	1110	30	40	2016-06-13 18:37:51.666069+00	2015
4202	144.30	116.70	4750	1	124	15	15	2016-06-13 18:37:51.674407+00	2015
4203	158.00	137.60	4751	2	743	40	60	2016-06-13 18:37:51.682731+00	2015
4204	155.60	138.60	4751	1	132	15	25	2016-06-13 18:37:51.7431+00	2015
4205	\N	\N	4752	2	\N	15	0	2016-06-13 18:37:51.751304+00	2015
4206	158.10	126.00	4753	2	190	5	15	2016-06-13 18:37:51.759358+00	2015
4207	168.40	137.80	4754	2	165	3	12	2016-06-13 18:37:51.76609+00	2015
4208	115.90	102.30	4754	1	20	2	3	2016-06-13 18:37:51.774446+00	2015
4209	198.60	171.10	4748	2	93	3	17	2016-06-13 18:37:51.783476+00	2015
4210	198.50	176.50	4747	2	70	1	14	2016-06-13 18:37:51.791075+00	2015
4211	198.60	173.30	4746	2	68	1	14	2016-06-13 18:37:51.799389+00	2015
4212	197.60	172.30	4745	2	213	3	22	2016-06-13 18:37:51.807783+00	2015
4213	197.30	165.20	4745	1	78	2	13	2016-06-13 18:37:51.816121+00	2015
4214	207.90	179.50	4744	2	987	8	147	2016-06-13 18:37:51.824448+00	2015
4215	203.70	181.70	4744	1	117	2	23	2016-06-13 18:37:51.882786+00	2015
4216	206.80	165.80	4743	2	509	4	76	2016-06-13 18:37:51.891108+00	2015
4217	203.70	146.50	4743	1	108	1	19	2016-06-13 18:37:51.899446+00	2015
4218	203.70	164.80	4742	2	308	3	52	2016-06-13 18:37:51.907766+00	2015
4219	210.10	172.20	4742	1	97	2	18	2016-06-13 18:37:51.91609+00	2015
4220	209.70	174.00	4738	2	497	4	76	2016-06-13 18:37:51.92441+00	2015
4221	202.30	175.80	4738	1	121	1	19	2016-06-13 18:37:51.93273+00	2015
4222	201.60	168.90	4739	2	250	5	45	2016-06-13 18:37:51.94213+00	2015
4223	199.50	166.70	4740	2	246	7	43	2016-06-13 18:37:51.950447+00	2015
4224	192.00	169.70	4741	2	163	7	23	2016-06-13 18:37:51.958779+00	2015
4225	201.70	175.10	5455	2	163	5	25	2016-06-13 18:37:52.034013+00	2015
4226	133.50	105.20	4507	2	489	9	16	2016-06-13 18:37:52.042743+00	2015
4227	129.60	98.90	4508	2	760	17	33	2016-06-13 18:37:52.050387+00	2015
4228	84.80	76.10	4509	2	369	9	16	2016-06-13 18:37:52.058794+00	2015
4229	97.00	82.40	4510	2	441	11	24	2016-06-13 18:37:52.067103+00	2015
4230	82.80	77.20	5456	2	380	9	16	2016-06-13 18:37:52.0829+00	2015
4231	157.50	127.60	4512	2	331	5	15	2016-06-13 18:37:52.092122+00	2015
4232	127.40	103.60	4513	2	757	28	37	2016-06-13 18:37:52.10045+00	2015
4233	98.40	74.10	4513	1	42	7	8	2016-06-13 18:37:52.108773+00	2015
4234	120.70	95.80	4505	2	721	27	43	2016-06-13 18:37:52.167183+00	2015
4235	101.60	83.50	4505	1	160	8	12	2016-06-13 18:37:52.175512+00	2015
4236	125.30	88.90	4504	2	647	30	45	2016-06-13 18:37:52.18385+00	2015
4237	105.30	93.20	4503	2	1057	57	43	2016-06-13 18:37:52.19216+00	2015
4238	91.50	82.60	4503	1	160	8	7	2016-06-13 18:37:52.200513+00	2015
4239	92.80	80.50	4495	2	1151	51	54	2016-06-13 18:37:52.20881+00	2015
4240	83.90	75.40	4495	1	124	9	11	2016-06-13 18:37:52.217181+00	2015
4241	91.30	80.80	4497	2	867	43	52	2016-06-13 18:37:52.225489+00	2015
4242	86.00	76.60	4497	1	109	7	8	2016-06-13 18:37:52.233819+00	2015
4243	83.70	74.70	4498	2	836	35	45	2016-06-13 18:37:52.242195+00	2015
4244	92.20	77.60	4499	2	685	25	55	2016-06-13 18:37:52.250529+00	2015
4245	103.40	89.90	4500	2	462	20	20	2016-06-13 18:37:52.308877+00	2015
4246	123.90	92.80	4501	2	318	15	45	2016-06-13 18:37:52.317207+00	2015
4247	84.90	74.80	4502	2	578	10	30	2016-06-13 18:37:52.325523+00	2015
4248	153.40	131.60	4968	2	906	30	75	2016-06-13 18:37:52.334524+00	2015
4249	108.40	94.00	4968	1	92	5	15	2016-06-13 18:37:52.342149+00	2015
4250	131.10	104.50	4969	2	800	25	50	2016-06-13 18:37:52.350509+00	2015
4251	107.00	87.80	4970	2	985	25	50	2016-06-13 18:37:52.358854+00	2015
4252	138.90	120.00	4971	2	1380	25	50	2016-06-13 18:37:52.367237+00	2015
4253	150.20	135.10	4972	2	1392	25	50	2016-06-13 18:37:52.375558+00	2015
4254	172.50	152.40	4973	2	1491	25	50	2016-06-13 18:37:52.383905+00	2015
4255	139.20	119.70	4974	2	1103	35	50	2016-06-13 18:37:52.39225+00	2015
4256	108.50	77.70	4974	1	113	5	10	2016-06-13 18:37:52.450588+00	2015
4257	140.70	123.70	4975	2	425	20	20	2016-06-13 18:37:52.458848+00	2015
4258	141.10	115.40	4967	2	1569	15	55	2016-06-13 18:37:52.467254+00	2015
4259	184.40	156.30	4966	2	622	10	40	2016-06-13 18:37:52.475575+00	2015
4260	162.80	141.60	4965	2	1618	35	90	2016-06-13 18:37:52.483903+00	2015
4261	136.10	110.10	5326	1	597	20	30	2016-06-13 18:37:52.492231+00	2015
4262	115.40	100.70	5327	1	807	20	30	2016-06-13 18:37:52.500616+00	2015
4263	173.20	151.60	4957	2	1536	30	80	2016-06-13 18:37:52.508903+00	2015
4264	161.30	136.60	4957	1	347	5	15	2016-06-13 18:37:52.51726+00	2015
4265	160.70	145.00	4958	2	988	20	30	2016-06-13 18:37:52.52553+00	2015
4266	141.10	111.90	4959	2	2956	55	145	2016-06-13 18:37:52.533946+00	2015
4267	131.50	100.30	4959	1	208	5	15	2016-06-13 18:37:52.592357+00	2015
4268	120.00	99.70	4960	2	1021	15	35	2016-06-13 18:37:52.600609+00	2015
4269	133.40	95.20	4961	2	1046	5	45	2016-06-13 18:37:52.610167+00	2015
4270	\N	165.70	4962	2	470	20	40	2016-06-13 18:37:52.617657+00	2015
4271	179.90	145.30	4963	2	284	5	15	2016-06-13 18:37:52.625919+00	2015
4272	112.50	94.00	4964	2	1414	25	25	2016-06-13 18:37:52.634197+00	2015
4273	185.50	167.50	5457	2	580	7	18	2016-06-13 18:37:52.649865+00	2015
4274	172.10	143.90	5457	1	187	4	11	2016-06-13 18:37:52.659007+00	2015
4275	123.20	90.70	4375	2	313	5	20	2016-06-13 18:37:52.667954+00	2015
4276	165.20	133.20	4374	2	313	5	15	2016-06-13 18:37:52.675516+00	2015
4277	126.00	108.80	4373	2	1501	60	65	2016-06-13 18:37:52.733907+00	2015
4278	123.40	104.20	4372	2	1154	50	70	2016-06-13 18:37:52.742238+00	2015
4279	109.90	92.20	4371	2	1087	50	50	2016-06-13 18:37:52.750578+00	2015
4280	140.40	114.30	4370	2	961	30	30	2016-06-13 18:37:52.758874+00	2015
4281	121.00	96.60	4366	2	1269	60	65	2016-06-13 18:37:52.767238+00	2015
4282	98.30	86.30	4367	2	848	30	30	2016-06-13 18:37:52.775637+00	2015
4283	113.00	94.00	4368	2	1742	65	70	2016-06-13 18:37:52.78396+00	2015
4284	117.30	98.20	4369	2	1247	40	75	2016-06-13 18:37:52.792259+00	2015
4285	131.10	85.60	5458	2	280	5	15	2016-06-13 18:37:52.808102+00	2015
4286	176.80	154.70	4953	2	270	5	14	2016-06-13 18:37:52.817977+00	2015
4287	184.30	132.10	4953	5	292	12	34	2016-06-13 18:37:52.908983+00	2015
4288	182.10	136.60	4953	1	68	3	7	2016-06-13 18:37:52.917277+00	2015
4289	161.50	150.10	4952	2	254	3	10	2016-06-13 18:37:52.925599+00	2015
4290	173.90	136.10	4952	5	188	9	28	2016-06-13 18:37:52.933812+00	2015
4291	155.40	126.10	4952	1	57	3	7	2016-06-13 18:37:52.942267+00	2015
4292	129.40	120.20	4951	2	129	3	10	2016-06-13 18:37:52.950594+00	2015
4293	146.90	120.20	4951	5	224	10	17	2016-06-13 18:37:52.958858+00	2015
4294	121.70	91.40	4951	1	58	2	8	2016-06-13 18:37:52.967253+00	2015
4295	126.90	70.20	4949	2	98	1	7	2016-06-13 18:37:52.975604+00	2015
4296	130.20	68.40	4949	5	165	4	13	2016-06-13 18:37:52.983935+00	2015
4297	145.50	109.70	5199	2	24	3	4	2016-06-13 18:37:52.993001+00	2015
4298	\N	100.90	5199	1	7	1	2	2016-06-13 18:37:53.050632+00	2015
4299	119.60	103.40	5200	2	42	4	8	2016-06-13 18:37:53.060564+00	2015
4300	\N	114.90	5200	1	8	1	3	2016-06-13 18:37:53.068258+00	2015
4301	119.30	96.20	5201	2	36	4	11	2016-06-13 18:37:53.07651+00	2015
4302	\N	114.10	5201	1	10	1	4	2016-06-13 18:37:53.08484+00	2015
4303	166.10	129.00	5202	2	68	5	12	2016-06-13 18:37:53.09308+00	2015
4304	155.40	119.00	5202	1	12	2	5	2016-06-13 18:37:53.10139+00	2015
4305	159.00	143.60	5203	2	160	8	15	2016-06-13 18:37:53.109613+00	2015
4306	\N	135.90	5204	2	84	6	12	2016-06-13 18:37:53.117915+00	2015
4307	\N	132.20	5204	1	12	1	4	2016-06-13 18:37:53.12624+00	2015
4308	133.90	101.30	5205	2	49	6	14	2016-06-13 18:37:53.134493+00	2015
4309	131.70	95.70	5205	1	18	2	8	2016-06-13 18:37:53.192294+00	2015
4310	166.70	106.60	5198	2	18	4	3	2016-06-13 18:37:53.200615+00	2015
4311	\N	115.80	5198	1	13	2	6	2016-06-13 18:37:53.208933+00	2015
4312	\N	110.20	5197	2	31	3	5	2016-06-13 18:37:53.21726+00	2015
4313	\N	115.30	5197	1	7	2	2	2016-06-13 18:37:53.225642+00	2015
4314	\N	106.20	5190	2	33	3	6	2016-06-13 18:37:53.233955+00	2015
4315	\N	107.10	5190	1	6	2	2	2016-06-13 18:37:53.242306+00	2015
4316	\N	120.10	5191	2	92	6	15	2016-06-13 18:37:53.250639+00	2015
4317	136.20	117.90	5192	2	38	5	7	2016-06-13 18:37:53.258931+00	2015
4318	129.00	110.90	5193	2	47	6	7	2016-06-13 18:37:53.267323+00	2015
4319	\N	127.10	5194	2	127	5	18	2016-06-13 18:37:53.275641+00	2015
4320	\N	118.80	5195	2	71	3	13	2016-06-13 18:37:53.333959+00	2015
4321	\N	113.70	5195	1	13	1	4	2016-06-13 18:37:53.342301+00	2015
4322	143.60	113.00	5196	2	93	4	16	2016-06-13 18:37:53.352459+00	2015
4323	155.50	74.00	5196	1	11	1	4	2016-06-13 18:37:53.360801+00	2015
4324	168.10	150.90	5459	2	184	4	10	2016-06-13 18:37:53.375747+00	2015
4325	169.80	138.20	5459	5	263	8	23	2016-06-13 18:37:53.384532+00	2015
4326	135.60	113.80	4660	2	42	3	5	2016-06-13 18:37:53.392952+00	2015
4327	143.20	117.30	4660	1	15	2	5	2016-06-13 18:37:53.400756+00	2015
4328	111.50	100.00	4661	2	119	10	20	2016-06-13 18:37:53.40905+00	2015
4329	132.80	93.00	4661	1	37	5	15	2016-06-13 18:37:53.417364+00	2015
4330	128.00	97.50	5300	2	154	14	18	2016-06-13 18:37:53.476393+00	2015
4331	148.00	103.60	5300	5	174	14	18	2016-06-13 18:37:53.483978+00	2015
4332	139.40	121.00	5300	1	81	7	9	2016-06-13 18:37:53.492368+00	2015
4333	116.10	105.50	5301	2	97	4	10	2016-06-13 18:37:53.500649+00	2015
4334	123.30	98.30	5301	5	112	4	10	2016-06-13 18:37:53.509018+00	2015
4335	112.80	92.10	5301	1	45	2	5	2016-06-13 18:37:53.517345+00	2015
4336	126.30	108.00	5302	2	88	4	8	2016-06-13 18:37:53.525681+00	2015
4337	130.50	98.30	5302	5	95	4	8	2016-06-13 18:37:53.533983+00	2015
4338	127.20	84.30	5302	1	28	2	4	2016-06-13 18:37:53.54234+00	2015
4339	113.60	109.70	5303	2	70	4	4	2016-06-13 18:37:53.550681+00	2015
4340	127.30	116.10	5303	5	69	4	4	2016-06-13 18:37:53.559088+00	2015
4341	87.40	80.40	5303	1	27	2	2	2016-06-13 18:37:53.618986+00	2015
4342	159.50	131.50	5002	2	598	45	55	2016-06-13 18:37:53.627744+00	2015
4343	\N	\N	5002	6	12	10	15	2016-06-13 18:37:53.633991+00	2015
4344	118.90	86.90	5002	1	153	5	10	2016-06-13 18:37:53.642366+00	2015
4345	151.80	122.00	5003	2	522	20	45	2016-06-13 18:37:53.650659+00	2015
4346	\N	\N	5003	6	16	10	15	2016-06-13 18:37:53.659012+00	2015
4347	105.60	81.50	5004	2	794	15	45	2016-06-13 18:37:53.667379+00	2015
4348	\N	\N	5004	6	11	5	10	2016-06-13 18:37:53.675682+00	2015
4349	146.20	124.40	5005	2	855	20	55	2016-06-13 18:37:53.684047+00	2015
4350	130.00	105.50	5006	2	836	15	45	2016-06-13 18:37:53.69239+00	2015
4351	\N	\N	5006	6	14	5	10	2016-06-13 18:37:53.700662+00	2015
4352	175.80	158.20	5007	2	846	30	50	2016-06-13 18:37:53.759052+00	2015
4353	140.10	113.10	5008	2	700	15	40	2016-06-13 18:37:53.777617+00	2015
4354	\N	\N	5008	6	9	5	10	2016-06-13 18:37:53.800662+00	2015
4355	156.20	134.60	5001	2	466	10	30	2016-06-13 18:37:53.809048+00	2015
4356	133.80	118.90	5000	2	1079	20	40	2016-06-13 18:37:53.818992+00	2015
4357	175.00	162.60	4999	2	544	10	30	2016-06-13 18:37:53.826233+00	2015
4358	156.00	140.50	4992	2	865	55	70	2016-06-13 18:37:53.834545+00	2015
4359	113.80	98.00	5321	1	405	20	30	2016-06-13 18:37:53.842888+00	2015
4360	116.60	68.00	5322	6	18	5	15	2016-06-13 18:37:53.850705+00	2015
4361	136.80	118.30	5323	1	388	20	30	2016-06-13 18:37:53.909428+00	2015
4362	167.30	149.70	4993	2	719	60	65	2016-06-13 18:37:53.917632+00	2015
4363	147.80	128.90	4993	1	246	15	20	2016-06-13 18:37:53.925728+00	2015
4364	167.90	140.90	4994	2	577	10	30	2016-06-13 18:37:53.934051+00	2015
4365	136.50	123.10	4995	2	1338	45	75	2016-06-13 18:37:53.942412+00	2015
4366	105.20	87.70	4995	1	174	5	10	2016-06-13 18:37:53.950703+00	2015
4367	109.00	73.40	5417	6	14	10	15	2016-06-13 18:37:53.960531+00	2015
4368	122.00	100.10	4996	2	1127	25	65	2016-06-13 18:37:53.968793+00	2015
4369	190.10	170.10	4997	2	525	22	20	2016-06-13 18:37:53.975749+00	2015
4370	\N	\N	4997	6	25	10	15	2016-06-13 18:37:53.984+00	2015
4371	\N	127.70	4997	1	117	3	10	2016-06-13 18:37:53.99241+00	2015
4372	181.50	155.30	4998	2	246	8	15	2016-06-13 18:37:54.050733+00	2015
4373	\N	121.00	4998	1	58	2	5	2016-06-13 18:37:54.05907+00	2015
4374	\N	133.30	4707	2	27	2	6	2016-06-13 18:37:54.068024+00	2015
4375	141.30	112.20	4708	2	26	3	7	2016-06-13 18:37:54.075722+00	2015
4376	169.90	114.70	4708	1	12	1	5	2016-06-13 18:37:54.084084+00	2015
4377	143.70	121.70	4709	2	42	3	7	2016-06-13 18:37:54.092434+00	2015
4378	\N	114.50	4709	1	13	1	5	2016-06-13 18:37:54.100751+00	2015
4379	163.20	142.20	4710	2	98	6	12	2016-06-13 18:37:54.109104+00	2015
4380	138.40	121.90	4710	1	19	2	5	2016-06-13 18:37:54.117438+00	2015
4381	151.00	129.70	4711	2	103	5	13	2016-06-13 18:37:54.125762+00	2015
4382	139.30	118.30	4711	1	14	2	5	2016-06-13 18:37:54.134082+00	2015
4383	149.30	137.50	4712	2	56	5	8	2016-06-13 18:37:54.14242+00	2015
4384	147.70	111.60	4712	1	11	2	3	2016-06-13 18:37:54.150752+00	2015
4385	142.60	129.20	4713	2	29	4	8	2016-06-13 18:37:54.159127+00	2015
4386	141.80	132.20	4713	1	8	2	2	2016-06-13 18:37:54.167429+00	2015
4387	155.30	131.20	4714	2	19	2	4	2016-06-13 18:37:54.175778+00	2015
4388	154.50	106.90	4714	1	6	1	1	2016-06-13 18:37:54.184093+00	2015
4389	163.20	128.00	4706	2	17	2	4	2016-06-13 18:37:54.192481+00	2015
4390	143.80	142.90	4706	1	6	1	1	2016-06-13 18:37:54.200821+00	2015
4391	133.10	109.40	4705	2	25	2	4	2016-06-13 18:37:54.209145+00	2015
4392	\N	129.90	4705	1	16	1	2	2016-06-13 18:37:54.217454+00	2015
4393	125.00	107.10	4704	2	22	2	4	2016-06-13 18:37:54.225795+00	2015
4394	\N	142.60	4704	1	7	1	2	2016-06-13 18:37:54.234109+00	2015
4395	149.10	123.70	4696	2	40	4	3	2016-06-13 18:37:54.242466+00	2015
4396	120.80	109.40	4696	1	13	1	2	2016-06-13 18:37:54.250793+00	2015
4397	153.40	119.40	4697	2	136	4	13	2016-06-13 18:37:54.259149+00	2015
4398	\N	126.20	4697	1	29	1	4	2016-06-13 18:37:54.267428+00	2015
4399	156.60	109.70	4698	2	36	4	4	2016-06-13 18:37:54.27581+00	2015
4400	127.40	92.20	4698	1	16	2	4	2016-06-13 18:37:54.284117+00	2015
4401	130.00	101.50	4699	2	30	4	7	2016-06-13 18:37:54.342484+00	2015
4402	173.60	117.60	4700	2	29	2	7	2016-06-13 18:37:54.3508+00	2015
4403	131.10	115.30	4700	1	11	1	5	2016-06-13 18:37:54.359134+00	2015
4404	\N	115.40	4701	2	29	2	5	2016-06-13 18:37:54.367417+00	2015
4405	137.00	107.30	4702	2	23	2	5	2016-06-13 18:37:54.375848+00	2015
4406	\N	114.50	4703	2	31	1	5	2016-06-13 18:37:54.384123+00	2015
4407	140.20	104.30	5075	2	437	4	11	2016-06-13 18:37:54.393227+00	2015
4408	116.90	81.50	5075	1	84	1	4	2016-06-13 18:37:54.400845+00	2015
4409	120.30	101.90	5074	2	532	12	16	2016-06-13 18:37:54.409183+00	2015
4410	115.70	80.80	5074	1	140	3	9	2016-06-13 18:37:54.417445+00	2015
4411	128.20	97.70	5073	2	402	12	26	2016-06-13 18:37:54.425838+00	2015
4412	119.00	78.80	5073	1	165	3	9	2016-06-13 18:37:54.434112+00	2015
4413	139.80	107.80	5072	2	467	10	28	2016-06-13 18:37:54.442512+00	2015
4414	113.80	82.90	5072	1	118	3	9	2016-06-13 18:37:54.45084+00	2015
4415	138.60	117.20	5071	2	412	8	11	2016-06-13 18:37:54.459195+00	2015
4416	116.60	102.40	5071	1	86	2	4	2016-06-13 18:37:54.4675+00	2015
4417	98.40	80.20	5070	2	566	12	25	2016-06-13 18:37:54.475845+00	2015
4418	107.50	80.60	5070	1	163	3	10	2016-06-13 18:37:54.484118+00	2015
4419	96.40	80.50	4635	2	291	8	11	2016-06-13 18:37:54.493166+00	2015
4420	94.30	80.10	4635	1	104	2	4	2016-06-13 18:37:54.500891+00	2015
4421	116.30	86.00	4634	2	202	8	11	2016-06-13 18:37:54.509208+00	2015
4422	134.90	85.20	4634	1	107	2	4	2016-06-13 18:37:54.517555+00	2015
4423	129.90	108.70	4633	2	277	8	11	2016-06-13 18:37:54.525867+00	2015
4424	110.60	93.30	4633	1	94	2	4	2016-06-13 18:37:54.534193+00	2015
4425	142.90	88.10	5332	5	256	5	15	2016-06-13 18:37:54.54325+00	2015
4426	119.00	91.90	5287	2	162	5	10	2016-06-13 18:37:54.552484+00	2015
4427	103.30	87.90	5287	5	222	10	15	2016-06-13 18:37:54.560708+00	2015
4428	109.80	86.80	5286	2	159	4	16	2016-06-13 18:37:54.568778+00	2015
4429	89.40	74.80	5286	5	226	6	24	2016-06-13 18:37:54.577137+00	2015
4430	85.60	76.00	5285	2	157	5	10	2016-06-13 18:37:54.585393+00	2015
4431	80.60	74.60	5285	5	230	10	15	2016-06-13 18:37:54.59276+00	2015
4432	100.80	88.80	5333	5	225	10	15	2016-06-13 18:37:54.600882+00	2015
4433	80.60	71.50	5284	2	190	8	15	2016-06-13 18:37:54.609204+00	2015
4434	86.00	76.90	5284	5	364	17	30	2016-06-13 18:37:54.617538+00	2015
4435	104.50	80.50	5283	2	155	4	16	2016-06-13 18:37:54.625863+00	2015
4436	90.40	76.40	5283	5	240	6	24	2016-06-13 18:37:54.634236+00	2015
4437	100.00	81.50	5334	5	304	10	15	2016-06-13 18:37:54.642566+00	2015
4438	90.80	77.90	5335	5	209	5	15	2016-06-13 18:37:54.650912+00	2015
4439	93.10	81.50	5336	5	225	10	15	2016-06-13 18:37:54.659209+00	2015
4440	104.20	78.70	5282	2	165	5	10	2016-06-13 18:37:54.6676+00	2015
4441	92.60	83.00	5282	5	247	10	15	2016-06-13 18:37:54.67593+00	2015
4442	95.10	76.50	5281	2	175	7	15	2016-06-13 18:37:54.684244+00	2015
4443	97.60	77.90	5281	5	370	13	35	2016-06-13 18:37:54.692584+00	2015
4444	96.20	78.60	5280	2	159	5	12	2016-06-13 18:37:54.700906+00	2015
4445	92.90	76.70	5280	5	329	10	23	2016-06-13 18:37:54.709249+00	2015
4446	140.60	117.80	4870	2	213	5	10	2016-06-13 18:37:54.718269+00	2015
4447	103.80	93.90	4871	2	587	5	10	2016-06-13 18:37:54.725848+00	2015
4448	192.40	133.90	4872	2	249	1	11	2016-06-13 18:37:54.734238+00	2015
4449	166.20	121.80	4872	1	126	1	7	2016-06-13 18:37:54.742566+00	2015
4450	179.10	145.90	4873	2	332	2	18	2016-06-13 18:37:54.750905+00	2015
4451	187.20	155.00	4874	2	384	2	18	2016-06-13 18:37:54.759444+00	2015
4452	122.00	103.60	4875	2	2212	60	65	2016-06-13 18:37:54.768628+00	2015
4453	103.60	79.40	4875	1	314	10	15	2016-06-13 18:37:54.776485+00	2015
4454	120.90	104.70	4876	2	915	35	45	2016-06-13 18:37:54.784738+00	2015
4455	105.20	85.90	4877	2	1037	20	30	2016-06-13 18:37:54.792669+00	2015
4456	118.90	94.40	4878	2	829	25	25	2016-06-13 18:37:54.800919+00	2015
4457	94.90	78.60	4878	1	142	5	5	2016-06-13 18:37:54.809258+00	2015
4458	118.10	91.00	4869	2	746	20	30	2016-06-13 18:37:54.817594+00	2015
4459	113.90	89.00	4868	2	1200	41	43	2016-06-13 18:37:54.825934+00	2015
4460	103.10	78.40	4868	1	307	9	17	2016-06-13 18:37:54.834243+00	2015
4461	115.50	97.50	4859	2	1366	38	38	2016-06-13 18:37:54.842601+00	2015
4462	94.00	83.90	4859	1	389	12	12	2016-06-13 18:37:54.850943+00	2015
4463	97.00	82.90	4860	2	1689	49	51	2016-06-13 18:37:54.859325+00	2015
4464	91.20	82.70	4860	1	480	11	14	2016-06-13 18:37:54.867627+00	2015
4465	104.20	80.50	5460	2	602	10	30	2016-06-13 18:37:54.883444+00	2015
4466	88.20	78.80	4861	2	1361	20	30	2016-06-13 18:37:54.892661+00	2015
4467	87.50	77.70	5461	2	363	10	15	2016-06-13 18:37:54.908455+00	2015
4468	116.90	104.90	4862	2	188	13	13	2016-06-13 18:37:54.917641+00	2015
4469	124.70	113.60	4862	1	85	7	7	2016-06-13 18:37:54.925975+00	2015
4470	101.20	88.40	4863	2	839	25	25	2016-06-13 18:37:54.934297+00	2015
4471	111.60	92.90	4864	2	1215	30	45	2016-06-13 18:37:54.942648+00	2015
4472	88.10	75.70	4864	1	381	10	15	2016-06-13 18:37:54.950987+00	2015
4473	121.00	107.60	4865	2	411	35	40	2016-06-13 18:37:54.959322+00	2015
4474	118.10	97.50	4866	2	1302	30	45	2016-06-13 18:37:54.967659+00	2015
4475	119.20	82.40	4867	2	1026	5	70	2016-06-13 18:37:54.975979+00	2015
4476	185.20	141.90	5341	1	202	5	25	2016-06-13 18:37:54.985072+00	2015
4477	189.00	165.40	4670	2	4629	240	644	2016-06-13 18:37:54.992652+00	2015
4478	183.30	154.30	4670	1	925	60	156	2016-06-13 18:37:55.001051+00	2015
4479	186.10	120.90	5342	1	208	10	27	2016-06-13 18:37:55.009371+00	2015
4480	174.40	154.60	4669	2	157	2	10	2016-06-13 18:37:55.017691+00	2015
4481	194.30	165.50	4668	2	136	2	10	2016-06-13 18:37:55.026021+00	2015
4482	186.90	172.20	4667	2	507	24	52	2016-06-13 18:37:55.034342+00	2015
4483	199.50	143.00	4667	1	122	6	18	2016-06-13 18:37:55.042681+00	2015
4484	179.20	155.60	4666	2	87	3	9	2016-06-13 18:37:55.051041+00	2015
4485	180.70	137.40	4665	2	85	2	11	2016-06-13 18:37:55.059372+00	2015
4486	172.70	117.20	4665	1	27	1	6	2016-06-13 18:37:55.067696+00	2015
4487	145.60	130.50	4664	2	56	3	9	2016-06-13 18:37:55.076019+00	2015
4488	187.20	163.00	4663	2	207	8	22	2016-06-13 18:37:55.084358+00	2015
4489	174.40	122.00	4663	1	78	2	8	2016-06-13 18:37:55.092695+00	2015
4490	252.60	187.40	4662	2	89	16	22	2016-06-13 18:37:55.101001+00	2015
4491	210.80	93.50	4662	1	16	4	8	2016-06-13 18:37:55.109339+00	2015
4492	171.70	134.30	5241	2	208	8	10	2016-06-13 18:37:55.118459+00	2015
4493	181.60	115.10	5241	1	32	7	5	2016-06-13 18:37:55.126043+00	2015
4494	119.20	111.10	5240	2	39	7	11	2016-06-13 18:37:55.134374+00	2015
4495	142.10	127.60	5240	1	13	3	4	2016-06-13 18:37:55.142716+00	2015
4496	117.70	102.70	5239	2	101	3	19	2016-06-13 18:37:55.151062+00	2015
4497	116.00	94.60	5239	1	15	4	11	2016-06-13 18:37:55.159408+00	2015
4498	184.40	117.80	5238	2	218	7	34	2016-06-13 18:37:55.167746+00	2015
4499	128.40	110.20	5238	1	34	2	8	2016-06-13 18:37:55.176051+00	2015
4500	121.90	106.80	5237	2	195	6	18	2016-06-13 18:37:55.184386+00	2015
4501	131.10	95.90	5237	1	16	2	13	2016-06-13 18:37:55.192708+00	2015
4502	134.80	112.30	5236	2	15	1	4	2016-06-13 18:37:55.201215+00	2015
4503	\N	109.10	5236	1	8	1	4	2016-06-13 18:37:55.209634+00	2015
4504	122.60	106.80	5235	2	67	7	24	2016-06-13 18:37:55.217678+00	2015
4505	121.70	97.40	5235	1	13	3	8	2016-06-13 18:37:55.225972+00	2015
4506	\N	104.30	5234	2	56	3	13	2016-06-13 18:37:55.234277+00	2015
4507	\N	106.00	5234	1	21	4	7	2016-06-13 18:37:55.242657+00	2015
4508	146.40	116.90	5242	2	174	5	31	2016-06-13 18:37:55.251014+00	2015
4509	\N	111.40	5242	1	20	4	8	2016-06-13 18:37:55.259312+00	2015
4510	130.40	87.60	5243	2	110	6	24	2016-06-13 18:37:55.267723+00	2015
4511	126.00	68.70	5243	1	14	3	6	2016-06-13 18:37:55.326094+00	2015
4512	\N	108.90	5251	2	11	1	5	2016-06-13 18:37:55.334344+00	2015
4513	\N	113.60	5251	1	5	1	3	2016-06-13 18:37:55.342648+00	2015
4514	\N	117.70	5250	2	101	4	20	2016-06-13 18:37:55.350983+00	2015
4515	\N	99.70	5250	1	13	1	7	2016-06-13 18:37:55.359364+00	2015
4516	\N	101.50	5249	2	30	3	10	2016-06-13 18:37:55.36768+00	2015
4517	\N	91.30	5249	1	11	6	4	2016-06-13 18:37:55.376003+00	2015
4518	149.40	130.10	5248	2	29	3	7	2016-06-13 18:37:55.384365+00	2015
4519	164.30	122.70	5248	1	14	2	5	2016-06-13 18:37:55.392655+00	2015
4520	141.90	122.80	5247	2	774	42	65	2016-06-13 18:37:55.40105+00	2015
4521	123.30	109.80	5247	1	85	15	28	2016-06-13 18:37:55.40935+00	2015
4522	122.20	100.80	5246	2	26	2	11	2016-06-13 18:37:55.417647+00	2015
4523	124.20	101.00	5246	1	9	3	4	2016-06-13 18:37:55.42607+00	2015
4524	174.10	126.00	5245	2	101	3	10	2016-06-13 18:37:55.434322+00	2015
4525	\N	111.10	5245	1	13	1	3	2016-06-13 18:37:55.442711+00	2015
4526	135.40	118.50	5244	2	158	7	20	2016-06-13 18:37:55.451078+00	2015
4527	\N	122.70	5244	1	23	2	4	2016-06-13 18:37:55.459381+00	2015
4528	147.30	119.80	5233	2	71	2	12	2016-06-13 18:37:55.467777+00	2015
4529	\N	104.20	5232	2	40	1	8	2016-06-13 18:37:55.476049+00	2015
4530	\N	101.80	5232	1	17	1	4	2016-06-13 18:37:55.484377+00	2015
4531	136.00	119.70	5221	2	61	2	6	2016-06-13 18:37:55.492735+00	2015
4532	137.60	117.70	5221	1	8	1	1	2016-06-13 18:37:55.501082+00	2015
4533	169.00	120.10	5220	2	156	2	12	2016-06-13 18:37:55.509371+00	2015
4534	103.80	99.60	5219	2	8	3	3	2016-06-13 18:37:55.51773+00	2015
4535	128.60	101.40	5219	1	2	1	1	2016-06-13 18:37:55.526057+00	2015
4536	114.20	105.60	5218	2	18	5	6	2016-06-13 18:37:55.534384+00	2015
4537	135.50	125.60	5218	1	2	1	1	2016-06-13 18:37:55.542737+00	2015
4538	141.70	114.40	5217	2	32	4	6	2016-06-13 18:37:55.551101+00	2015
4539	103.60	91.20	5217	1	2	1	1	2016-06-13 18:37:55.559406+00	2015
4540	115.40	96.70	5216	2	20	4	6	2016-06-13 18:37:55.567776+00	2015
4541	119.30	113.50	5216	1	2	1	1	2016-06-13 18:37:55.576087+00	2015
4542	139.00	114.40	5215	2	21	4	6	2016-06-13 18:37:55.584523+00	2015
4543	105.80	104.70	5215	1	4	2	1	2016-06-13 18:37:55.59276+00	2015
4544	139.00	116.70	5214	2	38	4	6	2016-06-13 18:37:55.601113+00	2015
4545	112.00	110.70	5214	1	5	1	1	2016-06-13 18:37:55.609468+00	2015
4546	128.60	120.70	5222	2	52	5	6	2016-06-13 18:37:55.617775+00	2015
4547	113.80	109.10	5222	1	4	2	2	2016-06-13 18:37:55.626108+00	2015
4548	123.50	115.50	5223	2	42	4	6	2016-06-13 18:37:55.634414+00	2015
4549	100.60	90.10	5223	1	2	1	1	2016-06-13 18:37:55.659386+00	2015
4550	136.60	117.50	5231	2	83	7	9	2016-06-13 18:37:55.667752+00	2015
4551	116.40	91.20	5231	1	2	1	1	2016-06-13 18:37:55.676117+00	2015
4552	141.00	132.40	5230	2	44	5	5	2016-06-13 18:37:55.684438+00	2015
4553	107.10	104.90	5230	1	2	1	1	2016-06-13 18:37:55.692783+00	2015
4554	131.70	121.00	5229	2	50	6	8	2016-06-13 18:37:55.701161+00	2015
4555	117.10	107.80	5229	1	3	1	1	2016-06-13 18:37:55.709476+00	2015
4556	137.00	123.80	5228	2	69	5	6	2016-06-13 18:37:55.717812+00	2015
4557	\N	138.40	5228	1	4	1	1	2016-06-13 18:37:55.726107+00	2015
4558	126.40	114.30	5227	2	224	16	26	2016-06-13 18:37:55.734475+00	2015
4559	117.10	95.20	5227	1	20	6	8	2016-06-13 18:37:55.742813+00	2015
4560	129.30	114.50	5226	2	115	12	22	2016-06-13 18:37:55.751164+00	2015
4561	132.40	123.30	5226	1	41	6	8	2016-06-13 18:37:55.8179+00	2015
4562	\N	95.40	5225	2	2	1	1	2016-06-13 18:37:55.826179+00	2015
4563	\N	126.40	5225	1	2	1	1	2016-06-13 18:37:55.834576+00	2015
4564	119.80	104.10	5224	2	8	1	1	2016-06-13 18:37:55.84296+00	2015
4565	116.50	111.20	5224	1	2	1	1	2016-06-13 18:37:55.851187+00	2015
4566	151.00	119.00	5307	2	1413	33	105	2016-06-13 18:37:55.860204+00	2015
4567	121.70	84.70	5307	1	371	12	35	2016-06-13 18:37:55.910081+00	2015
4568	148.30	123.30	5306	2	378	7	19	2016-06-13 18:37:56.002305+00	2015
4569	119.00	90.30	5306	1	117	3	6	2016-06-13 18:37:56.048099+00	2015
4570	117.90	110.30	5305	2	429	15	22	2016-06-13 18:37:56.085065+00	2015
4571	85.70	74.50	5305	1	162	5	8	2016-06-13 18:37:56.092769+00	2015
4572	136.70	119.00	5304	2	466	7	7	2016-06-13 18:37:56.101615+00	2015
4573	133.90	111.70	5304	1	97	3	3	2016-06-13 18:37:56.109599+00	2015
4574	193.30	162.70	5079	2	282	8	22	2016-06-13 18:37:56.169254+00	2015
4575	196.40	128.00	5079	1	75	9	21	2016-06-13 18:37:56.176164+00	2015
4576	170.50	159.30	5078	2	155	8	7	2016-06-13 18:37:56.184942+00	2015
4577	177.70	127.60	5078	1	77	7	8	2016-06-13 18:37:56.19294+00	2015
4578	186.10	162.30	5077	2	1876	47	143	2016-06-13 18:37:56.201617+00	2015
4579	189.30	128.80	5077	1	299	20	60	2016-06-13 18:37:56.209844+00	2015
4580	138.60	118.70	5076	2	432	7	23	2016-06-13 18:37:56.218223+00	2015
4581	133.00	88.10	5076	1	32	3	7	2016-06-13 18:37:56.226602+00	2015
4582	139.00	106.20	4524	2	270	5	20	2016-06-13 18:37:56.235508+00	2015
4583	171.10	131.70	4523	2	311	3	17	2016-06-13 18:37:56.243419+00	2015
4584	124.40	100.20	4521	2	282	15	15	2016-06-13 18:37:56.251373+00	2015
4585	108.80	89.30	4520	2	402	20	20	2016-06-13 18:37:56.309979+00	2015
4586	114.90	82.50	4519	2	1023	25	70	2016-06-13 18:37:56.317944+00	2015
4587	105.10	78.40	4519	1	157	5	15	2016-06-13 18:37:56.326155+00	2015
4588	101.40	78.00	4518	2	610	20	50	2016-06-13 18:37:56.335095+00	2015
4589	80.90	72.50	4517	2	263	10	15	2016-06-13 18:37:56.343001+00	2015
4590	81.70	73.70	4516	1	157	5	15	2016-06-13 18:37:56.352432+00	2015
4591	96.10	80.80	4516	2	1792	55	95	2016-06-13 18:37:56.359606+00	2015
4592	82.60	72.40	5462	2	654	15	45	2016-06-13 18:37:56.37539+00	2015
4593	80.10	75.40	4515	2	843	40	40	2016-06-13 18:37:56.384638+00	2015
4594	110.90	88.30	4514	2	753	15	55	2016-06-13 18:37:56.392917+00	2015
4595	89.00	77.50	5463	5	213	8	17	2016-06-13 18:37:56.46695+00	2015
4596	131.10	104.80	5464	5	205	7	18	2016-06-13 18:37:56.492094+00	2015
4597	154.60	145.00	4925	2	213	12	18	2016-06-13 18:37:56.50128+00	2015
4598	170.90	149.20	4925	5	215	20	25	2016-06-13 18:37:56.509592+00	2015
4599	169.60	139.00	4925	1	100	5	10	2016-06-13 18:37:56.517911+00	2015
4600	153.80	124.00	5401	5	176	5	20	2016-06-13 18:37:56.526258+00	2015
4601	\N	90.30	4926	2	132	2	13	2016-06-13 18:37:56.534572+00	2015
4602	\N	105.60	4926	5	161	2	18	2016-06-13 18:37:56.593182+00	2015
4603	116.90	81.70	4926	1	30	1	9	2016-06-13 18:37:56.601313+00	2015
4604	\N	91.80	5402	5	92	5	20	2016-06-13 18:37:56.60961+00	2015
4605	150.10	130.40	4927	2	412	30	45	2016-06-13 18:37:56.61791+00	2015
4606	116.00	94.40	5403	1	245	15	25	2016-06-13 18:37:56.626276+00	2015
4607	143.60	126.00	5404	5	422	30	45	2016-06-13 18:37:56.634607+00	2015
4608	153.50	134.80	4928	2	73	2	5	2016-06-13 18:37:56.64293+00	2015
4609	168.20	139.10	4928	5	93	3	12	2016-06-13 18:37:56.651282+00	2015
4610	121.00	99.30	5405	5	96	5	17	2016-06-13 18:37:56.660036+00	2015
4611	124.10	73.40	5406	6	41	5	15	2016-06-13 18:37:56.668023+00	2015
4612	131.90	85.60	5407	3	36	8	12	2016-06-13 18:37:56.676623+00	2015
4613	162.60	149.40	5408	5	137	5	15	2016-06-13 18:37:56.73491+00	2015
4614	167.10	147.00	4929	2	189	5	15	2016-06-13 18:37:56.743367+00	2015
4615	155.60	119.60	4929	5	210	5	15	2016-06-13 18:37:56.751387+00	2015
4616	136.00	106.50	5409	5	144	5	15	2016-06-13 18:37:56.759666+00	2015
4617	133.00	119.00	4930	2	79	10	10	2016-06-13 18:37:56.768035+00	2015
4618	159.10	104.90	4930	5	127	10	20	2016-06-13 18:37:56.776377+00	2015
4619	154.30	132.60	4931	2	76	7	8	2016-06-13 18:37:56.784677+00	2015
4620	131.70	82.80	4931	5	76	7	8	2016-06-13 18:37:56.793055+00	2015
4621	143.80	117.80	4932	2	175	5	10	2016-06-13 18:37:56.801399+00	2015
4622	155.10	133.10	4932	5	266	10	15	2016-06-13 18:37:56.8097+00	2015
4623	118.60	101.50	4937	2	105	10	10	2016-06-13 18:37:56.818028+00	2015
4624	135.80	92.50	4937	5	146	10	20	2016-06-13 18:37:56.885106+00	2015
4625	76.80	69.20	4936	2	121	10	10	2016-06-13 18:37:56.893438+00	2015
4626	93.90	76.50	4936	5	152	10	20	2016-06-13 18:37:56.901415+00	2015
4627	101.00	85.60	4935	2	131	5	10	2016-06-13 18:37:56.909946+00	2015
5	93.20	79.35	4635	1	49	2	4	2016-06-13 16:11:54.362318+00	2013
6	113.33	86.99	4635	2	216	8	11	2016-06-13 16:11:54.396473+00	2013
7	144.73	127.53	4634	2	184	8	11	2016-06-13 16:11:54.404382+00	2013
8	121.55	87.40	4634	1	51	2	4	2016-06-13 16:11:54.412709+00	2013
9	150.05	128.40	4633	2	216	8	11	2016-06-13 16:11:54.421036+00	2013
10	101.05	87.58	4633	1	51	2	4	2016-06-13 16:11:54.42937+00	2013
11	155.68	129.10	5320	2	310	12	13	2016-06-13 16:11:54.438374+00	2013
12	120.83	81.55	4506	2	209	12	13	2016-06-13 16:11:54.44604+00	2013
13	173.26	145.30	4507	2	451	18	22	2016-06-13 16:11:54.454455+00	2013
14	129.20	89.55	4508	2	613	24	26	2016-06-13 16:11:54.462886+00	2013
15	96.31	78.71	4509	2	197	12	13	2016-06-13 16:11:54.471277+00	2013
16	85.72	75.44	4510	2	196	12	13	2016-06-13 16:11:54.479525+00	2013
17	170.42	130.35	4512	2	214	5	15	2016-06-13 16:11:54.487858+00	2013
18	117.29	85.21	4513	2	332	15	35	2016-06-13 16:11:54.49619+00	2013
19	105.79	89.09	4505	1	84	7	8	2016-06-13 16:11:54.504538+00	2013
20	130.34	100.67	4505	2	505	28	37	2016-06-13 16:11:54.512867+00	2013
21	137.66	99.49	4504	2	447	30	40	2016-06-13 16:11:54.521176+00	2013
22	117.04	80.54	4503	2	649	37	68	2016-06-13 16:11:54.529516+00	2013
23	114.44	78.38	4503	1	93	8	12	2016-06-13 16:11:54.537833+00	2013
24	105.05	76.18	4495	2	390	33	42	2016-06-13 16:11:54.546176+00	2013
25	111.59	85.01	4495	1	40	7	8	2016-06-13 16:11:54.554521+00	2013
26	100.44	78.67	4496	2	417	23	32	2016-06-13 16:11:54.562842+00	2013
27	87.34	72.24	4496	1	54	7	8	2016-06-13 16:11:54.571398+00	2013
28	111.59	84.34	4497	1	89	7	8	2016-06-13 16:11:54.579531+00	2013
29	97.67	77.75	4497	2	568	43	52	2016-06-13 16:11:54.587857+00	2013
30	101.20	76.58	4498	2	336	25	35	2016-06-13 16:11:54.596254+00	2013
31	97.32	75.44	4499	2	302	25	35	2016-06-13 16:11:54.604562+00	2013
32	117.37	81.20	4500	2	269	15	25	2016-06-13 16:11:54.612906+00	2013
33	126.37	97.43	4501	2	159	15	25	2016-06-13 16:11:54.621169+00	2013
34	123.72	76.39	4502	2	241	5	45	2016-06-13 16:11:54.629528+00	2013
35	145.50	113.03	4722	2	616	20	20	2016-06-13 16:11:54.638647+00	2013
36	125.66	102.48	4722	1	72	10	10	2016-06-13 16:11:54.646256+00	2013
37	145.24	112.82	4723	2	267	5	15	2016-06-13 16:11:54.655707+00	2013
38	154.90	108.99	4724	2	103	3	22	2016-06-13 16:11:54.663146+00	2013
39	124.85	108.46	4724	1	39	2	13	2016-06-13 16:11:54.67152+00	2013
40	199.63	175.96	4725	2	294	3	14	2016-06-13 16:11:54.67982+00	2013
41	181.80	168.50	4725	1	82	2	6	2016-06-13 16:11:54.687982+00	2013
42	211.43	171.05	4726	2	387	3	10	2016-06-13 16:11:54.696404+00	2013
43	195.00	171.62	4726	1	83	2	5	2016-06-13 16:11:54.704748+00	2013
44	156.11	136.17	4721	2	269	15	20	2016-06-13 16:11:54.71293+00	2013
45	142.38	120.61	4721	1	79	5	10	2016-06-13 16:11:54.72123+00	2013
46	140.45	117.69	4720	1	105	15	25	2016-06-13 16:11:54.729569+00	2013
47	151.43	110.62	4720	2	390	30	55	2016-06-13 16:11:54.737937+00	2013
48	116.27	85.86	4715	2	341	20	40	2016-06-13 16:11:54.746262+00	2013
49	116.00	96.69	4715	1	82	10	20	2016-06-13 16:11:54.754607+00	2013
50	127.74	85.51	4716	2	264	7	10	2016-06-13 16:11:54.762953+00	2013
4628	126.00	87.10	4935	5	216	10	15	2016-06-13 18:37:56.918085+00	2015
51	116.00	86.16	4716	1	60	3	5	2016-06-13 16:11:54.771293+00	2013
52	121.59	91.72	4717	1	349	40	45	2016-06-13 16:11:54.779612+00	2013
53	135.71	95.48	4717	2	1779	80	160	2016-06-13 16:11:54.787853+00	2013
54	140.21	115.61	4718	1	62	7	13	2016-06-13 16:11:54.796247+00	2013
55	151.32	126.27	4718	2	463	23	27	2016-06-13 16:11:54.804613+00	2013
56	142.07	106.79	4719	2	279	3	25	2016-06-13 16:11:54.812934+00	2013
57	150.15	117.82	4719	1	51	2	10	2016-06-13 16:11:54.830159+00	2013
58	190.37	150.95	5278	2	249	10	30	2016-06-13 16:11:54.855321+00	2013
59	200.05	186.29	5277	1	50	2	8	2016-06-13 16:11:54.863011+00	2013
60	197.95	181.79	5277	2	316	8	32	2016-06-13 16:11:54.871296+00	2013
61	206.90	184.00	5276	1	39	1	9	2016-06-13 16:11:54.879764+00	2013
62	216.93	182.02	5276	2	295	4	36	2016-06-13 16:11:54.888069+00	2013
63	213.00	184.48	5275	1	41	1	9	2016-06-13 16:11:54.896402+00	2013
64	188.40	146.06	5275	2	276	4	36	2016-06-13 16:11:54.904758+00	2013
65	260.70	176.91	5274	1	38	1	9	2016-06-13 16:11:54.913062+00	2013
66	211.08	169.71	5274	2	295	4	36	2016-06-13 16:11:54.9214+00	2013
67	197.82	168.17	5273	2	188	5	20	2016-06-13 16:11:54.929739+00	2013
68	209.85	170.82	5272	2	337	8	32	2016-06-13 16:11:54.938045+00	2013
69	201.45	181.63	5272	1	32	2	8	2016-06-13 16:11:54.946412+00	2013
70	171.03	138.99	5271	2	317	8	32	2016-06-13 16:11:54.954749+00	2013
71	158.55	133.84	5271	1	30	2	8	2016-06-13 16:11:54.963064+00	2013
72	185.30	162.70	5270	1	39	2	8	2016-06-13 16:11:54.971429+00	2013
73	180.99	137.85	5270	2	283	8	42	2016-06-13 16:11:54.979786+00	2013
74	193.85	179.99	5269	1	29	2	8	2016-06-13 16:11:54.988098+00	2013
75	162.94	135.73	5269	2	249	8	32	2016-06-13 16:11:54.996509+00	2013
77	87.49	\N	4636	1	31	15	\N	2016-06-13 16:23:59.507969+00	2013
78	127.00	98.94	4562	1	21	3	5	2016-06-13 16:23:59.516984+00	2013
79	138.14	97.29	4562	2	168	8	10	2016-06-13 16:23:59.524618+00	2013
80	101.24	75.95	4563	2	139	7	10	2016-06-13 16:23:59.532987+00	2013
81	119.84	97.49	4564	2	94	7	10	2016-06-13 16:23:59.541355+00	2013
82	137.38	102.43	4565	2	194	10	32	2016-06-13 16:23:59.549735+00	2013
83	146.88	116.54	4565	1	42	5	13	2016-06-13 16:23:59.558063+00	2013
84	165.70	144.82	4566	2	135	4	10	2016-06-13 16:23:59.566371+00	2013
85	174.30	160.76	4566	1	41	1	5	2016-06-13 16:23:59.574721+00	2013
86	117.73	84.39	4567	2	413	38	55	2016-06-13 16:23:59.583043+00	2013
87	113.27	89.95	4567	1	47	7	10	2016-06-13 16:23:59.591375+00	2013
88	119.52	87.78	4561	1	28	5	15	2016-06-13 16:23:59.599711+00	2013
89	125.60	92.64	4561	2	163	25	45	2016-06-13 16:23:59.608027+00	2013
90	118.34	99.97	4560	1	88	10	15	2016-06-13 16:23:59.616368+00	2013
91	110.97	75.99	4560	2	472	50	75	2016-06-13 16:23:59.62476+00	2013
92	129.92	106.44	4559	1	43	5	10	2016-06-13 16:23:59.633085+00	2013
93	98.18	72.69	4559	2	150	20	25	2016-06-13 16:23:59.641398+00	2013
94	110.18	74.99	4553	2	269	32	40	2016-06-13 16:23:59.649756+00	2013
95	93.03	78.32	4553	1	51	8	10	2016-06-13 16:23:59.658086+00	2013
96	98.83	73.34	4554	2	277	32	45	2016-06-13 16:23:59.666398+00	2013
97	123.24	103.89	4554	1	66	8	15	2016-06-13 16:23:59.674883+00	2013
98	146.42	117.95	4555	1	60	5	12	2016-06-13 16:23:59.683357+00	2013
99	140.48	108.93	4555	2	366	25	28	2016-06-13 16:23:59.691508+00	2013
100	129.43	79.39	4556	2	198	17	25	2016-06-13 16:23:59.699779+00	2013
101	125.67	100.38	4556	1	50	3	10	2016-06-13 16:23:59.708079+00	2013
102	117.04	87.74	4557	2	184	40	45	2016-06-13 16:23:59.716422+00	2013
103	111.08	85.76	4557	1	23	5	10	2016-06-13 16:23:59.724703+00	2013
104	99.15	75.41	4558	2	128	11	17	2016-06-13 16:23:59.733044+00	2013
105	126.65	85.90	4558	1	30	4	8	2016-06-13 16:23:59.741455+00	2013
106	162.56	130.41	5291	2	902	40	80	2016-06-13 16:23:59.750475+00	2013
107	160.77	128.80	5291	1	200	20	40	2016-06-13 16:23:59.758203+00	2013
108	158.24	137.45	5289	1	60	5	15	2016-06-13 16:23:59.766554+00	2013
109	167.15	125.50	5289	2	452	10	30	2016-06-13 16:23:59.774868+00	2013
110	127.05	108.53	5288	1	29	4	6	2016-06-13 16:23:59.783193+00	2013
111	138.83	101.00	5288	2	264	6	9	2016-06-13 16:23:59.791506+00	2013
112	210.06	181.42	5268	2	3654	56	334	2016-06-13 16:23:59.800441+00	2013
113	206.38	170.91	5268	1	454	9	51	2016-06-13 16:23:59.808186+00	2013
114	205.75	162.44	4954	1	83	6	22	2016-06-13 16:23:59.817183+00	2013
115	224.87	180.27	4954	2	288	9	23	2016-06-13 16:23:59.824893+00	2013
116	204.68	177.75	4955	1	188	8	28	2016-06-13 16:23:59.833218+00	2013
117	217.69	198.72	4955	2	340	12	42	2016-06-13 16:23:59.841546+00	2013
118	220.42	181.54	4956	1	116	6	30	2016-06-13 16:23:59.849884+00	2013
119	216.88	191.18	4956	2	410	9	45	2016-06-13 16:23:59.858221+00	2013
120	177.12	157.06	5069	2	717	25	39	2016-06-13 16:23:59.867238+00	2013
121	160.30	138.10	5069	1	64	5	6	2016-06-13 16:23:59.874923+00	2013
122	193.21	169.82	5068	2	2746	80	112	2016-06-13 16:23:59.883152+00	2013
123	170.48	148.59	5068	1	299	15	18	2016-06-13 16:23:59.891665+00	2013
124	153.13	136.35	5067	2	1089	34	42	2016-06-13 16:23:59.899992+00	2013
125	140.00	116.48	5067	1	79	6	8	2016-06-13 16:23:59.908333+00	2013
126	208.48	175.06	5066	2	1235	25	77	2016-06-13 16:23:59.916644+00	2013
127	\N	143.60	5066	1	137	5	13	2016-06-13 16:23:59.924988+00	2013
128	118.34	100.59	5065	1	31	5	10	2016-06-13 16:23:59.933308+00	2013
129	156.43	135.50	5065	2	845	40	45	2016-06-13 16:23:59.941638+00	2013
130	115.92	91.41	5002	1	124	5	10	2016-06-13 16:23:59.950643+00	2013
131	\N	\N	5002	6	21	20	5	2016-06-13 16:23:59.95824+00	2013
132	162.68	138.01	5002	2	681	35	65	2016-06-13 16:23:59.966618+00	2013
133	\N	\N	5003	6	13	10	5	2016-06-13 16:23:59.97494+00	2013
134	151.31	117.72	5003	2	569	20	55	2016-06-13 16:23:59.983305+00	2013
135	142.55	113.99	5004	2	517	20	55	2016-06-13 16:23:59.991656+00	2013
136	145.54	120.27	5005	2	860	20	55	2016-06-13 16:23:59.999972+00	2013
137	\N	\N	5006	6	12	5	5	2016-06-13 16:24:00.008366+00	2013
138	149.05	128.53	5006	2	902	15	50	2016-06-13 16:24:00.016719+00	2013
139	172.42	151.86	5007	2	931	30	50	2016-06-13 16:24:00.025088+00	2013
140	132.65	105.76	5008	2	739	20	50	2016-06-13 16:24:00.03339+00	2013
141	173.79	150.34	5001	2	492	15	25	2016-06-13 16:24:00.041709+00	2013
142	139.20	118.27	5000	2	980	20	40	2016-06-13 16:24:00.050073+00	2013
143	173.21	154.64	4999	2	484	15	25	2016-06-13 16:24:00.058419+00	2013
144	158.32	138.23	4992	2	991	50	75	2016-06-13 16:24:00.066751+00	2013
145	108.02	85.40	5321	1	254	20	30	2016-06-13 16:24:00.075087+00	2013
146	117.90	82.33	5322	6	13	10	30	2016-06-13 16:24:00.083734+00	2013
147	129.09	113.75	5323	1	452	20	30	2016-06-13 16:24:00.09213+00	2013
148	145.31	121.78	4993	1	197	15	20	2016-06-13 16:24:00.100208+00	2013
149	173.18	155.78	4993	2	989	55	70	2016-06-13 16:24:00.108668+00	2013
150	149.52	132.08	4994	2	594	10	40	2016-06-13 16:24:00.116822+00	2013
151	133.96	111.27	4995	2	1223	35	80	2016-06-13 16:24:00.125169+00	2013
152	\N	\N	4995	6	27	20	10	2016-06-13 16:24:00.133409+00	2013
153	106.04	82.35	4995	1	98	5	10	2016-06-13 16:24:00.141805+00	2013
154	119.40	102.16	4996	2	916	20	40	2016-06-13 16:24:00.15018+00	2013
155	198.13	181.99	4997	2	813	22	30	2016-06-13 16:24:00.158514+00	2013
156	193.00	153.81	4997	1	141	3	10	2016-06-13 16:24:00.166868+00	2013
157	\N	\N	4997	6	17	10	5	2016-06-13 16:24:00.175175+00	2013
158	139.00	126.06	4998	1	31	2	5	2016-06-13 16:24:00.183527+00	2013
159	159.76	141.82	4998	2	194	8	15	2016-06-13 16:24:00.191841+00	2013
160	115.45	78.48	5316	2	28	2	5	2016-06-13 16:24:00.200905+00	2013
161	135.57	84.60	5316	5	47	3	15	2016-06-13 16:24:00.208524+00	2013
162	79.07	71.03	5317	2	26	2	5	2016-06-13 16:24:00.216849+00	2013
163	109.93	80.08	5317	5	55	3	15	2016-06-13 16:24:00.225172+00	2013
164	123.75	80.84	5318	2	25	2	5	2016-06-13 16:24:00.23351+00	2013
165	111.23	76.33	5318	5	55	3	15	2016-06-13 16:24:00.241825+00	2013
166	112.87	75.67	5319	5	51	3	15	2016-06-13 16:24:00.250215+00	2013
167	125.35	76.66	5319	2	28	2	5	2016-06-13 16:24:00.258555+00	2013
168	135.77	103.97	4417	2	248	7	18	2016-06-13 16:24:00.267588+00	2013
169	158.54	104.91	4419	2	149	5	15	2016-06-13 16:24:00.275245+00	2013
170	159.66	133.39	4420	2	181	7	18	2016-06-13 16:24:00.283745+00	2013
171	155.46	110.34	4421	2	123	5	15	2016-06-13 16:24:00.292092+00	2013
172	144.90	117.03	4422	2	157	5	15	2016-06-13 16:24:00.300327+00	2013
173	120.50	81.43	4416	2	117	5	15	2016-06-13 16:24:00.308632+00	2013
174	152.83	119.47	5324	2	127	6	14	2016-06-13 16:24:00.316964+00	2013
175	182.14	135.91	4415	1	78	5	10	2016-06-13 16:24:00.325286+00	2013
176	173.41	152.27	4415	2	302	15	20	2016-06-13 16:24:00.333623+00	2013
177	126.83	84.89	4409	1	51	10	15	2016-06-13 16:24:00.3419+00	2013
178	148.19	122.43	4409	2	544	35	65	2016-06-13 16:24:00.350257+00	2013
179	116.40	89.08	4410	2	580	50	70	2016-06-13 16:24:00.358607+00	2013
180	93.30	72.61	4410	1	75	10	20	2016-06-13 16:24:00.366917+00	2013
181	121.15	80.17	4411	1	80	15	25	2016-06-13 16:24:00.375327+00	2013
182	152.65	122.30	4411	2	732	50	70	2016-06-13 16:24:00.383593+00	2013
183	120.83	91.09	4412	1	79	10	20	2016-06-13 16:24:00.391968+00	2013
184	135.06	105.49	4412	2	886	70	100	2016-06-13 16:24:00.400337+00	2013
185	116.42	87.45	4413	2	1138	75	105	2016-06-13 16:24:00.408653+00	2013
186	112.16	83.05	4413	1	58	5	15	2016-06-13 16:24:00.416963+00	2013
187	157.79	129.08	4414	2	632	35	65	2016-06-13 16:24:00.425252+00	2013
188	131.41	100.94	4414	1	59	10	15	2016-06-13 16:24:00.433644+00	2013
189	139.60	121.67	4824	2	133	5	15	2016-06-13 16:24:00.442695+00	2013
190	127.39	111.43	4823	2	504	10	15	2016-06-13 16:24:00.450282+00	2013
191	111.56	97.12	4822	2	236	5	15	2016-06-13 16:24:00.45861+00	2013
192	160.60	137.39	4821	2	175	5	15	2016-06-13 16:24:00.46696+00	2013
193	153.13	125.13	4820	2	174	10	10	2016-06-13 16:24:00.475327+00	2013
194	147.70	133.90	4819	2	178	10	15	2016-06-13 16:24:00.483648+00	2013
195	128.75	113.41	5325	1	301	10	15	2016-06-13 16:24:00.491949+00	2013
196	154.09	132.36	4817	2	386	15	35	2016-06-13 16:24:00.50031+00	2013
197	146.81	130.73	4825	2	746	20	40	2016-06-13 16:24:00.509707+00	2013
198	126.03	107.00	4826	2	421	10	15	2016-06-13 16:24:00.518034+00	2013
199	157.07	121.40	4834	2	504	25	60	2016-06-13 16:24:00.526301+00	2013
200	125.91	93.86	4833	2	542	20	40	2016-06-13 16:24:00.534715+00	2013
201	158.66	141.87	4832	2	482	20	30	2016-06-13 16:24:00.543051+00	2013
202	176.01	158.00	4831	2	843	30	70	2016-06-13 16:24:00.551376+00	2013
203	141.46	122.90	4831	1	111	10	15	2016-06-13 16:24:00.559709+00	2013
204	176.56	156.35	4830	2	120	5	15	2016-06-13 16:24:00.567985+00	2013
205	177.12	158.29	4829	2	119	5	15	2016-06-13 16:24:00.576389+00	2013
206	170.87	146.34	4828	2	662	20	50	2016-06-13 16:24:00.584715+00	2013
207	181.98	158.37	4827	2	198	15	25	2016-06-13 16:24:00.593043+00	2013
208	168.12	107.11	4816	2	129	5	20	2016-06-13 16:24:00.601365+00	2013
209	146.23	127.19	4815	2	518	20	30	2016-06-13 16:24:00.609685+00	2013
210	154.06	124.22	4814	2	231	20	30	2016-06-13 16:24:00.618021+00	2013
211	137.60	116.53	4803	2	266	20	30	2016-06-13 16:24:00.626363+00	2013
212	116.75	100.32	4802	2	466	20	30	2016-06-13 16:24:00.634715+00	2013
213	118.26	102.45	4801	2	305	10	15	2016-06-13 16:24:00.643151+00	2013
214	131.62	117.39	4800	2	356	5	15	2016-06-13 16:24:00.651375+00	2013
215	192.19	172.01	4799	2	311	10	20	2016-06-13 16:24:00.659737+00	2013
216	152.00	110.90	4798	2	286	5	20	2016-06-13 16:24:00.668074+00	2013
217	146.90	124.78	4797	2	346	15	25	2016-06-13 16:24:00.676379+00	2013
218	126.38	100.15	4796	2	368	10	30	2016-06-13 16:24:00.684771+00	2013
219	117.23	85.69	4804	2	616	20	50	2016-06-13 16:24:00.693094+00	2013
220	99.70	83.17	4805	2	449	15	35	2016-06-13 16:24:00.701394+00	2013
221	96.98	80.95	4813	2	607	20	40	2016-06-13 16:24:00.709736+00	2013
222	149.79	117.10	4812	2	166	15	25	2016-06-13 16:24:00.718068+00	2013
223	130.71	105.53	4811	2	337	15	25	2016-06-13 16:24:00.726389+00	2013
224	132.27	112.47	4810	2	173	15	25	2016-06-13 16:24:00.734741+00	2013
225	105.68	89.22	4809	2	367	10	30	2016-06-13 16:24:00.743073+00	2013
226	168.56	148.59	4808	2	233	10	15	2016-06-13 16:24:00.751376+00	2013
227	175.32	154.85	4807	2	374	20	30	2016-06-13 16:24:00.759787+00	2013
228	144.60	125.00	4806	2	218	15	20	2016-06-13 16:24:00.768105+00	2013
229	157.62	122.91	4968	2	966	35	90	2016-06-13 16:24:00.77717+00	2013
230	136.46	105.99	4969	2	628	25	50	2016-06-13 16:24:00.784737+00	2013
231	145.00	120.73	4970	2	614	25	50	2016-06-13 16:24:00.793121+00	2013
232	146.39	126.00	4971	2	1123	25	50	2016-06-13 16:24:00.801446+00	2013
233	141.24	122.46	4972	2	1034	25	50	2016-06-13 16:24:00.809775+00	2013
234	177.35	153.12	4973	2	969	25	50	2016-06-13 16:24:00.818116+00	2013
235	143.50	111.37	4974	2	997	40	60	2016-06-13 16:24:00.826449+00	2013
236	185.34	159.76	4975	2	506	15	25	2016-06-13 16:24:00.834795+00	2013
237	148.64	117.11	4967	2	1314	15	45	2016-06-13 16:24:00.843124+00	2013
238	175.81	156.88	4966	2	549	10	40	2016-06-13 16:24:00.851464+00	2013
239	169.10	140.92	4965	2	1373	35	90	2016-06-13 16:24:00.859793+00	2013
240	142.92	118.30	5326	1	503	20	30	2016-06-13 16:24:00.868118+00	2013
241	133.32	117.80	5327	1	471	10	15	2016-06-13 16:24:00.876427+00	2013
242	172.24	152.47	4957	2	1335	28	72	2016-06-13 16:24:00.885001+00	2013
243	162.86	136.16	4957	1	215	7	18	2016-06-13 16:24:00.893224+00	2013
244	181.64	159.98	4958	2	779	20	30	2016-06-13 16:24:00.901473+00	2013
245	141.27	103.47	4959	2	2100	60	160	2016-06-13 16:24:00.909793+00	2013
246	131.15	103.67	4960	2	797	15	35	2016-06-13 16:24:00.918115+00	2013
247	144.82	114.90	4961	2	917	20	30	2016-06-13 16:24:00.926444+00	2013
248	207.42	180.38	4962	2	380	10	30	2016-06-13 16:24:00.93478+00	2013
249	174.04	152.87	4963	2	224	5	15	2016-06-13 16:24:00.943128+00	2013
250	120.99	83.37	4964	2	1038	30	70	2016-06-13 16:24:00.951491+00	2013
251	165.93	138.33	5055	2	221	6	9	2016-06-13 16:24:00.960454+00	2013
252	154.55	124.23	5055	1	72	4	6	2016-06-13 16:24:00.968044+00	2013
253	189.40	161.12	5054	2	1840	49	71	2016-06-13 16:24:00.976522+00	2013
254	166.52	148.05	5054	1	242	16	24	2016-06-13 16:24:00.984761+00	2013
255	159.35	137.12	5053	1	148	10	15	2016-06-13 16:24:00.993163+00	2013
256	175.00	152.13	5053	2	1524	35	80	2016-06-13 16:24:01.001495+00	2013
257	134.98	107.75	5052	1	90	4	6	2016-06-13 16:24:01.009808+00	2013
258	179.68	151.25	5052	2	429	6	9	2016-06-13 16:24:01.018159+00	2013
259	149.73	127.67	5051	2	540	16	20	2016-06-13 16:24:01.026463+00	2013
260	112.28	90.40	5051	1	18	4	10	2016-06-13 16:24:01.034859+00	2013
261	150.24	128.05	4881	2	554	8	12	2016-06-13 16:24:01.043824+00	2013
262	118.80	105.43	4881	1	43	2	3	2016-06-13 16:24:01.051561+00	2013
263	142.87	122.59	4880	2	1051	12	28	2016-06-13 16:24:01.05993+00	2013
264	100.10	85.60	4880	1	75	3	7	2016-06-13 16:24:01.068312+00	2013
265	163.57	146.68	4879	2	845	12	20	2016-06-13 16:24:01.076642+00	2013
266	128.53	110.96	4879	1	31	3	5	2016-06-13 16:24:01.084963+00	2013
267	171.72	147.73	4484	2	223	5	20	2016-06-13 16:24:01.09397+00	2013
268	153.56	126.93	4485	2	789	10	40	2016-06-13 16:24:01.101593+00	2013
269	169.73	144.59	4486	2	292	7	13	2016-06-13 16:24:01.109966+00	2013
270	116.09	93.63	5328	2	394	8	12	2016-06-13 16:24:01.1183+00	2013
271	194.26	162.61	4487	2	278	5	15	2016-06-13 16:24:01.126664+00	2013
272	144.14	122.19	5329	1	412	15	25	2016-06-13 16:24:01.136421+00	2013
273	179.62	153.17	4489	2	395	10	15	2016-06-13 16:24:01.144727+00	2013
274	151.52	123.57	4490	2	1196	18	67	2016-06-13 16:24:01.152267+00	2013
275	132.90	105.47	4490	1	108	2	13	2016-06-13 16:24:01.160026+00	2013
276	139.51	122.13	4491	2	520	10	15	2016-06-13 16:24:01.168357+00	2013
277	\N	134.04	4492	1	72	2	8	2016-06-13 16:24:01.176681+00	2013
278	218.98	176.32	4492	2	438	13	47	2016-06-13 16:24:01.185027+00	2013
279	181.41	163.73	4493	2	841	15	35	2016-06-13 16:24:01.193318+00	2013
280	198.76	180.74	4494	2	1092	38	57	2016-06-13 16:24:01.201673+00	2013
281	178.25	140.02	4494	1	141	2	13	2016-06-13 16:24:01.210011+00	2013
282	174.40	155.32	4483	2	171	5	15	2016-06-13 16:24:01.218345+00	2013
283	195.62	174.20	4482	2	647	13	27	2016-06-13 16:24:01.226687+00	2013
284	186.55	155.40	4482	1	84	2	8	2016-06-13 16:24:01.235023+00	2013
285	168.70	141.50	4471	2	539	28	32	2016-06-13 16:24:01.244301+00	2013
286	158.65	116.73	4471	1	81	2	8	2016-06-13 16:24:01.251982+00	2013
287	165.05	134.93	4472	2	303	10	15	2016-06-13 16:24:01.260256+00	2013
288	165.57	136.90	4473	2	886	15	45	2016-06-13 16:24:01.268579+00	2013
289	147.22	116.84	4474	2	545	15	45	2016-06-13 16:24:01.276836+00	2013
290	105.35	81.71	4475	1	62	2	8	2016-06-13 16:24:01.285171+00	2013
291	158.46	122.76	4475	2	455	13	47	2016-06-13 16:24:01.293512+00	2013
292	157.90	137.83	4476	2	433	10	15	2016-06-13 16:24:01.301871+00	2013
293	152.18	128.47	4477	2	386	5	20	2016-06-13 16:24:01.310211+00	2013
294	222.30	191.33	4478	2	208	5	15	2016-06-13 16:24:01.318523+00	2013
295	168.46	144.12	4479	2	339	10	20	2016-06-13 16:24:01.32695+00	2013
296	134.60	94.69	4480	2	307	5	15	2016-06-13 16:24:01.335078+00	2013
297	143.98	110.04	4481	2	275	5	15	2016-06-13 16:24:01.34337+00	2013
298	125.34	102.45	5124	2	313	5	20	2016-06-13 16:24:01.352349+00	2013
299	143.52	104.20	5125	2	205	5	20	2016-06-13 16:24:01.360017+00	2013
300	126.48	92.34	5126	2	165	5	15	2016-06-13 16:24:01.368331+00	2013
301	191.33	170.21	5128	2	412	10	15	2016-06-13 16:24:01.40176+00	2013
302	164.62	151.14	5129	2	398	10	15	2016-06-13 16:24:01.410052+00	2013
303	187.84	167.58	5130	2	508	10	15	2016-06-13 16:24:01.41839+00	2013
304	123.80	101.97	5131	2	449	25	50	2016-06-13 16:24:01.428019+00	2013
305	126.26	103.98	5132	2	848	47	118	2016-06-13 16:24:01.435643+00	2013
306	118.20	83.68	5132	1	61	3	12	2016-06-13 16:24:01.44395+00	2013
307	127.53	102.28	5123	2	692	25	75	2016-06-13 16:24:01.452237+00	2013
308	122.20	100.54	5122	2	268	12	18	2016-06-13 16:24:01.460537+00	2013
309	102.70	79.84	5122	1	78	3	17	2016-06-13 16:24:01.468804+00	2013
310	127.03	97.07	5113	2	275	20	55	2016-06-13 16:24:01.477079+00	2013
311	125.20	95.35	5114	2	841	40	80	2016-06-13 16:24:01.485292+00	2013
312	135.81	110.74	5115	2	1001	17	83	2016-06-13 16:24:01.493847+00	2013
313	113.17	86.22	5115	1	117	3	22	2016-06-13 16:24:01.502092+00	2013
314	121.80	101.34	5116	2	504	15	60	2016-06-13 16:24:01.510306+00	2013
315	131.69	110.09	5117	2	337	20	55	2016-06-13 16:24:01.518605+00	2013
316	127.58	97.78	5119	2	1551	85	190	2016-06-13 16:24:01.526872+00	2013
317	117.94	85.34	5119	1	115	5	20	2016-06-13 16:24:01.535221+00	2013
318	141.06	108.28	5120	2	855	40	100	2016-06-13 16:24:01.543488+00	2013
319	146.18	105.05	5120	1	106	5	15	2016-06-13 16:24:01.551799+00	2013
320	154.13	123.31	5121	2	366	7	33	2016-06-13 16:24:01.573623+00	2013
321	135.77	105.12	5121	1	77	3	17	2016-06-13 16:24:01.593477+00	2013
322	135.55	117.37	4707	2	28	2	6	2016-06-13 16:24:01.602489+00	2013
323	121.40	105.48	4708	2	21	3	8	2016-06-13 16:24:01.610223+00	2013
324	166.40	112.00	4708	1	6	1	4	2016-06-13 16:24:01.61857+00	2013
325	\N	108.75	4709	1	5	1	4	2016-06-13 16:24:01.626914+00	2013
326	\N	132.24	4709	2	48	3	8	2016-06-13 16:24:01.635242+00	2013
327	177.80	132.93	4710	1	18	2	4	2016-06-13 16:24:01.643577+00	2013
328	144.70	125.72	4710	2	85	6	13	2016-06-13 16:24:01.651856+00	2013
329	144.95	127.68	4711	1	11	2	4	2016-06-13 16:24:01.660249+00	2013
330	141.52	124.00	4711	2	74	5	14	2016-06-13 16:24:01.668597+00	2013
331	136.70	109.77	4712	1	11	2	3	2016-06-13 16:24:01.676926+00	2013
332	139.66	121.36	4712	2	49	6	7	2016-06-13 16:24:01.685178+00	2013
333	97.85	88.00	4713	1	5	2	2	2016-06-13 16:24:01.693572+00	2013
334	137.16	112.57	4713	2	39	6	6	2016-06-13 16:24:01.701903+00	2013
335	\N	166.00	4714	1	5	1	1	2016-06-13 16:24:01.710206+00	2013
336	132.57	106.20	4714	2	25	3	3	2016-06-13 16:24:01.718578+00	2013
337	147.80	100.30	4706	1	2	1	1	2016-06-13 16:24:01.726911+00	2013
338	133.47	123.77	4706	2	16	3	3	2016-06-13 16:24:01.735228+00	2013
339	\N	130.85	4705	1	13	1	2	2016-06-13 16:24:01.743608+00	2013
340	158.80	137.37	4705	2	36	3	3	2016-06-13 16:24:01.75188+00	2013
341	\N	144.45	4704	1	13	1	2	2016-06-13 16:24:01.760238+00	2013
342	161.90	128.67	4704	2	36	3	3	2016-06-13 16:24:01.768626+00	2013
343	120.80	108.05	4696	1	9	2	2	2016-06-13 16:24:01.776965+00	2013
344	125.80	116.33	4696	2	16	3	3	2016-06-13 16:24:01.785259+00	2013
345	146.88	124.38	4697	2	90	5	12	2016-06-13 16:24:01.79357+00	2013
346	132.40	111.93	4697	1	15	2	3	2016-06-13 16:24:01.801945+00	2013
347	149.77	122.40	4698	2	58	4	4	2016-06-13 16:24:01.81028+00	2013
348	138.20	121.23	4698	1	8	2	4	2016-06-13 16:24:01.818618+00	2013
349	133.70	109.79	4699	2	25	4	7	2016-06-13 16:24:01.826932+00	2013
350	\N	99.13	4700	1	5	1	4	2016-06-13 16:24:01.835236+00	2013
351	114.30	99.07	4700	2	29	4	6	2016-06-13 16:24:01.843608+00	2013
352	144.30	114.90	4701	2	23	2	5	2016-06-13 16:24:01.851908+00	2013
353	116.80	110.26	4702	2	28	2	5	2016-06-13 16:24:01.860271+00	2013
354	\N	118.60	4703	2	28	1	5	2016-06-13 16:24:01.868604+00	2013
355	142.02	113.25	5300	2	183	13	17	2016-06-13 16:24:01.877694+00	2013
356	133.56	107.75	5300	1	87	9	11	2016-06-13 16:24:01.885305+00	2013
357	157.61	129.36	5300	5	174	13	17	2016-06-13 16:24:01.893618+00	2013
358	151.93	117.50	5302	2	91	4	8	2016-06-13 16:24:01.901944+00	2013
359	129.05	109.23	5302	1	34	2	4	2016-06-13 16:24:01.910315+00	2013
360	143.00	100.76	5302	5	86	4	8	2016-06-13 16:24:01.918694+00	2013
361	130.18	97.73	5303	2	80	4	6	2016-06-13 16:24:01.927007+00	2013
362	118.35	92.30	5303	1	28	2	3	2016-06-13 16:24:01.935344+00	2013
363	128.05	99.57	5303	5	77	4	6	2016-06-13 16:24:01.943669+00	2013
364	143.60	124.87	4442	2	479	5	15	2016-06-13 16:24:01.952597+00	2013
365	137.65	115.92	4443	2	746	20	30	2016-06-13 16:24:01.960281+00	2013
366	133.48	118.82	4444	2	748	10	15	2016-06-13 16:24:01.968574+00	2013
367	134.18	106.23	4445	2	362	10	15	2016-06-13 16:24:01.976986+00	2013
368	154.06	131.19	4446	2	232	5	15	2016-06-13 16:24:01.985318+00	2013
369	122.74	97.77	5330	1	433	15	25	2016-06-13 16:24:01.993654+00	2013
370	160.47	139.87	4447	2	709	20	25	2016-06-13 16:24:02.002036+00	2013
371	155.15	134.34	4447	1	117	5	10	2016-06-13 16:24:02.010377+00	2013
372	149.91	138.59	4448	2	550	10	20	2016-06-13 16:24:02.018711+00	2013
373	127.00	107.10	4449	2	1063	25	45	2016-06-13 16:24:02.027039+00	2013
374	110.00	89.23	4450	2	376	5	15	2016-06-13 16:24:02.035359+00	2013
375	164.08	142.26	4451	2	672	25	55	2016-06-13 16:24:02.043705+00	2013
376	112.80	99.93	4451	1	63	5	15	2016-06-13 16:24:02.052029+00	2013
377	119.10	96.30	4452	2	132	4	11	2016-06-13 16:24:02.060378+00	2013
378	102.70	92.90	4452	1	8	1	4	2016-06-13 16:24:02.06871+00	2013
379	112.51	86.43	4441	2	492	10	15	2016-06-13 16:24:02.077052+00	2013
380	152.69	135.97	4440	2	821	20	30	2016-06-13 16:24:02.085608+00	2013
381	156.36	97.59	5331	6	25	5	15	2016-06-13 16:24:02.094037+00	2013
382	148.56	133.40	4430	2	545	10	20	2016-06-13 16:24:02.102084+00	2013
383	160.44	140.21	4431	2	406	10	20	2016-06-13 16:24:02.110355+00	2013
384	151.83	124.70	4432	2	808	10	40	2016-06-13 16:24:02.118721+00	2013
385	147.63	112.74	4433	2	607	20	30	2016-06-13 16:24:02.127045+00	2013
386	136.32	110.32	4434	2	241	10	15	2016-06-13 16:24:02.135432+00	2013
387	127.60	104.31	4435	2	400	5	15	2016-06-13 16:24:02.143751+00	2013
388	173.22	150.03	4436	2	602	5	25	2016-06-13 16:24:02.152048+00	2013
389	119.35	84.01	4437	2	647	15	25	2016-06-13 16:24:02.16042+00	2013
390	126.22	93.19	4438	2	475	10	20	2016-06-13 16:24:02.168748+00	2013
391	131.34	99.68	4439	2	410	5	15	2016-06-13 16:24:02.177107+00	2013
392	165.54	127.73	5332	5	209	5	15	2016-06-13 16:24:02.186142+00	2013
393	111.50	87.75	5287	5	151	10	15	2016-06-13 16:24:02.193712+00	2013
394	114.62	91.16	5287	2	97	5	10	2016-06-13 16:24:02.202072+00	2013
395	101.45	87.15	5286	2	91	4	11	2016-06-13 16:24:02.210402+00	2013
396	99.22	78.50	5286	5	136	6	19	2016-06-13 16:24:02.218752+00	2013
397	100.22	82.87	5285	5	153	10	15	2016-06-13 16:24:02.227085+00	2013
398	96.01	80.53	5333	5	146	10	15	2016-06-13 16:24:02.235393+00	2013
399	93.38	77.94	5284	2	103	5	15	2016-06-13 16:24:02.243735+00	2013
400	117.64	88.00	5284	5	153	10	20	2016-06-13 16:24:02.252072+00	2013
401	87.50	76.75	5283	5	151	6	24	2016-06-13 16:24:02.260407+00	2013
402	102.45	79.74	5283	2	113	4	16	2016-06-13 16:24:02.268804+00	2013
403	128.07	97.67	5334	5	222	10	15	2016-06-13 16:24:02.277146+00	2013
404	111.72	84.89	5335	5	148	5	15	2016-06-13 16:24:02.285472+00	2013
405	110.87	88.48	5336	5	160	10	15	2016-06-13 16:24:02.293754+00	2013
406	107.98	78.44	5282	5	164	10	15	2016-06-13 16:24:02.302115+00	2013
407	118.81	85.23	5281	5	169	10	15	2016-06-13 16:24:02.310477+00	2013
408	117.16	83.41	5281	2	60	5	10	2016-06-13 16:24:02.318803+00	2013
409	126.74	85.74	5280	5	169	10	15	2016-06-13 16:24:02.327415+00	2013
410	140.55	106.58	4660	1	9	2	5	2016-06-13 16:24:02.338211+00	2013
411	148.53	119.44	4660	2	30	3	5	2016-06-13 16:24:02.345225+00	2013
412	140.64	117.72	4661	1	41	7	15	2016-06-13 16:24:02.352608+00	2013
413	120.72	102.00	4661	2	51	13	15	2016-06-13 16:24:02.360504+00	2013
414	147.18	112.79	5292	2	624	24	56	2016-06-13 16:24:02.369536+00	2013
415	156.65	123.28	5292	1	93	6	14	2016-06-13 16:24:02.37719+00	2013
416	123.56	88.15	5294	2	341	12	29	2016-06-13 16:24:02.385531+00	2013
417	130.93	106.97	5294	1	50	3	6	2016-06-13 16:24:02.393836+00	2013
418	121.58	99.74	5295	2	345	8	11	2016-06-13 16:24:02.402159+00	2013
419	124.85	122.00	5295	1	35	2	4	2016-06-13 16:24:02.410503+00	2013
420	167.02	137.64	4394	2	219	5	35	2016-06-13 16:24:02.419515+00	2013
421	136.93	109.28	4395	2	425	10	30	2016-06-13 16:24:02.427185+00	2013
422	142.97	106.36	4398	2	219	10	25	2016-06-13 16:24:02.43544+00	2013
423	154.15	130.92	4399	2	166	15	25	2016-06-13 16:24:02.443762+00	2013
424	173.81	141.95	4400	2	161	10	30	2016-06-13 16:24:02.452125+00	2013
425	134.26	118.16	5337	1	345	20	30	2016-06-13 16:24:02.4605+00	2013
426	145.36	114.38	4402	2	267	25	55	2016-06-13 16:24:02.468827+00	2013
427	175.51	154.92	4408	2	451	20	30	2016-06-13 16:24:02.477169+00	2013
428	140.04	113.44	4407	2	808	45	90	2016-06-13 16:24:02.485458+00	2013
429	119.30	90.24	4407	1	70	5	10	2016-06-13 16:24:02.493886+00	2013
430	109.84	91.84	4406	2	350	15	35	2016-06-13 16:24:02.502207+00	2013
431	\N	123.34	4405	1	55	5	10	2016-06-13 16:24:02.510531+00	2013
432	164.74	146.19	4405	2	672	30	55	2016-06-13 16:24:02.518857+00	2013
433	146.59	128.13	4404	2	171	10	20	2016-06-13 16:24:02.527228+00	2013
434	120.77	99.76	4403	2	293	10	20	2016-06-13 16:24:02.535535+00	2013
435	169.77	150.35	4393	2	453	30	45	2016-06-13 16:24:02.543774+00	2013
436	130.21	101.45	5338	1	131	10	20	2016-06-13 16:24:02.552167+00	2013
437	185.00	165.94	4392	2	493	28	42	2016-06-13 16:24:02.56055+00	2013
438	155.24	126.57	4392	1	112	7	13	2016-06-13 16:24:02.568874+00	2013
439	184.48	152.78	4391	2	90	5	15	2016-06-13 16:24:02.577218+00	2013
440	177.32	150.01	4381	2	84	5	15	2016-06-13 16:24:02.585535+00	2013
441	181.89	159.53	4380	2	430	15	45	2016-06-13 16:24:02.644529+00	2013
442	177.47	153.73	4379	2	207	20	30	2016-06-13 16:24:02.652666+00	2013
443	169.24	136.29	4378	2	328	5	35	2016-06-13 16:24:02.660537+00	2013
444	165.63	134.05	4377	2	194	15	35	2016-06-13 16:24:02.668878+00	2013
445	164.27	139.13	4376	2	225	15	35	2016-06-13 16:24:02.677272+00	2013
446	136.73	120.73	4382	2	330	15	25	2016-06-13 16:24:02.685604+00	2013
447	139.32	118.61	4383	2	157	5	15	2016-06-13 16:24:02.694186+00	2013
448	153.19	134.85	4384	2	383	10	20	2016-06-13 16:24:02.702312+00	2013
449	134.38	111.21	4385	2	189	5	15	2016-06-13 16:24:02.710637+00	2013
450	180.80	157.65	4386	1	109	1	14	2016-06-13 16:24:02.718957+00	2013
451	191.43	165.59	4386	2	318	4	31	2016-06-13 16:24:02.727265+00	2013
452	137.06	99.87	4387	2	122	5	15	2016-06-13 16:24:02.794521+00	2013
453	162.47	132.91	4388	2	177	10	20	2016-06-13 16:24:02.803804+00	2013
454	155.50	110.31	4389	2	130	5	15	2016-06-13 16:24:02.812433+00	2013
455	111.50	81.89	4390	2	182	5	15	2016-06-13 16:24:02.820001+00	2013
456	169.40	136.16	4870	2	339	5	20	2016-06-13 16:24:02.828495+00	2013
457	97.00	84.59	4871	2	413	5	20	2016-06-13 16:24:02.835851+00	2013
458	175.60	150.18	4872	1	85	1	4	2016-06-13 16:24:02.844132+00	2013
459	190.85	161.30	4872	2	328	4	11	2016-06-13 16:24:02.8523+00	2013
460	203.68	168.87	4873	2	351	5	15	2016-06-13 16:24:02.860635+00	2013
461	184.98	167.07	4874	2	390	5	15	2016-06-13 16:24:02.868973+00	2013
462	134.56	102.42	4875	2	1358	65	70	2016-06-13 16:24:02.877368+00	2013
463	123.57	90.31	4875	1	227	10	15	2016-06-13 16:24:02.93614+00	2013
464	127.61	105.09	4876	1	185	10	16	2016-06-13 16:24:02.960751+00	2013
465	140.72	101.82	4876	2	605	25	29	2016-06-13 16:24:02.969063+00	2013
466	128.42	98.88	4877	2	551	20	30	2016-06-13 16:24:02.977361+00	2013
467	123.35	90.32	4878	2	568	22	28	2016-06-13 16:24:02.985691+00	2013
468	119.40	103.79	4878	1	106	3	7	2016-06-13 16:24:02.994015+00	2013
469	127.21	87.42	4869	2	469	20	30	2016-06-13 16:24:03.003956+00	2013
470	121.94	90.57	4868	2	931	53	52	2016-06-13 16:24:03.011676+00	2013
471	134.57	91.38	4868	1	168	7	13	2016-06-13 16:24:03.019019+00	2013
472	121.47	88.04	4859	2	741	35	40	2016-06-13 16:24:03.027349+00	2013
473	131.94	109.97	4859	1	143	5	10	2016-06-13 16:24:03.085692+00	2013
474	122.74	91.49	4860	2	992	50	50	2016-06-13 16:24:03.093957+00	2013
475	118.59	80.89	4860	1	221	10	15	2016-06-13 16:24:03.102343+00	2013
476	111.27	83.24	4861	2	648	15	35	2016-06-13 16:24:03.110656+00	2013
477	146.85	106.61	4862	2	198	15	25	2016-06-13 16:24:03.119006+00	2013
478	104.14	80.07	4863	2	474	20	30	2016-06-13 16:24:03.127381+00	2013
479	124.81	95.23	4864	1	201	7	13	2016-06-13 16:24:03.135698+00	2013
480	99.65	80.84	4864	2	727	38	42	2016-06-13 16:24:03.144053+00	2013
481	139.57	105.96	4865	2	222	28	26	2016-06-13 16:24:03.15239+00	2013
482	127.69	101.35	4865	1	97	7	14	2016-06-13 16:24:03.160722+00	2013
483	128.35	107.46	4866	2	873	30	45	2016-06-13 16:24:03.169055+00	2013
484	100.17	80.78	4867	2	493	15	35	2016-06-13 16:24:03.227382+00	2013
485	168.69	145.97	5080	2	332	10	15	2016-06-13 16:24:03.236399+00	2013
486	148.43	122.89	5081	2	285	10	15	2016-06-13 16:24:03.244048+00	2013
487	176.70	150.48	5082	1	117	3	15	2016-06-13 16:24:03.252369+00	2013
488	191.58	159.70	5082	2	1303	17	95	2016-06-13 16:24:03.260701+00	2013
489	174.22	146.17	5083	2	640	18	47	2016-06-13 16:24:03.269041+00	2013
490	151.20	122.61	5083	1	70	2	8	2016-06-13 16:24:03.277366+00	2013
491	185.45	166.11	4748	2	120	10	15	2016-06-13 16:24:03.286385+00	2013
492	188.67	174.11	4747	2	274	10	15	2016-06-13 16:24:03.29436+00	2013
493	187.64	174.05	4746	2	122	10	15	2016-06-13 16:24:03.302777+00	2013
494	174.02	149.53	4745	2	201	15	25	2016-06-13 16:24:03.311035+00	2013
495	220.35	185.63	4744	1	109	2	23	2016-06-13 16:24:03.319181+00	2013
496	231.80	196.19	4744	2	1361	8	147	2016-06-13 16:24:03.327477+00	2013
497	207.85	169.15	4743	1	119	2	23	2016-06-13 16:24:03.335788+00	2013
498	211.33	187.80	4743	2	839	8	92	2016-06-13 16:24:03.34414+00	2013
499	192.72	175.27	4742	2	260	8	42	2016-06-13 16:24:03.352457+00	2013
500	197.85	177.37	4742	1	82	2	23	2016-06-13 16:24:03.360766+00	2013
501	212.40	190.48	4738	2	676	8	67	2016-06-13 16:24:03.369105+00	2013
502	214.55	164.27	4738	1	116	2	23	2016-06-13 16:24:03.377426+00	2013
503	202.46	177.57	4739	2	479	5	45	2016-06-13 16:24:03.385721+00	2013
504	182.66	169.15	4740	2	218	20	30	2016-06-13 16:24:03.394086+00	2013
505	183.42	172.74	4741	2	111	5	15	2016-06-13 16:24:03.402424+00	2013
506	138.26	110.96	5299	1	139	7	15	2016-06-13 16:24:03.41148+00	2013
507	159.11	128.43	5299	2	444	28	50	2016-06-13 16:24:03.419077+00	2013
508	134.55	116.13	5297	1	45	2	4	2016-06-13 16:24:03.427367+00	2013
509	139.53	106.49	5297	2	140	8	11	2016-06-13 16:24:03.435768+00	2013
510	147.09	121.26	5296	2	148	8	11	2016-06-13 16:24:03.444128+00	2013
511	124.75	93.13	5296	1	47	2	4	2016-06-13 16:24:03.452459+00	2013
512	191.36	160.33	4523	2	274	5	20	2016-06-13 16:24:03.461501+00	2013
513	192.98	151.79	4522	2	167	5	15	2016-06-13 16:24:03.469076+00	2013
514	159.53	101.19	4521	2	145	10	20	2016-06-13 16:24:03.477456+00	2013
515	92.26	75.19	4520	2	223	15	25	2016-06-13 16:24:03.48577+00	2013
516	133.54	93.47	4519	1	113	5	15	2016-06-13 16:24:03.494104+00	2013
517	105.34	80.82	4519	2	583	40	50	2016-06-13 16:24:03.50247+00	2013
518	105.85	80.06	4518	2	277	20	30	2016-06-13 16:24:03.510807+00	2013
519	104.03	80.17	4517	2	199	10	15	2016-06-13 16:24:03.519138+00	2013
520	126.09	89.94	4516	2	1143	70	120	2016-06-13 16:24:03.527434+00	2013
521	109.28	79.39	4515	2	391	25	45	2016-06-13 16:24:03.535763+00	2013
522	136.15	103.17	4514	2	374	15	55	2016-06-13 16:24:03.544136+00	2013
523	202.01	188.67	5339	1	125	10	15	2016-06-13 16:24:03.553191+00	2013
524	215.00	167.82	4587	2	325	5	15	2016-06-13 16:24:03.560749+00	2013
525	201.43	188.77	4588	2	1144	35	45	2016-06-13 16:24:03.569043+00	2013
526	203.23	146.60	5340	1	103	5	15	2016-06-13 16:24:03.577517+00	2013
527	207.27	198.07	4589	1	95	3	7	2016-06-13 16:24:03.585837+00	2013
528	199.67	181.19	4589	2	490	22	33	2016-06-13 16:24:03.594166+00	2013
529	182.93	148.37	4590	2	78	4	11	2016-06-13 16:24:03.65501+00	2013
530	213.10	190.23	4590	1	16	1	4	2016-06-13 16:24:03.661895+00	2013
531	201.25	189.45	4591	2	84	4	11	2016-06-13 16:24:03.670181+00	2013
532	189.00	136.23	4591	1	20	1	4	2016-06-13 16:24:03.678486+00	2013
533	199.87	182.59	4592	2	1286	18	44	2016-06-13 16:24:03.685821+00	2013
534	200.10	183.13	4592	1	36	2	6	2016-06-13 16:24:03.694093+00	2013
535	173.57	151.06	4593	2	496	10	15	2016-06-13 16:24:03.702507+00	2013
536	200.40	184.75	4594	2	280	8	11	2016-06-13 16:24:03.710806+00	2013
537	170.60	131.85	4594	1	34	2	4	2016-06-13 16:24:03.719169+00	2013
538	122.83	92.51	4601	1	19	3	7	2016-06-13 16:24:03.727507+00	2013
539	198.00	184.94	4601	2	307	27	33	2016-06-13 16:24:03.735824+00	2013
540	187.85	137.97	4600	1	39	2	6	2016-06-13 16:24:03.744161+00	2013
541	201.48	176.18	4600	2	173	8	34	2016-06-13 16:24:03.752559+00	2013
542	157.00	123.64	4599	1	68	3	7	2016-06-13 16:24:03.760857+00	2013
543	173.36	149.98	4599	2	1195	32	78	2016-06-13 16:24:03.769216+00	2013
544	180.21	135.74	4598	2	340	27	33	2016-06-13 16:24:03.777546+00	2013
545	142.43	108.46	4598	1	27	3	7	2016-06-13 16:24:03.785861+00	2013
546	89.90	79.80	4597	1	13	1	5	2016-06-13 16:24:03.7942+00	2013
547	184.25	148.77	4597	2	140	4	15	2016-06-13 16:24:03.802521+00	2013
548	103.30	85.05	4596	1	18	2	4	2016-06-13 16:24:03.810874+00	2013
549	154.67	128.31	4596	2	208	3	16	2016-06-13 16:24:03.819226+00	2013
550	135.20	101.53	4595	1	32	3	7	2016-06-13 16:24:03.827547+00	2013
551	163.42	140.56	4595	2	468	37	43	2016-06-13 16:24:03.835876+00	2013
552	140.30	113.28	4585	1	36	2	6	2016-06-13 16:24:03.844213+00	2013
553	175.98	150.41	4585	2	487	13	19	2016-06-13 16:24:03.852537+00	2013
554	178.55	152.96	4584	1	43	2	5	2016-06-13 16:24:03.860867+00	2013
555	181.94	161.75	4584	2	172	8	15	2016-06-13 16:24:03.869205+00	2013
556	128.80	93.48	4574	1	32	4	6	2016-06-13 16:24:03.877507+00	2013
557	158.74	123.76	4574	2	510	26	39	2016-06-13 16:24:03.885908+00	2013
558	138.25	118.23	4573	1	9	2	4	2016-06-13 16:24:03.894663+00	2013
559	153.94	121.22	4573	2	104	8	11	2016-06-13 16:24:03.903556+00	2013
560	164.71	144.17	4572	2	381	10	15	2016-06-13 16:24:03.91096+00	2013
561	182.25	145.32	4571	2	191	10	15	2016-06-13 16:24:03.919283+00	2013
562	207.80	182.89	4570	2	189	4	15	2016-06-13 16:24:03.927606+00	2013
563	195.50	184.20	4570	1	37	1	5	2016-06-13 16:24:03.935926+00	2013
564	201.70	173.25	4569	1	58	1	6	2016-06-13 16:24:03.944272+00	2013
565	221.38	186.91	4569	2	436	4	29	2016-06-13 16:24:03.952591+00	2013
566	216.83	154.94	4568	1	34	3	7	2016-06-13 16:24:03.960901+00	2013
567	242.99	201.43	4568	2	515	17	43	2016-06-13 16:24:03.969258+00	2013
568	117.00	95.53	4575	1	38	2	4	2016-06-13 16:24:03.97756+00	2013
569	136.30	114.15	4575	2	532	8	16	2016-06-13 16:24:03.985892+00	2013
570	212.00	181.26	4576	1	42	1	7	2016-06-13 16:24:03.994261+00	2013
571	212.80	193.10	4576	2	431	4	38	2016-06-13 16:24:04.002578+00	2013
572	185.98	133.93	4577	2	197	10	15	2016-06-13 16:24:04.01094+00	2013
573	105.13	75.53	4578	1	48	3	7	2016-06-13 16:24:04.019335+00	2013
574	178.95	147.36	4578	2	293	22	28	2016-06-13 16:24:04.027682+00	2013
575	183.93	150.29	4579	2	128	10	15	2016-06-13 16:24:04.035937+00	2013
576	179.70	143.83	4580	1	32	2	4	2016-06-13 16:24:04.044292+00	2013
577	195.44	172.88	4580	2	217	8	16	2016-06-13 16:24:04.05264+00	2013
578	195.53	154.66	4581	2	95	9	10	2016-06-13 16:24:04.060964+00	2013
579	159.50	142.70	4581	1	27	1	5	2016-06-13 16:24:04.06927+00	2013
580	195.10	151.30	4582	1	17	1	5	2016-06-13 16:24:04.077628+00	2013
581	197.60	181.25	4582	2	179	4	15	2016-06-13 16:24:04.085947+00	2013
582	199.64	179.92	4583	2	117	5	20	2016-06-13 16:24:04.094274+00	2013
583	119.94	100.45	5092	2	224	5	10	2016-06-13 16:24:04.103303+00	2013
584	150.50	104.08	5093	2	271	5	15	2016-06-13 16:24:04.110865+00	2013
585	119.52	84.33	5094	2	135	5	10	2016-06-13 16:24:04.119212+00	2013
586	186.68	160.33	5095	2	761	15	35	2016-06-13 16:24:04.12763+00	2013
587	182.43	160.64	5096	2	642	10	30	2016-06-13 16:24:04.135938+00	2013
588	116.66	94.65	5097	2	672	25	50	2016-06-13 16:24:04.144293+00	2013
589	108.99	86.09	5091	2	1261	35	115	2016-06-13 16:24:04.152681+00	2013
590	104.46	84.19	5090	2	486	20	30	2016-06-13 16:24:04.161012+00	2013
591	103.72	82.42	5084	2	411	10	40	2016-06-13 16:24:04.16933+00	2013
592	123.16	109.44	5085	2	494	20	30	2016-06-13 16:24:04.177645+00	2013
593	123.13	85.11	5086	2	909	20	80	2016-06-13 16:24:04.186002+00	2013
594	126.37	89.18	5087	2	1198	55	70	2016-06-13 16:24:04.194326+00	2013
595	102.57	79.53	5088	2	600	30	45	2016-06-13 16:24:04.202676+00	2013
596	93.15	76.19	5089	2	199	10	15	2016-06-13 16:24:04.210927+00	2013
597	119.65	86.75	5075	1	32	2	4	2016-06-13 16:24:04.21996+00	2013
598	125.23	99.84	5075	2	354	8	11	2016-06-13 16:24:04.227618+00	2013
599	121.15	84.46	5074	1	48	2	7	2016-06-13 16:24:04.236007+00	2013
600	130.26	93.32	5074	2	272	8	23	2016-06-13 16:24:04.24429+00	2013
601	155.31	128.19	5073	2	357	16	23	2016-06-13 16:24:04.252678+00	2013
602	141.63	99.47	5073	1	47	4	7	2016-06-13 16:24:04.261037+00	2013
603	145.64	120.04	5072	2	407	8	32	2016-06-13 16:24:04.269339+00	2013
604	130.80	102.89	5072	1	54	2	8	2016-06-13 16:24:04.277652+00	2013
605	132.59	115.68	5071	2	278	8	11	2016-06-13 16:24:04.286071+00	2013
606	120.80	90.10	5071	1	34	2	4	2016-06-13 16:24:04.294381+00	2013
607	121.24	86.95	5070	2	393	16	23	2016-06-13 16:24:04.302744+00	2013
608	94.00	76.29	5070	1	48	4	7	2016-06-13 16:24:04.311054+00	2013
609	164.97	127.05	5341	1	266	20	30	2016-06-13 16:24:04.32+00	2013
610	194.33	169.55	4670	1	1002	57	154	2016-06-13 16:24:04.327683+00	2013
611	197.63	176.79	4670	2	5568	228	616	2016-06-13 16:24:04.336058+00	2013
612	165.75	128.07	5342	1	206	15	25	2016-06-13 16:24:04.344395+00	2013
613	204.18	176.10	4668	2	106	4	16	2016-06-13 16:24:04.352733+00	2013
614	178.90	128.59	4668	1	34	1	9	2016-06-13 16:24:04.361058+00	2013
615	206.14	196.66	4667	2	123	8	10	2016-06-13 16:24:04.369372+00	2013
616	182.15	168.88	4667	1	43	2	5	2016-06-13 16:24:04.377713+00	2013
617	182.10	164.33	4666	1	43	1	4	2016-06-13 16:24:04.386026+00	2013
618	180.93	154.99	4666	2	142	4	11	2016-06-13 16:24:04.394378+00	2013
619	198.60	175.15	4665	2	144	4	11	2016-06-13 16:24:04.402716+00	2013
620	183.90	157.15	4665	1	27	1	4	2016-06-13 16:24:04.411078+00	2013
621	166.48	119.30	4664	2	53	4	11	2016-06-13 16:24:04.41943+00	2013
622	154.90	121.60	4664	1	17	1	4	2016-06-13 16:24:04.427774+00	2013
623	198.42	183.97	4663	2	280	12	18	2016-06-13 16:24:04.436108+00	2013
624	188.53	133.30	4663	1	53	3	7	2016-06-13 16:24:04.444438+00	2013
625	261.03	204.23	4662	1	29	5	8	2016-06-13 16:24:04.452768+00	2013
626	255.39	205.33	4662	2	107	15	22	2016-06-13 16:24:04.461101+00	2013
627	157.93	135.57	5056	2	190	8	7	2016-06-13 16:24:04.470053+00	2013
628	154.75	111.70	5056	1	42	2	8	2016-06-13 16:24:04.477726+00	2013
629	136.98	111.02	5057	1	63	5	10	2016-06-13 16:24:04.486025+00	2013
630	174.60	151.02	5057	2	774	30	55	2016-06-13 16:24:04.494894+00	2013
631	128.40	109.81	5058	1	93	4	8	2016-06-13 16:24:04.50279+00	2013
632	166.64	146.37	5058	2	559	21	42	2016-06-13 16:24:04.511131+00	2013
633	164.97	147.93	5059	2	227	12	18	2016-06-13 16:24:04.519452+00	2013
634	132.30	117.20	5059	1	18	3	7	2016-06-13 16:24:04.527766+00	2013
635	133.75	84.10	5199	2	19	4	7	2016-06-13 16:24:04.586824+00	2013
636	156.00	105.33	5199	1	5	1	3	2016-06-13 16:24:04.594427+00	2013
637	141.00	106.73	5200	1	12	2	3	2016-06-13 16:24:04.602798+00	2013
638	138.70	109.26	5200	2	35	4	7	2016-06-13 16:24:04.611153+00	2013
639	131.20	110.86	5201	1	8	1	5	2016-06-13 16:24:04.619483+00	2013
640	153.03	123.04	5201	2	39	4	10	2016-06-13 16:24:04.627807+00	2013
641	137.50	119.00	5202	1	12	2	5	2016-06-13 16:24:04.636117+00	2013
642	141.70	113.75	5202	2	41	8	10	2016-06-13 16:24:04.644444+00	2013
643	154.57	125.54	5203	2	137	10	15	2016-06-13 16:24:04.652805+00	2013
644	133.35	113.75	5204	2	75	8	8	2016-06-13 16:24:04.661161+00	2013
645	\N	126.00	5204	1	7	2	2	2016-06-13 16:24:04.669453+00	2013
646	132.50	110.01	5205	2	44	8	15	2016-06-13 16:24:04.727837+00	2013
647	\N	136.51	5205	1	14	2	10	2016-06-13 16:24:04.736124+00	2013
648	124.30	112.75	5198	1	7	2	5	2016-06-13 16:24:04.744454+00	2013
649	123.40	97.06	5198	2	24	3	15	2016-06-13 16:24:04.752797+00	2013
650	\N	131.90	5197	1	4	2	5	2016-06-13 16:24:04.761119+00	2013
651	117.90	98.56	5197	2	17	3	11	2016-06-13 16:24:04.769432+00	2013
652	129.00	106.50	5190	2	26	3	8	2016-06-13 16:24:04.777948+00	2013
653	114.30	93.75	5190	1	5	2	2	2016-06-13 16:24:04.786184+00	2013
654	\N	124.58	5191	2	76	4	15	2016-06-13 16:24:04.794484+00	2013
656	\N	105.50	5192	2	19	5	10	2016-06-13 16:24:04.811169+00	2013
657	\N	111.30	5193	2	46	4	5	2016-06-13 16:24:04.886177+00	2013
658	\N	\N	5193	1	3	1	\N	2016-06-13 16:24:04.894441+00	2013
659	\N	129.03	5194	2	112	5	17	2016-06-13 16:24:04.902791+00	2013
660	135.70	112.07	5195	2	46	4	12	2016-06-13 16:24:04.911175+00	2013
661	\N	127.80	5195	1	10	1	5	2016-06-13 16:24:04.919512+00	2013
662	148.20	119.60	5196	1	12	2	3	2016-06-13 16:24:04.927837+00	2013
663	131.86	104.55	5196	2	70	8	12	2016-06-13 16:24:04.936178+00	2013
664	160.77	129.88	4645	2	648	16	32	2016-06-13 16:24:04.945196+00	2013
665	124.63	99.20	4645	1	114	4	8	2016-06-13 16:24:04.952841+00	2013
666	110.35	78.80	4644	1	77	4	7	2016-06-13 16:24:04.961161+00	2013
667	121.79	85.23	4644	2	568	16	23	2016-06-13 16:24:04.9695+00	2013
668	158.88	127.57	4643	2	194	11	19	2016-06-13 16:24:05.036248+00	2013
669	127.06	107.39	4643	1	41	4	6	2016-06-13 16:24:05.044558+00	2013
670	129.08	102.61	4642	1	61	4	7	2016-06-13 16:24:05.053579+00	2013
671	152.37	130.67	4642	2	227	16	23	2016-06-13 16:24:05.08629+00	2013
672	156.96	132.93	4641	2	551	16	32	2016-06-13 16:24:05.095049+00	2013
673	128.45	88.99	4641	1	85	4	8	2016-06-13 16:24:05.103108+00	2013
674	142.70	123.79	4639	2	729	28	32	2016-06-13 16:24:05.111384+00	2013
675	128.97	97.40	4639	1	90	7	8	2016-06-13 16:24:05.119578+00	2013
676	120.09	94.31	4638	2	580	20	27	2016-06-13 16:24:05.127881+00	2013
677	86.58	75.63	4638	1	73	5	8	2016-06-13 16:24:05.136289+00	2013
678	125.51	102.64	4637	2	266	11	19	2016-06-13 16:24:05.194613+00	2013
679	96.70	84.33	4637	1	48	4	6	2016-06-13 16:24:05.202921+00	2013
680	154.65	132.90	5343	5	86	4	8	2016-06-13 16:24:05.211991+00	2013
681	145.85	138.58	5344	5	25	2	4	2016-06-13 16:24:05.219637+00	2013
682	171.93	139.33	5345	5	30	3	4	2016-06-13 16:24:05.227986+00	2013
683	160.30	133.02	5346	5	21	2	5	2016-06-13 16:24:05.23633+00	2013
684	130.65	119.30	5347	5	32	2	4	2016-06-13 16:24:05.244645+00	2013
685	139.85	100.40	4737	2	211	6	9	2016-06-13 16:24:05.253674+00	2013
686	134.32	100.65	4736	1	80	5	8	2016-06-13 16:24:05.261252+00	2013
687	171.00	142.03	4736	2	294	9	13	2016-06-13 16:24:05.269625+00	2013
688	186.33	162.74	4735	2	212	3	10	2016-06-13 16:24:05.27797+00	2013
689	154.05	143.90	4735	1	70	2	5	2016-06-13 16:24:05.337322+00	2013
690	158.10	145.22	4734	1	64	2	5	2016-06-13 16:24:05.346212+00	2013
691	189.03	168.10	4734	2	199	3	10	2016-06-13 16:24:05.354471+00	2013
692	163.41	133.43	4733	1	344	33	49	2016-06-13 16:24:05.361291+00	2013
693	170.10	138.46	4733	2	1301	47	71	2016-06-13 16:24:05.369654+00	2013
694	172.48	148.57	4732	2	287	10	15	2016-06-13 16:24:05.378014+00	2013
695	161.10	130.67	4731	1	90	6	9	2016-06-13 16:24:05.386336+00	2013
696	166.68	146.95	4731	2	307	9	16	2016-06-13 16:24:05.394676+00	2013
697	160.17	110.39	4730	1	126	15	14	2016-06-13 16:24:05.403011+00	2013
698	161.35	135.91	4730	2	699	20	31	2016-06-13 16:24:05.411359+00	2013
699	173.34	142.62	4729	2	474	9	24	2016-06-13 16:24:05.419692+00	2013
700	158.30	118.69	4729	1	78	6	11	2016-06-13 16:24:05.428007+00	2013
701	182.10	125.66	4728	1	168	8	28	2016-06-13 16:24:05.436349+00	2013
702	162.41	138.17	4728	2	727	12	42	2016-06-13 16:24:05.444683+00	2013
703	158.10	127.03	4727	2	302	5	20	2016-06-13 16:24:05.45303+00	2013
704	161.11	135.80	5213	1	423	41	65	2016-06-13 16:24:05.462034+00	2013
705	171.74	139.74	5213	2	1760	124	195	2016-06-13 16:24:05.469645+00	2013
706	185.53	154.65	5212	1	125	6	12	2016-06-13 16:24:05.477985+00	2013
707	191.31	172.41	5212	2	475	19	38	2016-06-13 16:24:05.486317+00	2013
708	173.26	139.62	5211	2	1646	112	180	2016-06-13 16:24:05.494677+00	2013
709	168.25	119.91	5211	1	307	38	60	2016-06-13 16:24:05.503057+00	2013
710	160.28	128.47	5210	2	726	41	64	2016-06-13 16:24:05.511335+00	2013
711	178.24	146.38	5210	1	179	14	21	2016-06-13 16:24:05.519674+00	2013
712	202.74	177.56	5209	2	593	11	26	2016-06-13 16:24:05.528053+00	2013
713	191.75	169.87	5209	1	172	4	9	2016-06-13 16:24:05.536398+00	2013
714	167.93	137.48	5208	2	453	11	26	2016-06-13 16:24:05.544732+00	2013
715	143.45	125.03	5208	1	69	4	9	2016-06-13 16:24:05.553073+00	2013
716	137.42	106.97	5207	1	139	6	12	2016-06-13 16:24:05.561353+00	2013
717	151.59	118.28	5207	2	596	19	38	2016-06-13 16:24:05.569626+00	2013
718	159.23	124.10	5206	2	557	15	30	2016-06-13 16:24:05.578056+00	2013
719	147.10	116.51	5206	1	114	5	10	2016-06-13 16:24:05.586376+00	2013
720	195.83	165.14	5064	2	462	8	32	2016-06-13 16:24:05.595381+00	2013
721	176.45	118.40	5064	1	49	2	8	2016-06-13 16:24:05.602987+00	2013
722	198.13	181.93	5063	2	1144	44	86	2016-06-13 16:24:05.611385+00	2013
723	185.87	171.73	5063	1	75	6	14	2016-06-13 16:24:05.619721+00	2013
724	184.73	157.74	5062	2	861	35	73	2016-06-13 16:24:05.628053+00	2013
725	158.98	123.38	5062	1	64	5	12	2016-06-13 16:24:05.636419+00	2013
726	187.00	159.71	5061	1	71	2	8	2016-06-13 16:24:05.64477+00	2013
727	205.30	191.85	5061	2	501	8	22	2016-06-13 16:24:05.653092+00	2013
728	157.15	137.39	5060	1	24	2	8	2016-06-13 16:24:05.66144+00	2013
729	167.67	136.17	5060	2	457	13	37	2016-06-13 16:24:05.669741+00	2013
730	147.66	126.99	5348	2	123	5	15	2016-06-13 16:24:05.678724+00	2013
731	164.66	136.59	5349	2	148	5	15	2016-06-13 16:24:05.686385+00	2013
732	177.28	132.09	5262	2	195	5	15	2016-06-13 16:24:05.695169+00	2013
733	162.00	146.52	5263	1	31	3	5	2016-06-13 16:24:05.703159+00	2013
734	196.04	181.81	5263	2	168	7	10	2016-06-13 16:24:05.711455+00	2013
735	193.79	179.54	5264	2	157	7	10	2016-06-13 16:24:05.769799+00	2013
736	176.00	151.60	5264	1	33	3	5	2016-06-13 16:24:05.778116+00	2013
737	199.39	185.84	5265	2	195	7	10	2016-06-13 16:24:05.786434+00	2013
738	168.03	147.28	5265	1	31	3	5	2016-06-13 16:24:05.794767+00	2013
739	131.94	95.08	5266	1	58	5	15	2016-06-13 16:24:05.803135+00	2013
740	162.64	148.67	5266	2	375	20	20	2016-06-13 16:24:05.811539+00	2013
741	147.85	113.14	5267	1	58	5	15	2016-06-13 16:24:05.819852+00	2013
742	171.94	140.34	5267	2	348	25	55	2016-06-13 16:24:05.828233+00	2013
743	154.96	127.18	5260	1	60	5	15	2016-06-13 16:24:05.836562+00	2013
744	156.42	135.55	5260	2	180	15	25	2016-06-13 16:24:05.844733+00	2013
745	149.74	121.89	5259	1	59	5	15	2016-06-13 16:24:05.853087+00	2013
746	175.50	146.33	5259	2	188	20	35	2016-06-13 16:24:05.911519+00	2013
747	155.96	119.31	5350	1	102	5	15	2016-06-13 16:24:05.919801+00	2013
748	172.75	149.51	5350	2	350	15	25	2016-06-13 16:24:05.92814+00	2013
749	169.60	140.36	5252	2	142	10	20	2016-06-13 16:24:05.936465+00	2013
750	151.48	122.14	5253	1	69	5	15	2016-06-13 16:24:05.944791+00	2013
751	163.72	137.20	5253	2	251	15	25	2016-06-13 16:24:05.9531+00	2013
752	166.08	134.15	5254	2	116	8	17	2016-06-13 16:24:05.961451+00	2013
753	141.50	102.07	5254	1	70	7	18	2016-06-13 16:24:05.969791+00	2013
754	136.44	103.76	5255	1	68	10	15	2016-06-13 16:24:05.978084+00	2013
755	170.80	152.10	5255	2	435	20	35	2016-06-13 16:24:05.98635+00	2013
756	142.28	122.30	5257	1	46	5	10	2016-06-13 16:24:05.994848+00	2013
757	182.69	142.23	5257	2	137	9	18	2016-06-13 16:24:06.053209+00	2013
758	183.30	156.44	5258	2	414	25	50	2016-06-13 16:24:06.061516+00	2013
759	163.10	130.68	5258	1	83	5	20	2016-06-13 16:24:06.06984+00	2013
760	138.96	94.14	4985	5	169	20	40	2016-06-13 16:24:06.078909+00	2013
761	\N	\N	4985	6	21	5	10	2016-06-13 16:24:06.086425+00	2013
762	137.31	118.21	4985	2	172	10	25	2016-06-13 16:24:06.094843+00	2013
763	114.56	82.14	4985	1	50	5	10	2016-06-13 16:24:06.103117+00	2013
764	124.06	85.59	4986	5	169	20	30	2016-06-13 16:24:06.111518+00	2013
765	122.76	96.89	4986	2	143	10	15	2016-06-13 16:24:06.11984+00	2013
766	111.64	93.67	4987	2	122	5	15	2016-06-13 16:24:06.128152+00	2013
767	120.23	98.33	4987	5	198	15	35	2016-06-13 16:24:06.136515+00	2013
768	126.90	105.23	4988	2	203	5	10	2016-06-13 16:24:06.194832+00	2013
769	\N	\N	4988	6	30	5	10	2016-06-13 16:24:06.203106+00	2013
770	123.29	101.31	4988	5	311	15	30	2016-06-13 16:24:06.211517+00	2013
771	113.16	88.85	4989	2	183	5	10	2016-06-13 16:24:06.219829+00	2013
772	122.91	96.82	4989	5	274	15	20	2016-06-13 16:24:06.228228+00	2013
773	155.24	129.30	4990	2	207	5	15	2016-06-13 16:24:06.236393+00	2013
774	135.91	114.55	4990	5	262	15	25	2016-06-13 16:24:06.244878+00	2013
775	132.00	80.03	4991	5	145	5	25	2016-06-13 16:24:06.253167+00	2013
776	115.90	80.34	4991	2	114	5	15	2016-06-13 16:24:06.261536+00	2013
777	120.28	109.84	4984	2	54	5	5	2016-06-13 16:24:06.269869+00	2013
778	133.54	109.68	4984	5	88	5	15	2016-06-13 16:24:06.278219+00	2013
779	134.15	108.06	4983	5	380	15	35	2016-06-13 16:24:06.336987+00	2013
780	109.97	92.52	4983	2	309	10	20	2016-06-13 16:24:06.344998+00	2013
781	158.65	135.65	5351	5	156	10	20	2016-06-13 16:24:06.353295+00	2013
782	130.30	115.03	4976	2	563	35	45	2016-06-13 16:24:06.361597+00	2013
783	112.69	89.04	5352	1	128	10	15	2016-06-13 16:24:06.36992+00	2013
784	137.41	125.80	5353	5	473	30	55	2016-06-13 16:24:06.37824+00	2013
785	141.14	88.05	5354	6	53	10	15	2016-06-13 16:24:06.38658+00	2013
786	106.57	89.69	5355	1	265	20	30	2016-06-13 16:24:06.394896+00	2013
787	155.60	137.14	4977	2	307	10	30	2016-06-13 16:24:06.403272+00	2013
788	170.44	149.11	4977	5	280	15	45	2016-06-13 16:24:06.411591+00	2013
789	149.50	117.76	4977	1	78	5	15	2016-06-13 16:24:06.419934+00	2013
790	137.40	116.40	4978	2	110	5	10	2016-06-13 16:24:06.478263+00	2013
791	125.51	106.84	4978	5	190	10	15	2016-06-13 16:24:06.486598+00	2013
792	119.10	108.55	4979	2	369	10	15	2016-06-13 16:24:06.494903+00	2013
793	103.14	80.34	4979	1	73	5	10	2016-06-13 16:24:06.503238+00	2013
794	135.07	119.54	4979	5	470	20	35	2016-06-13 16:24:06.511595+00	2013
795	\N	\N	4979	6	43	10	15	2016-06-13 16:24:06.519944+00	2013
796	156.52	136.00	4980	5	355	10	25	2016-06-13 16:24:06.528302+00	2013
797	149.98	133.84	4980	2	208	5	15	2016-06-13 16:24:06.536633+00	2013
798	\N	\N	4980	6	46	5	10	2016-06-13 16:24:06.544928+00	2013
799	140.68	121.73	4981	5	97	5	15	2016-06-13 16:24:06.553304+00	2013
800	146.36	130.04	4981	2	98	5	5	2016-06-13 16:24:06.561618+00	2013
801	102.80	81.68	4982	2	215	5	15	2016-06-13 16:24:06.619983+00	2013
802	95.35	76.56	4982	5	259	15	35	2016-06-13 16:24:06.665556+00	2013
803	187.15	155.08	4681	1	33	2	20	2016-06-13 16:24:06.681145+00	2013
804	209.80	165.39	4681	2	317	3	40	2016-06-13 16:24:06.687496+00	2013
805	213.70	168.87	4680	1	213	1	31	2016-06-13 16:24:06.695555+00	2013
806	228.95	177.98	4680	2	318	2	41	2016-06-13 16:24:06.703349+00	2013
807	187.45	167.56	4679	2	130	2	23	2016-06-13 16:24:06.711626+00	2013
808	191.50	160.68	4678	2	82	5	7	2016-06-13 16:24:06.719951+00	2013
809	151.00	112.50	4678	1	18	5	8	2016-06-13 16:24:06.728323+00	2013
810	206.53	182.78	4677	2	466	13	37	2016-06-13 16:24:06.795413+00	2013
811	165.90	136.21	4677	1	96	6	19	2016-06-13 16:24:06.80337+00	2013
812	209.65	180.18	4675	1	103	4	17	2016-06-13 16:24:06.811699+00	2013
813	203.73	187.80	4675	2	296	6	23	2016-06-13 16:24:06.820008+00	2013
814	201.40	171.01	4674	2	132	\N	19	2016-06-13 16:24:06.828335+00	2013
815	192.30	178.34	4674	1	129	\N	13	2016-06-13 16:24:06.836665+00	2013
816	215.80	178.98	4673	2	136	2	13	2016-06-13 16:24:06.845+00	2013
817	202.20	147.87	4673	1	20	1	14	2016-06-13 16:24:06.853331+00	2013
818	203.50	174.04	4672	2	195	4	31	2016-06-13 16:24:06.861632+00	2013
819	161.99	120.15	4540	2	368	10	15	2016-06-13 16:24:06.870694+00	2013
820	140.01	97.71	4541	2	206	15	35	2016-06-13 16:24:06.878274+00	2013
821	187.02	160.47	4542	2	180	5	10	2016-06-13 16:24:06.938332+00	2013
822	140.56	115.06	4543	2	83	10	10	2016-06-13 16:24:06.946707+00	2013
823	139.84	113.86	4544	2	91	5	10	2016-06-13 16:24:06.954305+00	2013
824	165.97	137.03	4545	2	188	10	20	2016-06-13 16:24:06.962699+00	2013
825	146.31	125.19	5356	1	773	20	30	2016-06-13 16:24:06.9709+00	2013
826	214.31	204.35	4546	2	397	20	30	2016-06-13 16:24:06.978298+00	2013
827	\N	\N	4547	4	51	10	12	2016-06-13 16:24:06.986664+00	2013
828	136.23	119.98	4547	1	128	8	10	2016-06-13 16:24:06.99508+00	2013
829	141.00	120.10	4547	2	1550	32	38	2016-06-13 16:24:07.003431+00	2013
830	169.80	135.59	4548	1	47	5	15	2016-06-13 16:24:07.011712+00	2013
831	192.78	169.76	4548	2	471	30	40	2016-06-13 16:24:07.020039+00	2013
832	\N	\N	4549	4	26	5	5	2016-06-13 16:24:07.07842+00	2013
833	110.82	84.84	4549	2	1036	15	25	2016-06-13 16:24:07.088021+00	2013
834	179.39	157.36	4550	2	1443	35	65	2016-06-13 16:24:07.096543+00	2013
835	144.53	124.03	5357	1	298	20	30	2016-06-13 16:24:07.272776+00	2013
836	173.04	134.85	5358	4	92	15	25	2016-06-13 16:24:07.293227+00	2013
837	200.00	163.56	4551	1	79	5	10	2016-06-13 16:24:07.307719+00	2013
838	215.79	189.29	4551	2	975	30	45	2016-06-13 16:24:07.323553+00	2013
839	186.33	170.34	4552	2	414	10	15	2016-06-13 16:24:07.339719+00	2013
840	\N	\N	4539	4	26	8	9	2016-06-13 16:24:07.347854+00	2013
841	170.93	147.47	4539	2	676	31	37	2016-06-13 16:24:07.355951+00	2013
842	146.85	112.72	4539	1	57	6	9	2016-06-13 16:24:07.362108+00	2013
843	170.50	144.24	4538	2	590	23	27	2016-06-13 16:24:07.37059+00	2013
844	142.23	98.19	4538	1	35	7	13	2016-06-13 16:24:07.378884+00	2013
845	\N	\N	4529	4	46	8	12	2016-06-13 16:24:07.386667+00	2013
846	158.34	129.26	4529	1	96	8	14	2016-06-13 16:24:07.445584+00	2013
847	172.41	153.27	4529	2	1368	19	39	2016-06-13 16:24:07.455204+00	2013
848	\N	\N	4528	4	38	9	11	2016-06-13 16:24:07.462198+00	2013
849	143.85	125.26	4528	1	73	6	9	2016-06-13 16:24:07.470577+00	2013
850	163.91	138.53	4528	2	568	30	35	2016-06-13 16:24:07.478683+00	2013
851	157.32	126.28	4527	2	442	20	30	2016-06-13 16:24:07.487036+00	2013
852	127.23	92.58	4526	2	149	10	15	2016-06-13 16:24:07.495367+00	2013
853	112.52	86.32	4525	1	39	5	10	2016-06-13 16:24:07.503693+00	2013
854	166.47	137.88	4525	2	679	15	45	2016-06-13 16:24:07.511928+00	2013
855	154.25	136.96	4530	2	903	15	20	2016-06-13 16:24:07.520195+00	2013
856	146.24	106.37	4530	1	69	5	10	2016-06-13 16:24:07.528487+00	2013
857	144.30	132.78	4531	2	311	10	20	2016-06-13 16:24:07.586841+00	2013
858	189.41	158.56	4532	2	923	10	40	2016-06-13 16:24:07.595137+00	2013
859	219.84	197.69	4533	2	576	5	35	2016-06-13 16:24:07.603435+00	2013
860	175.10	140.28	4534	2	241	5	20	2016-06-13 16:24:07.611759+00	2013
861	192.62	167.27	4535	2	350	10	30	2016-06-13 16:24:07.620097+00	2013
862	164.86	144.18	4536	2	199	15	20	2016-06-13 16:24:07.628431+00	2013
863	153.88	133.62	4537	2	523	10	20	2016-06-13 16:24:07.63674+00	2013
864	139.44	125.50	4897	2	761	10	40	2016-06-13 16:24:07.645819+00	2013
865	161.49	144.71	4898	2	464	10	20	2016-06-13 16:24:07.653382+00	2013
866	160.30	139.54	4899	2	384	15	25	2016-06-13 16:24:07.661766+00	2013
867	131.46	111.36	5359	2	196	7	10	2016-06-13 16:24:07.670086+00	2013
868	138.17	100.87	5360	2	239	7	10	2016-06-13 16:24:07.728476+00	2013
869	152.70	94.85	5361	2	180	6	10	2016-06-13 16:24:07.738042+00	2013
870	170.01	154.36	4901	2	506	10	20	2016-06-13 16:24:07.746712+00	2013
871	153.01	120.95	5362	1	777	20	40	2016-06-13 16:24:07.753434+00	2013
872	190.17	169.02	4903	2	882	15	45	2016-06-13 16:24:07.761743+00	2013
873	149.82	125.98	4904	2	1665	40	60	2016-06-13 16:24:07.770147+00	2013
874	140.72	111.67	4905	2	454	10	15	2016-06-13 16:24:07.778484+00	2013
875	202.05	185.78	4906	2	546	20	20	2016-06-13 16:24:07.786784+00	2013
876	163.25	142.17	4907	2	327	10	25	2016-06-13 16:24:07.795161+00	2013
877	133.83	98.88	4908	2	745	15	25	2016-06-13 16:24:07.803468+00	2013
878	179.62	162.61	4909	2	1470	35	65	2016-06-13 16:24:07.81181+00	2013
879	189.01	167.94	4896	2	1525	40	65	2016-06-13 16:24:07.870143+00	2013
880	168.54	153.94	4896	1	133	5	10	2016-06-13 16:24:07.88052+00	2013
881	186.54	155.93	4895	2	206	5	15	2016-06-13 16:24:07.888749+00	2013
882	176.20	159.90	4882	2	233	5	15	2016-06-13 16:24:07.896914+00	2013
883	190.64	171.29	4883	2	1273	20	50	2016-06-13 16:24:07.905147+00	2013
884	169.41	151.81	4884	2	521	25	35	2016-06-13 16:24:07.913362+00	2013
885	165.37	137.16	4885	2	372	10	20	2016-06-13 16:24:07.920605+00	2013
886	159.50	140.84	4886	2	1342	20	40	2016-06-13 16:24:07.92846+00	2013
887	157.71	128.25	4887	2	494	25	35	2016-06-13 16:24:07.936806+00	2013
888	162.14	136.95	4888	2	585	25	35	2016-06-13 16:24:07.945151+00	2013
889	139.94	109.95	4889	2	240	5	15	2016-06-13 16:24:07.953511+00	2013
890	186.28	164.06	4890	2	646	5	15	2016-06-13 16:24:08.013997+00	2013
891	171.66	123.51	4891	2	231	5	20	2016-06-13 16:24:08.020347+00	2013
892	136.46	90.11	4894	2	304	5	15	2016-06-13 16:24:08.028706+00	2013
893	119.72	94.17	4343	2	725	20	40	2016-06-13 16:24:08.037641+00	2013
894	159.93	138.74	4356	2	402	10	15	2016-06-13 16:24:08.045201+00	2013
895	148.47	127.72	4357	2	964	15	35	2016-06-13 16:24:08.053513+00	2013
896	142.44	102.29	4358	2	618	10	40	2016-06-13 16:24:08.061859+00	2013
897	176.71	160.97	4359	2	442	10	15	2016-06-13 16:24:08.070188+00	2013
898	168.31	113.75	5363	7	30	10	15	2016-06-13 16:24:08.078548+00	2013
899	177.82	160.10	4360	2	2982	77	163	2016-06-13 16:24:08.086866+00	2013
900	170.14	150.69	4360	1	319	8	17	2016-06-13 16:24:08.095561+00	2013
901	174.58	149.62	4361	2	183	5	15	2016-06-13 16:24:08.154094+00	2013
902	157.62	135.64	4362	2	188	5	15	2016-06-13 16:24:08.161943+00	2013
903	187.25	154.16	4363	2	480	10	20	2016-06-13 16:24:08.17022+00	2013
904	115.26	95.00	4364	1	203	8	17	2016-06-13 16:24:08.178543+00	2013
905	145.89	122.03	4364	2	1537	22	53	2016-06-13 16:24:08.186914+00	2013
906	130.67	112.71	4365	2	941	15	35	2016-06-13 16:24:08.195237+00	2013
907	171.63	132.79	4355	1	181	5	15	2016-06-13 16:24:08.20357+00	2013
908	\N	180.05	4355	2	430	15	25	2016-06-13 16:24:08.211891+00	2013
909	156.75	137.07	4354	2	306	10	20	2016-06-13 16:24:08.220235+00	2013
910	105.10	87.38	4344	2	640	10	15	2016-06-13 16:24:08.228581+00	2013
911	173.83	149.34	4345	2	1494	20	80	2016-06-13 16:24:08.2369+00	2013
912	138.49	107.72	5364	1	781	20	70	2016-06-13 16:24:08.295693+00	2013
913	196.71	165.14	4346	2	1003	15	40	2016-06-13 16:24:08.305593+00	2013
914	137.16	114.25	4346	1	159	5	10	2016-06-13 16:24:08.313916+00	2013
915	162.38	134.65	4347	2	726	25	55	2016-06-13 16:24:08.32075+00	2013
916	156.41	135.53	4348	2	1088	15	35	2016-06-13 16:24:08.328628+00	2013
917	120.58	103.50	4349	1	134	5	10	2016-06-13 16:24:08.336916+00	2013
918	145.81	104.09	4349	2	491	10	35	2016-06-13 16:24:08.345284+00	2013
919	158.52	128.71	4350	2	458	10	35	2016-06-13 16:24:08.353617+00	2013
920	109.80	83.90	4350	1	121	5	10	2016-06-13 16:24:08.361916+00	2013
921	138.51	122.47	4351	2	660	10	15	2016-06-13 16:24:08.370342+00	2013
922	159.26	114.51	4352	2	504	5	20	2016-06-13 16:24:08.380899+00	2013
923	122.88	101.68	4353	2	342	5	15	2016-06-13 16:24:08.443867+00	2013
924	156.96	123.16	5307	2	1079	38	110	2016-06-13 16:24:08.461998+00	2013
925	136.94	112.89	5307	1	306	12	30	2016-06-13 16:24:08.474081+00	2013
926	138.52	123.31	5305	1	105	5	8	2016-06-13 16:24:08.490237+00	2013
927	143.97	116.59	5305	2	303	15	22	2016-06-13 16:24:08.506539+00	2013
928	129.56	104.13	5304	2	343	7	11	2016-06-13 16:24:08.514546+00	2013
929	125.20	100.85	5304	1	93	3	4	2016-06-13 16:24:08.522657+00	2013
930	161.14	139.73	4428	2	236	5	19	2016-06-13 16:24:08.532176+00	2013
931	152.45	120.64	5365	1	26	2	5	2016-06-13 16:24:08.54708+00	2013
932	169.03	151.26	5365	2	243	8	10	2016-06-13 16:24:08.553491+00	2013
933	162.49	129.33	4426	2	189	8	10	2016-06-13 16:24:08.561898+00	2013
934	135.50	111.68	4426	1	18	2	5	2016-06-13 16:24:08.62025+00	2013
935	163.31	142.45	4425	2	232	7	13	2016-06-13 16:24:08.628582+00	2013
936	202.50	188.43	4424	2	151	5	15	2016-06-13 16:24:08.636973+00	2013
937	164.19	138.24	4423	2	179	7	13	2016-06-13 16:24:08.645259+00	2013
938	142.74	120.34	4765	2	191	5	15	2016-06-13 16:24:08.654257+00	2013
939	171.25	146.38	4764	2	494	17	38	2016-06-13 16:24:08.661916+00	2013
940	155.93	117.77	4764	1	48	3	7	2016-06-13 16:24:08.670302+00	2013
941	153.79	135.16	4763	2	499	17	38	2016-06-13 16:24:08.678625+00	2013
942	133.17	100.96	4763	1	49	3	7	2016-06-13 16:24:08.686947+00	2013
943	98.00	71.95	4762	1	13	2	4	2016-06-13 16:24:08.695603+00	2013
944	137.45	113.20	4762	2	359	13	16	2016-06-13 16:24:08.703776+00	2013
945	154.55	133.74	4953	2	217	6	9	2016-06-13 16:24:08.762724+00	2013
946	162.48	134.19	4953	5	252	20	30	2016-06-13 16:24:08.7703+00	2013
947	115.23	102.57	4953	1	63	4	6	2016-06-13 16:24:08.778659+00	2013
948	149.31	132.97	4952	5	150	8	13	2016-06-13 16:24:08.786985+00	2013
949	151.90	139.76	4952	2	174	4	6	2016-06-13 16:24:08.795304+00	2013
950	116.33	89.83	4952	1	27	3	6	2016-06-13 16:24:08.803643+00	2013
951	129.17	110.34	4951	5	191	11	17	2016-06-13 16:24:08.811968+00	2013
952	117.76	102.62	4951	2	141	5	7	2016-06-13 16:24:08.820353+00	2013
953	120.30	88.10	4951	1	37	4	6	2016-06-13 16:24:08.828684+00	2013
954	147.62	121.43	4950	5	191	6	19	2016-06-13 16:24:08.83695+00	2013
955	172.85	157.23	4950	2	150	4	6	2016-06-13 16:24:08.845346+00	2013
956	128.52	96.00	4949	2	74	5	10	2016-06-13 16:24:08.903704+00	2013
957	134.36	112.35	4949	5	186	10	15	2016-06-13 16:24:08.912038+00	2013
958	181.75	150.25	5145	2	410	10	15	2016-06-13 16:24:08.921053+00	2013
959	112.93	88.39	5366	2	368	10	15	2016-06-13 16:24:08.928666+00	2013
960	199.07	177.14	5147	2	407	10	20	2016-06-13 16:24:08.937018+00	2013
961	184.64	151.63	5148	2	311	5	20	2016-06-13 16:24:08.945308+00	2013
962	182.92	156.35	5149	2	373	5	25	2016-06-13 16:24:08.953664+00	2013
963	193.44	162.22	5150	2	363	5	25	2016-06-13 16:24:08.962005+00	2013
964	135.44	102.44	5151	2	706	50	75	2016-06-13 16:24:08.970292+00	2013
965	114.49	80.15	5151	1	96	10	15	2016-06-13 16:24:08.978665+00	2013
966	127.36	96.81	5152	1	108	10	15	2016-06-13 16:24:08.987006+00	2013
967	146.89	122.45	5152	2	861	55	70	2016-06-13 16:24:09.045358+00	2013
968	130.55	88.94	5153	2	449	35	40	2016-06-13 16:24:09.05369+00	2013
969	113.08	78.82	5153	1	65	5	10	2016-06-13 16:24:09.062011+00	2013
970	148.11	111.26	5154	2	571	30	45	2016-06-13 16:24:09.070381+00	2013
971	111.64	81.45	5144	2	352	20	30	2016-06-13 16:24:09.078719+00	2013
972	161.98	131.31	5143	2	330	20	30	2016-06-13 16:24:09.087045+00	2013
973	134.42	115.69	5133	1	122	10	15	2016-06-13 16:24:09.095371+00	2013
974	154.79	120.48	5133	2	1010	75	80	2016-06-13 16:24:09.103706+00	2013
975	151.14	130.21	5134	1	142	10	15	2016-06-13 16:24:09.112048+00	2013
976	150.06	127.28	5134	2	652	40	60	2016-06-13 16:24:09.120371+00	2013
977	123.06	107.53	5135	1	114	10	15	2016-06-13 16:24:09.128682+00	2013
978	153.91	129.21	5135	2	860	60	65	2016-06-13 16:24:09.18729+00	2013
979	105.99	85.69	5136	1	115	10	15	2016-06-13 16:24:09.196954+00	2013
980	140.77	117.80	5136	2	1327	50	75	2016-06-13 16:24:09.205197+00	2013
981	81.04	70.53	5137	1	97	10	15	2016-06-13 16:24:09.213462+00	2013
982	109.33	85.57	5137	2	1040	40	85	2016-06-13 16:24:09.221834+00	2013
983	137.92	104.49	5138	2	465	20	40	2016-06-13 16:24:09.228655+00	2013
984	119.96	81.50	5139	2	256	10	20	2016-06-13 16:24:09.237091+00	2013
985	128.68	95.81	5140	2	494	30	40	2016-06-13 16:24:09.245409+00	2013
986	102.74	83.28	5141	2	203	5	15	2016-06-13 16:24:09.253754+00	2013
987	150.56	96.50	5142	2	384	5	15	2016-06-13 16:24:09.262051+00	2013
988	140.76	119.99	5367	2	129	5	8	2016-06-13 16:24:09.2711+00	2013
989	160.33	136.41	5368	2	97	4	8	2016-06-13 16:24:09.337484+00	2013
990	138.90	113.68	5369	2	62	5	8	2016-06-13 16:24:09.345433+00	2013
991	146.80	128.03	5370	2	62	4	8	2016-06-13 16:24:09.35541+00	2013
992	168.95	148.03	5185	2	75	2	4	2016-06-13 16:24:09.362427+00	2013
993	144.00	127.07	5185	1	10	1	3	2016-06-13 16:24:09.370763+00	2013
994	175.97	134.89	5186	2	64	3	7	2016-06-13 16:24:09.378921+00	2013
995	149.45	132.99	5187	1	71	2	8	2016-06-13 16:24:09.387315+00	2013
996	176.47	155.74	5187	2	309	5	10	2016-06-13 16:24:09.39554+00	2013
997	164.00	139.89	5188	2	133	5	10	2016-06-13 16:24:09.403873+00	2013
998	153.43	130.40	5189	2	161	4	5	2016-06-13 16:24:09.412154+00	2013
999	151.20	113.34	5189	1	14	2	4	2016-06-13 16:24:09.420446+00	2013
1000	178.70	140.10	5371	2	290	5	10	2016-06-13 16:24:09.478797+00	2013
1001	148.73	130.43	5181	2	90	4	6	2016-06-13 16:24:09.487131+00	2013
1002	161.55	146.10	5180	2	104	2	6	2016-06-13 16:24:09.495466+00	2013
1003	159.30	139.10	5372	2	56	2	5	2016-06-13 16:24:09.503761+00	2013
1004	148.95	130.25	5173	2	76	2	4	2016-06-13 16:24:09.512124+00	2013
1005	113.30	87.05	5174	2	137	2	4	2016-06-13 16:24:09.520454+00	2013
1006	149.35	123.87	5175	2	134	7	18	2016-06-13 16:24:09.528775+00	2013
1007	147.00	126.15	5176	2	73	6	14	2016-06-13 16:24:09.53708+00	2013
1008	153.00	131.96	5178	2	212	7	18	2016-06-13 16:24:09.545437+00	2013
1009	170.85	139.22	5179	2	164	6	13	2016-06-13 16:24:09.553786+00	2013
1010	128.70	115.98	5179	1	31	2	4	2016-06-13 16:24:09.56204+00	2013
1011	151.93	125.88	5107	2	457	20	30	2016-06-13 16:24:09.623123+00	2013
1012	119.61	94.73	5108	2	183	8	12	2016-06-13 16:24:09.628751+00	2013
1013	116.49	91.82	5109	2	198	7	13	2016-06-13 16:24:09.637083+00	2013
1014	174.57	151.21	5110	1	49	3	12	2016-06-13 16:24:09.645384+00	2013
1015	191.51	164.25	5110	2	609	12	33	2016-06-13 16:24:09.653796+00	2013
1016	183.14	160.42	5111	2	170	5	15	2016-06-13 16:24:09.662162+00	2013
1017	121.09	100.08	5112	2	270	10	20	2016-06-13 16:24:09.670472+00	2013
1018	136.14	115.48	5106	2	470	30	50	2016-06-13 16:24:09.678873+00	2013
1019	127.07	91.39	5105	2	332	20	40	2016-06-13 16:24:09.687162+00	2013
1020	127.46	95.20	5104	2	353	20	55	2016-06-13 16:24:09.695504+00	2013
1021	128.44	89.31	5098	2	328	15	55	2016-06-13 16:24:09.703827+00	2013
1022	108.36	83.31	5099	2	848	60	140	2016-06-13 16:24:09.770545+00	2013
1023	138.61	104.71	5101	2	946	50	150	2016-06-13 16:24:09.778828+00	2013
1024	130.11	87.20	5102	2	626	40	70	2016-06-13 16:24:09.787167+00	2013
1025	140.18	114.77	5102	1	52	5	10	2016-06-13 16:24:09.795498+00	2013
1026	135.60	105.25	5103	2	1246	85	135	2016-06-13 16:24:09.803812+00	2013
1027	181.94	141.48	4848	2	560	10	45	2016-06-13 16:24:09.812805+00	2013
1028	137.18	116.69	4848	1	130	5	10	2016-06-13 16:24:09.82044+00	2013
1029	145.82	119.79	4849	2	509	15	35	2016-06-13 16:24:09.828813+00	2013
1030	151.43	123.11	4850	2	476	15	35	2016-06-13 16:24:09.83715+00	2013
1031	154.60	133.27	4851	2	918	12	28	2016-06-13 16:24:09.845514+00	2013
1032	114.60	93.37	4851	1	122	3	7	2016-06-13 16:24:09.853851+00	2013
1033	116.10	86.59	4852	1	132	5	10	2016-06-13 16:24:09.914162+00	2013
1034	145.88	103.70	4852	2	640	20	40	2016-06-13 16:24:09.922817+00	2013
1035	171.66	145.42	4853	2	522	15	25	2016-06-13 16:24:09.928907+00	2013
1036	128.88	109.97	5373	2	405	10	15	2016-06-13 16:24:09.937224+00	2013
1037	136.03	92.46	5374	2	630	15	35	2016-06-13 16:24:09.945532+00	2013
1038	145.19	117.26	5375	1	570	10	40	2016-06-13 16:24:09.953862+00	2013
1039	105.21	75.51	4856	2	451	40	60	2016-06-13 16:24:09.96218+00	2013
1040	133.82	109.87	4857	2	1622	30	60	2016-06-13 16:24:09.970536+00	2013
1041	187.60	167.75	4858	1	151	5	15	2016-06-13 16:24:09.978846+00	2013
1042	\N	200.95	4858	2	536	10	40	2016-06-13 16:24:09.987195+00	2013
1043	166.07	144.58	4847	2	398	10	20	2016-06-13 16:24:09.99555+00	2013
1044	111.78	87.75	4846	2	696	10	15	2016-06-13 16:24:10.053859+00	2013
1045	169.34	147.63	4835	2	1486	35	95	2016-06-13 16:24:10.062199+00	2013
1046	130.83	111.81	5376	1	296	10	15	2016-06-13 16:24:10.070523+00	2013
1047	181.46	157.28	4836	2	1520	35	105	2016-06-13 16:24:10.078922+00	2013
1048	178.44	153.40	4836	1	239	5	15	2016-06-13 16:24:10.087248+00	2013
1049	169.54	135.63	4837	2	288	5	15	2016-06-13 16:24:10.09558+00	2013
1050	154.44	127.85	4838	2	232	5	15	2016-06-13 16:24:10.103904+00	2013
1051	158.52	126.91	4839	1	180	5	15	2016-06-13 16:24:10.112228+00	2013
1052	193.10	164.42	4839	2	1143	10	40	2016-06-13 16:24:10.12057+00	2013
1053	137.10	124.35	4840	2	875	15	35	2016-06-13 16:24:10.128863+00	2013
1054	121.65	100.53	4841	2	423	10	15	2016-06-13 16:24:10.137238+00	2013
1055	151.33	132.62	4842	2	852	10	15	2016-06-13 16:24:10.195607+00	2013
1056	199.36	174.53	4843	2	443	5	15	2016-06-13 16:24:10.203915+00	2013
1057	203.24	179.41	4844	2	280	5	15	2016-06-13 16:24:10.212238+00	2013
1058	130.76	108.40	4845	2	507	5	15	2016-06-13 16:24:10.220604+00	2013
1059	172.84	119.53	5377	2	226	7	13	2016-06-13 16:24:10.229611+00	2013
1060	163.72	131.76	4463	2	205	6	14	2016-06-13 16:24:10.23717+00	2013
1061	160.37	135.90	4464	2	172	7	13	2016-06-13 16:24:10.245552+00	2013
1062	161.90	123.30	4465	2	217	5	15	2016-06-13 16:24:10.253884+00	2013
1063	143.66	110.63	4466	2	522	15	70	2016-06-13 16:24:10.262282+00	2013
1064	136.44	112.97	4466	1	28	5	10	2016-06-13 16:24:10.270614+00	2013
1065	122.52	96.88	4467	1	23	5	10	2016-06-13 16:24:10.278928+00	2013
1066	139.60	120.76	4467	2	343	25	30	2016-06-13 16:24:10.337281+00	2013
1067	140.71	111.66	4468	2	225	20	30	2016-06-13 16:24:10.345595+00	2013
1068	154.84	121.60	4469	2	413	25	35	2016-06-13 16:24:10.353937+00	2013
1069	120.01	88.64	4470	2	532	35	40	2016-06-13 16:24:10.362251+00	2013
1070	134.81	100.67	4462	2	770	40	45	2016-06-13 16:24:10.370588+00	2013
1071	93.30	78.64	4462	1	30	5	10	2016-06-13 16:24:10.378949+00	2013
1072	141.52	109.12	4461	1	28	5	10	2016-06-13 16:24:10.387267+00	2013
1073	145.82	118.09	4461	2	490	35	40	2016-06-13 16:24:10.39561+00	2013
1074	153.03	105.59	4453	1	26	3	7	2016-06-13 16:24:10.403936+00	2013
1075	142.12	109.12	4453	2	408	32	38	2016-06-13 16:24:10.412255+00	2013
1076	122.15	83.79	4454	2	264	20	30	2016-06-13 16:24:10.420589+00	2013
1077	137.36	97.68	4455	1	29	5	10	2016-06-13 16:24:10.478961+00	2013
1078	149.27	115.16	4455	2	300	25	35	2016-06-13 16:24:10.487312+00	2013
1079	126.00	94.55	4456	2	310	20	30	2016-06-13 16:24:10.495656+00	2013
1080	133.85	110.08	4457	2	243	10	20	2016-06-13 16:24:10.503985+00	2013
1081	106.95	77.91	4458	2	248	10	40	2016-06-13 16:24:10.512315+00	2013
1082	138.48	120.36	4459	2	264	5	45	2016-06-13 16:24:10.520697+00	2013
1083	123.80	91.42	4460	2	230	5	15	2016-06-13 16:24:10.529036+00	2013
1084	106.52	78.21	5315	2	103	5	15	2016-06-13 16:24:10.53804+00	2013
1085	129.22	89.71	5314	2	106	5	15	2016-06-13 16:24:10.54563+00	2013
1086	116.04	92.49	5313	2	105	5	15	2016-06-13 16:24:10.554023+00	2013
1087	157.79	116.30	5311	2	195	10	30	2016-06-13 16:24:10.562295+00	2013
1088	134.09	99.22	5310	2	164	10	30	2016-06-13 16:24:10.620707+00	2013
1089	132.12	86.70	5309	2	130	10	25	2016-06-13 16:24:10.629023+00	2013
1090	105.05	75.86	5308	2	126	10	20	2016-06-13 16:24:10.637334+00	2013
1091	136.30	98.18	5378	1	32	3	5	2016-06-13 16:24:10.646344+00	2013
1092	173.83	126.38	5378	2	126	4	8	2016-06-13 16:24:10.653977+00	2013
1093	160.03	134.25	5379	2	160	4	9	2016-06-13 16:24:10.662336+00	2013
1094	125.75	87.46	5379	1	30	2	5	2016-06-13 16:24:10.670683+00	2013
1095	145.85	131.54	4619	1	33	2	5	2016-06-13 16:24:10.679014+00	2013
1096	131.80	108.39	4619	2	121	4	9	2016-06-13 16:24:10.687446+00	2013
1097	167.65	133.26	5380	1	22	2	5	2016-06-13 16:24:10.695726+00	2013
1098	148.88	117.50	5380	2	89	4	9	2016-06-13 16:24:10.704041+00	2013
1099	145.80	116.42	4620	1	20	2	5	2016-06-13 16:24:10.762444+00	2013
1100	155.23	121.14	4620	2	52	3	10	2016-06-13 16:24:10.770748+00	2013
1101	171.65	160.70	4621	1	65	2	5	2016-06-13 16:24:10.779086+00	2013
1102	213.43	191.05	4621	2	177	3	10	2016-06-13 16:24:10.787391+00	2013
1103	184.15	180.06	4622	1	37	2	5	2016-06-13 16:24:10.795756+00	2013
1104	208.93	195.10	4622	2	114	3	10	2016-06-13 16:24:10.804053+00	2013
1105	168.64	147.84	4623	2	1082	70	90	2016-06-13 16:24:10.812397+00	2013
1106	142.89	119.80	4623	1	223	25	35	2016-06-13 16:24:10.820697+00	2013
1107	169.21	144.82	4624	2	1083	80	85	2016-06-13 16:24:10.829075+00	2013
1108	146.26	127.77	4624	1	311	30	30	2016-06-13 16:24:10.837391+00	2013
1109	151.46	102.10	4625	1	71	15	20	2016-06-13 16:24:10.845703+00	2013
1110	137.60	120.29	4625	2	432	30	35	2016-06-13 16:24:10.904131+00	2013
1111	170.84	144.02	4626	2	131	7	10	2016-06-13 16:24:10.912405+00	2013
1112	165.63	146.98	4626	1	48	3	5	2016-06-13 16:24:10.920792+00	2013
1113	156.63	121.85	4627	1	53	3	8	2016-06-13 16:24:10.92904+00	2013
1114	164.14	135.75	4627	2	214	7	22	2016-06-13 16:24:10.937421+00	2013
1115	149.40	\N	4628	2	358	25	30	2016-06-13 16:24:10.945759+00	2013
1116	160.04	130.69	4628	1	75	10	15	2016-06-13 16:24:10.954111+00	2013
1117	154.98	125.80	5381	2	574	41	56	2016-06-13 16:24:10.962422+00	2013
1118	145.42	117.85	5381	1	119	14	19	2016-06-13 16:24:10.970739+00	2013
1119	168.13	135.70	5382	1	50	3	8	2016-06-13 16:24:10.97908+00	2013
1120	153.13	136.47	5382	2	127	7	12	2016-06-13 16:24:10.987423+00	2013
1121	171.76	150.34	5383	2	93	7	12	2016-06-13 16:24:11.04576+00	2013
1122	127.27	110.28	5383	1	24	3	8	2016-06-13 16:24:11.054092+00	2013
1123	166.00	145.60	4630	2	615	30	55	2016-06-13 16:24:11.062422+00	2013
1124	163.36	133.55	4630	1	142	10	25	2016-06-13 16:24:11.070762+00	2013
1125	178.72	166.85	4631	2	491	25	30	2016-06-13 16:24:11.079114+00	2013
1126	171.75	158.00	4631	1	117	10	15	2016-06-13 16:24:11.087452+00	2013
1127	160.86	144.10	4632	1	242	20	20	2016-06-13 16:24:11.095777+00	2013
1128	177.55	156.95	4632	2	810	40	50	2016-06-13 16:24:11.104155+00	2013
1129	162.75	140.40	4618	1	34	6	8	2016-06-13 16:24:11.112444+00	2013
1130	171.17	146.75	4618	2	201	14	22	2016-06-13 16:24:11.120821+00	2013
1131	171.36	151.48	4617	2	495	30	40	2016-06-13 16:24:11.129095+00	2013
1132	160.23	135.61	4617	1	60	15	15	2016-06-13 16:24:11.187503+00	2013
1133	140.38	103.61	5384	1	76	20	18	2016-06-13 16:24:11.195807+00	2013
1134	178.71	151.58	5384	2	693	50	37	2016-06-13 16:24:11.204152+00	2013
1135	186.26	136.55	5385	1	43	5	12	2016-06-13 16:24:11.212453+00	2013
1136	190.34	164.25	5385	2	291	15	28	2016-06-13 16:24:11.220808+00	2013
1137	144.42	121.59	4607	1	29	5	8	2016-06-13 16:24:11.229138+00	2013
1138	178.64	159.90	4607	2	268	10	17	2016-06-13 16:24:11.237456+00	2013
1139	176.89	145.90	4606	2	287	15	22	2016-06-13 16:24:11.245769+00	2013
1140	175.20	155.77	4606	1	89	10	13	2016-06-13 16:24:11.254114+00	2013
1141	155.98	140.58	4605	1	81	6	8	2016-06-13 16:24:11.262452+00	2013
1142	175.00	155.41	4605	2	225	14	22	2016-06-13 16:24:11.270799+00	2013
1143	114.40	92.07	4604	1	74	8	15	2016-06-13 16:24:11.329189+00	2013
1144	137.33	117.25	4604	2	431	22	35	2016-06-13 16:24:11.337512+00	2013
1145	159.89	137.52	4603	1	140	15	20	2016-06-13 16:24:11.34584+00	2013
1146	156.22	125.93	4603	2	596	30	35	2016-06-13 16:24:11.354157+00	2013
1147	154.58	127.78	4602	1	268	22	35	2016-06-13 16:24:11.362501+00	2013
1148	158.42	135.64	4602	2	1157	63	80	2016-06-13 16:24:11.370854+00	2013
1149	104.58	80.11	4608	1	59	5	10	2016-06-13 16:24:11.379188+00	2013
1150	115.05	90.38	4608	2	225	10	15	2016-06-13 16:24:11.387509+00	2013
1151	119.68	93.20	4609	1	97	12	13	2016-06-13 16:24:11.39584+00	2013
1152	155.20	134.79	4609	2	448	23	27	2016-06-13 16:24:11.40419+00	2013
1153	181.27	155.75	4610	1	54	3	6	2016-06-13 16:24:11.412503+00	2013
1154	194.33	175.51	4610	2	224	7	9	2016-06-13 16:24:11.470866+00	2013
1155	162.70	145.70	5386	2	281	15	28	2016-06-13 16:24:11.479193+00	2013
1156	161.30	138.58	5386	1	76	5	12	2016-06-13 16:24:11.487485+00	2013
1157	155.20	132.29	5387	2	127	7	12	2016-06-13 16:24:11.495836+00	2013
1158	154.07	131.86	5387	1	48	3	8	2016-06-13 16:24:11.504217+00	2013
1159	148.90	88.45	4612	2	111	3	10	2016-06-13 16:24:11.512575+00	2013
1160	177.45	154.60	4612	1	27	2	5	2016-06-13 16:24:11.520894+00	2013
1161	156.13	137.24	4613	2	42	7	10	2016-06-13 16:24:11.529214+00	2013
1162	158.97	137.88	4613	1	29	3	5	2016-06-13 16:24:11.537549+00	2013
1163	146.00	112.32	4614	1	29	2	5	2016-06-13 16:24:11.545874+00	2013
1164	141.63	121.97	4614	2	151	3	10	2016-06-13 16:24:11.554217+00	2013
1165	185.20	174.50	4615	2	80	3	10	2016-06-13 16:24:11.612586+00	2013
1166	155.40	136.58	4615	1	27	2	5	2016-06-13 16:24:11.620893+00	2013
1167	204.65	183.93	4654	2	92	12	18	2016-06-13 16:24:11.641039+00	2013
1168	227.65	179.20	4655	1	20	3	4	2016-06-13 16:24:11.66255+00	2013
1169	188.88	175.26	4655	2	39	5	8	2016-06-13 16:24:11.67083+00	2013
1170	212.28	186.92	4656	1	165	5	15	2016-06-13 16:24:11.679306+00	2013
1171	230.03	205.04	4656	2	1138	5	50	2016-06-13 16:24:11.68758+00	2013
1172	202.74	177.13	4657	2	110	10	15	2016-06-13 16:24:11.695891+00	2013
1173	216.28	195.72	4658	2	337	5	75	2016-06-13 16:24:11.704215+00	2013
1174	207.00	184.62	4658	1	62	5	15	2016-06-13 16:24:11.76265+00	2013
1175	211.60	193.73	4659	2	225	5	45	2016-06-13 16:24:11.770938+00	2013
1176	205.76	183.77	4659	1	63	5	15	2016-06-13 16:24:11.779272+00	2013
1177	223.94	196.33	4653	2	130	5	25	2016-06-13 16:24:11.787602+00	2013
1178	223.18	194.48	4652	2	312	5	65	2016-06-13 16:24:11.795938+00	2013
1179	202.38	186.38	4652	1	61	5	15	2016-06-13 16:24:11.804267+00	2013
1180	202.23	185.61	4646	2	264	10	70	2016-06-13 16:24:11.812588+00	2013
1181	200.94	185.48	4647	2	110	5	20	2016-06-13 16:24:11.820934+00	2013
1182	206.24	186.22	4648	2	132	5	25	2016-06-13 16:24:11.829247+00	2013
1183	183.21	153.57	4649	2	320	10	15	2016-06-13 16:24:11.83757+00	2013
1184	199.28	176.58	4649	1	46	5	10	2016-06-13 16:24:11.845907+00	2013
1185	217.76	197.82	4650	2	418	5	25	2016-06-13 16:24:11.905699+00	2013
1186	202.16	185.51	4650	1	63	5	15	2016-06-13 16:24:11.914913+00	2013
1187	219.24	183.58	4651	2	201	5	45	2016-06-13 16:24:11.922949+00	2013
1188	161.15	132.08	5079	1	96	10	15	2016-06-13 16:24:11.93234+00	2013
1189	177.85	155.98	5079	2	253	10	15	2016-06-13 16:24:11.93939+00	2013
1190	179.38	160.90	5078	2	260	5	10	2016-06-13 16:24:11.945942+00	2013
1191	153.30	105.71	5078	1	66	5	10	2016-06-13 16:24:11.954284+00	2013
1192	175.90	155.44	5077	2	2240	95	125	2016-06-13 16:24:11.962615+00	2013
1193	169.16	129.48	5077	1	236	20	30	2016-06-13 16:24:11.970958+00	2013
1194	130.14	111.58	5076	2	423	15	20	2016-06-13 16:24:11.979276+00	2013
1195	120.20	95.41	5076	1	27	5	10	2016-06-13 16:24:11.987636+00	2013
1196	138.23	129.51	4761	2	151	2	8	2016-06-13 16:24:12.046686+00	2013
1197	149.07	129.09	5388	2	251	3	12	2016-06-13 16:24:12.081336+00	2013
1198	173.95	156.70	4760	1	53	2	3	2016-06-13 16:24:12.08966+00	2013
1199	201.93	183.52	4760	2	191	3	12	2016-06-13 16:24:12.098008+00	2013
1200	156.18	138.83	4758	1	52	5	10	2016-06-13 16:24:12.104836+00	2013
1201	170.99	150.52	4758	2	187	10	15	2016-06-13 16:24:12.112654+00	2013
1202	139.82	121.34	4757	1	67	10	10	2016-06-13 16:24:12.120943+00	2013
1203	160.53	137.05	4757	2	276	15	25	2016-06-13 16:24:12.129246+00	2013
1204	151.48	120.85	4756	1	94	10	20	2016-06-13 16:24:12.137613+00	2013
1205	166.89	128.51	4756	2	717	25	70	2016-06-13 16:24:12.146008+00	2013
1206	121.31	99.51	4755	1	107	15	20	2016-06-13 16:24:12.205849+00	2013
1207	143.00	121.68	4755	2	1115	75	80	2016-06-13 16:24:12.212678+00	2013
1208	153.06	125.94	4749	1	46	5	5	2016-06-13 16:24:12.221021+00	2013
1209	137.96	117.47	4749	2	324	15	25	2016-06-13 16:24:12.229333+00	2013
1210	132.24	97.75	4750	1	111	10	15	2016-06-13 16:24:12.237656+00	2013
1211	151.85	125.56	4750	2	947	35	40	2016-06-13 16:24:12.246009+00	2013
1212	139.05	115.97	4751	1	131	15	20	2016-06-13 16:24:12.254326+00	2013
1213	147.27	129.45	4751	2	828	50	55	2016-06-13 16:24:12.262665+00	2013
1214	150.47	133.53	4753	2	164	3	12	2016-06-13 16:24:12.271004+00	2013
1215	118.25	112.47	4753	1	26	2	3	2016-06-13 16:24:12.279369+00	2013
1216	164.62	136.93	4754	2	145	5	15	2016-06-13 16:24:12.287674+00	2013
1217	172.67	148.75	4947	2	286	3	10	2016-06-13 16:24:12.346749+00	2013
1218	146.60	124.54	4947	1	38	2	5	2016-06-13 16:24:12.356338+00	2013
1219	168.60	121.12	4946	1	26	1	6	2016-06-13 16:24:12.364526+00	2013
1220	180.80	147.29	4946	2	225	4	9	2016-06-13 16:24:12.372611+00	2013
1221	170.76	144.47	4945	2	248	5	15	2016-06-13 16:24:12.380798+00	2013
1222	168.90	142.27	4944	2	222	4	9	2016-06-13 16:24:12.389139+00	2013
1223	144.70	137.03	4944	1	36	1	6	2016-06-13 16:24:12.397498+00	2013
1224	162.15	140.46	4943	2	210	4	9	2016-06-13 16:24:12.40577+00	2013
1225	186.80	140.38	4943	1	23	1	6	2016-06-13 16:24:12.412629+00	2013
1226	164.97	137.40	4942	1	186	20	40	2016-06-13 16:24:12.421043+00	2013
1227	185.75	160.10	4942	2	1606	115	115	2016-06-13 16:24:12.429375+00	2013
1228	196.60	180.66	4941	2	189	3	10	2016-06-13 16:24:12.489777+00	2013
1229	184.15	169.36	4941	1	27	2	5	2016-06-13 16:24:12.497895+00	2013
1230	144.10	128.28	4940	1	22	1	4	2016-06-13 16:24:12.504623+00	2013
1231	178.18	161.45	4940	2	186	4	11	2016-06-13 16:24:12.512703+00	2013
1232	150.43	125.08	4939	2	17	4	10	2016-06-13 16:24:12.521045+00	2013
1233	137.10	117.22	4939	1	7	1	5	2016-06-13 16:24:12.529359+00	2013
1234	148.02	113.95	4938	1	46	5	6	2016-06-13 16:24:12.537691+00	2013
1235	167.37	149.61	4938	2	337	10	19	2016-06-13 16:24:12.54602+00	2013
1236	134.06	114.02	4782	2	713	10	30	2016-06-13 16:24:12.555288+00	2013
1237	109.38	86.51	4783	2	101	10	40	2016-06-13 16:24:12.564326+00	2013
1238	129.82	109.59	5389	2	373	5	10	2016-06-13 16:24:12.571051+00	2013
1239	124.49	105.29	4784	2	713	20	20	2016-06-13 16:24:12.629418+00	2013
1240	108.54	86.08	4785	2	357	5	10	2016-06-13 16:24:12.637738+00	2013
1241	120.92	107.60	4786	2	309	5	5	2016-06-13 16:24:12.645977+00	2013
1242	113.70	95.33	4787	2	114	5	35	2016-06-13 16:24:12.654398+00	2013
1243	126.06	102.60	5390	1	898	20	30	2016-06-13 16:24:12.663924+00	2013
1244	134.60	104.01	4789	2	419	5	15	2016-06-13 16:24:12.671059+00	2013
1245	129.40	117.39	4795	2	1822	45	65	2016-06-13 16:24:12.67942+00	2013
1246	122.98	103.41	4794	2	1111	15	35	2016-06-13 16:24:12.687749+00	2013
1247	144.66	118.12	4793	2	607	15	55	2016-06-13 16:24:12.696047+00	2013
1248	99.61	82.88	4792	2	246	10	20	2016-06-13 16:24:12.704412+00	2013
1249	158.97	137.42	4791	2	1528	40	60	2016-06-13 16:24:12.712707+00	2013
1250	114.88	85.90	5391	1	237	10	20	2016-06-13 16:24:12.771112+00	2013
1251	140.60	122.90	4790	1	192	10	20	2016-06-13 16:24:12.779432+00	2013
1252	170.67	150.58	4790	2	1410	35	65	2016-06-13 16:24:12.787758+00	2013
1253	88.53	75.78	5392	4	94	10	15	2016-06-13 16:24:12.796133+00	2013
1254	168.84	149.30	4781	2	1421	25	55	2016-06-13 16:24:12.804455+00	2013
1255	155.38	132.10	4780	2	883	30	60	2016-06-13 16:24:12.812787+00	2013
1256	151.57	121.00	4766	2	574	10	30	2016-06-13 16:24:12.821112+00	2013
1257	139.47	121.38	4767	2	1460	25	55	2016-06-13 16:24:12.829439+00	2013
1258	132.91	105.47	4768	2	708	15	45	2016-06-13 16:24:12.837775+00	2013
1259	131.49	108.41	4769	2	667	20	40	2016-06-13 16:24:12.846126+00	2013
1260	130.09	114.27	4770	2	1059	15	35	2016-06-13 16:24:12.854433+00	2013
1261	152.76	133.63	5393	2	652	5	15	2016-06-13 16:24:12.92378+00	2013
1262	185.30	153.58	4771	2	698	5	25	2016-06-13 16:24:12.958798+00	2013
1263	175.68	146.78	4772	2	474	5	15	2016-06-13 16:24:12.977402+00	2013
1264	154.58	115.35	4773	2	508	5	15	2016-06-13 16:24:12.992176+00	2013
1265	127.74	104.19	4774	2	931	40	50	2016-06-13 16:24:13.008418+00	2013
1266	121.91	83.92	4775	2	884	25	35	2016-06-13 16:24:13.024558+00	2013
1267	110.51	86.74	4776	2	629	10	15	2016-06-13 16:24:13.041021+00	2013
1268	121.85	88.78	4777	2	587	20	30	2016-06-13 16:24:13.057456+00	2013
1269	132.32	113.43	4778	2	704	10	20	2016-06-13 16:24:13.065609+00	2013
1270	109.65	83.65	4779	2	795	10	20	2016-06-13 16:24:13.071737+00	2013
1271	162.71	138.46	5241	2	424	25	35	2016-06-13 16:24:13.1302+00	2013
1272	\N	120.91	5241	1	33	5	15	2016-06-13 16:24:13.137789+00	2013
1273	147.41	116.73	5240	2	27	7	11	2016-06-13 16:24:13.146133+00	2013
1274	125.80	107.70	5240	1	7	3	4	2016-06-13 16:24:13.154464+00	2013
1275	131.38	115.84	5239	2	100	7	19	2016-06-13 16:24:13.162781+00	2013
1276	141.00	110.93	5239	1	12	2	9	2016-06-13 16:24:13.171144+00	2013
1277	188.20	139.50	5238	2	264	8	34	2016-06-13 16:24:13.179478+00	2013
1278	131.50	116.33	5238	1	22	2	6	2016-06-13 16:24:13.187808+00	2013
1279	120.60	108.35	5237	1	16	2	12	2016-06-13 16:24:13.196137+00	2013
1280	134.61	108.72	5237	2	172	8	19	2016-06-13 16:24:13.204454+00	2013
1281	\N	110.03	5236	1	7	1	3	2016-06-13 16:24:13.212793+00	2013
1282	108.70	99.60	5236	2	7	1	3	2016-06-13 16:24:13.271149+00	2013
1283	122.85	109.60	5235	1	11	3	6	2016-06-13 16:24:13.279455+00	2013
1284	125.80	110.46	5235	2	57	8	23	2016-06-13 16:24:13.287851+00	2013
1285	\N	102.30	5234	1	10	4	4	2016-06-13 16:24:13.296168+00	2013
1286	\N	113.09	5234	2	54	4	18	2016-06-13 16:24:13.304497+00	2013
1287	\N	100.62	5242	1	14	4	6	2016-06-13 16:24:13.312821+00	2013
1288	171.90	124.68	5242	2	168	6	29	2016-06-13 16:24:13.321188+00	2013
1289	152.66	120.85	5243	2	155	6	25	2016-06-13 16:24:13.329494+00	2013
1290	120.07	92.85	5243	1	7	3	5	2016-06-13 16:24:13.337828+00	2013
1291	\N	116.88	5251	2	7	1	4	2016-06-13 16:24:13.346162+00	2013
1292	\N	118.80	5251	1	4	1	2	2016-06-13 16:24:13.354496+00	2013
1293	159.65	107.66	5250	1	13	2	7	2016-06-13 16:24:13.412908+00	2013
1294	139.93	124.76	5250	2	73	4	20	2016-06-13 16:24:13.421196+00	2013
1295	\N	109.54	5249	2	28	2	11	2016-06-13 16:24:13.429511+00	2013
1296	132.00	104.30	5249	1	9	3	5	2016-06-13 16:24:13.437846+00	2013
1297	\N	133.03	5248	1	9	4	6	2016-06-13 16:24:13.446157+00	2013
1298	126.78	118.40	5248	2	26	5	5	2016-06-13 16:24:13.454504+00	2013
1299	129.72	115.28	5247	1	55	12	23	2016-06-13 16:24:13.462813+00	2013
1300	146.57	124.73	5247	2	770	58	62	2016-06-13 16:24:13.47226+00	2013
1301	126.40	104.63	5246	2	19	4	15	2016-06-13 16:24:13.480011+00	2013
1302	133.95	111.15	5246	1	6	2	4	2016-06-13 16:24:13.488316+00	2013
1303	\N	122.90	5245	1	9	1	3	2016-06-13 16:24:13.496374+00	2013
1304	154.30	118.54	5245	2	67	3	10	2016-06-13 16:24:13.55458+00	2013
1305	166.20	118.55	5244	1	10	2	4	2016-06-13 16:24:13.562845+00	2013
1306	\N	133.51	5244	2	133	6	20	2016-06-13 16:24:13.571252+00	2013
1307	135.80	124.26	5233	2	50	3	12	2016-06-13 16:24:13.579579+00	2013
1308	182.50	123.90	5232	1	9	1	4	2016-06-13 16:24:13.5879+00	2013
1309	129.00	113.00	5232	2	35	1	8	2016-06-13 16:24:13.596235+00	2013
1310	135.10	122.00	5221	1	8	1	1	2016-06-13 16:24:13.604566+00	2013
1311	132.30	117.13	5221	2	27	2	6	2016-06-13 16:24:13.612897+00	2013
1312	173.57	134.03	5220	2	94	3	12	2016-06-13 16:24:13.621209+00	2013
1313	\N	119.80	5219	1	3	1	1	2016-06-13 16:24:13.62953+00	2013
1314	140.87	115.77	5219	2	12	3	3	2016-06-13 16:24:13.637876+00	2013
1315	107.40	105.70	5218	1	2	1	1	2016-06-13 16:24:13.696249+00	2013
1316	124.56	111.95	5218	2	24	5	6	2016-06-13 16:24:13.704612+00	2013
1317	110.90	92.60	5217	1	2	1	1	2016-06-13 16:24:13.712938+00	2013
1318	130.47	86.98	5217	2	14	4	6	2016-06-13 16:24:13.72126+00	2013
1319	128.50	105.86	5216	2	19	5	7	2016-06-13 16:24:13.729588+00	2013
1320	102.30	\N	5216	1	3	1	1	2016-06-13 16:24:13.737909+00	2013
1321	138.60	93.43	5215	2	12	4	6	2016-06-13 16:24:13.746252+00	2013
1322	117.95	95.30	5215	1	3	2	1	2016-06-13 16:24:13.7546+00	2013
1323	132.80	110.80	5214	2	22	4	6	2016-06-13 16:24:13.762865+00	2013
1324	133.30	107.90	5214	1	2	1	1	2016-06-13 16:24:13.771311+00	2013
1325	139.94	118.78	5222	2	43	5	6	2016-06-13 16:24:13.779612+00	2013
1326	115.20	105.10	5222	1	5	2	2	2016-06-13 16:24:13.83794+00	2013
1327	141.17	94.90	5223	2	22	6	8	2016-06-13 16:24:13.846258+00	2013
1328	\N	\N	5223	1	2	1	1	2016-06-13 16:24:13.854549+00	2013
1329	150.75	128.90	5231	2	65	4	7	2016-06-13 16:24:13.862887+00	2013
1330	118.80	104.90	5231	1	3	1	1	2016-06-13 16:24:13.871276+00	2013
1331	139.84	119.38	5230	2	32	5	6	2016-06-13 16:24:13.879657+00	2013
1332	109.50	102.40	5230	1	2	1	1	2016-06-13 16:24:13.887946+00	2013
1333	136.62	127.08	5229	2	35	5	6	2016-06-13 16:24:13.896315+00	2013
1334	90.40	88.20	5229	1	2	1	1	2016-06-13 16:24:13.904641+00	2013
1335	135.10	102.70	5228	1	3	1	1	2016-06-13 16:24:13.912978+00	2013
1336	142.18	129.38	5228	2	72	6	6	2016-06-13 16:24:13.921271+00	2013
1337	129.60	113.94	5227	2	195	17	26	2016-06-13 16:24:13.980314+00	2013
1338	111.62	100.50	5227	1	15	5	8	2016-06-13 16:24:13.98904+00	2013
1339	135.22	118.45	5226	2	87	13	22	2016-06-13 16:24:13.997178+00	2013
1340	\N	132.26	5226	1	22	5	8	2016-06-13 16:24:14.0055+00	2013
1341	122.46	102.21	5023	1	52	5	10	2016-06-13 16:24:14.014615+00	2013
1342	173.61	156.08	5023	2	669	32	33	2016-06-13 16:24:14.021969+00	2013
1343	\N	\N	5023	6	19	3	7	2016-06-13 16:24:14.030348+00	2013
1344	172.16	150.00	5024	2	661	25	30	2016-06-13 16:24:14.038592+00	2013
1345	115.58	96.52	5024	1	32	5	10	2016-06-13 16:24:14.046938+00	2013
1346	128.37	90.93	5025	1	36	3	7	2016-06-13 16:24:14.055173+00	2013
1347	167.16	143.24	5025	2	391	17	23	2016-06-13 16:24:14.063406+00	2013
1348	149.27	116.14	5026	1	31	3	7	2016-06-13 16:24:14.071755+00	2013
1349	175.63	151.91	5026	2	540	7	33	2016-06-13 16:24:14.080007+00	2013
1350	176.93	136.78	5027	2	338	7	13	2016-06-13 16:24:14.088348+00	2013
1351	123.43	79.23	5027	1	42	3	7	2016-06-13 16:24:14.096624+00	2013
1352	148.67	121.50	5028	1	54	3	7	2016-06-13 16:24:14.104909+00	2013
1353	192.63	157.58	5028	2	813	12	48	2016-06-13 16:24:14.113184+00	2013
1354	124.10	92.84	5029	1	52	5	10	2016-06-13 16:24:14.121458+00	2013
1355	146.95	113.25	5029	2	331	10	15	2016-06-13 16:24:14.129817+00	2013
1356	154.20	129.34	5030	1	45	5	10	2016-06-13 16:24:14.138142+00	2013
1357	154.17	126.86	5030	2	401	10	45	2016-06-13 16:24:14.146416+00	2013
1358	175.80	146.37	5031	1	213	5	10	2016-06-13 16:24:14.154764+00	2013
1359	195.50	174.60	5031	2	627	5	40	2016-06-13 16:24:14.162977+00	2013
1360	135.00	122.17	5032	1	31	3	17	2016-06-13 16:24:14.171311+00	2013
1361	162.06	126.00	5032	2	198	9	41	2016-06-13 16:24:14.179692+00	2013
1362	116.40	96.88	5033	1	25	5	10	2016-06-13 16:24:14.188015+00	2013
1363	166.53	149.46	5033	2	475	5	30	2016-06-13 16:24:14.196398+00	2013
1364	137.33	95.60	5022	1	28	3	7	2016-06-13 16:24:14.204712+00	2013
1365	140.24	103.95	5022	2	157	5	15	2016-06-13 16:24:14.213065+00	2013
1366	166.02	133.54	5021	2	355	7	33	2016-06-13 16:24:14.221376+00	2013
1367	122.20	106.64	5021	1	24	3	7	2016-06-13 16:24:14.229693+00	2013
1368	192.07	169.72	5020	2	1462	40	85	2016-06-13 16:24:14.238064+00	2013
1369	136.80	112.89	5394	1	353	20	30	2016-06-13 16:24:14.246383+00	2013
1370	152.96	128.88	5395	1	90	5	20	2016-06-13 16:24:14.25472+00	2013
1371	171.18	131.01	5396	6	63	5	15	2016-06-13 16:24:14.263055+00	2013
1372	151.01	122.69	5397	1	129	20	30	2016-06-13 16:24:14.271334+00	2013
1373	189.12	154.79	5009	1	175	10	20	2016-06-13 16:24:14.279697+00	2013
1374	193.88	173.63	5009	2	1032	50	60	2016-06-13 16:24:14.288062+00	2013
1375	182.80	159.53	5010	2	159	5	15	2016-06-13 16:24:14.296391+00	2013
1376	134.47	114.04	5011	2	220	35	50	2016-06-13 16:24:14.304712+00	2013
1377	128.90	109.01	5011	1	27	5	10	2016-06-13 16:24:14.313047+00	2013
1378	194.45	180.70	5012	2	726	15	25	2016-06-13 16:24:14.321377+00	2013
1379	\N	\N	5013	6	24	3	7	2016-06-13 16:24:14.329722+00	2013
1380	172.27	148.13	5013	2	1090	34	46	2016-06-13 16:24:14.338096+00	2013
1381	121.30	97.80	5013	1	73	3	7	2016-06-13 16:24:14.346429+00	2013
1382	189.12	167.13	5014	2	560	12	33	2016-06-13 16:24:14.354771+00	2013
1383	191.90	129.59	5014	1	69	3	12	2016-06-13 16:24:14.363091+00	2013
1384	174.64	154.89	5015	1	123	5	10	2016-06-13 16:24:14.371382+00	2013
1385	175.92	131.27	5015	2	822	10	55	2016-06-13 16:24:14.37977+00	2013
1386	184.94	170.32	5016	2	546	20	20	2016-06-13 16:24:14.388098+00	2013
1387	117.28	97.35	5017	2	50	5	15	2016-06-13 16:24:14.39643+00	2013
1388	144.07	99.60	5018	2	611	7	13	2016-06-13 16:24:14.404751+00	2013
1389	111.73	80.17	5018	1	21	3	7	2016-06-13 16:24:14.413108+00	2013
1390	198.24	176.20	5019	2	541	10	20	2016-06-13 16:24:14.421372+00	2013
1391	141.60	123.01	4690	2	189	8	12	2016-06-13 16:24:14.430377+00	2013
1392	136.22	109.98	4691	2	98	6	9	2016-06-13 16:24:14.438033+00	2013
1393	159.53	135.56	5398	2	58	6	9	2016-06-13 16:24:14.446375+00	2013
1394	169.87	141.31	4692	1	69	3	15	2016-06-13 16:24:14.45476+00	2013
1395	138.72	104.69	4692	2	145	7	35	2016-06-13 16:24:14.463143+00	2013
1396	144.46	133.52	4693	1	99	5	10	2016-06-13 16:24:14.471499+00	2013
1397	146.81	119.55	4693	2	400	15	30	2016-06-13 16:24:14.479804+00	2013
1398	170.24	147.47	4694	2	230	15	18	2016-06-13 16:24:14.488397+00	2013
1399	181.53	150.27	4694	1	75	5	12	2016-06-13 16:24:14.497053+00	2013
1400	146.53	115.45	4695	2	960	58	62	2016-06-13 16:24:14.50495+00	2013
1401	135.33	108.95	4695	1	180	12	18	2016-06-13 16:24:14.513516+00	2013
1402	150.09	118.58	4688	1	66	9	16	2016-06-13 16:24:14.521539+00	2013
1403	133.66	90.77	4688	2	258	26	29	2016-06-13 16:24:14.52985+00	2013
1404	142.27	123.44	4682	1	80	9	16	2016-06-13 16:24:14.538152+00	2013
1405	138.27	103.27	4682	2	245	31	34	2016-06-13 16:24:14.546475+00	2013
1406	143.64	114.64	4683	2	123	15	20	2016-06-13 16:24:14.554798+00	2013
1407	154.48	113.90	4683	1	41	5	10	2016-06-13 16:24:14.562949+00	2013
1408	163.85	147.00	4684	2	138	10	15	2016-06-13 16:24:14.57151+00	2013
1409	166.46	148.75	4684	1	51	5	10	2016-06-13 16:24:14.579853+00	2013
1410	160.06	143.14	4685	1	57	9	16	2016-06-13 16:24:14.5891+00	2013
1411	157.61	123.01	4685	2	206	26	39	2016-06-13 16:24:14.597671+00	2013
1412	152.00	121.73	4687	2	186	10	15	2016-06-13 16:24:14.605021+00	2013
1413	94.83	78.88	5399	5	136	10	15	2016-06-13 16:24:14.614064+00	2013
1414	96.68	79.23	5400	5	132	10	15	2016-06-13 16:24:14.621792+00	2013
1415	139.56	119.34	5401	5	180	10	15	2016-06-13 16:24:14.629901+00	2013
1416	152.62	122.16	4926	2	113	5	10	2016-06-13 16:24:14.641047+00	2013
1417	156.91	129.61	4926	5	252	15	15	2016-06-13 16:24:14.649492+00	2013
1418	131.91	112.03	5402	5	102	10	15	2016-06-13 16:24:14.655359+00	2013
1419	146.41	118.67	4927	2	387	30	45	2016-06-13 16:24:14.665263+00	2013
1420	121.81	94.76	5403	1	189	15	25	2016-06-13 16:24:14.672273+00	2013
1421	141.28	129.57	5404	5	339	30	45	2016-06-13 16:24:14.680835+00	2013
1422	174.11	158.49	4928	5	279	25	35	2016-06-13 16:24:14.688716+00	2013
1423	157.32	144.91	4928	1	93	5	10	2016-06-13 16:24:14.69753+00	2013
1424	167.44	151.04	4928	2	131	5	10	2016-06-13 16:24:14.705433+00	2013
1425	144.88	107.72	5405	5	76	5	15	2016-06-13 16:24:14.714788+00	2013
1426	160.26	86.62	5406	6	40	5	15	2016-06-13 16:24:14.721978+00	2013
1427	164.34	107.22	5407	3	48	8	12	2016-06-13 16:24:14.78058+00	2013
1428	171.33	143.55	5408	5	101	5	15	2016-06-13 16:24:14.788257+00	2013
1429	145.45	126.06	4929	5	250	10	15	2016-06-13 16:24:14.796575+00	2013
1430	154.66	138.91	4929	2	200	5	10	2016-06-13 16:24:14.804871+00	2013
1431	124.42	110.41	5409	5	112	5	15	2016-06-13 16:24:14.81321+00	2013
1432	170.72	115.35	4930	5	104	10	20	2016-06-13 16:24:14.821522+00	2013
1433	150.72	109.35	4930	2	67	5	15	2016-06-13 16:24:14.82983+00	2013
1434	158.33	117.94	4931	5	66	5	10	2016-06-13 16:24:14.838178+00	2013
1435	160.18	110.27	4931	2	56	5	10	2016-06-13 16:24:14.846572+00	2013
1436	125.19	101.91	4932	5	264	10	15	2016-06-13 16:24:14.856531+00	2013
1437	140.02	118.70	4932	2	180	5	10	2016-06-13 16:24:14.864611+00	2013
1438	144.19	85.78	4937	5	100	10	25	2016-06-13 16:24:14.871532+00	2013
1439	134.54	103.66	4937	2	63	5	10	2016-06-13 16:24:14.8799+00	2013
1440	118.20	97.55	4936	2	82	5	10	2016-06-13 16:24:14.888226+00	2013
1441	125.85	98.14	4936	5	142	10	25	2016-06-13 16:24:14.896571+00	2013
1442	107.70	95.14	4935	2	110	5	10	2016-06-13 16:24:14.90489+00	2013
1443	115.00	90.35	4935	5	145	10	15	2016-06-13 16:24:14.913226+00	2013
1444	124.34	82.22	5410	5	101	5	15	2016-06-13 16:24:14.921548+00	2013
1445	108.95	89.15	5411	5	144	10	15	2016-06-13 16:24:14.929891+00	2013
1446	176.28	143.79	5412	5	67	5	15	2016-06-13 16:24:14.938223+00	2013
1447	183.40	151.54	4934	5	184	3	20	2016-06-13 16:24:14.946925+00	2013
1448	186.90	151.22	4934	2	115	2	15	2016-06-13 16:24:14.954921+00	2013
1449	190.33	165.13	4933	5	148	3	20	2016-06-13 16:24:14.963272+00	2013
1450	186.50	158.29	4933	2	112	2	15	2016-06-13 16:24:15.021884+00	2013
1451	178.50	140.29	4924	5	144	3	20	2016-06-13 16:24:15.029994+00	2013
1452	168.55	138.98	4924	2	112	2	15	2016-06-13 16:24:15.038277+00	2013
1453	166.10	143.28	4923	5	179	3	10	2016-06-13 16:24:15.046646+00	2013
1454	191.30	170.98	4923	2	121	2	5	2016-06-13 16:24:15.054938+00	2013
1455	118.44	81.77	4914	5	231	20	30	2016-06-13 16:24:15.063281+00	2013
1456	132.69	93.30	4914	2	152	10	15	2016-06-13 16:24:15.071547+00	2013
1457	133.89	85.26	4913	5	111	15	20	2016-06-13 16:24:15.079946+00	2013
1458	121.24	95.06	4913	2	60	5	10	2016-06-13 16:24:15.088263+00	2013
1459	106.40	74.38	4912	2	75	5	10	2016-06-13 16:24:15.096589+00	2013
1460	121.92	91.90	4912	5	93	5	10	2016-06-13 16:24:15.104934+00	2013
1461	136.82	114.15	4911	2	110	5	15	2016-06-13 16:24:15.163362+00	2013
1462	149.50	113.58	4911	5	229	15	25	2016-06-13 16:24:15.171627+00	2013
1463	121.83	79.01	4910	2	111	10	15	2016-06-13 16:24:15.181076+00	2013
1464	126.15	87.23	4910	5	171	15	20	2016-06-13 16:24:15.188431+00	2013
1465	127.16	92.63	4915	2	142	10	15	2016-06-13 16:24:15.196776+00	2013
1466	116.50	89.83	4915	5	304	25	30	2016-06-13 16:24:15.204989+00	2013
1467	121.12	97.12	4916	2	181	10	20	2016-06-13 16:24:15.213713+00	2013
1468	144.15	105.48	4916	5	400	30	40	2016-06-13 16:24:15.221767+00	2013
1469	125.88	114.26	4917	2	50	5	10	2016-06-13 16:24:15.230044+00	2013
1470	137.96	112.44	4917	5	103	5	20	2016-06-13 16:24:15.23835+00	2013
1471	107.62	74.87	4918	2	72	5	10	2016-06-13 16:24:15.24768+00	2013
1472	124.15	95.50	4918	5	259	25	30	2016-06-13 16:24:15.330779+00	2013
1473	105.47	79.33	5413	5	122	10	20	2016-06-13 16:24:15.338376+00	2013
1474	98.17	75.40	4919	2	101	10	15	2016-06-13 16:24:15.347539+00	2013
1475	138.22	108.09	4919	5	175	15	20	2016-06-13 16:24:15.355235+00	2013
1476	121.98	87.79	4920	2	75	5	10	2016-06-13 16:24:15.363781+00	2013
1477	107.68	78.47	4920	5	186	15	20	2016-06-13 16:24:15.371872+00	2013
1478	149.18	99.14	4921	2	87	5	15	2016-06-13 16:24:15.380486+00	2013
1479	123.94	82.49	4921	5	204	10	20	2016-06-13 16:24:15.38859+00	2013
1480	108.09	77.15	4922	5	154	10	15	2016-06-13 16:24:15.397197+00	2013
1481	78.48	73.41	4922	2	88	5	10	2016-06-13 16:24:15.405182+00	2013
1482	135.87	97.27	5414	2	91	3	7	2016-06-13 16:24:15.41451+00	2013
1483	121.77	83.37	5165	2	66	3	7	2016-06-13 16:24:15.421687+00	2013
1484	130.73	103.36	5166	2	71	4	6	2016-06-13 16:24:15.430381+00	2013
1485	124.97	93.74	5167	2	123	10	15	2016-06-13 16:24:15.438417+00	2013
1486	186.16	171.95	5168	2	239	7	8	2016-06-13 16:24:15.446978+00	2013
1487	164.13	137.83	5168	1	64	3	7	2016-06-13 16:24:15.455112+00	2013
1488	168.10	143.34	5169	1	70	3	10	2016-06-13 16:24:15.463492+00	2013
1489	183.63	164.67	5169	2	330	7	30	2016-06-13 16:24:15.471915+00	2013
1490	149.33	134.59	5170	1	74	3	7	2016-06-13 16:24:15.480149+00	2013
1491	184.01	170.56	5170	2	260	7	8	2016-06-13 16:24:15.488457+00	2013
1492	141.60	120.72	5171	1	39	3	7	2016-06-13 16:24:15.497317+00	2013
1493	146.00	125.73	5171	2	250	17	23	2016-06-13 16:24:15.505797+00	2013
1494	141.98	97.77	5164	1	51	5	10	2016-06-13 16:24:15.563976+00	2013
1495	129.66	90.26	5164	2	271	15	40	2016-06-13 16:24:15.572235+00	2013
1496	150.61	112.50	5163	2	267	15	35	2016-06-13 16:24:15.580488+00	2013
1497	140.45	103.07	5162	2	252	17	33	2016-06-13 16:24:15.589051+00	2013
1498	103.77	87.39	5162	1	40	3	7	2016-06-13 16:24:15.598246+00	2013
1499	147.30	125.33	5155	2	573	32	48	2016-06-13 16:24:15.605745+00	2013
1500	139.37	114.13	5155	1	50	3	7	2016-06-13 16:24:15.614198+00	2013
1501	150.23	126.52	5156	2	224	12	18	2016-06-13 16:24:15.622357+00	2013
1502	126.27	98.04	5156	1	36	3	7	2016-06-13 16:24:15.630712+00	2013
1503	135.59	94.14	5157	2	1516	90	225	2016-06-13 16:24:15.639117+00	2013
1504	117.87	80.21	5157	1	87	10	15	2016-06-13 16:24:15.647781+00	2013
1505	128.78	94.28	5158	2	882	62	108	2016-06-13 16:24:15.655704+00	2013
1506	160.73	90.44	5158	1	49	3	7	2016-06-13 16:24:15.664144+00	2013
1507	140.44	103.96	5159	1	59	5	10	2016-06-13 16:24:15.67309+00	2013
1508	133.29	105.92	5159	2	349	20	45	2016-06-13 16:24:15.6817+00	2013
1509	131.78	103.23	5160	2	247	11	24	2016-06-13 16:24:15.689865+00	2013
1510	102.83	87.28	5160	1	49	4	11	2016-06-13 16:24:15.69737+00	2013
1511	133.12	114.23	5161	2	180	10	15	2016-06-13 16:24:15.70578+00	2013
1512	150.74	128.41	5044	1	120	5	10	2016-06-13 16:24:15.714263+00	2013
1513	160.31	134.89	5044	2	667	45	60	2016-06-13 16:24:15.721808+00	2013
1514	139.80	112.49	5045	2	524	20	40	2016-06-13 16:24:15.730144+00	2013
1515	91.72	78.03	5046	1	80	5	10	2016-06-13 16:24:15.738526+00	2013
1516	153.27	128.58	5046	2	406	15	30	2016-06-13 16:24:15.746886+00	2013
1517	124.24	95.04	5047	1	96	5	10	2016-06-13 16:24:15.805707+00	2013
1518	141.98	122.05	5047	2	815	15	30	2016-06-13 16:24:15.813474+00	2013
1519	154.97	139.81	5048	2	705	20	30	2016-06-13 16:24:15.82181+00	2013
1520	181.29	158.13	5049	2	1086	30	45	2016-06-13 16:24:15.830194+00	2013
1521	163.56	132.80	5049	1	126	5	10	2016-06-13 16:24:15.838393+00	2013
1522	129.42	111.97	5050	1	150	5	10	2016-06-13 16:24:15.846865+00	2013
1523	140.06	106.14	5050	2	678	25	40	2016-06-13 16:24:15.855206+00	2013
1524	162.74	144.69	5043	2	436	15	25	2016-06-13 16:24:15.863557+00	2013
1525	192.27	172.95	5042	2	571	15	35	2016-06-13 16:24:15.871811+00	2013
1526	169.57	145.54	5041	2	1122	35	55	2016-06-13 16:24:15.880192+00	2013
1527	142.66	117.47	5415	1	349	15	35	2016-06-13 16:24:15.888522+00	2013
1528	154.79	140.43	5416	1	412	10	15	2016-06-13 16:24:15.896858+00	2013
1529	191.04	171.27	5034	1	187	5	10	2016-06-13 16:24:15.905197+00	2013
1530	180.98	159.66	5034	2	1315	45	70	2016-06-13 16:24:15.913588+00	2013
1531	196.73	159.51	5035	2	669	15	35	2016-06-13 16:24:15.922558+00	2013
1532	142.94	124.02	5036	2	958	25	35	2016-06-13 16:24:15.930426+00	2013
1533	165.63	120.71	5037	2	983	15	35	2016-06-13 16:24:15.939468+00	2013
1534	213.63	173.61	5038	2	653	25	70	2016-06-13 16:24:15.947065+00	2013
1535	165.85	142.93	5038	1	88	5	10	2016-06-13 16:24:15.955373+00	2013
1536	171.24	155.28	5039	2	504	10	20	2016-06-13 16:24:15.963691+00	2013
1537	116.86	88.82	5040	2	925	25	50	2016-06-13 16:24:15.971939+00	2013
1538	106.25	81.07	4375	2	208	10	15	2016-06-13 16:24:15.98097+00	2013
1539	194.68	150.61	4374	2	327	5	25	2016-06-13 16:24:15.988519+00	2013
1540	137.98	106.17	4373	2	687	45	55	2016-06-13 16:24:15.996927+00	2013
1541	136.12	108.73	4373	1	174	10	15	2016-06-13 16:24:16.005246+00	2013
1542	133.04	88.50	4372	2	577	40	60	2016-06-13 16:24:16.013554+00	2013
1543	129.26	91.04	4371	2	660	45	55	2016-06-13 16:24:16.021884+00	2013
1544	131.74	96.78	4370	2	423	25	35	2016-06-13 16:24:16.030209+00	2013
1545	140.16	107.77	4366	2	800	50	50	2016-06-13 16:24:16.038559+00	2013
1546	133.91	114.09	4366	1	203	10	15	2016-06-13 16:24:16.046955+00	2013
1547	112.20	83.11	4367	2	467	25	35	2016-06-13 16:24:16.055288+00	2013
1548	141.78	121.91	4368	1	189	10	15	2016-06-13 16:24:16.063678+00	2013
1549	140.50	105.78	4368	2	955	50	50	2016-06-13 16:24:16.071915+00	2013
1550	113.88	81.83	4369	2	490	35	40	2016-06-13 16:24:16.080287+00	2013
1551	161.90	130.90	5044	2	595	30	70	2016-06-13 16:33:41.171173+00	2014
1552	142.20	109.90	5045	2	551	20	40	2016-06-13 16:33:41.186263+00	2014
1553	101.90	85.50	5046	2	412	15	30	2016-06-13 16:33:41.194717+00	2014
1554	84.20	74.70	5046	1	183	5	10	2016-06-13 16:33:41.20273+00	2014
1555	150.10	130.20	5047	2	818	20	30	2016-06-13 16:33:41.211052+00	2014
1556	87.30	81.80	5048	1	199	5	10	2016-06-13 16:33:41.219347+00	2014
1557	139.60	119.60	5048	2	720	10	35	2016-06-13 16:33:41.227678+00	2014
1558	124.60	91.30	5049	1	88	5	10	2016-06-13 16:33:41.236061+00	2014
1559	178.10	149.60	5049	2	1103	30	45	2016-06-13 16:33:41.244392+00	2014
1560	103.80	81.10	5050	1	238	5	10	2016-06-13 16:33:41.252709+00	2014
1561	128.80	104.30	5050	2	755	20	25	2016-06-13 16:33:41.261034+00	2014
1562	134.70	117.90	5043	2	481	15	25	2016-06-13 16:33:41.269363+00	2014
1563	178.90	127.10	5042	2	546	15	35	2016-06-13 16:33:41.277674+00	2014
1564	163.50	139.40	5041	2	1299	35	55	2016-06-13 16:33:41.28602+00	2014
1565	130.00	112.70	5415	1	371	10	15	2016-06-13 16:33:41.294355+00	2014
1566	128.30	109.90	5416	1	491	15	25	2016-06-13 16:33:41.302775+00	2014
1567	179.80	156.80	5034	2	1473	45	70	2016-06-13 16:33:41.311149+00	2014
1568	137.80	112.70	5034	1	154	5	10	2016-06-13 16:33:41.319478+00	2014
1569	153.10	130.20	5035	2	801	15	35	2016-06-13 16:33:41.327804+00	2014
1570	133.10	106.10	5036	2	1049	20	30	2016-06-13 16:33:41.336133+00	2014
1571	116.90	92.50	5037	2	1039	15	35	2016-06-13 16:33:41.344457+00	2014
1572	\N	149.70	5038	2	752	15	55	2016-06-13 16:33:41.352836+00	2014
1573	148.10	125.70	5039	2	517	10	20	2016-06-13 16:33:41.361121+00	2014
1574	101.40	86.70	5040	2	1101	20	30	2016-06-13 16:33:41.369463+00	2014
1575	186.80	156.80	5079	1	87	10	20	2016-06-13 16:33:41.378455+00	2014
1576	210.30	176.10	5079	2	243	10	20	2016-06-13 16:33:41.38617+00	2014
1577	183.40	146.00	5078	1	111	5	10	2016-06-13 16:33:41.3945+00	2014
1578	202.50	173.20	5078	2	214	5	10	2016-06-13 16:33:41.402844+00	2014
1579	190.10	158.30	5077	1	252	15	45	2016-06-13 16:33:41.411204+00	2014
1580	195.60	173.50	5077	2	2101	70	140	2016-06-13 16:33:41.41951+00	2014
1581	131.20	90.30	5076	1	21	4	8	2016-06-13 16:33:41.427841+00	2014
1582	140.90	118.40	5076	2	414	11	27	2016-06-13 16:33:41.436173+00	2014
1583	123.00	84.70	4506	2	232	12	13	2016-06-13 16:33:41.445177+00	2014
1584	168.00	144.30	4507	2	384	12	13	2016-06-13 16:33:41.452941+00	2014
1585	138.10	115.90	4508	2	676	24	26	2016-06-13 16:33:41.46126+00	2014
1586	91.00	80.50	4509	2	297	12	13	2016-06-13 16:33:41.469868+00	2014
1587	95.60	79.70	4510	2	370	18	22	2016-06-13 16:33:41.478096+00	2014
1588	95.60	78.60	4511	2	238	12	13	2016-06-13 16:33:41.486296+00	2014
1589	172.10	143.40	4512	2	281	5	15	2016-06-13 16:33:41.494612+00	2014
1590	140.00	106.30	4513	2	507	20	40	2016-06-13 16:33:41.502925+00	2014
1591	117.50	85.80	4505	1	123	7	8	2016-06-13 16:33:41.511368+00	2014
1592	137.50	108.40	4505	2	690	28	37	2016-06-13 16:33:41.519662+00	2014
1593	132.10	110.00	4504	2	573	30	40	2016-06-13 16:33:41.52801+00	2014
1594	115.40	84.70	4503	2	847	47	58	2016-06-13 16:33:41.536353+00	2014
1595	107.80	85.60	4503	1	129	8	12	2016-06-13 16:33:41.544674+00	2014
1596	113.10	81.50	4495	2	575	33	42	2016-06-13 16:33:41.553016+00	2014
1597	126.90	97.90	4495	1	49	7	8	2016-06-13 16:33:41.561333+00	2014
1598	103.00	79.80	4496	1	124	7	8	2016-06-13 16:33:41.569648+00	2014
1599	96.70	78.80	4496	2	586	23	32	2016-06-13 16:33:41.577984+00	2014
1600	117.90	85.20	4497	1	102	7	8	2016-06-13 16:33:41.586296+00	2014
1601	107.80	83.80	4497	2	816	43	52	2016-06-13 16:33:41.594651+00	2014
1602	102.50	78.90	4498	2	427	25	35	2016-06-13 16:33:41.603027+00	2014
1603	96.10	77.40	4499	2	409	25	35	2016-06-13 16:33:41.611342+00	2014
1604	112.20	86.10	4500	2	309	15	25	2016-06-13 16:33:41.619674+00	2014
1605	147.70	111.50	4501	2	220	15	45	2016-06-13 16:33:41.627983+00	2014
1606	135.00	82.00	4502	2	343	5	45	2016-06-13 16:33:41.636273+00	2014
1607	162.00	136.90	4897	2	972	10	40	2016-06-13 16:33:41.645288+00	2014
1608	155.60	128.00	4898	2	372	10	20	2016-06-13 16:33:41.653028+00	2014
1609	163.00	143.10	4899	2	432	15	25	2016-06-13 16:33:41.661421+00	2014
1610	144.30	107.90	4900	2	377	5	15	2016-06-13 16:33:41.669746+00	2014
1611	209.60	177.50	4901	2	399	5	25	2016-06-13 16:33:41.678108+00	2014
1612	152.30	130.50	5362	1	895	20	40	2016-06-13 16:33:41.686396+00	2014
1613	195.90	179.00	4902	2	1317	33	67	2016-06-13 16:33:41.694749+00	2014
1614	186.60	174.50	4902	1	132	10	14	2016-06-13 16:33:41.703075+00	2014
1615	200.00	178.70	4903	2	1191	10	30	2016-06-13 16:33:41.711414+00	2014
1616	142.50	106.40	4904	1	92	5	10	2016-06-13 16:33:41.719805+00	2014
1617	163.30	147.00	4904	2	2098	30	35	2016-06-13 16:33:41.728161+00	2014
1618	140.00	118.50	4905	2	569	10	15	2016-06-13 16:33:41.73647+00	2014
1619	211.40	185.60	4906	2	581	20	20	2016-06-13 16:33:41.744828+00	2014
1620	166.70	150.20	4907	2	458	10	25	2016-06-13 16:33:41.753119+00	2014
1621	144.00	119.80	4908	2	926	15	25	2016-06-13 16:33:41.761404+00	2014
1622	197.00	179.20	4909	2	1879	35	65	2016-06-13 16:33:41.769797+00	2014
1623	193.20	165.90	4896	2	267	3	10	2016-06-13 16:33:41.778124+00	2014
1624	124.80	111.30	4896	1	36	4	9	2016-06-13 16:33:41.786456+00	2014
1625	172.30	158.20	4895	2	184	5	15	2016-06-13 16:33:41.794795+00	2014
1626	186.70	167.10	4882	2	195	5	15	2016-06-13 16:33:41.803132+00	2014
1627	204.10	186.60	4883	2	1458	20	50	2016-06-13 16:33:41.811452+00	2014
1628	158.70	133.10	4884	2	450	25	35	2016-06-13 16:33:41.819784+00	2014
1629	164.40	133.50	4885	2	281	10	20	2016-06-13 16:33:41.828132+00	2014
1630	162.80	135.30	4886	2	1377	20	40	2016-06-13 16:33:41.836443+00	2014
1631	155.50	128.50	4887	2	513	25	35	2016-06-13 16:33:41.844843+00	2014
1632	141.10	115.30	4888	2	728	25	35	2016-06-13 16:33:41.853141+00	2014
1633	158.80	136.40	4889	2	558	5	15	2016-06-13 16:33:41.861494+00	2014
1634	187.10	162.70	4890	2	566	5	15	2016-06-13 16:33:41.86976+00	2014
1635	175.60	156.60	4891	2	261	5	20	2016-06-13 16:33:41.878195+00	2014
1636	123.50	84.50	4892	2	343	8	12	2016-06-13 16:33:41.886499+00	2014
1637	155.70	133.80	4893	2	366	5	15	2016-06-13 16:33:41.894837+00	2014
1638	128.10	90.90	4894	2	383	5	15	2016-06-13 16:33:41.903194+00	2014
1639	136.30	109.80	4690	2	191	5	10	2016-06-13 16:33:41.912177+00	2014
1640	142.50	128.40	4691	2	60	5	10	2016-06-13 16:33:41.921855+00	2014
1641	153.00	138.90	4692	1	62	5	10	2016-06-13 16:33:41.928558+00	2014
1642	150.00	113.10	4692	2	346	20	55	2016-06-13 16:33:41.936818+00	2014
1643	144.70	120.10	4693	2	604	15	30	2016-06-13 16:33:41.945114+00	2014
1644	150.70	112.60	4693	1	108	5	10	2016-06-13 16:33:41.953399+00	2014
1645	163.20	141.60	4694	1	71	5	10	2016-06-13 16:33:41.961935+00	2014
1646	169.00	136.30	4694	2	219	15	20	2016-06-13 16:33:41.970215+00	2014
1647	145.50	123.00	4695	1	219	10	20	2016-06-13 16:33:41.978469+00	2014
1648	155.50	131.30	4695	2	1449	55	65	2016-06-13 16:33:41.98678+00	2014
1649	150.80	119.90	4689	2	92	5	15	2016-06-13 16:33:41.995324+00	2014
1650	152.30	123.30	4688	1	62	8	17	2016-06-13 16:33:42.00409+00	2014
1651	157.40	129.90	4688	2	458	27	28	2016-06-13 16:33:42.01236+00	2014
1652	121.10	97.10	4682	1	57	9	16	2016-06-13 16:33:42.020699+00	2014
1653	141.30	119.30	4682	2	437	31	44	2016-06-13 16:33:42.029042+00	2014
1654	143.30	112.80	4683	1	45	7	13	2016-06-13 16:33:42.037254+00	2014
1655	137.20	107.50	4683	2	167	18	22	2016-06-13 16:33:42.045551+00	2014
1656	163.00	115.90	4684	2	83	7	18	2016-06-13 16:33:42.053765+00	2014
1657	153.90	127.40	4684	1	37	3	12	2016-06-13 16:33:42.062541+00	2014
1658	157.00	133.40	4685	2	307	31	44	2016-06-13 16:33:42.070221+00	2014
1659	154.70	124.20	4685	1	54	9	16	2016-06-13 16:33:42.07855+00	2014
1660	145.60	111.80	4686	1	39	5	10	2016-06-13 16:33:42.086726+00	2014
1661	144.80	119.80	4686	2	198	10	20	2016-06-13 16:33:42.095081+00	2014
1662	157.20	134.50	4687	2	98	5	15	2016-06-13 16:33:42.103392+00	2014
1663	148.80	131.40	5124	2	221	4	10	2016-06-13 16:33:42.11244+00	2014
1664	146.50	116.80	5125	2	166	3	11	2016-06-13 16:33:42.120036+00	2014
1665	142.10	116.10	5126	2	178	3	11	2016-06-13 16:33:42.128385+00	2014
1666	144.30	111.50	5127	2	108	3	10	2016-06-13 16:33:42.136734+00	2014
1667	183.10	160.50	5128	2	312	5	15	2016-06-13 16:33:42.145089+00	2014
1668	186.30	174.80	5129	2	310	5	15	2016-06-13 16:33:42.153406+00	2014
1669	194.40	175.40	5130	2	419	5	15	2016-06-13 16:33:42.161741+00	2014
1670	141.50	123.50	5131	2	612	20	40	2016-06-13 16:33:42.170085+00	2014
1671	110.00	81.30	5132	1	101	5	15	2016-06-13 16:33:42.178455+00	2014
1672	138.50	117.80	5132	2	1363	40	100	2016-06-13 16:33:42.186784+00	2014
1673	119.50	86.10	5123	1	108	3	17	2016-06-13 16:33:42.19514+00	2014
1674	136.50	113.40	5123	2	874	17	63	2016-06-13 16:33:42.20347+00	2014
1675	134.10	115.10	5122	2	442	15	35	2016-06-13 16:33:42.211773+00	2014
1676	143.70	110.10	5113	2	623	20	55	2016-06-13 16:33:42.220134+00	2014
1677	131.20	107.90	5114	2	1213	40	80	2016-06-13 16:33:42.228457+00	2014
1678	115.30	82.70	5115	1	115	3	22	2016-06-13 16:33:42.236787+00	2014
1679	133.70	102.80	5115	2	940	17	83	2016-06-13 16:33:42.245122+00	2014
1680	134.90	108.80	5116	2	644	15	60	2016-06-13 16:33:42.253496+00	2014
1681	125.90	101.30	5117	2	529	20	55	2016-06-13 16:33:42.261807+00	2014
1682	131.30	101.90	5118	2	178	5	15	2016-06-13 16:33:42.270166+00	2014
1683	131.90	117.10	5119	2	2705	80	165	2016-06-13 16:33:42.278452+00	2014
1684	120.10	100.60	5119	1	149	5	20	2016-06-13 16:33:42.286838+00	2014
1685	135.20	113.60	5120	2	1159	40	100	2016-06-13 16:33:42.295182+00	2014
1686	134.00	118.20	5120	1	117	5	15	2016-06-13 16:33:42.303503+00	2014
1687	124.50	97.00	5121	1	98	3	17	2016-06-13 16:33:42.311833+00	2014
1688	154.20	131.10	5121	2	460	7	33	2016-06-13 16:33:42.320171+00	2014
1689	129.30	96.80	4375	2	444	10	15	2016-06-13 16:33:42.329166+00	2014
1690	176.20	150.30	4374	2	342	5	15	2016-06-13 16:33:42.336933+00	2014
1691	129.60	105.60	4373	2	1289	60	65	2016-06-13 16:33:42.345267+00	2014
1692	129.10	105.70	4372	2	1046	50	60	2016-06-13 16:33:42.353572+00	2014
1693	131.80	100.40	4371	2	1121	45	55	2016-06-13 16:33:42.361897+00	2014
1694	122.30	86.30	4370	2	751	25	35	2016-06-13 16:33:42.370239+00	2014
1695	128.20	97.80	4366	2	1164	60	65	2016-06-13 16:33:42.3786+00	2014
1696	109.70	84.70	4367	2	738	25	35	2016-06-13 16:33:42.386928+00	2014
1697	131.30	104.60	4368	2	1686	65	70	2016-06-13 16:33:42.395269+00	2014
1698	123.30	100.00	4369	2	1015	40	45	2016-06-13 16:33:42.403602+00	2014
1699	127.50	97.40	5315	2	142	5	15	2016-06-13 16:33:42.412643+00	2014
1700	133.90	114.80	5314	2	146	5	15	2016-06-13 16:33:42.420332+00	2014
1701	133.20	89.30	5313	2	127	5	15	2016-06-13 16:33:42.428678+00	2014
1702	93.10	73.80	5312	2	108	5	15	2016-06-13 16:33:42.436986+00	2014
1703	131.10	92.50	5311	2	208	10	20	2016-06-13 16:33:42.445312+00	2014
1704	121.00	80.50	5310	2	183	10	30	2016-06-13 16:33:42.453639+00	2014
1705	97.80	76.40	5309	2	246	15	45	2016-06-13 16:33:42.461961+00	2014
1706	112.20	84.80	5308	2	273	15	35	2016-06-13 16:33:42.470309+00	2014
1707	199.00	161.40	4681	1	63	1	22	2016-06-13 16:33:42.479306+00	2014
1708	202.50	173.50	4681	2	358	4	43	2016-06-13 16:33:42.486951+00	2014
1709	210.40	183.20	4680	2	338	2	42	2016-06-13 16:33:42.495295+00	2014
1710	206.30	169.70	4680	1	174	1	30	2016-06-13 16:33:42.50364+00	2014
1711	185.60	172.60	4679	2	129	2	18	2016-06-13 16:33:42.511953+00	2014
1712	181.60	163.00	4678	1	45	4	7	2016-06-13 16:33:42.520263+00	2014
1713	199.10	176.70	4678	2	111	6	8	2016-06-13 16:33:42.528588+00	2014
1714	187.20	162.40	4677	1	73	3	12	2016-06-13 16:33:42.536936+00	2014
1715	216.00	181.40	4677	2	276	7	38	2016-06-13 16:33:42.545304+00	2014
1716	186.00	160.90	4676	2	152	5	15	2016-06-13 16:33:42.553622+00	2014
1717	187.00	157.40	4675	1	90	4	16	2016-06-13 16:33:42.56196+00	2014
1718	230.40	199.20	4675	2	255	6	24	2016-06-13 16:33:42.570259+00	2014
1719	194.20	175.60	4674	2	106	1	14	2016-06-13 16:33:42.578622+00	2014
1720	205.10	185.30	4673	2	110	1	14	2016-06-13 16:33:42.586964+00	2014
1721	212.80	165.50	4672	1	88	1	12	2016-06-13 16:33:42.595322+00	2014
1722	209.30	184.80	4672	2	114	1	13	2016-06-13 16:33:42.603642+00	2014
1723	\N	142.80	4671	1	22	0	9	2016-06-13 16:33:42.611904+00	2014
1724	210.70	186.80	4671	2	104	1	13	2016-06-13 16:33:42.62031+00	2014
1725	157.70	138.90	5291	1	164	15	35	2016-06-13 16:33:42.629275+00	2014
1726	163.40	138.50	5291	2	1017	45	85	2016-06-13 16:33:42.637029+00	2014
1727	138.60	99.10	5290	1	28	3	7	2016-06-13 16:33:42.645398+00	2014
1728	143.30	105.40	5290	2	174	7	13	2016-06-13 16:33:42.653712+00	2014
1729	144.60	119.90	5289	1	56	5	15	2016-06-13 16:33:42.662018+00	2014
1730	155.30	127.30	5289	2	390	10	30	2016-06-13 16:33:42.670526+00	2014
1731	129.00	96.30	5288	1	27	4	6	2016-06-13 16:33:42.678989+00	2014
1732	133.90	116.70	5288	2	262	6	9	2016-06-13 16:33:42.68717+00	2014
1733	139.90	100.60	5002	1	124	5	10	2016-06-13 16:33:42.696201+00	2014
1734	165.70	139.40	5002	2	520	45	55	2016-06-13 16:33:42.703807+00	2014
1735	\N	\N	5002	6	30	10	15	2016-06-13 16:33:42.712128+00	2014
1736	\N	\N	5003	6	11	5	10	2016-06-13 16:33:42.720458+00	2014
1737	153.90	116.90	5003	2	464	25	50	2016-06-13 16:33:42.728902+00	2014
1738	107.40	79.80	5004	2	465	20	55	2016-06-13 16:33:42.737212+00	2014
1739	165.70	139.70	5005	2	806	20	55	2016-06-13 16:33:42.745514+00	2014
1740	142.20	119.80	5006	2	705	17	48	2016-06-13 16:33:42.753863+00	2014
1741	\N	\N	5006	6	17	3	7	2016-06-13 16:33:42.762152+00	2014
1742	179.20	156.20	5007	2	670	30	50	2016-06-13 16:33:42.770518+00	2014
1743	149.70	123.70	5008	2	801	20	50	2016-06-13 16:33:42.77887+00	2014
1744	171.20	146.00	5001	2	436	10	30	2016-06-13 16:33:42.787327+00	2014
1745	143.70	108.60	5000	2	971	20	40	2016-06-13 16:33:42.795621+00	2014
1746	183.00	163.60	4999	2	533	10	30	2016-06-13 16:33:42.803881+00	2014
1747	170.10	152.80	4992	2	972	55	70	2016-06-13 16:33:42.812272+00	2014
1748	117.00	98.40	5321	1	348	20	30	2016-06-13 16:33:42.820584+00	2014
1749	140.10	93.30	5322	6	23	5	15	2016-06-13 16:33:42.828937+00	2014
1750	139.30	122.90	5323	1	428	20	30	2016-06-13 16:33:42.837298+00	2014
1751	152.30	132.30	4993	1	252	15	20	2016-06-13 16:33:42.845679+00	2014
1752	184.10	167.70	4993	2	847	60	65	2016-06-13 16:33:42.853998+00	2014
1753	175.30	156.20	4994	2	629	10	40	2016-06-13 16:33:42.862338+00	2014
1754	142.30	118.80	4995	2	1159	45	70	2016-06-13 16:33:42.870684+00	2014
1755	112.00	90.50	4995	1	150	5	10	2016-06-13 16:33:42.879021+00	2014
1756	123.30	80.00	5417	6	27	10	20	2016-06-13 16:34:42.561658+00	2014
1757	135.20	113.00	4996	2	976	20	40	2016-06-13 16:34:42.584463+00	2014
1758	\N	\N	4997	6	20	3	12	2016-06-13 16:34:42.592509+00	2014
1759	185.80	141.70	4997	1	116	3	10	2016-06-13 16:34:42.600887+00	2014
1760	180.90	169.50	4997	2	570	29	23	2016-06-13 16:34:42.609109+00	2014
1761	172.50	161.40	4998	2	311	8	15	2016-06-13 16:34:42.617544+00	2014
1762	121.50	115.30	4998	1	38	2	5	2016-06-13 16:34:42.625888+00	2014
1763	194.10	172.20	4428	2	316	5	19	2016-06-13 16:34:42.634792+00	2014
1764	153.50	134.50	4427	1	63	2	5	2016-06-13 16:34:42.64245+00	2014
1765	186.50	176.30	4427	2	304	8	10	2016-06-13 16:34:42.650899+00	2014
1766	155.20	122.70	4426	1	31	2	5	2016-06-13 16:34:42.659231+00	2014
1767	164.80	142.10	4426	2	241	8	10	2016-06-13 16:34:42.667529+00	2014
1768	170.30	155.60	4425	2	325	7	13	2016-06-13 16:34:42.675804+00	2014
1769	199.40	180.40	4424	2	132	5	15	2016-06-13 16:34:42.684273+00	2014
1770	163.00	134.20	4423	2	139	7	13	2016-06-13 16:34:42.692595+00	2014
1771	132.90	112.80	5092	2	297	5	10	2016-06-13 16:34:42.701607+00	2014
1772	160.90	138.80	5093	2	349	5	15	2016-06-13 16:34:42.709259+00	2014
1773	99.70	81.20	5094	2	152	5	10	2016-06-13 16:34:42.717589+00	2014
1774	180.60	163.10	5095	2	619	10	25	2016-06-13 16:34:42.725928+00	2014
1775	186.70	165.90	5096	2	645	10	30	2016-06-13 16:34:42.734265+00	2014
1776	127.10	106.50	5097	2	919	25	50	2016-06-13 16:34:42.742339+00	2014
1777	108.50	81.00	5091	2	1756	40	110	2016-06-13 16:34:42.750928+00	2014
1778	120.10	99.80	5090	2	985	25	55	2016-06-13 16:34:42.759264+00	2014
1779	127.00	90.10	5084	2	515	10	40	2016-06-13 16:34:42.767567+00	2014
1780	110.60	86.70	5085	2	693	20	40	2016-06-13 16:34:42.775887+00	2014
1781	125.90	92.40	5086	2	1277	20	95	2016-06-13 16:34:42.78429+00	2014
1782	126.40	101.00	5087	2	1606	55	70	2016-06-13 16:34:42.792598+00	2014
1783	96.40	82.10	5088	2	893	30	45	2016-06-13 16:34:42.800965+00	2014
1784	102.10	82.40	5089	2	268	10	15	2016-06-13 16:34:42.809312+00	2014
1785	116.10	95.10	4824	2	131	5	15	2016-06-13 16:34:42.818297+00	2014
1786	142.40	123.40	4823	2	456	10	15	2016-06-13 16:34:42.825969+00	2014
1787	122.10	109.20	4822	2	308	5	15	2016-06-13 16:34:42.834233+00	2014
1788	186.30	154.20	4821	2	226	5	15	2016-06-13 16:34:42.842662+00	2014
1789	152.90	126.30	4820	2	167	10	10	2016-06-13 16:34:42.851021+00	2014
1790	163.90	132.10	4819	2	178	5	20	2016-06-13 16:34:42.859351+00	2014
1791	146.70	129.30	5325	1	326	10	15	2016-06-13 16:34:42.867687+00	2014
1792	179.50	160.60	4818	2	577	30	60	2016-06-13 16:34:42.87602+00	2014
1793	173.10	149.20	4818	1	154	5	15	2016-06-13 16:34:42.884355+00	2014
1794	167.20	144.00	4817	2	398	15	35	2016-06-13 16:34:42.892682+00	2014
1795	159.30	134.90	4825	2	618	20	40	2016-06-13 16:34:42.901022+00	2014
1796	127.70	105.20	4826	2	457	10	15	2016-06-13 16:34:42.90934+00	2014
1797	146.10	111.10	4834	2	567	25	60	2016-06-13 16:34:42.917692+00	2014
1798	119.00	100.10	4833	2	669	20	40	2016-06-13 16:34:42.925992+00	2014
1799	173.40	155.00	4832	2	512	20	30	2016-06-13 16:34:42.959525+00	2014
1800	182.80	159.20	4831	2	316	15	35	2016-06-13 16:34:42.994248+00	2014
1801	176.50	146.40	4830	2	100	5	15	2016-06-13 16:34:43.02883+00	2014
1802	180.00	166.20	4829	2	111	5	15	2016-06-13 16:34:43.059577+00	2014
1803	178.60	151.60	4828	2	564	20	50	2016-06-13 16:34:43.067933+00	2014
1804	176.70	153.90	4827	2	193	15	25	2016-06-13 16:34:43.076144+00	2014
1805	177.30	129.60	4816	2	148	5	20	2016-06-13 16:34:43.084441+00	2014
1806	151.70	133.30	4815	2	441	20	30	2016-06-13 16:34:43.092781+00	2014
1807	151.80	129.70	4814	2	218	20	30	2016-06-13 16:34:43.101075+00	2014
1808	112.20	84.70	4803	2	297	20	30	2016-06-13 16:34:43.109439+00	2014
1809	129.70	113.50	4802	2	539	20	30	2016-06-13 16:34:43.321396+00	2014
1810	129.10	113.20	4801	2	404	10	15	2016-06-13 16:34:43.334445+00	2014
1811	161.10	147.40	4800	2	416	5	15	2016-06-13 16:34:43.342744+00	2014
1812	199.30	179.60	4799	2	253	5	25	2016-06-13 16:34:43.351126+00	2014
1813	148.60	124.00	4798	2	309	15	25	2016-06-13 16:34:43.359461+00	2014
1814	151.10	117.50	4797	2	300	15	25	2016-06-13 16:34:43.367845+00	2014
1815	136.90	110.40	4796	2	390	10	30	2016-06-13 16:34:43.376138+00	2014
1816	124.60	90.00	4804	2	705	20	50	2016-06-13 16:34:43.384478+00	2014
1817	98.20	82.00	4805	2	696	15	35	2016-06-13 16:34:43.392798+00	2014
1818	109.70	83.00	4813	2	807	20	40	2016-06-13 16:34:43.401141+00	2014
1819	116.70	92.80	4812	2	166	15	25	2016-06-13 16:34:43.40946+00	2014
1820	135.30	117.70	4811	2	339	15	25	2016-06-13 16:34:43.417784+00	2014
1821	114.80	88.90	4810	2	185	15	25	2016-06-13 16:34:43.426126+00	2014
1822	130.50	102.30	4809	2	393	10	30	2016-06-13 16:34:43.434456+00	2014
1823	168.20	158.00	4808	2	204	10	15	2016-06-13 16:34:43.442853+00	2014
1824	180.80	156.70	4807	2	324	20	30	2016-06-13 16:34:43.4512+00	2014
1825	122.50	89.10	4806	2	236	15	20	2016-06-13 16:34:43.45953+00	2014
1826	154.50	134.70	5055	1	100	4	6	2016-06-13 16:34:43.46857+00	2014
1827	173.90	154.20	5055	2	406	6	9	2016-06-13 16:34:43.476183+00	2014
1828	183.30	157.40	5054	1	334	16	24	2016-06-13 16:34:43.484523+00	2014
1829	201.70	175.10	5054	2	1943	49	71	2016-06-13 16:34:43.492834+00	2014
1830	168.10	149.30	5053	1	243	10	15	2016-06-13 16:34:43.501176+00	2014
1831	189.30	169.50	5053	2	1747	35	80	2016-06-13 16:34:43.509508+00	2014
1832	189.70	155.70	5052	1	190	4	6	2016-06-13 16:34:43.517838+00	2014
1833	185.70	165.70	5052	2	546	6	9	2016-06-13 16:34:43.526156+00	2014
1834	132.90	116.70	5051	1	30	4	4	2016-06-13 16:34:43.534506+00	2014
1835	149.90	121.90	5051	2	566	16	26	2016-06-13 16:34:43.54436+00	2014
1836	128.80	111.40	5292	1	66	6	14	2016-06-13 16:34:43.553597+00	2014
1837	153.10	127.10	5292	2	711	24	56	2016-06-13 16:34:43.560855+00	2014
1838	132.90	110.80	5293	1	40	3	7	2016-06-13 16:34:43.568996+00	2014
1839	141.40	121.40	5293	2	160	7	13	2016-06-13 16:34:43.576571+00	2014
1840	125.50	106.50	5294	1	48	3	12	2016-06-13 16:34:43.584523+00	2014
1841	141.30	120.90	5294	2	460	12	33	2016-06-13 16:34:43.592901+00	2014
1842	132.30	99.50	5295	1	26	3	4	2016-06-13 16:34:43.601238+00	2014
1843	123.80	100.50	5295	2	363	7	11	2016-06-13 16:34:43.609526+00	2014
1844	101.50	\N	4636	1	40	15	0	2016-06-13 16:34:43.62027+00	2014
1845	160.30	\N	4636	2	616	60	0	2016-06-13 16:34:43.626239+00	2014
1846	121.90	102.70	5399	5	185	10	15	2016-06-13 16:34:43.635286+00	2014
1847	110.10	89.70	5400	5	162	10	15	2016-06-13 16:34:43.6428+00	2014
1848	171.80	154.70	4925	1	98	5	10	2016-06-13 16:34:43.651238+00	2014
1849	176.70	165.40	4925	5	270	22	24	2016-06-13 16:34:43.659527+00	2014
1850	171.70	149.40	4925	2	177	10	15	2016-06-13 16:34:43.667966+00	2014
1851	157.80	130.50	5401	5	167	5	20	2016-06-13 16:34:43.676274+00	2014
1852	149.60	127.70	4926	2	135	5	10	2016-06-13 16:34:43.684604+00	2014
1853	174.80	137.00	4926	5	220	15	15	2016-06-13 16:34:43.692948+00	2014
1854	137.00	124.40	5402	5	96	10	15	2016-06-13 16:34:43.701346+00	2014
1855	154.10	132.90	4927	2	460	30	45	2016-06-13 16:34:43.709697+00	2014
1856	139.70	110.30	5403	1	214	15	25	2016-06-13 16:34:43.717889+00	2014
1857	152.60	132.70	5404	5	390	30	45	2016-06-13 16:34:43.726353+00	2014
1858	162.40	116.20	4928	2	35	2	5	2016-06-13 16:34:43.734689+00	2014
1859	190.20	147.80	4928	5	58	3	12	2016-06-13 16:34:43.742987+00	2014
1860	130.80	97.50	5405	5	74	5	17	2016-06-13 16:34:43.751333+00	2014
1861	159.40	117.60	5406	6	48	5	15	2016-06-13 16:34:43.759647+00	2014
1862	158.40	100.10	5407	3	33	8	12	2016-06-13 16:34:43.767962+00	2014
1863	170.50	149.50	5408	5	88	5	15	2016-06-13 16:34:43.776328+00	2014
1864	174.70	159.90	4929	2	210	5	10	2016-06-13 16:34:43.784661+00	2014
1865	173.70	141.00	4929	5	198	5	20	2016-06-13 16:34:43.792999+00	2014
1866	130.20	113.40	5409	5	112	5	15	2016-06-13 16:34:43.801295+00	2014
1867	162.60	125.40	4930	5	110	10	20	2016-06-13 16:34:43.809634+00	2014
1868	164.60	125.80	4930	2	76	5	15	2016-06-13 16:34:43.817952+00	2014
1869	144.70	115.80	4931	2	66	5	10	2016-06-13 16:34:43.826318+00	2014
1870	175.40	129.10	4931	5	76	5	10	2016-06-13 16:34:43.83472+00	2014
1871	154.30	115.60	4932	2	139	5	8	2016-06-13 16:34:43.843042+00	2014
1872	163.70	132.60	4932	5	272	8	11	2016-06-13 16:34:43.851365+00	2014
1873	123.80	86.80	4932	1	41	2	6	2016-06-13 16:34:43.859713+00	2014
1874	130.50	92.90	4937	5	156	10	25	2016-06-13 16:34:43.868038+00	2014
1875	133.20	98.10	4937	2	67	5	10	2016-06-13 16:34:43.876373+00	2014
1876	119.50	78.40	4936	2	77	5	10	2016-06-13 16:34:43.884709+00	2014
1877	111.00	85.20	4936	5	140	10	25	2016-06-13 16:34:43.893045+00	2014
1878	139.50	104.60	4935	2	106	5	10	2016-06-13 16:34:43.901355+00	2014
1879	111.10	86.20	4935	5	156	5	20	2016-06-13 16:34:43.909691+00	2014
1880	113.60	79.40	5410	5	120	5	15	2016-06-13 16:34:43.918025+00	2014
1881	140.00	103.30	5411	5	148	5	20	2016-06-13 16:34:43.926362+00	2014
1882	190.80	161.30	5412	5	83	5	15	2016-06-13 16:34:43.934674+00	2014
1883	169.90	153.30	4934	2	132	2	15	2016-06-13 16:34:43.943036+00	2014
1884	165.70	129.50	4934	5	128	3	20	2016-06-13 16:34:43.951395+00	2014
1885	187.80	133.70	4933	2	114	2	15	2016-06-13 16:34:43.959709+00	2014
1886	172.30	139.30	4933	5	125	3	20	2016-06-13 16:34:43.968032+00	2014
1887	174.70	148.00	4924	5	115	3	20	2016-06-13 16:34:43.976288+00	2014
1888	188.00	144.20	4924	2	128	2	15	2016-06-13 16:34:43.984754+00	2014
1889	189.10	160.30	4923	5	162	3	10	2016-06-13 16:34:43.993083+00	2014
1890	200.60	182.10	4923	2	123	2	5	2016-06-13 16:34:44.001403+00	2014
1891	140.00	101.90	4914	2	136	10	15	2016-06-13 16:34:44.009739+00	2014
1892	137.10	111.40	4914	5	338	20	30	2016-06-13 16:34:44.01804+00	2014
1893	105.90	83.80	4913	2	88	5	10	2016-06-13 16:34:44.026395+00	2014
1894	113.00	86.50	4913	5	205	15	20	2016-06-13 16:34:44.034738+00	2014
1895	121.40	91.10	4912	5	211	10	20	2016-06-13 16:34:44.04306+00	2014
1896	128.00	91.50	4912	2	120	5	15	2016-06-13 16:34:44.051415+00	2014
1897	135.00	108.60	4911	2	153	10	20	2016-06-13 16:34:44.05974+00	2014
1898	144.50	107.60	4911	5	272	15	30	2016-06-13 16:34:44.068061+00	2014
1899	111.50	73.30	4910	2	148	10	15	2016-06-13 16:34:44.076405+00	2014
1900	117.20	84.40	4910	5	210	15	20	2016-06-13 16:34:44.084699+00	2014
1901	119.20	90.20	4915	2	140	10	15	2016-06-13 16:34:44.093071+00	2014
1902	117.50	97.40	4915	5	408	25	30	2016-06-13 16:34:44.101453+00	2014
1903	133.40	95.40	4916	2	252	15	20	2016-06-13 16:34:44.1097+00	2014
1904	137.80	98.90	4916	5	453	30	35	2016-06-13 16:34:44.118127+00	2014
1905	144.30	112.60	4917	2	78	5	10	2016-06-13 16:34:44.126471+00	2014
1906	151.00	119.70	4917	5	140	5	20	2016-06-13 16:34:44.134797+00	2014
1907	112.60	84.20	4918	2	90	5	10	2016-06-13 16:34:44.14313+00	2014
1908	120.00	97.00	4918	5	340	25	30	2016-06-13 16:34:44.151463+00	2014
1909	127.70	94.20	5413	5	191	10	20	2016-06-13 16:34:44.159781+00	2014
1910	132.80	97.90	4919	2	167	10	15	2016-06-13 16:34:44.168125+00	2014
1911	106.50	87.00	4919	5	210	15	20	2016-06-13 16:34:44.176452+00	2014
1912	92.20	78.40	4920	2	97	5	10	2016-06-13 16:34:44.184782+00	2014
1913	120.00	97.70	4920	5	307	20	25	2016-06-13 16:34:44.193116+00	2014
1914	138.90	120.80	4921	2	133	5	10	2016-06-13 16:34:44.201423+00	2014
1915	135.20	106.40	4921	5	302	15	20	2016-06-13 16:34:44.209775+00	2014
1916	87.30	74.70	4922	2	123	5	10	2016-06-13 16:34:44.218617+00	2014
1917	85.60	75.80	4922	5	182	10	15	2016-06-13 16:34:44.226541+00	2014
1918	144.30	121.40	4417	2	252	5	15	2016-06-13 16:34:44.235538+00	2014
1919	115.20	86.70	4418	2	139	5	15	2016-06-13 16:34:44.243117+00	2014
1920	152.90	127.50	4419	2	162	5	15	2016-06-13 16:34:44.251416+00	2014
1921	173.70	132.60	4420	2	155	5	15	2016-06-13 16:34:44.259847+00	2014
1922	114.30	88.40	4421	2	134	5	15	2016-06-13 16:34:44.268155+00	2014
1923	126.70	96.60	4422	2	236	5	15	2016-06-13 16:34:44.276467+00	2014
1924	129.10	97.50	4416	2	184	10	20	2016-06-13 16:34:44.284826+00	2014
1925	163.80	118.60	4415	1	74	3	15	2016-06-13 16:34:44.293176+00	2014
1926	187.70	153.60	4415	2	282	7	25	2016-06-13 16:34:44.301494+00	2014
1927	106.80	75.70	4409	1	82	10	20	2016-06-13 16:34:44.309824+00	2014
1928	130.50	94.00	4409	2	600	45	60	2016-06-13 16:34:44.318161+00	2014
1929	105.00	78.60	4410	2	688	65	55	2016-06-13 16:34:44.326497+00	2014
1930	80.80	71.60	4410	1	84	10	20	2016-06-13 16:34:44.334838+00	2014
1931	136.50	105.70	4411	2	1021	70	80	2016-06-13 16:34:44.343164+00	2014
1932	112.50	77.30	4411	1	138	15	25	2016-06-13 16:34:44.351493+00	2014
1933	107.80	83.60	4412	1	112	15	25	2016-06-13 16:34:44.35983+00	2014
1934	129.10	100.70	4412	2	1114	80	90	2016-06-13 16:34:44.368203+00	2014
1935	124.30	96.80	4413	2	1559	70	100	2016-06-13 16:34:44.376527+00	2014
1936	116.30	79.10	4413	1	100	10	20	2016-06-13 16:34:44.38487+00	2014
1937	118.90	89.60	4414	1	79	10	15	2016-06-13 16:34:44.393202+00	2014
1938	143.80	114.90	4414	2	739	40	85	2016-06-13 16:34:44.4015+00	2014
1939	174.90	143.30	4484	2	201	5	20	2016-06-13 16:34:44.410538+00	2014
1940	146.10	126.00	4485	2	1041	10	40	2016-06-13 16:34:44.418136+00	2014
1941	170.70	144.80	4486	2	314	5	15	2016-06-13 16:34:44.42654+00	2014
1942	204.00	180.90	4487	2	271	5	15	2016-06-13 16:34:44.434873+00	2014
1943	154.60	128.80	5329	1	465	15	25	2016-06-13 16:34:44.443209+00	2014
1944	178.40	145.10	4488	2	816	32	54	2016-06-13 16:34:44.451529+00	2014
1945	176.10	145.20	4488	1	142	5	15	2016-06-13 16:34:44.459829+00	2014
1946	185.60	161.60	4489	2	485	10	15	2016-06-13 16:34:44.468187+00	2014
1947	112.60	90.50	4490	1	64	2	8	2016-06-13 16:34:44.476533+00	2014
1948	153.10	125.20	4490	2	1190	13	57	2016-06-13 16:34:44.484878+00	2014
1949	137.80	115.60	4491	2	673	10	15	2016-06-13 16:34:44.493228+00	2014
1950	194.90	170.40	4492	2	299	8	22	2016-06-13 16:34:44.501562+00	2014
1951	\N	126.10	4492	1	65	2	8	2016-06-13 16:34:44.509888+00	2014
1952	191.20	169.30	4493	2	820	15	35	2016-06-13 16:34:44.518249+00	2014
1953	161.50	129.10	4494	2	110	4	8	2016-06-13 16:34:44.52659+00	2014
1954	169.70	143.30	4483	2	110	4	8	2016-06-13 16:34:44.534927+00	2014
1955	186.60	158.60	4482	1	95	2	8	2016-06-13 16:34:44.54325+00	2014
1956	197.60	170.00	4482	2	669	13	27	2016-06-13 16:34:44.551566+00	2014
1957	134.10	101.40	4471	1	59	2	8	2016-06-13 16:34:44.559929+00	2014
1958	165.80	138.40	4471	2	440	28	32	2016-06-13 16:34:44.568234+00	2014
1959	165.30	131.90	4472	2	253	10	15	2016-06-13 16:34:44.576567+00	2014
1960	170.20	140.20	4473	2	929	13	37	2016-06-13 16:34:44.584898+00	2014
1961	180.10	105.40	4473	1	74	2	8	2016-06-13 16:34:44.593235+00	2014
1962	164.00	133.60	4474	2	418	13	37	2016-06-13 16:34:44.601544+00	2014
1963	104.80	78.50	4474	1	82	2	8	2016-06-13 16:34:44.609826+00	2014
1964	112.20	87.10	4475	1	69	2	8	2016-06-13 16:34:44.618223+00	2014
1965	127.40	95.70	4475	2	482	13	47	2016-06-13 16:34:44.626614+00	2014
1966	151.40	132.00	4476	2	438	10	15	2016-06-13 16:34:44.634962+00	2014
1967	180.00	148.40	4477	2	497	5	20	2016-06-13 16:34:44.643289+00	2014
1968	196.80	183.30	4478	2	223	5	15	2016-06-13 16:34:44.651585+00	2014
1969	134.80	121.70	4479	1	33	1	9	2016-06-13 16:34:44.659855+00	2014
1970	169.00	151.00	4479	2	277	4	16	2016-06-13 16:34:44.668265+00	2014
1971	119.50	85.70	4480	2	361	5	15	2016-06-13 16:34:44.676612+00	2014
1972	131.20	103.00	4481	2	278	5	15	2016-06-13 16:34:44.68494+00	2014
1973	149.60	115.90	5300	5	149	13	17	2016-06-13 16:34:44.693948+00	2014
1974	149.00	117.10	5300	1	108	9	11	2016-06-13 16:34:44.701568+00	2014
1975	152.00	124.70	5300	2	160	13	17	2016-06-13 16:34:44.709943+00	2014
1976	138.20	103.70	5301	5	77	4	8	2016-06-13 16:34:44.718276+00	2014
1977	156.80	122.30	5301	1	38	2	4	2016-06-13 16:34:44.726607+00	2014
1978	125.20	91.20	5301	2	63	4	8	2016-06-13 16:34:44.734967+00	2014
1979	135.70	104.20	5302	5	61	4	8	2016-06-13 16:34:44.743314+00	2014
1980	141.00	107.10	5302	1	34	2	4	2016-06-13 16:34:44.751621+00	2014
1981	121.40	94.50	5302	2	57	4	8	2016-06-13 16:34:44.75996+00	2014
1982	120.10	96.00	5303	5	60	4	6	2016-06-13 16:34:44.768273+00	2014
1983	133.00	116.00	5303	1	28	2	3	2016-06-13 16:34:44.776658+00	2014
1984	119.10	92.90	5303	2	54	4	6	2016-06-13 16:34:44.784983+00	2014
1985	137.20	120.40	4722	2	645	7	13	2016-06-13 16:34:44.794057+00	2014
1986	135.40	111.10	4722	1	65	3	7	2016-06-13 16:34:44.801659+00	2014
1987	123.80	85.10	4723	2	282	5	10	2016-06-13 16:34:44.810019+00	2014
1988	157.00	108.50	4724	1	30	2	13	2016-06-13 16:34:44.81901+00	2014
1989	\N	122.90	4724	2	105	3	22	2016-06-13 16:34:44.82673+00	2014
1990	188.40	165.00	4725	2	278	3	10	2016-06-13 16:34:44.835124+00	2014
1991	182.00	162.20	4725	1	80	2	5	2016-06-13 16:34:44.843359+00	2014
1992	180.80	169.60	4726	1	45	2	5	2016-06-13 16:34:44.851723+00	2014
1993	192.40	173.60	4726	2	335	3	10	2016-06-13 16:34:44.860018+00	2014
1994	135.70	109.20	4721	1	76	5	10	2016-06-13 16:34:44.868383+00	2014
1995	174.20	147.60	4721	2	279	15	20	2016-06-13 16:34:44.876711+00	2014
1996	115.20	96.80	4720	1	127	15	25	2016-06-13 16:34:44.885102+00	2014
1997	151.10	130.90	4720	2	720	40	45	2016-06-13 16:34:44.893428+00	2014
1998	118.10	95.60	4715	1	89	10	20	2016-06-13 16:34:44.901724+00	2014
1999	135.80	112.50	4715	2	569	25	35	2016-06-13 16:34:44.910082+00	2014
2000	99.10	81.60	4716	1	77	5	10	2016-06-13 16:34:44.918411+00	2014
2001	126.40	101.90	4716	2	439	10	25	2016-06-13 16:34:44.926759+00	2014
2002	122.70	94.60	4717	1	410	40	45	2016-06-13 16:34:44.935098+00	2014
2003	139.50	109.20	4717	2	2354	80	160	2016-06-13 16:34:44.943425+00	2014
2004	154.10	134.00	4718	2	389	23	27	2016-06-13 16:34:44.951729+00	2014
2005	134.40	105.80	4718	1	79	7	13	2016-06-13 16:34:44.960063+00	2014
2006	138.90	129.40	4719	1	62	2	10	2016-06-13 16:34:44.968419+00	2014
2007	141.50	123.70	4719	2	310	3	25	2016-06-13 16:34:44.976725+00	2014
2008	137.40	118.70	5165	2	118	2	8	2016-06-13 16:34:44.985829+00	2014
2009	156.40	132.80	5166	2	104	3	7	2016-06-13 16:34:44.993449+00	2014
2010	136.50	111.90	5167	2	195	10	15	2016-06-13 16:34:45.001789+00	2014
2011	185.20	163.80	5168	1	59	1	5	2016-06-13 16:34:45.010132+00	2014
2012	172.90	159.40	5168	2	173	4	10	2016-06-13 16:34:45.018455+00	2014
2013	182.80	171.40	5169	2	182	9	5	2016-06-13 16:34:45.026805+00	2014
2014	167.40	145.60	5169	1	56	1	5	2016-06-13 16:34:45.035135+00	2014
2015	180.20	159.40	5170	2	190	4	10	2016-06-13 16:34:45.043491+00	2014
2016	168.70	155.20	5170	1	59	1	5	2016-06-13 16:34:45.051803+00	2014
2017	99.90	82.40	5171	1	72	3	10	2016-06-13 16:34:45.060124+00	2014
2018	146.90	124.20	5171	2	332	17	25	2016-06-13 16:34:45.068477+00	2014
2019	131.40	108.80	5164	1	65	5	10	2016-06-13 16:34:45.076824+00	2014
2020	140.00	115.80	5164	2	431	15	45	2016-06-13 16:34:45.085184+00	2014
2021	153.60	128.10	5163	2	364	16	39	2016-06-13 16:34:45.093508+00	2014
2022	127.60	108.00	5162	1	65	3	7	2016-06-13 16:34:45.101794+00	2014
2023	136.80	112.90	5162	2	334	17	33	2016-06-13 16:34:45.110142+00	2014
2024	137.40	104.30	5155	1	75	3	10	2016-06-13 16:34:45.118499+00	2014
2025	155.80	131.60	5155	2	613	27	50	2016-06-13 16:34:45.126848+00	2014
2026	127.50	100.70	5156	1	50	3	7	2016-06-13 16:34:45.13517+00	2014
2027	126.40	106.90	5156	2	331	17	23	2016-06-13 16:34:45.160651+00	2014
2028	119.60	95.10	5157	1	152	10	15	2016-06-13 16:34:45.176862+00	2014
2029	138.80	111.90	5157	2	2294	100	215	2016-06-13 16:34:45.185182+00	2014
2030	132.20	106.80	5158	2	1040	45	130	2016-06-13 16:34:45.19351+00	2014
2031	128.30	96.70	5158	1	87	5	10	2016-06-13 16:34:45.201835+00	2014
2032	137.50	115.30	5159	2	548	25	50	2016-06-13 16:34:45.21017+00	2014
2033	147.10	124.50	5159	1	71	5	10	2016-06-13 16:34:45.220392+00	2014
2034	110.90	81.40	5160	1	82	5	10	2016-06-13 16:34:45.228007+00	2014
2035	120.90	91.70	5160	2	336	10	25	2016-06-13 16:34:45.235223+00	2014
2036	149.60	115.50	5161	2	248	10	15	2016-06-13 16:34:45.24355+00	2014
2037	179.80	155.40	5145	2	393	10	15	2016-06-13 16:34:45.252536+00	2014
2038	127.30	100.10	5146	2	431	10	15	2016-06-13 16:34:45.260286+00	2014
2039	175.40	151.60	5147	2	356	10	20	2016-06-13 16:34:45.268581+00	2014
2040	175.00	133.20	5148	2	213	5	15	2016-06-13 16:34:45.276896+00	2014
2041	188.70	165.30	5149	2	420	5	25	2016-06-13 16:34:45.285227+00	2014
2042	196.60	165.10	5150	2	383	5	25	2016-06-13 16:34:45.293562+00	2014
2043	129.20	104.10	5151	1	127	10	15	2016-06-13 16:34:45.301881+00	2014
2044	132.20	105.40	5151	2	997	60	75	2016-06-13 16:34:45.31022+00	2014
2045	124.30	98.40	5152	1	133	10	15	2016-06-13 16:34:45.31856+00	2014
2046	142.20	115.40	5152	2	977	60	75	2016-06-13 16:34:45.326907+00	2014
2047	142.20	119.50	5153	2	695	40	50	2016-06-13 16:34:45.335239+00	2014
2048	135.30	102.40	5154	2	607	35	50	2016-06-13 16:34:45.343547+00	2014
2049	129.00	98.30	5144	2	675	20	40	2016-06-13 16:34:45.351884+00	2014
2050	112.50	78.00	5143	2	291	20	30	2016-06-13 16:34:45.360222+00	2014
2051	131.30	101.40	5133	1	102	10	15	2016-06-13 16:34:45.368594+00	2014
2052	152.60	124.00	5133	2	690	60	65	2016-06-13 16:34:45.376938+00	2014
2053	156.30	131.00	5134	2	1863	85	135	2016-06-13 16:34:45.385266+00	2014
2054	133.00	107.10	5134	1	118	10	20	2016-06-13 16:34:45.393585+00	2014
2055	149.90	125.80	5135	2	809	60	65	2016-06-13 16:34:45.401928+00	2014
2056	127.70	108.10	5135	1	113	10	15	2016-06-13 16:34:45.410234+00	2014
2057	119.80	92.40	5136	1	158	10	15	2016-06-13 16:34:45.41902+00	2014
2058	141.20	120.70	5136	2	1932	65	70	2016-06-13 16:34:45.427102+00	2014
2059	109.20	84.20	5137	2	1717	65	85	2016-06-13 16:34:45.435294+00	2014
2060	143.60	109.90	5138	2	648	25	45	2016-06-13 16:34:45.443614+00	2014
2061	115.50	84.30	5139	2	356	10	20	2016-06-13 16:34:45.451927+00	2014
2062	137.10	109.90	5140	1	146	5	15	2016-06-13 16:34:45.460264+00	2014
2063	120.30	99.90	5140	2	556	25	25	2016-06-13 16:34:45.468572+00	2014
2064	136.10	95.60	5141	2	254	5	15	2016-06-13 16:34:45.47693+00	2014
2065	99.00	80.90	5142	2	403	5	15	2016-06-13 16:34:45.485271+00	2014
2066	113.20	73.70	5316	5	55	3	15	2016-06-13 16:34:45.494352+00	2014
2067	80.00	71.80	5316	2	20	2	5	2016-06-13 16:34:45.501937+00	2014
2068	146.60	86.80	5317	5	66	3	15	2016-06-13 16:34:45.510275+00	2014
2069	96.10	83.40	5317	2	36	2	5	2016-06-13 16:34:45.518663+00	2014
2070	103.10	78.10	5318	5	106	3	15	2016-06-13 16:34:45.526984+00	2014
2071	82.90	75.00	5318	2	48	2	5	2016-06-13 16:34:45.535314+00	2014
2072	101.20	74.40	5319	5	95	3	15	2016-06-13 16:34:45.543655+00	2014
2073	109.80	84.00	5319	2	34	2	5	2016-06-13 16:34:45.551965+00	2014
2074	184.60	157.70	4953	5	238	15	23	2016-06-13 16:34:45.561036+00	2014
2075	177.60	142.00	4953	1	71	6	9	2016-06-13 16:34:45.568639+00	2014
2076	171.20	152.80	4953	2	213	9	13	2016-06-13 16:34:45.576976+00	2014
2077	170.20	145.70	4952	5	144	8	23	2016-06-13 16:34:45.585309+00	2014
2078	130.50	100.40	4952	1	44	3	9	2016-06-13 16:34:45.59363+00	2014
2079	149.60	138.20	4952	2	126	4	13	2016-06-13 16:34:45.601951+00	2014
2080	164.40	130.00	4951	5	196	10	15	2016-06-13 16:34:45.610251+00	2014
2081	138.50	98.20	4951	1	18	4	6	2016-06-13 16:34:45.61861+00	2014
2082	149.20	136.90	4951	2	151	6	9	2016-06-13 16:34:45.627029+00	2014
2083	173.40	149.30	4950	5	210	7	17	2016-06-13 16:34:45.635373+00	2014
2084	172.50	149.40	4950	2	117	3	8	2016-06-13 16:34:45.64369+00	2014
2085	158.70	123.30	4949	5	171	10	17	2016-06-13 16:34:45.652029+00	2014
2086	114.90	76.20	4949	2	63	5	8	2016-06-13 16:34:45.660332+00	2014
2087	142.50	116.30	4985	5	218	20	40	2016-06-13 16:34:45.669329+00	2014
2088	89.10	74.30	4985	1	46	5	10	2016-06-13 16:34:45.676979+00	2014
2089	147.30	119.50	4985	2	147	10	25	2016-06-13 16:34:45.685337+00	2014
2090	\N	\N	4985	6	17	5	10	2016-06-13 16:34:45.693623+00	2014
2091	133.10	96.10	4986	2	111	10	10	2016-06-13 16:34:45.70198+00	2014
2092	113.10	83.50	4986	5	152	15	25	2016-06-13 16:34:45.710337+00	2014
2093	\N	\N	4986	6	16	5	10	2016-06-13 16:34:45.718579+00	2014
2094	92.30	75.20	4987	2	96	5	15	2016-06-13 16:34:45.726983+00	2014
2095	\N	\N	4987	6	15	5	5	2016-06-13 16:34:45.735327+00	2014
2096	100.40	77.00	4987	5	159	10	30	2016-06-13 16:34:45.743684+00	2014
2097	138.00	122.00	4988	2	231	5	15	2016-06-13 16:34:45.751998+00	2014
2098	150.10	125.60	4988	5	311	10	25	2016-06-13 16:34:45.76036+00	2014
2099	110.10	88.30	4989	2	159	5	15	2016-06-13 16:34:45.768719+00	2014
2100	108.10	84.20	4989	5	248	15	25	2016-06-13 16:34:45.777066+00	2014
2101	157.40	129.70	4990	5	251	15	25	2016-06-13 16:34:45.785371+00	2014
2102	164.60	142.40	4990	2	228	5	15	2016-06-13 16:34:45.793704+00	2014
2103	132.10	84.00	4991	5	169	5	25	2016-06-13 16:34:45.802053+00	2014
2104	127.60	96.30	4991	2	133	5	15	2016-06-13 16:34:45.810344+00	2014
2105	118.70	108.80	4984	2	63	5	5	2016-06-13 16:34:45.818727+00	2014
2106	128.60	114.80	4984	5	107	5	15	2016-06-13 16:34:45.828211+00	2014
2107	161.50	120.30	4983	5	411	15	35	2016-06-13 16:34:45.836033+00	2014
2108	130.80	112.90	4983	2	366	10	20	2016-06-13 16:34:45.844341+00	2014
2109	171.30	137.30	5351	5	125	5	25	2016-06-13 16:34:45.852613+00	2014
2110	143.10	126.50	4976	2	552	35	45	2016-06-13 16:34:45.860877+00	2014
2111	106.80	93.10	5352	1	134	10	15	2016-06-13 16:34:45.869135+00	2014
2112	147.90	130.30	5353	5	416	30	55	2016-06-13 16:34:45.877477+00	2014
2113	148.70	110.10	5354	6	53	10	15	2016-06-13 16:34:45.885797+00	2014
2114	119.50	108.90	5355	1	169	5	10	2016-06-13 16:34:45.894183+00	2014
2115	100.90	79.50	5418	1	131	15	20	2016-06-13 16:34:45.918085+00	2014
2116	172.80	149.00	4977	5	296	15	50	2016-06-13 16:34:45.927185+00	2014
2117	169.50	151.50	4977	2	319	10	30	2016-06-13 16:34:45.935494+00	2014
2118	162.60	138.00	4977	1	84	5	10	2016-06-13 16:34:45.943825+00	2014
2119	150.40	135.90	4978	2	116	5	10	2016-06-13 16:34:45.952134+00	2014
2120	148.80	124.40	4978	5	199	10	15	2016-06-13 16:34:45.960534+00	2014
2121	139.70	122.60	4979	2	382	10	15	2016-06-13 16:34:45.968876+00	2014
2122	87.50	77.70	4979	1	69	5	10	2016-06-13 16:34:45.977204+00	2014
2123	151.00	129.20	4979	5	389	20	35	2016-06-13 16:34:45.985536+00	2014
2124	124.30	105.80	5419	6	31	5	10	2016-06-13 16:34:46.001321+00	2014
2125	146.70	127.20	5420	5	263	5	15	2016-06-13 16:34:46.018206+00	2014
2126	166.90	140.90	4980	5	308	10	25	2016-06-13 16:34:46.027754+00	2014
2127	\N	\N	4980	6	40	5	10	2016-06-13 16:34:46.035749+00	2014
2128	156.50	127.60	4980	2	211	5	15	2016-06-13 16:34:46.043963+00	2014
2129	150.40	129.40	4981	2	65	5	5	2016-06-13 16:34:46.052301+00	2014
2130	150.10	131.20	4981	5	95	5	15	2016-06-13 16:34:46.060628+00	2014
2131	101.20	80.90	4982	2	215	5	20	2016-06-13 16:34:46.068979+00	2014
2132	116.20	81.90	4982	5	291	15	30	2016-06-13 16:34:46.077303+00	2014
2133	185.80	168.30	5279	2	159	5	15	2016-06-13 16:34:46.086317+00	2014
2134	184.40	159.90	5278	2	224	5	15	2016-06-13 16:34:46.093958+00	2014
2135	206.30	194.50	5277	1	58	2	8	2016-06-13 16:34:46.10232+00	2014
2136	207.80	187.10	5277	2	365	8	32	2016-06-13 16:34:46.11057+00	2014
2137	205.80	187.50	5276	1	69	1	9	2016-06-13 16:34:46.119019+00	2014
2138	183.70	146.20	5276	2	242	4	36	2016-06-13 16:34:46.127355+00	2014
2139	192.00	173.40	5275	1	36	1	9	2016-06-13 16:34:46.135694+00	2014
2140	194.90	167.20	5275	2	270	4	36	2016-06-13 16:34:46.144019+00	2014
2141	196.50	187.40	5274	1	85	1	9	2016-06-13 16:34:46.152329+00	2014
2142	213.80	197.60	5274	2	436	4	36	2016-06-13 16:34:46.160681+00	2014
2143	206.80	198.80	5273	2	252	5	20	2016-06-13 16:34:46.16901+00	2014
2144	197.90	177.70	5272	1	43	2	8	2016-06-13 16:34:46.17734+00	2014
2145	209.40	172.40	5272	2	320	8	32	2016-06-13 16:34:46.185669+00	2014
2146	171.50	148.30	5271	2	319	8	32	2016-06-13 16:34:46.194001+00	2014
2147	173.10	155.70	5271	1	38	2	8	2016-06-13 16:34:46.202331+00	2014
2148	173.10	147.10	5270	2	344	8	42	2016-06-13 16:34:46.210681+00	2014
2149	186.20	160.90	5270	1	38	2	8	2016-06-13 16:34:46.219066+00	2014
2150	136.10	108.80	5269	1	39	2	8	2016-06-13 16:34:46.227407+00	2014
2151	182.60	156.10	5269	2	316	8	32	2016-06-13 16:34:46.235738+00	2014
2152	206.00	173.30	5268	1	477	9	51	2016-06-13 16:34:46.244713+00	2014
2153	222.10	194.10	5268	2	4405	51	339	2016-06-13 16:34:46.252294+00	2014
2154	181.90	140.90	5064	1	72	2	8	2016-06-13 16:34:46.261303+00	2014
2155	205.60	178.50	5064	2	373	8	32	2016-06-13 16:34:46.269163+00	2014
2156	188.50	168.60	5063	1	105	6	14	2016-06-13 16:34:46.277394+00	2014
2157	209.90	193.20	5063	2	964	44	86	2016-06-13 16:34:46.285719+00	2014
2158	194.40	165.30	5062	1	117	5	12	2016-06-13 16:34:46.294107+00	2014
2159	203.50	181.70	5062	2	915	35	88	2016-06-13 16:34:46.302437+00	2014
2160	200.00	192.10	5061	1	86	2	8	2016-06-13 16:34:46.310779+00	2014
2161	204.90	192.20	5061	2	385	8	22	2016-06-13 16:34:46.319116+00	2014
2162	151.00	108.50	5060	1	28	2	8	2016-06-13 16:34:46.327406+00	2014
2163	166.90	140.10	5060	2	429	13	37	2016-06-13 16:34:46.335774+00	2014
2164	133.90	105.20	4524	2	236	10	15	2016-06-13 16:34:46.34483+00	2014
2165	180.70	159.30	4523	2	382	5	20	2016-06-13 16:34:46.352574+00	2014
2166	168.60	140.60	4522	2	228	5	15	2016-06-13 16:34:46.360874+00	2014
2167	121.50	82.80	4521	2	248	10	20	2016-06-13 16:34:46.369215+00	2014
2168	108.30	83.60	4520	1	124	3	9	2016-06-13 16:34:46.377541+00	2014
2169	135.60	88.00	4520	2	250	12	16	2016-06-13 16:34:46.385864+00	2014
2170	117.80	92.60	4519	2	1083	45	65	2016-06-13 16:34:46.394199+00	2014
2171	106.70	82.60	4518	2	445	20	30	2016-06-13 16:34:46.402502+00	2014
2172	99.00	79.60	4517	2	245	10	15	2016-06-13 16:34:46.412452+00	2014
2173	108.10	83.80	4516	2	1576	70	120	2016-06-13 16:34:46.420439+00	2014
2174	98.10	80.50	4515	2	678	30	50	2016-06-13 16:34:46.428561+00	2014
2175	127.40	96.50	4514	2	653	15	55	2016-06-13 16:34:46.436917+00	2014
2176	131.50	104.80	4660	1	10	2	4	2016-06-13 16:34:46.446137+00	2014
2177	135.20	111.60	4660	2	32	3	6	2016-06-13 16:34:46.452596+00	2014
2178	133.60	113.80	4661	1	28	7	15	2016-06-13 16:34:46.46091+00	2014
2179	121.00	107.90	4661	2	68	13	15	2016-06-13 16:34:46.469254+00	2014
2180	137.90	104.90	4782	2	745	10	30	2016-06-13 16:34:46.478261+00	2014
2181	120.50	100.20	4783	2	223	10	40	2016-06-13 16:34:46.485897+00	2014
2182	136.40	117.00	4784	2	883	15	25	2016-06-13 16:34:46.494213+00	2014
2183	100.60	83.30	4785	2	527	10	10	2016-06-13 16:34:46.502525+00	2014
2184	103.90	94.50	4786	2	537	10	10	2016-06-13 16:34:46.510886+00	2014
2185	133.80	111.80	4787	2	191	5	35	2016-06-13 16:34:46.519217+00	2014
2186	133.60	110.30	5390	1	1151	20	30	2016-06-13 16:34:46.527541+00	2014
2187	175.50	158.70	4788	2	1157	32	64	2016-06-13 16:34:46.535921+00	2014
2188	146.00	130.80	4788	1	243	10	20	2016-06-13 16:34:46.54424+00	2014
2189	137.50	113.70	4789	2	466	4	8	2016-06-13 16:34:46.552579+00	2014
2190	129.70	116.10	4795	2	1738	40	70	2016-06-13 16:34:46.560929+00	2014
2191	124.70	105.10	4794	2	1203	15	35	2016-06-13 16:34:46.569237+00	2014
2192	154.40	136.90	4793	2	792	20	25	2016-06-13 16:34:46.57756+00	2014
2193	119.30	93.00	4792	2	401	15	30	2016-06-13 16:34:46.585965+00	2014
2194	162.50	148.60	4791	2	1564	40	60	2016-06-13 16:34:46.59428+00	2014
2195	125.50	97.00	5391	1	390	10	20	2016-06-13 16:34:46.602601+00	2014
2196	169.30	138.50	4790	2	182	4	8	2016-06-13 16:34:46.612767+00	2014
2197	109.30	85.20	5392	4	141	10	15	2016-06-13 16:34:46.621183+00	2014
2198	187.00	169.80	4781	2	1454	25	55	2016-06-13 16:34:46.629369+00	2014
2199	155.20	127.80	4780	2	764	30	60	2016-06-13 16:34:46.686114+00	2014
2200	150.10	123.70	4766	2	700	10	30	2016-06-13 16:34:46.694443+00	2014
2201	141.10	122.40	4767	2	1702	25	55	2016-06-13 16:34:46.702621+00	2014
2202	143.10	117.90	4768	2	758	15	45	2016-06-13 16:34:46.710956+00	2014
2203	113.70	83.00	4769	2	885	20	40	2016-06-13 16:34:46.719229+00	2014
2204	139.50	124.20	4770	2	1161	15	35	2016-06-13 16:34:46.727543+00	2014
2205	171.90	140.40	4771	2	599	5	25	2016-06-13 16:34:46.735953+00	2014
2206	161.60	135.90	4772	2	657	5	15	2016-06-13 16:34:46.744301+00	2014
2207	168.30	143.20	4773	2	681	5	15	2016-06-13 16:34:46.752621+00	2014
2208	127.50	114.50	4774	2	1091	40	50	2016-06-13 16:34:46.760956+00	2014
2209	113.80	82.20	4775	2	1106	25	35	2016-06-13 16:34:46.769337+00	2014
2210	109.30	85.50	4776	2	994	25	40	2016-06-13 16:34:46.82768+00	2014
2211	121.80	97.00	4777	2	872	25	35	2016-06-13 16:34:46.836577+00	2014
2212	123.80	88.90	4778	2	690	15	25	2016-06-13 16:34:46.844488+00	2014
2213	125.30	86.90	4779	2	904	5	25	2016-06-13 16:34:46.852837+00	2014
2214	190.10	173.40	5341	1	191	5	25	2016-06-13 16:34:46.86186+00	2014
2215	197.70	179.40	4670	2	4644	240	640	2016-06-13 16:34:46.869315+00	2014
2216	198.90	169.90	4670	1	819	60	160	2016-06-13 16:34:46.877665+00	2014
2217	180.50	151.00	5342	1	225	15	25	2016-06-13 16:34:46.885992+00	2014
2218	166.90	107.00	4669	1	17	1	4	2016-06-13 16:34:46.894326+00	2014
2219	171.10	135.00	4669	2	54	4	11	2016-06-13 16:34:46.902645+00	2014
2220	202.20	167.50	4668	1	37	1	9	2016-06-13 16:34:46.910986+00	2014
2221	198.10	174.20	4668	2	90	4	16	2016-06-13 16:34:46.919219+00	2014
2222	206.30	189.30	4667	1	59	6	14	2016-06-13 16:34:46.927623+00	2014
2223	198.60	175.50	4667	2	284	24	56	2016-06-13 16:34:46.935997+00	2014
2224	177.10	149.40	4666	1	26	1	4	2016-06-13 16:34:46.944387+00	2014
2225	185.90	163.00	4666	2	110	4	11	2016-06-13 16:34:46.952711+00	2014
2226	188.20	166.00	4665	1	17	1	4	2016-06-13 16:34:46.96105+00	2014
2227	187.90	172.20	4665	2	100	4	11	2016-06-13 16:34:46.969332+00	2014
2228	174.30	133.40	4664	1	12	1	4	2016-06-13 16:34:46.977703+00	2014
2229	141.90	118.50	4664	2	43	4	11	2016-06-13 16:34:47.071455+00	2014
2230	190.30	139.30	4663	1	56	2	8	2016-06-13 16:34:47.079762+00	2014
2231	207.80	174.40	4663	2	212	8	22	2016-06-13 16:34:47.087506+00	2014
2232	251.00	204.40	4662	2	115	16	22	2016-06-13 16:34:47.094436+00	2014
2233	256.90	213.60	4662	1	26	4	8	2016-06-13 16:34:47.102695+00	2014
2234	126.20	98.50	5075	1	55	2	4	2016-06-13 16:34:47.111735+00	2014
2235	119.80	92.70	5075	2	428	8	11	2016-06-13 16:34:47.119341+00	2014
2236	127.70	87.00	5074	1	89	3	12	2016-06-13 16:34:47.127712+00	2014
2237	124.80	85.80	5074	2	440	12	13	2016-06-13 16:34:47.136035+00	2014
2238	131.40	93.40	5073	1	81	3	10	2016-06-13 16:34:47.144365+00	2014
2239	143.50	117.10	5073	2	444	12	25	2016-06-13 16:34:47.152698+00	2014
2240	136.40	107.70	5072	1	101	3	8	2016-06-13 16:34:47.211076+00	2014
2241	134.70	114.40	5072	2	462	10	24	2016-06-13 16:34:47.219989+00	2014
2242	125.30	96.80	5071	1	62	2	4	2016-06-13 16:34:47.228969+00	2014
2243	134.60	115.50	5071	2	394	8	11	2016-06-13 16:34:47.236697+00	2014
2244	142.60	86.20	5070	1	78	2	12	2016-06-13 16:34:47.244986+00	2014
2245	134.10	108.20	5070	2	530	8	28	2016-06-13 16:34:47.253213+00	2014
2246	167.00	133.50	4761	2	236	5	20	2016-06-13 16:34:47.262329+00	2014
2247	137.90	132.40	4760	1	37	2	3	2016-06-13 16:34:47.269649+00	2014
2248	191.60	164.40	4760	2	166	3	12	2016-06-13 16:34:47.277853+00	2014
2249	\N	\N	4759	2	\N	15	0	2016-06-13 16:34:47.285989+00	2014
2250	179.20	159.00	4758	2	199	7	18	2016-06-13 16:34:47.294395+00	2014
2251	150.00	134.90	4758	1	44	3	12	2016-06-13 16:34:47.354275+00	2014
2252	137.60	120.10	4757	1	79	10	10	2016-06-13 16:34:47.362852+00	2014
2253	157.00	136.80	4757	2	260	15	25	2016-06-13 16:34:47.369396+00	2014
2254	154.50	135.50	4756	1	142	10	20	2016-06-13 16:34:47.377731+00	2014
2255	\N	\N	4756	2	\N	15	0	2016-06-13 16:34:47.385987+00	2014
2256	160.50	132.80	4756	2	819	30	65	2016-06-13 16:34:47.394435+00	2014
2257	141.60	125.50	4755	1	137	15	20	2016-06-13 16:34:47.402786+00	2014
2258	\N	\N	4755	2	\N	20	0	2016-06-13 16:34:47.41104+00	2014
2259	155.80	127.50	4755	2	1296	75	80	2016-06-13 16:34:47.41945+00	2014
2260	140.40	118.60	4749	1	50	5	10	2016-06-13 16:34:47.427763+00	2014
2261	154.90	133.90	4749	2	380	15	30	2016-06-13 16:34:47.436059+00	2014
2262	147.00	123.30	4750	2	1044	25	50	2016-06-13 16:34:47.494432+00	2014
2263	145.10	130.20	4750	1	137	10	15	2016-06-13 16:34:47.502745+00	2014
2264	162.10	140.40	4751	2	791	50	55	2016-06-13 16:34:47.511111+00	2014
2265	149.00	131.40	4751	1	148	15	20	2016-06-13 16:34:47.519449+00	2014
2266	\N	\N	4752	2	\N	15	0	2016-06-13 16:34:47.5277+00	2014
2267	139.50	123.20	4753	1	21	2	3	2016-06-13 16:34:47.536076+00	2014
2268	148.70	134.40	4753	2	161	3	12	2016-06-13 16:34:47.544438+00	2014
2269	163.10	134.40	4754	2	185	5	15	2016-06-13 16:34:47.55273+00	2014
2270	138.90	113.60	5056	1	68	2	8	2016-06-13 16:34:47.561803+00	2014
2271	173.90	161.80	5056	2	257	8	7	2016-06-13 16:34:47.569432+00	2014
2272	150.70	125.70	5057	1	104	5	15	2016-06-13 16:34:47.577794+00	2014
2273	188.90	168.30	5057	2	908	30	60	2016-06-13 16:34:47.636176+00	2014
2274	157.50	133.50	5058	1	122	4	8	2016-06-13 16:34:47.644478+00	2014
2275	187.40	166.40	5058	2	558	21	42	2016-06-13 16:34:47.652824+00	2014
2276	153.40	125.40	5059	1	25	3	7	2016-06-13 16:34:47.661191+00	2014
2277	170.10	151.50	5059	2	265	12	18	2016-06-13 16:34:47.669469+00	2014
2278	137.50	109.00	4343	2	992	20	40	2016-06-13 16:34:47.678475+00	2014
2279	158.00	145.60	4356	2	472	10	15	2016-06-13 16:34:47.686115+00	2014
2280	165.80	133.00	4357	2	658	5	20	2016-06-13 16:34:47.694469+00	2014
2281	138.70	103.80	4358	2	755	10	40	2016-06-13 16:34:47.702805+00	2014
2282	161.60	143.80	4359	2	560	10	15	2016-06-13 16:34:47.711146+00	2014
2283	158.30	132.50	5363	7	60	10	15	2016-06-13 16:34:47.719475+00	2014
2284	123.40	105.80	5421	1	253	5	15	2016-06-13 16:34:47.785316+00	2014
2285	180.50	162.00	4360	2	2826	88	162	2016-06-13 16:34:47.794532+00	2014
2286	179.90	156.50	4360	1	426	12	38	2016-06-13 16:34:47.80287+00	2014
2287	163.50	150.30	4361	2	188	5	15	2016-06-13 16:34:47.811209+00	2014
2288	170.60	135.80	4362	2	169	5	15	2016-06-13 16:34:47.819546+00	2014
2289	182.30	162.10	4363	2	546	10	20	2016-06-13 16:34:47.828186+00	2014
2290	137.70	117.70	4364	1	216	5	15	2016-06-13 16:34:47.836313+00	2014
2291	147.60	125.50	4364	2	1519	15	55	2016-06-13 16:34:47.84455+00	2014
2292	132.60	114.50	4365	2	1214	15	35	2016-06-13 16:34:47.852873+00	2014
2293	\N	164.80	4355	2	322	15	30	2016-06-13 16:34:47.861168+00	2014
2294	187.00	157.20	4355	1	161	5	10	2016-06-13 16:34:47.869518+00	2014
2295	\N	137.50	4354	2	445	10	20	2016-06-13 16:34:47.877831+00	2014
2296	105.10	83.50	4344	2	778	10	15	2016-06-13 16:34:47.886179+00	2014
2297	188.00	166.20	4345	2	1711	20	80	2016-06-13 16:34:47.894566+00	2014
2298	157.40	126.10	5364	1	796	15	45	2016-06-13 16:34:47.902906+00	2014
2299	213.50	189.00	4346	2	803	7	28	2016-06-13 16:34:47.911254+00	2014
2300	180.50	148.90	4346	1	223	3	12	2016-06-13 16:34:47.919557+00	2014
2301	161.40	129.20	4347	2	599	25	55	2016-06-13 16:34:47.927908+00	2014
2302	171.40	142.70	4348	2	1161	15	35	2016-06-13 16:34:47.936241+00	2014
2303	148.60	109.90	4349	2	541	10	50	2016-06-13 16:34:47.944573+00	2014
2304	124.90	86.70	4349	1	143	5	15	2016-06-13 16:34:47.952903+00	2014
2305	133.90	98.50	4350	2	464	10	35	2016-06-13 16:34:47.961239+00	2014
2306	96.90	81.10	4350	1	111	5	10	2016-06-13 16:34:47.96951+00	2014
2307	150.70	129.80	4351	2	756	10	15	2016-06-13 16:34:47.977886+00	2014
2308	174.20	133.50	4352	2	465	5	20	2016-06-13 16:34:47.986175+00	2014
2309	121.70	84.50	4353	2	470	5	15	2016-06-13 16:34:47.994545+00	2014
2310	203.90	180.20	4654	2	94	9	21	2016-06-13 16:34:48.003624+00	2014
2311	202.70	180.80	4655	2	31	4	8	2016-06-13 16:34:48.011247+00	2014
2312	207.50	163.90	4655	1	21	2	6	2016-06-13 16:34:48.019555+00	2014
2313	215.60	199.50	4656	1	202	5	15	2016-06-13 16:34:48.027954+00	2014
2314	233.40	201.20	4656	2	888	5	50	2016-06-13 16:34:48.050301+00	2014
2315	206.20	184.70	4657	2	125	10	15	2016-06-13 16:34:48.069616+00	2014
2316	214.80	184.70	4658	1	75	5	15	2016-06-13 16:34:48.077922+00	2014
2317	211.50	192.10	4658	2	403	5	75	2016-06-13 16:34:48.086269+00	2014
2318	208.60	188.00	4659	1	74	5	15	2016-06-13 16:34:48.094591+00	2014
2319	209.90	191.30	4659	2	257	5	45	2016-06-13 16:34:48.102936+00	2014
2320	212.60	191.70	4653	2	153	5	25	2016-06-13 16:34:48.111202+00	2014
2321	207.10	193.10	4652	1	73	5	15	2016-06-13 16:34:48.119522+00	2014
2322	214.30	194.90	4652	2	353	5	65	2016-06-13 16:34:48.144606+00	2014
2323	203.60	184.70	4646	2	263	10	70	2016-06-13 16:34:48.152931+00	2014
2324	202.00	183.80	4647	2	101	5	20	2016-06-13 16:34:48.161255+00	2014
2325	205.10	188.00	4648	2	134	5	25	2016-06-13 16:34:48.169545+00	2014
2326	204.60	185.40	4649	1	81	5	20	2016-06-13 16:34:48.177969+00	2014
2327	198.90	164.90	4649	2	285	10	25	2016-06-13 16:34:48.18633+00	2014
2328	206.60	185.30	4650	1	63	5	15	2016-06-13 16:34:48.194671+00	2014
2329	213.30	190.70	4650	2	346	5	25	2016-06-13 16:34:48.202987+00	2014
2330	203.10	188.70	4651	2	198	5	45	2016-06-13 16:34:48.211324+00	2014
2331	161.80	114.50	5422	5	75	4	8	2016-06-13 16:34:48.227178+00	2014
2332	150.90	137.40	5423	5	38	2	4	2016-06-13 16:34:48.243829+00	2014
2333	144.30	127.50	5345	5	29	3	4	2016-06-13 16:34:48.253033+00	2014
2334	154.90	127.40	5424	5	29	2	5	2016-06-13 16:34:48.268823+00	2014
2335	129.90	116.90	5347	5	35	2	4	2016-06-13 16:34:48.277972+00	2014
2336	146.40	117.30	4737	2	280	5	10	2016-06-13 16:34:48.287088+00	2014
2337	124.20	87.70	4736	2	195	5	10	2016-06-13 16:34:48.294597+00	2014
2338	187.50	173.10	4735	1	64	2	5	2016-06-13 16:34:48.30302+00	2014
2339	191.60	178.00	4735	2	192	3	10	2016-06-13 16:34:48.311361+00	2014
2340	175.50	163.40	4734	1	52	2	5	2016-06-13 16:34:48.319707+00	2014
2341	176.70	159.10	4734	2	142	3	10	2016-06-13 16:34:48.328027+00	2014
2342	175.50	149.80	4733	1	238	35	40	2016-06-13 16:34:48.336358+00	2014
2343	159.90	137.20	4733	2	1534	60	65	2016-06-13 16:34:48.344697+00	2014
2344	148.50	129.10	4732	2	274	10	15	2016-06-13 16:34:48.353044+00	2014
2345	153.20	118.90	4731	1	53	5	10	2016-06-13 16:34:48.361392+00	2014
2346	132.10	125.30	4731	2	251	10	15	2016-06-13 16:34:48.36973+00	2014
2347	156.80	129.50	4730	2	851	30	45	2016-06-13 16:34:48.378076+00	2014
2348	172.80	126.70	4730	1	86	10	15	2016-06-13 16:34:48.386403+00	2014
2349	147.10	126.80	4729	2	283	9	21	2016-06-13 16:34:48.394731+00	2014
2350	174.50	104.20	4729	1	71	6	14	2016-06-13 16:34:48.403045+00	2014
2351	170.90	142.90	4728	1	160	8	22	2016-06-13 16:34:48.411424+00	2014
2352	168.80	139.10	4728	2	531	12	48	2016-06-13 16:34:48.419736+00	2014
2353	138.60	119.10	4727	2	292	5	20	2016-06-13 16:34:48.428427+00	2014
2354	166.90	136.80	5332	5	209	5	15	2016-06-13 16:34:48.437174+00	2014
2355	122.30	92.20	5287	5	153	10	15	2016-06-13 16:34:48.444738+00	2014
2356	111.00	91.80	5287	2	93	5	10	2016-06-13 16:34:48.45308+00	2014
2357	109.80	86.10	5286	2	113	4	16	2016-06-13 16:34:48.461396+00	2014
2358	103.90	89.90	5286	5	166	6	24	2016-06-13 16:34:48.469723+00	2014
2359	77.80	70.40	5285	2	97	5	10	2016-06-13 16:34:48.478047+00	2014
2360	107.60	84.80	5285	5	165	10	15	2016-06-13 16:34:48.486427+00	2014
2361	121.60	93.30	5333	5	161	10	15	2016-06-13 16:34:48.49479+00	2014
2362	116.60	81.70	5284	5	255	17	30	2016-06-13 16:34:48.503087+00	2014
2363	94.80	75.20	5284	2	125	8	15	2016-06-13 16:34:48.511444+00	2014
2364	95.30	84.50	5283	5	184	6	24	2016-06-13 16:34:48.519707+00	2014
2365	112.30	78.20	5283	2	106	4	16	2016-06-13 16:34:48.52811+00	2014
2366	105.40	85.50	5334	5	204	10	15	2016-06-13 16:34:48.536407+00	2014
2367	102.30	84.60	5335	5	160	5	15	2016-06-13 16:34:48.54477+00	2014
2368	94.20	85.20	5336	5	164	10	15	2016-06-13 16:34:48.553097+00	2014
2369	107.80	88.80	5282	5	197	10	15	2016-06-13 16:34:48.561422+00	2014
2370	100.80	77.40	5282	2	102	5	10	2016-06-13 16:34:48.569769+00	2014
2371	98.30	79.20	5281	5	235	13	32	2016-06-13 16:34:48.578091+00	2014
2372	118.40	80.80	5281	2	117	7	13	2016-06-13 16:34:48.58644+00	2014
2373	96.10	79.30	5280	5	184	10	20	2016-06-13 16:34:48.594778+00	2014
2374	84.40	76.20	5280	2	90	5	10	2016-06-13 16:34:48.603115+00	2014
2375	136.10	109.20	5107	2	487	20	30	2016-06-13 16:34:48.612113+00	2014
2376	119.40	100.80	5108	2	180	8	12	2016-06-13 16:34:48.619721+00	2014
2377	126.20	99.00	5109	2	181	7	13	2016-06-13 16:34:48.62812+00	2014
2378	195.10	170.00	5110	1	51	4	8	2016-06-13 16:34:48.636496+00	2014
2379	183.30	163.10	5110	2	370	11	27	2016-06-13 16:34:48.644814+00	2014
2380	189.80	160.60	5111	2	219	5	15	2016-06-13 16:34:48.653123+00	2014
2381	111.10	82.00	5112	2	396	15	45	2016-06-13 16:34:48.661471+00	2014
2382	131.00	102.20	5106	2	606	35	65	2016-06-13 16:34:48.66979+00	2014
2383	127.50	94.80	5105	2	434	20	40	2016-06-13 16:34:48.678143+00	2014
2384	133.00	101.70	5104	2	400	20	55	2016-06-13 16:34:48.686472+00	2014
2385	133.80	88.50	5098	2	592	15	60	2016-06-13 16:34:48.694792+00	2014
2386	91.70	74.30	5098	1	48	5	20	2016-06-13 16:34:48.703125+00	2014
2387	119.30	90.60	5099	2	1048	55	145	2016-06-13 16:34:48.711473+00	2014
2388	105.80	79.40	5100	2	281	5	20	2016-06-13 16:34:48.719799+00	2014
2389	134.40	109.60	5101	2	1322	50	150	2016-06-13 16:34:48.728113+00	2014
2390	122.60	94.50	5102	2	951	40	60	2016-06-13 16:34:48.736493+00	2014
2391	151.60	104.00	5102	1	48	5	20	2016-06-13 16:34:48.744867+00	2014
2392	108.00	73.90	5103	1	51	5	10	2016-06-13 16:34:48.75327+00	2014
2393	142.70	116.80	5103	2	1582	80	125	2016-06-13 16:34:48.761509+00	2014
2394	142.00	105.40	4645	1	133	4	8	2016-06-13 16:34:48.770497+00	2014
2395	154.30	121.40	4645	2	400	16	32	2016-06-13 16:34:48.778168+00	2014
2396	121.00	86.70	4644	2	572	16	32	2016-06-13 16:34:48.786448+00	2014
2397	123.20	84.30	4644	1	152	4	8	2016-06-13 16:34:48.794855+00	2014
2398	112.30	91.80	4643	1	124	4	8	2016-06-13 16:34:48.803192+00	2014
2399	136.70	107.00	4643	2	379	16	32	2016-06-13 16:34:48.811538+00	2014
2400	147.10	116.90	4642	1	114	4	7	2016-06-13 16:34:48.819833+00	2014
2401	144.70	116.70	4642	2	339	16	23	2016-06-13 16:34:48.828195+00	2014
2402	116.20	86.40	4641	1	131	5	10	2016-06-13 16:34:48.836526+00	2014
2403	144.20	94.90	4641	2	499	21	39	2016-06-13 16:34:48.844873+00	2014
2404	116.50	88.30	4640	1	114	4	8	2016-06-13 16:34:48.853151+00	2014
2405	131.60	101.10	4640	2	411	16	32	2016-06-13 16:34:48.861512+00	2014
2406	126.20	100.60	4639	1	136	7	8	2016-06-13 16:34:48.869816+00	2014
2407	142.70	123.40	4639	2	542	28	32	2016-06-13 16:34:48.878242+00	2014
2408	112.60	87.60	4638	2	551	20	27	2016-06-13 16:34:48.886584+00	2014
2409	95.20	86.20	4638	1	122	5	8	2016-06-13 16:34:48.894873+00	2014
2410	111.70	83.50	4637	1	147	5	10	2016-06-13 16:34:48.903239+00	2014
2411	138.90	120.00	4637	2	371	10	15	2016-06-13 16:34:48.911531+00	2014
2412	147.10	125.70	4881	1	64	2	3	2016-06-13 16:34:48.920559+00	2014
2413	167.70	148.40	4881	2	637	8	12	2016-06-13 16:34:48.928218+00	2014
2414	128.40	96.00	4880	1	116	3	7	2016-06-13 16:34:48.93656+00	2014
2415	151.90	134.50	4880	2	1134	12	38	2016-06-13 16:34:48.944902+00	2014
2416	130.30	118.50	4879	1	35	3	7	2016-06-13 16:34:48.953266+00	2014
2417	172.00	155.50	4879	2	818	12	28	2016-06-13 16:34:48.961613+00	2014
2418	137.50	118.60	4442	2	499	5	15	2016-06-13 16:34:48.970596+00	2014
2419	141.70	122.70	4443	2	677	20	30	2016-06-13 16:34:48.978235+00	2014
2420	136.40	116.60	4444	2	632	10	15	2016-06-13 16:34:48.98661+00	2014
2421	126.10	107.10	4445	2	378	10	15	2016-06-13 16:34:48.994919+00	2014
2422	148.20	131.10	4446	2	241	5	15	2016-06-13 16:34:49.003223+00	2014
2423	130.40	107.20	5330	1	531	15	25	2016-06-13 16:34:49.011631+00	2014
2424	171.90	159.70	4447	2	816	19	17	2016-06-13 16:34:49.019942+00	2014
2425	149.60	138.60	4447	1	135	3	9	2016-06-13 16:34:49.02864+00	2014
2426	165.00	151.40	4448	2	605	10	20	2016-06-13 16:34:49.036691+00	2014
2427	128.60	109.60	4449	2	1140	25	45	2016-06-13 16:34:49.044977+00	2014
2428	128.40	108.80	4450	2	608	5	15	2016-06-13 16:34:49.053305+00	2014
2429	159.00	114.70	4451	1	59	4	11	2016-06-13 16:34:49.061618+00	2014
2430	173.60	133.20	4451	2	542	16	64	2016-06-13 16:34:49.069957+00	2014
2431	123.70	106.20	4452	2	152	4	11	2016-06-13 16:34:49.078277+00	2014
2432	115.80	100.90	4452	1	16	1	4	2016-06-13 16:34:49.086693+00	2014
2433	116.70	88.60	4441	2	545	10	15	2016-06-13 16:34:49.094981+00	2014
2434	164.50	144.20	4440	2	855	20	30	2016-06-13 16:34:49.153349+00	2014
2435	159.00	143.00	4429	2	119	3	9	2016-06-13 16:34:49.16165+00	2014
2436	148.00	92.30	5331	6	32	5	15	2016-06-13 16:34:49.16998+00	2014
2437	181.80	165.00	4430	2	723	10	20	2016-06-13 16:34:49.178322+00	2014
2438	143.10	120.40	4431	2	370	10	20	2016-06-13 16:34:49.186669+00	2014
2439	151.70	123.60	4432	2	645	10	40	2016-06-13 16:34:49.19499+00	2014
2440	140.70	111.00	4433	2	530	20	30	2016-06-13 16:34:49.203319+00	2014
2441	107.20	80.90	4434	2	273	10	15	2016-06-13 16:34:49.211672+00	2014
2442	134.80	106.50	4435	2	381	5	15	2016-06-13 16:34:49.219929+00	2014
2443	185.80	164.70	4436	2	527	5	15	2016-06-13 16:34:49.228333+00	2014
2444	105.70	79.70	4437	2	1242	30	50	2016-06-13 16:34:49.236661+00	2014
2445	100.50	79.30	4438	2	622	20	30	2016-06-13 16:34:49.295028+00	2014
2446	121.20	88.40	4439	2	644	5	15	2016-06-13 16:34:49.303336+00	2014
2447	182.50	137.20	5069	1	75	4	8	2016-06-13 16:34:49.312385+00	2014
2448	190.50	173.70	5069	2	871	21	42	2016-06-13 16:34:49.319973+00	2014
2449	194.10	167.90	5068	1	317	14	17	2016-06-13 16:34:49.328372+00	2014
2450	201.10	183.60	5068	2	2558	71	98	2016-06-13 16:34:49.336702+00	2014
2451	151.30	122.20	5067	1	90	6	8	2016-06-13 16:34:49.345043+00	2014
2452	174.80	156.40	5067	2	1016	34	42	2016-06-13 16:34:49.353335+00	2014
2453	206.40	170.10	5066	1	208	9	20	2016-06-13 16:34:49.361683+00	2014
2454	202.50	178.50	5066	2	1578	51	120	2016-06-13 16:34:49.370032+00	2014
2455	116.40	103.60	5065	1	30	5	9	2016-06-13 16:34:49.378351+00	2014
2456	160.40	138.30	5065	2	789	30	46	2016-06-13 16:34:49.4701+00	2014
2457	172.50	143.50	4707	2	30	2	6	2016-06-13 16:34:49.479145+00	2014
2458	127.30	106.70	4708	2	22	3	7	2016-06-13 16:34:49.486614+00	2014
2459	148.00	113.10	4708	1	15	1	5	2016-06-13 16:34:49.49501+00	2014
2460	167.60	131.50	4709	2	47	3	7	2016-06-13 16:34:49.503358+00	2014
2461	140.90	105.50	4709	1	13	1	5	2016-06-13 16:34:49.511695+00	2014
2462	150.10	123.60	4710	1	14	2	5	2016-06-13 16:34:49.520016+00	2014
2463	154.50	136.50	4710	2	107	6	12	2016-06-13 16:34:49.528385+00	2014
2464	151.80	133.80	4711	2	116	5	13	2016-06-13 16:34:49.53673+00	2014
2465	152.10	129.20	4711	1	20	2	5	2016-06-13 16:34:49.59532+00	2014
2466	\N	142.90	4712	1	10	2	3	2016-06-13 16:34:49.605189+00	2014
2467	158.40	137.00	4712	2	50	6	7	2016-06-13 16:34:49.613569+00	2014
2468	122.20	99.30	4713	1	6	2	2	2016-06-13 16:34:49.622111+00	2014
2469	162.00	135.40	4713	2	32	6	6	2016-06-13 16:34:49.629037+00	2014
2470	136.50	99.40	4714	1	3	1	1	2016-06-13 16:34:49.636771+00	2014
2471	158.90	150.40	4714	2	25	3	3	2016-06-13 16:34:49.645102+00	2014
2472	153.30	134.40	4706	1	3	1	1	2016-06-13 16:34:49.653394+00	2014
2473	150.20	134.10	4706	2	20	3	3	2016-06-13 16:34:49.661717+00	2014
2474	145.60	126.70	4705	2	31	3	3	2016-06-13 16:34:49.670057+00	2014
2475	152.80	127.80	4705	1	18	1	2	2016-06-13 16:34:49.678445+00	2014
2476	125.50	114.00	4704	2	28	3	3	2016-06-13 16:34:49.736761+00	2014
2477	\N	143.80	4704	1	9	1	2	2016-06-13 16:34:49.745039+00	2014
2478	118.70	114.60	4696	1	15	2	2	2016-06-13 16:34:49.753385+00	2014
2479	128.50	115.60	4696	2	26	4	2	2016-06-13 16:34:49.761774+00	2014
2480	152.90	117.10	4697	2	83	5	12	2016-06-13 16:34:49.770051+00	2014
2481	147.40	119.70	4697	1	22	2	3	2016-06-13 16:34:49.780028+00	2014
2482	140.30	127.10	4698	2	41	4	4	2016-06-13 16:34:49.788385+00	2014
2483	153.60	129.70	4698	1	12	2	4	2016-06-13 16:34:49.79593+00	2014
2484	134.40	110.10	4699	2	30	4	7	2016-06-13 16:34:49.803428+00	2014
2485	124.40	109.00	4700	1	8	1	5	2016-06-13 16:34:49.811737+00	2014
2486	\N	144.40	4700	2	28	2	7	2016-06-13 16:34:49.820069+00	2014
2487	\N	116.00	4701	2	24	2	5	2016-06-13 16:34:49.878427+00	2014
2488	138.50	122.90	4702	2	35	2	5	2016-06-13 16:34:49.888817+00	2014
2489	\N	113.20	4703	2	30	1	5	2016-06-13 16:34:49.897092+00	2014
2490	129.30	98.50	5307	1	238	10	30	2016-06-13 16:34:49.906621+00	2014
2491	146.60	116.60	5307	2	1055	35	105	2016-06-13 16:34:49.913604+00	2014
2492	131.70	91.20	5306	1	97	3	5	2016-06-13 16:34:49.920573+00	2014
2493	139.20	108.80	5306	2	233	7	15	2016-06-13 16:34:49.928438+00	2014
2494	134.20	82.40	5305	1	80	5	8	2016-06-13 16:34:49.936737+00	2014
2495	138.60	110.80	5305	2	348	15	22	2016-06-13 16:34:49.94516+00	2014
2496	92.90	83.50	5304	1	77	3	4	2016-06-13 16:34:49.953471+00	2014
2497	109.90	88.00	5304	2	286	7	11	2016-06-13 16:34:49.961816+00	2014
2498	147.30	117.70	4968	2	822	35	90	2016-06-13 16:34:50.020853+00	2014
2499	144.40	112.90	4969	2	648	25	50	2016-06-13 16:34:50.030772+00	2014
2500	125.70	96.70	4970	2	722	25	50	2016-06-13 16:34:50.037868+00	2014
2501	161.20	140.90	4971	2	1209	25	50	2016-06-13 16:34:50.046055+00	2014
2502	148.70	132.20	4972	2	1292	25	50	2016-06-13 16:34:50.054364+00	2014
2503	184.90	156.60	4973	2	1061	25	50	2016-06-13 16:34:50.062726+00	2014
2504	136.10	117.20	4974	2	1165	40	60	2016-06-13 16:34:50.070849+00	2014
2505	167.20	136.00	4975	2	412	15	25	2016-06-13 16:34:50.078461+00	2014
2506	161.30	127.30	4967	2	1553	15	45	2016-06-13 16:34:50.086757+00	2014
2507	184.10	162.60	4966	2	666	10	40	2016-06-13 16:34:50.095137+00	2014
2508	173.20	149.60	4965	2	1581	35	90	2016-06-13 16:34:50.103458+00	2014
2509	134.70	114.70	5326	1	526	20	30	2016-06-13 16:34:50.161893+00	2014
2510	137.20	98.30	5327	1	633	15	35	2016-06-13 16:34:50.170253+00	2014
2511	184.30	163.20	4957	2	1726	25	75	2016-06-13 16:34:50.178521+00	2014
2512	163.60	135.00	4957	1	252	10	15	2016-06-13 16:34:50.186859+00	2014
2513	173.40	149.30	4958	2	716	20	30	2016-06-13 16:34:50.195198+00	2014
2514	123.90	95.30	4959	1	158	5	20	2016-06-13 16:34:50.203532+00	2014
2515	150.00	121.00	4959	2	3048	55	140	2016-06-13 16:34:50.211855+00	2014
2516	141.80	117.60	4960	2	995	15	35	2016-06-13 16:34:50.220185+00	2014
2517	135.30	111.20	4961	2	616	5	15	2016-06-13 16:34:50.228874+00	2014
2518	191.70	168.50	4962	2	508	20	60	2016-06-13 16:34:50.236921+00	2014
2519	170.50	153.60	4963	2	274	5	15	2016-06-13 16:34:50.245205+00	2014
2520	126.60	94.10	4964	2	1476	30	70	2016-06-13 16:34:50.304314+00	2014
2521	150.60	127.10	5261	2	107	5	15	2016-06-13 16:34:50.315207+00	2014
2522	154.10	128.90	5262	2	234	5	15	2016-06-13 16:34:50.328856+00	2014
2523	186.80	173.00	5263	1	65	3	5	2016-06-13 16:34:50.336875+00	2014
2524	211.30	191.00	5263	2	195	7	10	2016-06-13 16:34:50.34519+00	2014
2525	201.40	178.80	5264	2	101	7	10	2016-06-13 16:34:50.353501+00	2014
2526	175.30	158.00	5264	1	47	3	5	2016-06-13 16:34:50.361888+00	2014
2527	208.40	173.80	5265	2	98	7	10	2016-06-13 16:34:50.37021+00	2014
2528	176.80	163.40	5265	1	57	3	5	2016-06-13 16:34:50.378549+00	2014
2529	167.90	128.90	5266	1	145	5	15	2016-06-13 16:34:50.386875+00	2014
2530	160.60	135.70	5266	2	283	20	20	2016-06-13 16:34:50.39525+00	2014
2531	160.30	139.50	5267	1	88	5	15	2016-06-13 16:34:50.461915+00	2014
2532	177.40	159.30	5267	2	626	25	55	2016-06-13 16:34:50.470217+00	2014
2533	160.70	141.60	5260	2	278	15	25	2016-06-13 16:34:50.478521+00	2014
2534	154.00	125.40	5260	1	76	5	15	2016-06-13 16:34:50.486959+00	2014
2535	150.30	124.00	5259	1	85	5	15	2016-06-13 16:34:50.495225+00	2014
2536	175.80	150.30	5259	2	248	20	35	2016-06-13 16:34:50.503567+00	2014
2537	165.60	125.30	5252	1	76	5	15	2016-06-13 16:34:50.511889+00	2014
2538	174.50	149.40	5252	2	219	10	20	2016-06-13 16:34:50.520164+00	2014
2539	159.20	122.30	5253	1	74	5	15	2016-06-13 16:34:50.528529+00	2014
2540	169.30	154.00	5253	2	342	15	25	2016-06-13 16:34:50.53689+00	2014
2541	166.60	138.50	5254	2	172	10	20	2016-06-13 16:34:50.545267+00	2014
2542	136.50	108.30	5254	1	78	5	15	2016-06-13 16:34:50.603609+00	2014
2543	158.70	130.90	5255	1	88	5	15	2016-06-13 16:34:50.611863+00	2014
2544	164.50	140.30	5255	2	319	35	40	2016-06-13 16:34:50.620256+00	2014
2545	142.70	110.70	5256	1	83	5	15	2016-06-13 16:34:50.628585+00	2014
2546	164.90	137.50	5256	2	239	15	25	2016-06-13 16:34:50.636895+00	2014
2547	181.60	157.50	5257	2	251	9	18	2016-06-13 16:34:50.645247+00	2014
2548	160.70	133.60	5257	1	56	5	10	2016-06-13 16:34:50.653578+00	2014
2549	185.80	147.00	5258	1	80	5	20	2016-06-13 16:34:50.661903+00	2014
2550	189.20	162.60	5258	2	441	25	50	2016-06-13 16:34:50.670243+00	2014
2551	103.60	73.20	4562	1	24	3	4	2016-06-13 16:34:50.679275+00	2014
2552	129.30	110.10	4562	2	194	6	7	2016-06-13 16:34:50.686888+00	2014
2553	125.50	98.10	4563	2	173	8	12	2016-06-13 16:34:50.745254+00	2014
2554	111.20	94.00	4564	2	121	8	12	2016-06-13 16:34:50.753672+00	2014
2555	129.20	100.50	4565	2	253	20	38	2016-06-13 16:34:50.761867+00	2014
2556	155.60	119.60	4565	1	53	5	17	2016-06-13 16:34:50.77029+00	2014
2557	176.70	162.30	4566	2	191	4	10	2016-06-13 16:34:50.778639+00	2014
2558	189.90	150.60	4566	1	42	1	5	2016-06-13 16:34:50.786963+00	2014
2559	106.50	80.30	4567	1	86	7	10	2016-06-13 16:34:50.795301+00	2014
2560	124.80	97.70	4567	2	641	38	55	2016-06-13 16:34:50.803637+00	2014
2561	132.90	103.10	4561	2	209	26	38	2016-06-13 16:34:50.811897+00	2014
2562	159.10	120.60	4561	1	43	4	12	2016-06-13 16:34:50.820289+00	2014
2563	117.20	100.60	4560	1	113	12	15	2016-06-13 16:34:50.829266+00	2014
2564	122.90	94.00	4560	2	846	63	80	2016-06-13 16:34:50.887051+00	2014
2565	137.00	104.70	4559	1	50	3	12	2016-06-13 16:34:50.895333+00	2014
2566	109.70	85.00	4559	2	284	17	28	2016-06-13 16:34:50.903661+00	2014
2567	119.10	91.60	4553	1	71	8	10	2016-06-13 16:34:50.91197+00	2014
2568	125.50	91.00	4553	2	499	32	40	2016-06-13 16:34:50.9203+00	2014
2569	109.20	84.60	4554	2	441	30	47	2016-06-13 16:34:50.928637+00	2014
2570	120.70	94.00	4554	1	68	5	18	2016-06-13 16:34:50.936968+00	2014
2571	117.40	78.10	4555	1	75	5	12	2016-06-13 16:34:50.945269+00	2014
2572	121.00	102.60	4555	2	427	25	28	2016-06-13 16:34:50.95367+00	2014
2573	102.50	88.20	4556	1	67	8	10	2016-06-13 16:34:50.962001+00	2014
2574	133.00	105.30	4556	2	329	22	25	2016-06-13 16:34:50.970313+00	2014
2575	117.20	95.80	4557	2	295	42	46	2016-06-13 16:34:51.028685+00	2014
2576	137.10	108.20	4557	1	36	3	9	2016-06-13 16:34:51.037013+00	2014
2577	111.20	85.30	4558	1	54	3	12	2016-06-13 16:34:51.04528+00	2014
2578	93.70	76.30	4558	2	260	17	33	2016-06-13 16:34:51.053651+00	2014
2579	174.20	159.80	5023	2	566	32	33	2016-06-13 16:34:51.062647+00	2014
2580	\N	\N	5023	6	22	3	7	2016-06-13 16:34:51.070244+00	2014
2581	143.70	126.20	5023	1	59	5	10	2016-06-13 16:34:51.078653+00	2014
2582	126.70	115.80	5024	1	37	3	7	2016-06-13 16:34:51.086977+00	2014
2583	169.60	147.20	5024	2	406	17	28	2016-06-13 16:34:51.09533+00	2014
2584	178.50	150.70	5025	2	402	17	23	2016-06-13 16:34:51.103657+00	2014
2585	123.90	83.20	5025	1	40	3	7	2016-06-13 16:34:51.111926+00	2014
2586	156.80	108.90	5026	1	63	3	7	2016-06-13 16:34:51.170327+00	2014
2587	195.90	168.60	5026	2	956	7	33	2016-06-13 16:34:51.180713+00	2014
2588	118.40	105.50	5027	1	66	3	7	2016-06-13 16:34:51.189084+00	2014
2589	173.60	162.00	5027	2	583	7	13	2016-06-13 16:34:51.197313+00	2014
2590	150.60	126.60	5028	1	112	3	7	2016-06-13 16:34:51.205517+00	2014
2591	189.50	170.60	5028	2	1263	12	48	2016-06-13 16:34:51.212031+00	2014
2592	139.90	104.70	5029	1	50	5	10	2016-06-13 16:34:51.220364+00	2014
2593	167.10	151.60	5029	2	509	10	15	2016-06-13 16:34:51.228708+00	2014
2594	153.30	122.40	5030	2	390	7	48	2016-06-13 16:34:51.237047+00	2014
2595	127.90	114.00	5030	1	49	3	12	2016-06-13 16:34:51.245367+00	2014
2596	177.30	124.40	5031	1	194	5	10	2016-06-13 16:34:51.253695+00	2014
2597	188.50	153.60	5031	2	847	5	40	2016-06-13 16:34:51.313112+00	2014
2598	153.00	130.20	5032	1	32	3	17	2016-06-13 16:34:51.322139+00	2014
2599	173.60	133.50	5032	2	305	7	43	2016-06-13 16:34:51.330355+00	2014
2600	167.90	152.80	5033	2	517	4	16	2016-06-13 16:34:51.338554+00	2014
2601	140.50	123.80	5033	1	46	3	7	2016-06-13 16:34:51.345522+00	2014
2602	141.40	129.50	5022	1	24	4	11	2016-06-13 16:34:51.353841+00	2014
2603	172.10	142.40	5022	2	153	4	31	2016-06-13 16:34:51.36217+00	2014
2604	\N	151.40	5021	2	312	5	30	2016-06-13 16:34:51.370382+00	2014
2605	151.60	126.90	5021	1	33	5	10	2016-06-13 16:34:51.378768+00	2014
2606	188.30	167.80	5020	2	1637	40	85	2016-06-13 16:34:51.387079+00	2014
2607	155.40	129.50	5394	1	441	20	30	2016-06-13 16:34:51.395416+00	2014
2608	176.90	149.00	5395	1	127	5	20	2016-06-13 16:34:51.45405+00	2014
2609	170.70	127.20	5396	6	56	5	15	2016-06-13 16:34:51.462119+00	2014
2610	169.60	150.60	5397	1	219	20	30	2016-06-13 16:34:51.470435+00	2014
2611	195.90	182.20	5009	2	1696	47	93	2016-06-13 16:34:51.478757+00	2014
2612	186.40	155.60	5009	1	305	18	32	2016-06-13 16:34:51.487086+00	2014
2613	188.40	167.80	5010	2	146	5	15	2016-06-13 16:34:51.495415+00	2014
2614	126.00	107.90	5011	2	161	35	50	2016-06-13 16:34:51.503744+00	2014
2615	128.90	104.50	5011	1	28	5	10	2016-06-13 16:34:51.51208+00	2014
2616	202.00	181.70	5012	2	887	10	30	2016-06-13 16:34:51.520395+00	2014
2617	169.30	144.00	5013	2	1369	30	40	2016-06-13 16:34:51.52868+00	2014
2618	170.50	143.90	5013	1	141	5	10	2016-06-13 16:34:51.537076+00	2014
2619	166.50	118.40	5425	6	32	5	10	2016-06-13 16:34:51.611352+00	2014
2620	163.90	99.90	5014	2	752	8	37	2016-06-13 16:34:51.621032+00	2014
2621	181.00	109.90	5014	1	77	2	13	2016-06-13 16:34:51.628889+00	2014
2622	182.30	155.10	5015	2	1064	10	55	2016-06-13 16:34:51.63717+00	2014
2623	149.80	107.60	5015	1	132	5	10	2016-06-13 16:34:51.645487+00	2014
2624	206.30	163.90	5016	2	576	20	20	2016-06-13 16:34:51.653881+00	2014
2625	148.20	116.90	5017	2	226	5	15	2016-06-13 16:34:51.662207+00	2014
2626	151.60	125.00	5018	2	939	7	13	2016-06-13 16:34:51.670538+00	2014
2627	160.10	108.80	5018	1	50	3	7	2016-06-13 16:34:51.678875+00	2014
2628	214.80	196.80	5019	2	623	5	25	2016-06-13 16:34:51.687187+00	2014
2629	127.90	111.00	5299	1	99	6	15	2016-06-13 16:34:51.746277+00	2014
2630	162.10	121.30	5299	2	353	24	55	2016-06-13 16:34:51.753858+00	2014
2631	155.50	90.80	5298	1	44	2	6	2016-06-13 16:34:51.762196+00	2014
2632	141.50	120.80	5298	2	147	8	14	2016-06-13 16:34:51.770499+00	2014
2633	126.90	119.50	5297	1	36	2	4	2016-06-13 16:34:51.778879+00	2014
2634	142.00	116.10	5297	2	150	8	11	2016-06-13 16:34:51.787229+00	2014
2635	124.20	88.40	5296	1	34	2	4	2016-06-13 16:34:51.795545+00	2014
2636	141.30	124.50	5296	2	150	8	11	2016-06-13 16:34:51.803856+00	2014
2637	201.80	177.90	4954	1	141	5	15	2016-06-13 16:34:51.812878+00	2014
2638	213.70	186.20	4954	2	281	10	30	2016-06-13 16:34:51.820523+00	2014
2639	224.30	190.60	4955	1	213	5	25	2016-06-13 16:34:51.828893+00	2014
2640	225.70	202.70	4955	2	356	10	50	2016-06-13 16:34:51.88767+00	2014
2641	211.90	181.00	4956	1	148	3	27	2016-06-13 16:34:51.897646+00	2014
2642	225.30	200.30	4956	2	364	7	53	2016-06-13 16:34:51.90596+00	2014
2643	154.50	122.20	4394	2	178	5	25	2016-06-13 16:34:51.913532+00	2014
2644	135.50	109.30	4395	2	519	10	30	2016-06-13 16:34:51.920576+00	2014
2645	108.60	97.50	4396	2	121	5	10	2016-06-13 16:34:51.928908+00	2014
2646	172.70	146.20	4397	2	132	7	13	2016-06-13 16:34:51.937234+00	2014
2647	152.20	131.10	4398	2	154	7	13	2016-06-13 16:34:51.945557+00	2014
2648	158.10	134.10	4399	2	135	6	14	2016-06-13 16:34:51.953916+00	2014
2649	143.60	118.00	4400	2	207	10	30	2016-06-13 16:34:51.962247+00	2014
2650	146.10	128.00	5337	1	388	20	30	2016-06-13 16:34:51.970563+00	2014
2651	165.00	143.70	4401	1	78	5	11	2016-06-13 16:34:52.039581+00	2014
2652	188.10	173.90	4401	2	260	17	23	2016-06-13 16:34:52.047079+00	2014
2653	134.30	104.20	4402	2	288	25	55	2016-06-13 16:34:52.055155+00	2014
2654	184.50	151.60	4408	2	436	20	30	2016-06-13 16:34:52.062239+00	2014
2655	140.90	118.70	4407	2	1018	40	100	2016-06-13 16:34:52.070551+00	2014
2656	121.90	91.90	4407	1	96	5	15	2016-06-13 16:34:52.078923+00	2014
2657	123.60	95.70	4406	2	589	15	35	2016-06-13 16:34:52.087298+00	2014
2658	\N	131.80	4405	1	66	5	10	2016-06-13 16:34:52.095606+00	2014
2659	162.10	144.80	4405	2	734	25	60	2016-06-13 16:34:52.10396+00	2014
2660	147.70	126.70	4404	2	220	10	20	2016-06-13 16:34:52.112269+00	2014
2661	126.10	110.70	4403	2	311	10	20	2016-06-13 16:34:52.120636+00	2014
2662	179.90	156.10	4393	2	467	30	45	2016-06-13 16:34:52.178974+00	2014
2663	146.00	110.10	5338	1	167	10	20	2016-06-13 16:34:52.187269+00	2014
2664	169.40	151.30	4392	1	89	5	10	2016-06-13 16:34:52.195619+00	2014
2665	189.60	165.70	4392	2	238	10	25	2016-06-13 16:34:52.20396+00	2014
2666	174.50	144.60	4391	2	59	4	8	2016-06-13 16:34:52.212263+00	2014
2667	183.70	172.30	4381	2	71	4	8	2016-06-13 16:34:52.220615+00	2014
2668	191.40	166.20	4380	2	415	15	45	2016-06-13 16:34:52.228955+00	2014
2669	173.90	152.80	4379	2	177	20	30	2016-06-13 16:34:52.23723+00	2014
2670	165.50	139.00	4378	2	324	5	35	2016-06-13 16:34:52.245598+00	2014
2671	158.70	130.60	4377	2	159	15	35	2016-06-13 16:34:52.253933+00	2014
2672	126.50	99.60	4376	2	172	15	35	2016-06-13 16:34:52.262273+00	2014
2673	133.10	118.40	4382	2	335	15	25	2016-06-13 16:34:52.320697+00	2014
2674	133.50	109.40	4383	2	160	5	15	2016-06-13 16:34:52.329012+00	2014
2675	171.90	153.30	4384	2	449	10	20	2016-06-13 16:34:52.337274+00	2014
2676	163.40	136.00	4385	2	242	5	15	2016-06-13 16:34:52.345646+00	2014
2677	181.20	157.70	4386	1	94	1	14	2016-06-13 16:34:52.354005+00	2014
2678	201.70	161.00	4386	2	229	4	31	2016-06-13 16:34:52.362319+00	2014
2679	140.90	100.90	4387	2	127	5	15	2016-06-13 16:34:52.37065+00	2014
2680	167.30	136.00	4388	2	230	10	30	2016-06-13 16:34:52.378985+00	2014
2681	166.80	141.40	4389	2	144	5	15	2016-06-13 16:34:52.387317+00	2014
2682	102.40	80.20	4390	2	202	5	15	2016-06-13 16:34:52.395668+00	2014
2683	181.80	146.80	4870	2	341	5	20	2016-06-13 16:34:52.404726+00	2014
2684	105.80	85.00	4871	2	524	5	20	2016-06-13 16:34:52.462301+00	2014
2685	197.10	175.80	4872	2	371	4	11	2016-06-13 16:34:52.470653+00	2014
2686	168.40	164.70	4872	1	95	1	4	2016-06-13 16:34:52.478984+00	2014
2687	177.50	147.70	4873	2	344	5	15	2016-06-13 16:34:52.487328+00	2014
2688	180.50	159.50	4874	2	417	5	15	2016-06-13 16:34:52.495716+00	2014
2689	117.10	98.30	4875	1	314	10	15	2016-06-13 16:34:52.50404+00	2014
2690	133.00	106.50	4875	2	1713	65	70	2016-06-13 16:34:52.512375+00	2014
2691	129.80	107.00	4876	2	839	35	45	2016-06-13 16:34:52.520701+00	2014
2692	108.30	81.10	4877	2	721	20	30	2016-06-13 16:34:52.529035+00	2014
2693	143.60	99.20	4878	1	145	4	6	2016-06-13 16:34:52.537366+00	2014
2694	123.10	90.60	4878	2	724	21	29	2016-06-13 16:34:52.545688+00	2014
2695	113.60	86.80	4869	2	638	20	30	2016-06-13 16:34:52.612299+00	2014
2696	126.70	86.90	4868	1	311	7	13	2016-06-13 16:34:52.620692+00	2014
2697	125.80	101.80	4868	2	1318	48	57	2016-06-13 16:34:52.629435+00	2014
2698	112.00	81.00	4859	1	251	11	14	2016-06-13 16:34:52.637442+00	2014
2699	116.80	90.50	4859	2	1087	34	46	2016-06-13 16:34:52.645708+00	2014
2700	123.40	89.80	4860	2	1425	43	62	2016-06-13 16:34:52.65404+00	2014
2701	92.80	78.60	4860	1	252	7	13	2016-06-13 16:34:52.662371+00	2014
2702	99.10	82.20	4861	2	1000	15	35	2016-06-13 16:34:52.670726+00	2014
2703	147.00	102.00	4862	1	82	4	11	2016-06-13 16:34:52.67903+00	2014
2704	125.70	101.40	4862	2	181	11	14	2016-06-13 16:34:52.687409+00	2014
2705	106.90	87.80	4863	2	698	20	30	2016-06-13 16:34:52.695741+00	2014
2706	103.80	80.00	4864	1	278	10	15	2016-06-13 16:34:52.754184+00	2014
2707	119.10	93.50	4864	2	1129	30	45	2016-06-13 16:34:52.76235+00	2014
2708	135.60	107.20	4865	2	430	35	40	2016-06-13 16:34:52.770665+00	2014
2709	122.00	100.70	4866	2	1307	30	45	2016-06-13 16:34:52.779072+00	2014
2710	120.40	92.60	4867	2	1076	20	55	2016-06-13 16:34:52.787404+00	2014
2711	182.10	154.90	4463	2	402	6	24	2016-06-13 16:34:52.796456+00	2014
2712	134.00	109.20	4464	2	201	4	16	2016-06-13 16:34:52.8039+00	2014
2713	179.00	155.30	4465	2	315	5	15	2016-06-13 16:34:52.812366+00	2014
2714	140.70	117.80	4466	2	906	25	60	2016-06-13 16:34:52.820682+00	2014
2715	103.90	78.70	4466	1	53	5	10	2016-06-13 16:34:52.829076+00	2014
2716	110.30	94.40	4467	1	51	5	10	2016-06-13 16:34:52.837391+00	2014
2717	138.90	123.20	4467	2	505	25	30	2016-06-13 16:34:52.895821+00	2014
2718	141.40	111.80	4468	2	424	25	35	2016-06-13 16:34:52.904806+00	2014
2719	124.10	94.90	4469	2	403	25	35	2016-06-13 16:34:52.912726+00	2014
2720	126.70	100.80	4470	2	816	35	50	2016-06-13 16:34:52.921074+00	2014
2721	114.00	85.10	4462	1	52	5	10	2016-06-13 16:34:52.929263+00	2014
2722	127.60	99.30	4462	2	1186	45	50	2016-06-13 16:34:52.937393+00	2014
2723	104.40	86.90	4461	1	48	5	10	2016-06-13 16:34:52.946285+00	2014
2724	117.50	93.50	4461	2	725	35	40	2016-06-13 16:34:52.962517+00	2014
2725	130.90	96.30	4453	2	476	32	38	2016-06-13 16:34:52.970792+00	2014
2726	128.20	77.70	4453	1	31	3	7	2016-06-13 16:34:52.979033+00	2014
2727	127.80	92.80	4454	2	510	30	50	2016-06-13 16:34:53.037601+00	2014
2728	142.60	100.50	4455	1	42	5	10	2016-06-13 16:34:53.045942+00	2014
2729	139.30	108.70	4455	2	496	35	40	2016-06-13 16:34:53.054105+00	2014
2730	136.10	114.20	4456	2	416	20	30	2016-06-13 16:34:53.062432+00	2014
2731	132.30	97.60	4457	2	415	20	30	2016-06-13 16:34:53.070769+00	2014
2732	130.30	100.90	4458	2	449	10	40	2016-06-13 16:34:53.079109+00	2014
2733	136.40	111.80	4459	2	328	10	40	2016-06-13 16:34:53.087436+00	2014
2734	95.30	79.20	4460	2	304	5	15	2016-06-13 16:34:53.095778+00	2014
2735	153.80	114.20	4619	2	160	3	10	2016-06-13 16:34:53.104807+00	2014
2736	124.80	87.40	4619	1	43	2	5	2016-06-13 16:34:53.11243+00	2014
2737	146.10	121.20	4620	1	16	2	5	2016-06-13 16:34:53.120805+00	2014
2738	167.60	126.10	4620	2	59	3	10	2016-06-13 16:34:53.179663+00	2014
2739	187.10	174.80	4621	1	56	2	5	2016-06-13 16:34:53.33512+00	2014
2740	191.20	178.20	4621	2	131	3	10	2016-06-13 16:34:53.354911+00	2014
2741	187.30	168.20	4622	2	72	3	10	2016-06-13 16:34:53.363557+00	2014
2742	184.60	176.20	4622	1	44	2	5	2016-06-13 16:34:53.373749+00	2014
2743	160.40	136.10	4623	2	1411	80	120	2016-06-13 16:34:53.381215+00	2014
2744	148.10	125.20	4623	1	436	35	55	2016-06-13 16:34:53.389382+00	2014
2745	164.70	136.00	4624	2	1155	50	90	2016-06-13 16:34:53.397592+00	2014
2746	167.80	141.70	4624	1	263	25	35	2016-06-13 16:34:53.405947+00	2014
2747	149.40	123.60	4625	2	481	30	50	2016-06-13 16:34:53.414104+00	2014
2748	159.50	124.00	4625	1	78	15	25	2016-06-13 16:34:53.420785+00	2014
2749	158.70	138.60	4626	2	205	7	10	2016-06-13 16:34:53.429084+00	2014
2750	145.30	119.60	4626	1	65	3	5	2016-06-13 16:34:53.488753+00	2014
2751	137.90	113.20	4627	2	200	10	17	2016-06-13 16:34:53.497822+00	2014
2752	154.30	145.70	4627	1	54	5	8	2016-06-13 16:34:53.505191+00	2014
2753	154.20	135.40	4628	2	377	20	27	2016-06-13 16:34:53.513527+00	2014
2754	164.10	148.60	4628	1	89	10	13	2016-06-13 16:34:53.521768+00	2014
2755	169.50	144.70	4629	2	1150	54	79	2016-06-13 16:34:53.52994+00	2014
2756	144.60	118.30	4629	1	210	21	36	2016-06-13 16:34:53.537475+00	2014
2757	179.90	154.10	4630	1	174	10	25	2016-06-13 16:34:53.545812+00	2014
2758	169.50	142.60	4630	2	645	30	55	2016-06-13 16:34:53.554158+00	2014
2759	156.40	123.30	4631	2	259	25	30	2016-06-13 16:34:53.562485+00	2014
2760	178.90	139.00	4631	1	60	10	15	2016-06-13 16:34:53.570953+00	2014
2761	168.00	140.20	4632	1	142	20	20	2016-06-13 16:34:53.632177+00	2014
2762	169.00	144.00	4632	2	510	40	50	2016-06-13 16:34:53.639799+00	2014
2763	184.00	164.30	4618	1	31	6	9	2016-06-13 16:34:53.646414+00	2014
2764	164.20	143.50	4618	2	164	14	21	2016-06-13 16:34:53.654248+00	2014
2765	134.80	100.20	4617	1	70	15	20	2016-06-13 16:34:53.662484+00	2014
2766	166.80	138.50	4617	2	509	30	35	2016-06-13 16:34:53.670771+00	2014
2767	142.20	113.40	4616	1	119	25	32	2016-06-13 16:34:53.679205+00	2014
2768	160.80	132.30	4616	2	751	50	48	2016-06-13 16:34:53.687549+00	2014
2769	179.00	149.00	4607	2	123	10	17	2016-06-13 16:34:53.695844+00	2014
2770	137.20	118.60	4607	1	32	5	8	2016-06-13 16:34:53.704212+00	2014
2771	191.20	171.70	4606	2	374	15	22	2016-06-13 16:34:53.712513+00	2014
2772	170.70	145.30	4606	1	95	10	13	2016-06-13 16:34:53.770895+00	2014
2773	172.80	160.40	4605	1	83	6	8	2016-06-13 16:34:53.77921+00	2014
2774	187.20	173.50	4605	2	278	14	22	2016-06-13 16:34:53.787539+00	2014
2775	113.30	96.30	4604	1	126	8	15	2016-06-13 16:34:53.795863+00	2014
2776	142.50	111.00	4604	2	305	22	35	2016-06-13 16:34:53.804202+00	2014
2777	163.60	145.20	4603	2	701	30	35	2016-06-13 16:34:53.812538+00	2014
2778	120.10	86.10	4603	1	109	15	20	2016-06-13 16:34:53.820864+00	2014
2779	149.00	116.40	4602	1	347	33	46	2016-06-13 16:34:53.82919+00	2014
2780	156.10	128.30	4602	2	1103	72	89	2016-06-13 16:34:53.83753+00	2014
2781	128.10	112.00	4608	2	305	10	15	2016-06-13 16:34:53.84585+00	2014
2782	133.30	113.50	4608	1	70	5	10	2016-06-13 16:34:53.854171+00	2014
2783	167.20	148.70	4609	2	486	23	27	2016-06-13 16:34:53.912603+00	2014
2784	127.30	109.50	4609	1	72	12	13	2016-06-13 16:34:53.920923+00	2014
2785	161.90	109.60	4610	2	293	14	27	2016-06-13 16:34:53.929257+00	2014
2786	183.20	162.40	4610	1	67	6	13	2016-06-13 16:34:53.937566+00	2014
2787	163.50	136.80	4611	2	313	21	25	2016-06-13 16:34:53.945816+00	2014
2788	152.60	138.70	4611	1	125	9	15	2016-06-13 16:34:53.954136+00	2014
2789	171.70	136.10	4612	2	142	3	10	2016-06-13 16:34:53.964381+00	2014
2790	177.60	156.60	4612	1	37	2	5	2016-06-13 16:34:53.971935+00	2014
2791	152.10	127.40	4613	1	27	3	5	2016-06-13 16:34:53.979397+00	2014
2792	162.00	137.10	4613	2	54	7	10	2016-06-13 16:34:53.987699+00	2014
2793	149.60	106.70	4614	2	147	3	10	2016-06-13 16:34:53.995991+00	2014
2794	132.70	114.70	4614	1	48	2	5	2016-06-13 16:34:54.054237+00	2014
2795	173.70	157.40	4615	1	29	3	8	2016-06-13 16:34:54.062564+00	2014
2796	186.80	158.30	4615	2	109	7	22	2016-06-13 16:34:54.070909+00	2014
2797	210.80	199.50	5339	1	142	10	15	2016-06-13 16:34:54.079888+00	2014
2798	207.70	193.60	4586	2	318	15	35	2016-06-13 16:34:54.087595+00	2014
2799	216.70	182.70	4587	2	235	5	15	2016-06-13 16:34:54.095913+00	2014
2800	204.90	192.70	4588	2	695	30	35	2016-06-13 16:34:54.104277+00	2014
2801	206.30	156.60	5340	1	82	5	15	2016-06-13 16:34:54.112577+00	2014
2802	202.10	188.30	4589	2	431	15	35	2016-06-13 16:34:54.120977+00	2014
2803	211.20	198.30	4589	1	133	5	10	2016-06-13 16:34:54.129318+00	2014
2804	207.80	163.80	4590	2	69	4	11	2016-06-13 16:34:54.137634+00	2014
2805	176.90	163.10	4590	1	20	1	4	2016-06-13 16:34:54.196847+00	2014
2806	211.70	168.30	4591	2	79	5	15	2016-06-13 16:34:54.205224+00	2014
2807	193.40	175.80	4592	2	822	18	44	2016-06-13 16:34:54.213381+00	2014
2808	157.90	136.70	4592	1	23	2	6	2016-06-13 16:34:54.221752+00	2014
2809	179.50	162.40	4593	2	380	10	15	2016-06-13 16:34:54.229935+00	2014
2810	190.80	127.20	4594	2	230	9	11	2016-06-13 16:34:54.238301+00	2014
2811	194.40	119.40	4594	1	36	1	4	2016-06-13 16:34:54.246659+00	2014
2812	194.70	147.20	4601	2	175	13	35	2016-06-13 16:34:54.254831+00	2014
2813	187.70	138.90	4601	1	26	2	5	2016-06-13 16:34:54.263189+00	2014
2814	173.80	137.80	4600	1	22	2	5	2016-06-13 16:34:54.271413+00	2014
2815	194.00	118.70	4600	2	145	8	35	2016-06-13 16:34:54.279744+00	2014
2816	191.00	173.10	4599	2	899	13	49	2016-06-13 16:34:54.340587+00	2014
2817	144.80	124.90	4599	1	48	2	6	2016-06-13 16:34:54.346656+00	2014
2818	179.40	158.80	4598	2	304	28	34	2016-06-13 16:34:54.354946+00	2014
2819	170.60	146.40	4598	1	27	2	6	2016-06-13 16:34:54.363289+00	2014
2820	171.70	116.90	4597	2	120	5	20	2016-06-13 16:34:54.371606+00	2014
2821	139.20	98.50	4596	2	103	5	20	2016-06-13 16:34:54.379923+00	2014
2822	151.60	103.10	4595	2	437	18	44	2016-06-13 16:34:54.401166+00	2014
2823	145.60	122.80	4595	1	38	2	6	2016-06-13 16:34:54.42131+00	2014
2824	176.50	152.20	4585	2	382	13	20	2016-06-13 16:34:54.429699+00	2014
2825	164.90	134.50	4585	1	31	2	5	2016-06-13 16:34:54.489328+00	2014
2826	176.40	154.90	4584	2	179	10	20	2016-06-13 16:34:54.496716+00	2014
2827	148.00	107.30	4574	1	37	2	6	2016-06-13 16:34:54.504358+00	2014
2828	160.40	133.90	4574	2	473	18	29	2016-06-13 16:34:54.512686+00	2014
2829	154.80	125.90	4573	2	105	10	15	2016-06-13 16:34:54.521023+00	2014
2830	185.70	161.80	4572	2	215	5	20	2016-06-13 16:34:54.529359+00	2014
2831	169.40	143.90	4571	2	128	10	15	2016-06-13 16:34:54.537684+00	2014
2832	207.70	193.20	4570	1	27	1	4	2016-06-13 16:34:54.546011+00	2014
2833	189.00	171.60	4570	2	112	4	16	2016-06-13 16:34:54.554348+00	2014
2834	203.70	196.00	4569	1	70	1	6	2016-06-13 16:34:54.56269+00	2014
2835	216.20	202.50	4569	2	467	4	29	2016-06-13 16:34:54.571018+00	2014
2836	251.30	228.40	4568	2	462	12	48	2016-06-13 16:34:54.631452+00	2014
2837	237.20	188.80	4568	1	34	3	7	2016-06-13 16:34:54.639761+00	2014
2838	160.40	148.50	4575	2	512	4	11	2016-06-13 16:34:54.645916+00	2014
2839	134.90	116.40	4575	1	17	1	4	2016-06-13 16:34:54.65542+00	2014
2840	201.80	173.90	4576	2	312	4	21	2016-06-13 16:34:54.663765+00	2014
2841	195.50	167.30	4576	1	34	1	4	2016-06-13 16:34:54.672061+00	2014
2842	206.70	178.80	4577	2	380	10	30	2016-06-13 16:34:54.6804+00	2014
2843	173.60	133.30	4578	1	56	2	6	2016-06-13 16:34:54.688744+00	2014
2844	176.30	134.30	4578	2	238	8	39	2016-06-13 16:34:54.697089+00	2014
2845	163.20	108.20	4579	2	219	15	35	2016-06-13 16:34:54.705391+00	2014
2846	165.80	104.50	4580	2	209	17	23	2016-06-13 16:34:54.713729+00	2014
2847	162.40	119.80	4580	1	34	3	7	2016-06-13 16:34:54.782029+00	2014
2848	197.60	142.30	4581	2	85	4	16	2016-06-13 16:34:54.79108+00	2014
2849	188.40	115.40	4581	1	13	1	4	2016-06-13 16:34:54.807669+00	2014
2850	198.70	178.40	4582	1	18	1	4	2016-06-13 16:34:54.824071+00	2014
2851	214.10	170.30	4582	2	92	1	19	2016-06-13 16:34:54.832211+00	2014
2852	186.00	153.60	4583	2	125	3	22	2016-06-13 16:34:54.840452+00	2014
2853	173.00	137.10	5213	1	478	45	70	2016-06-13 16:34:54.847731+00	2014
2854	174.70	148.30	5213	2	2106	125	210	2016-06-13 16:34:54.855377+00	2014
2855	192.90	160.20	5212	2	431	22	52	2016-06-13 16:34:54.863877+00	2014
2856	144.30	110.70	5212	1	117	8	18	2016-06-13 16:34:54.872187+00	2014
2857	172.80	139.40	5211	1	566	38	60	2016-06-13 16:34:54.880476+00	2014
2858	171.30	142.00	5211	2	1726	112	180	2016-06-13 16:34:54.938888+00	2014
2859	145.40	116.40	5210	1	159	10	25	2016-06-13 16:34:54.947128+00	2014
2860	161.90	91.00	5210	1	43	4	9	2016-06-13 16:34:54.955459+00	2014
2861	165.30	136.40	5210	2	874	30	75	2016-06-13 16:34:54.963753+00	2014
2862	156.50	92.60	5210	2	240	11	26	2016-06-13 16:34:54.972118+00	2014
2863	188.10	168.60	5209	1	152	4	9	2016-06-13 16:34:54.980444+00	2014
2864	206.00	182.50	5209	2	512	11	26	2016-06-13 16:34:54.988783+00	2014
2865	147.20	108.70	5208	1	82	4	9	2016-06-13 16:34:54.997118+00	2014
2866	155.60	117.30	5208	2	430	11	26	2016-06-13 16:34:55.005437+00	2014
2867	137.00	119.20	5207	1	167	6	12	2016-06-13 16:34:55.013746+00	2014
2868	149.30	124.70	5207	2	918	19	38	2016-06-13 16:34:55.022099+00	2014
2869	152.70	127.50	5206	1	111	5	10	2016-06-13 16:34:55.081886+00	2014
2870	174.40	154.80	5206	2	767	15	30	2016-06-13 16:34:55.090843+00	2014
2871	191.30	163.20	5080	2	249	10	15	2016-06-13 16:34:55.100187+00	2014
2872	155.90	119.80	5081	2	278	10	15	2016-06-13 16:34:55.107095+00	2014
2873	205.30	157.60	5082	1	155	3	16	2016-06-13 16:34:55.115151+00	2014
2874	207.00	185.10	5082	2	1440	17	94	2016-06-13 16:34:55.122122+00	2014
2875	165.80	144.00	5083	1	92	3	8	2016-06-13 16:34:55.130483+00	2014
2876	194.00	168.00	5083	2	930	17	92	2016-06-13 16:34:55.138749+00	2014
2877	191.10	174.80	4748	2	120	7	18	2016-06-13 16:34:55.147731+00	2014
2878	194.20	183.50	4747	2	205	6	14	2016-06-13 16:34:55.155443+00	2014
2879	186.20	171.70	4746	2	123	7	18	2016-06-13 16:34:55.163822+00	2014
2880	185.30	169.70	4745	1	94	4	11	2016-06-13 16:34:55.23049+00	2014
2881	199.30	181.10	4745	2	109	6	19	2016-06-13 16:34:55.240863+00	2014
2882	213.20	202.70	4744	1	217	2	18	2016-06-13 16:34:55.248727+00	2014
2883	220.50	190.20	4744	2	1063	8	152	2016-06-13 16:34:55.25709+00	2014
2884	216.20	192.90	4743	1	154	1	19	2016-06-13 16:34:55.265298+00	2014
2885	234.00	192.30	4743	2	597	4	96	2016-06-13 16:34:55.273635+00	2014
2886	209.50	188.10	4742	2	435	6	44	2016-06-13 16:34:55.281891+00	2014
2887	182.20	165.40	4742	1	139	4	21	2016-06-13 16:34:55.290244+00	2014
2888	215.10	189.20	4738	2	619	6	69	2016-06-13 16:34:55.2972+00	2014
2889	184.20	167.10	4738	1	178	4	21	2016-06-13 16:34:55.305516+00	2014
2890	178.20	155.80	4739	2	182	5	45	2016-06-13 16:34:55.31384+00	2014
2891	180.70	161.40	4740	2	182	20	30	2016-06-13 16:34:55.372248+00	2014
2892	184.50	169.00	4741	2	121	5	15	2016-06-13 16:34:55.380545+00	2014
2893	107.30	92.80	5199	1	4	1	3	2016-06-13 16:34:55.389591+00	2014
2894	115.40	100.40	5199	2	22	4	7	2016-06-13 16:34:55.397128+00	2014
2895	144.90	104.80	5200	2	34	5	8	2016-06-13 16:34:55.405504+00	2014
2896	163.40	138.70	5200	1	10	1	2	2016-06-13 16:34:55.413848+00	2014
2897	143.60	113.40	5201	2	36	4	11	2016-06-13 16:34:55.422179+00	2014
2898	139.90	118.60	5201	1	8	1	4	2016-06-13 16:34:55.430515+00	2014
2899	162.50	130.20	5202	1	10	2	5	2016-06-13 16:34:55.438848+00	2014
2900	151.20	137.30	5202	2	59	8	10	2016-06-13 16:34:55.447179+00	2014
2901	176.60	147.60	5203	2	145	10	15	2016-06-13 16:34:55.455542+00	2014
2902	146.50	130.10	5204	2	71	8	8	2016-06-13 16:34:55.513896+00	2014
2903	147.70	145.40	5204	1	13	2	2	2016-06-13 16:34:55.522226+00	2014
2904	\N	127.90	5205	1	14	2	12	2016-06-13 16:34:55.530507+00	2014
2905	\N	126.60	5205	2	49	8	18	2016-06-13 16:34:55.538884+00	2014
2906	\N	127.40	5198	1	9	2	7	2016-06-13 16:34:55.547201+00	2014
2907	\N	108.60	5198	2	16	3	3	2016-06-13 16:34:55.555523+00	2014
2908	136.70	113.30	5197	1	5	2	2	2016-06-13 16:34:55.563892+00	2014
2909	142.00	113.50	5197	2	21	3	4	2016-06-13 16:34:55.572222+00	2014
2910	\N	115.60	5190	2	26	3	8	2016-06-13 16:34:55.580533+00	2014
2911	\N	144.40	5190	1	6	2	2	2016-06-13 16:34:55.588863+00	2014
2912	\N	132.90	5191	2	91	5	15	2016-06-13 16:34:55.597158+00	2014
2913	\N	109.20	5192	2	23	4	8	2016-06-13 16:34:55.656163+00	2014
2914	134.90	112.70	5193	2	45	6	7	2016-06-13 16:34:55.664519+00	2014
2915	152.40	126.80	5194	2	113	5	32	2016-06-13 16:34:55.672389+00	2014
2916	\N	116.40	5195	1	11	1	5	2016-06-13 16:34:55.680574+00	2014
2917	\N	132.30	5195	2	55	4	12	2016-06-13 16:34:55.688902+00	2014
2918	120.00	110.20	5196	1	10	2	3	2016-06-13 16:34:55.697263+00	2014
2919	140.10	116.70	5196	2	82	8	12	2016-06-13 16:34:55.705586+00	2014
2920	178.90	158.40	5241	2	254	10	15	2016-06-13 16:34:55.71465+00	2014
2921	\N	116.00	5241	1	47	5	10	2016-06-13 16:34:55.72223+00	2014
2922	159.00	127.60	5240	1	15	3	4	2016-06-13 16:34:55.730585+00	2014
2923	122.20	111.00	5240	2	36	7	11	2016-06-13 16:34:55.738932+00	2014
2924	\N	112.00	5239	1	13	4	9	2016-06-13 16:34:55.797242+00	2014
2925	141.10	101.40	5239	2	91	3	21	2016-06-13 16:34:55.805587+00	2014
2926	156.50	127.90	5238	2	245	7	34	2016-06-13 16:34:55.813898+00	2014
2927	137.70	119.40	5238	1	23	2	8	2016-06-13 16:34:55.822246+00	2014
2928	129.30	102.40	5237	2	144	6	18	2016-06-13 16:34:55.830577+00	2014
2929	\N	110.90	5237	1	15	2	13	2016-06-13 16:34:55.839534+00	2014
2930	\N	105.80	5236	2	14	1	4	2016-06-13 16:34:55.847471+00	2014
2931	\N	112.10	5236	1	6	1	4	2016-06-13 16:34:55.855527+00	2014
2932	122.00	110.30	5235	1	15	3	6	2016-06-13 16:34:55.863878+00	2014
2933	171.70	113.10	5235	2	69	7	26	2016-06-13 16:34:55.872268+00	2014
2934	\N	118.70	5234	2	59	3	16	2016-06-13 16:34:55.880613+00	2014
2935	\N	112.40	5234	1	16	4	4	2016-06-13 16:34:55.939555+00	2014
2936	169.50	118.60	5242	2	205	5	31	2016-06-13 16:34:55.947281+00	2014
2937	141.30	108.00	5242	1	18	4	8	2016-06-13 16:34:55.95564+00	2014
2938	154.10	117.50	5243	2	155	6	24	2016-06-13 16:34:55.963962+00	2014
2939	114.90	95.70	5243	1	13	3	6	2016-06-13 16:34:55.972266+00	2014
2940	\N	115.90	5251	2	14	1	5	2016-06-13 16:34:55.980583+00	2014
2941	\N	112.30	5251	1	6	1	3	2016-06-13 16:34:55.98894+00	2014
2942	\N	131.80	5250	2	95	3	20	2016-06-13 16:34:55.997252+00	2014
2943	128.00	116.50	5250	1	16	2	7	2016-06-13 16:34:56.005345+00	2014
2944	\N	112.90	5249	2	33	3	10	2016-06-13 16:34:56.013946+00	2014
2945	\N	114.00	5249	1	12	6	4	2016-06-13 16:34:56.022267+00	2014
2946	156.10	118.50	5248	2	40	3	8	2016-06-13 16:34:56.08898+00	2014
2947	\N	122.00	5248	1	10	2	4	2016-06-13 16:34:56.097255+00	2014
2948	124.80	112.30	5247	1	63	12	28	2016-06-13 16:34:56.105615+00	2014
2949	155.80	130.20	5247	2	824	45	65	2016-06-13 16:34:56.113965+00	2014
2950	125.60	113.60	5246	2	17	3	11	2016-06-13 16:34:56.122334+00	2014
2951	\N	114.10	5246	1	6	2	4	2016-06-13 16:34:56.130657+00	2014
2952	\N	140.10	5245	2	89	3	10	2016-06-13 16:34:56.138984+00	2014
2953	145.20	119.70	5245	1	10	1	3	2016-06-13 16:34:56.147341+00	2014
2954	\N	125.30	5244	2	153	5	22	2016-06-13 16:34:56.155666+00	2014
2955	\N	106.90	5244	1	20	2	4	2016-06-13 16:34:56.163996+00	2014
2956	117.80	90.60	5233	1	2	1	1	2016-06-13 16:34:56.172352+00	2014
2957	138.90	124.90	5233	2	64	2	10	2016-06-13 16:34:56.230709+00	2014
2958	\N	113.70	5232	2	31	1	8	2016-06-13 16:34:56.238993+00	2014
2959	\N	103.60	5232	1	7	1	4	2016-06-13 16:34:56.247298+00	2014
2960	110.90	107.30	5221	1	7	1	1	2016-06-13 16:34:56.255666+00	2014
2961	143.80	106.80	5221	2	59	2	6	2016-06-13 16:34:56.264+00	2014
2962	173.00	140.60	5220	2	191	3	11	2016-06-13 16:34:56.272296+00	2014
2963	123.20	103.80	5219	1	2	1	1	2016-06-13 16:34:56.280658+00	2014
2964	124.10	105.60	5219	2	13	3	3	2016-06-13 16:34:56.288995+00	2014
2965	111.70	110.20	5218	1	2	1	1	2016-06-13 16:34:56.297377+00	2014
2966	126.70	109.40	5218	2	25	5	6	2016-06-13 16:34:56.305705+00	2014
2967	147.80	109.00	5217	2	30	4	6	2016-06-13 16:34:56.314027+00	2014
2968	113.00	111.60	5217	1	2	1	1	2016-06-13 16:34:56.37242+00	2014
2969	127.10	90.50	5216	1	2	1	1	2016-06-13 16:34:56.380717+00	2014
2970	131.10	108.60	5216	2	28	4	6	2016-06-13 16:34:56.389038+00	2014
2971	134.90	107.80	5215	2	16	4	6	2016-06-13 16:34:56.397356+00	2014
2972	111.00	101.30	5215	1	3	2	1	2016-06-13 16:34:56.405691+00	2014
2973	135.30	113.50	5214	2	24	4	6	2016-06-13 16:34:56.414027+00	2014
2974	119.80	110.00	5214	1	3	1	1	2016-06-13 16:34:56.422319+00	2014
2975	136.10	121.70	5222	2	44	5	6	2016-06-13 16:34:56.430671+00	2014
2976	122.30	108.50	5222	1	4	2	2	2016-06-13 16:34:56.439075+00	2014
2977	137.70	113.40	5223	2	26	6	7	2016-06-13 16:34:56.447347+00	2014
2978	116.90	109.20	5223	1	3	1	1	2016-06-13 16:34:56.455703+00	2014
2979	127.40	118.70	5231	2	86	5	8	2016-06-13 16:34:56.514033+00	2014
2980	104.70	101.90	5231	1	2	1	1	2016-06-13 16:34:56.522412+00	2014
2981	145.90	127.90	5230	2	35	5	5	2016-06-13 16:34:56.53135+00	2014
2982	110.30	102.10	5230	1	3	1	1	2016-06-13 16:34:56.539203+00	2014
2983	153.80	133.20	5229	2	62	6	7	2016-06-13 16:34:56.547606+00	2014
2984	101.80	98.70	5229	1	3	1	1	2016-06-13 16:34:56.555756+00	2014
2985	165.60	137.40	5228	2	79	5	7	2016-06-13 16:34:56.564059+00	2014
2986	109.20	\N	5228	1	2	1	1	2016-06-13 16:34:56.572428+00	2014
2987	123.60	107.80	5227	1	22	5	8	2016-06-13 16:34:56.580747+00	2014
2988	130.20	114.50	5227	2	203	17	26	2016-06-13 16:34:56.58911+00	2014
2989	129.20	117.30	5226	1	27	5	8	2016-06-13 16:34:56.597413+00	2014
2990	144.60	119.30	5226	2	91	13	22	2016-06-13 16:34:56.657968+00	2014
2991	\N	98.70	5225	2	2	1	1	2016-06-13 16:34:56.665855+00	2014
2992	128.40	88.20	5225	1	2	1	1	2016-06-13 16:34:56.672452+00	2014
2993	\N	109.40	5224	1	2	1	1	2016-06-13 16:34:56.680724+00	2014
2994	121.80	110.30	5224	2	3	1	1	2016-06-13 16:34:56.689081+00	2014
2995	131.10	104.40	4765	1	39	2	6	2016-06-13 16:34:56.698166+00	2014
2996	166.20	154.60	4765	2	204	3	9	2016-06-13 16:34:56.70578+00	2014
2997	155.70	126.60	4764	1	48	3	9	2016-06-13 16:34:56.714134+00	2014
2998	185.30	153.50	4764	2	515	17	46	2016-06-13 16:34:56.722459+00	2014
2999	123.40	94.50	4763	1	40	3	7	2016-06-13 16:34:56.730807+00	2014
3000	169.20	150.10	4763	2	499	17	38	2016-06-13 16:34:56.73915+00	2014
3001	136.70	118.40	4762	2	303	15	20	2016-06-13 16:34:56.797463+00	2014
3002	180.10	139.90	4848	2	582	10	45	2016-06-13 16:34:56.80645+00	2014
3003	153.40	125.90	4848	1	159	5	10	2016-06-13 16:34:56.816163+00	2014
3004	160.20	127.10	4849	2	561	15	35	2016-06-13 16:34:56.824429+00	2014
3005	116.10	86.10	4850	2	549	15	35	2016-06-13 16:34:56.832612+00	2014
3006	165.10	139.40	4851	2	900	12	28	2016-06-13 16:34:56.840698+00	2014
3007	115.50	95.10	4851	1	101	3	7	2016-06-13 16:34:56.849093+00	2014
3008	141.00	110.60	4852	2	934	20	40	2016-06-13 16:34:56.857275+00	2014
3009	98.60	79.80	4852	1	259	5	10	2016-06-13 16:34:56.865526+00	2014
3010	164.30	145.40	4853	2	516	15	25	2016-06-13 16:34:56.873748+00	2014
3011	157.40	128.10	4854	2	295	5	15	2016-06-13 16:34:56.880786+00	2014
3012	135.40	120.70	5375	1	494	10	40	2016-06-13 16:34:56.940873+00	2014
3013	182.60	165.50	4855	2	1430	27	99	2016-06-13 16:34:56.948197+00	2014
3014	107.20	89.70	4856	2	617	40	60	2016-06-13 16:34:56.955844+00	2014
3015	132.20	114.90	4857	2	1857	25	50	2016-06-13 16:34:56.964167+00	2014
3016	\N	128.20	4858	1	126	5	20	2016-06-13 16:34:56.972481+00	2014
3017	\N	183.60	4858	2	446	10	35	2016-06-13 16:34:56.98081+00	2014
3018	178.30	160.40	4847	2	464	10	20	2016-06-13 16:34:56.989182+00	2014
3019	104.30	86.10	4846	2	932	10	15	2016-06-13 16:34:56.997482+00	2014
3020	180.80	158.80	4835	2	1544	30	80	2016-06-13 16:34:57.005827+00	2014
3021	158.60	135.10	5376	1	302	10	15	2016-06-13 16:34:57.014111+00	2014
3022	193.80	157.40	4836	2	261	10	25	2016-06-13 16:34:57.022489+00	2014
3023	174.40	151.40	4836	1	192	5	10	2016-06-13 16:34:57.082882+00	2014
3024	168.70	143.60	4837	2	150	4	8	2016-06-13 16:34:57.091026+00	2014
3025	161.80	145.20	4838	2	143	4	8	2016-06-13 16:34:57.097474+00	2014
3026	168.00	137.80	4839	1	195	5	15	2016-06-13 16:34:57.10581+00	2014
3027	204.90	175.90	4839	2	978	10	40	2016-06-13 16:34:57.114233+00	2014
3028	145.10	125.80	4840	2	978	15	35	2016-06-13 16:34:57.122593+00	2014
3029	125.80	115.90	4841	2	738	10	15	2016-06-13 16:34:57.130901+00	2014
3030	175.70	150.40	4842	2	826	10	15	2016-06-13 16:34:57.139308+00	2014
3031	194.40	163.00	4843	2	372	5	15	2016-06-13 16:34:57.14761+00	2014
3032	202.70	174.50	4844	2	269	5	15	2016-06-13 16:34:57.155904+00	2014
3033	115.70	83.60	4845	2	490	5	15	2016-06-13 16:34:57.164216+00	2014
3034	175.90	140.60	5182	2	158	4	6	2016-06-13 16:34:57.223228+00	2014
3035	155.60	132.80	5183	2	40	4	6	2016-06-13 16:34:57.230785+00	2014
3036	215.10	169.90	5184	2	121	4	6	2016-06-13 16:34:57.239191+00	2014
3037	161.50	129.40	5185	1	16	1	3	2016-06-13 16:34:57.247571+00	2014
3038	175.70	143.80	5185	2	55	2	4	2016-06-13 16:34:57.255863+00	2014
3039	170.10	148.90	5186	2	68	3	7	2016-06-13 16:34:57.264206+00	2014
3040	200.90	165.10	5187	2	446	7	13	2016-06-13 16:34:57.272487+00	2014
3041	179.70	142.10	5188	2	209	7	13	2016-06-13 16:34:57.280873+00	2014
3042	150.50	131.50	5189	1	25	3	6	2016-06-13 16:34:57.289195+00	2014
3043	162.50	145.30	5189	2	172	4	7	2016-06-13 16:34:57.297565+00	2014
3044	\N	126.50	5371	1	67	2	8	2016-06-13 16:34:57.30588+00	2014
3045	173.20	152.90	5181	2	118	3	7	2016-06-13 16:34:57.364279+00	2014
3046	169.30	149.60	5180	2	129	3	7	2016-06-13 16:34:57.372567+00	2014
3047	174.20	153.30	5172	2	41	2	3	2016-06-13 16:34:57.380904+00	2014
3048	155.50	139.30	5173	2	82	2	4	2016-06-13 16:34:57.389239+00	2014
3049	117.40	97.60	5174	2	151	2	4	2016-06-13 16:34:57.397564+00	2014
3050	146.10	127.70	5175	2	162	5	11	2016-06-13 16:34:57.405902+00	2014
3051	139.40	116.30	5176	2	63	4	6	2016-06-13 16:34:57.414182+00	2014
3052	146.00	112.30	5176	1	13	1	5	2016-06-13 16:34:57.422546+00	2014
3053	138.70	124.70	5177	2	84	3	12	2016-06-13 16:34:57.4309+00	2014
3054	206.10	154.80	5178	2	290	7	16	2016-06-13 16:34:57.439218+00	2014
3055	158.50	126.10	5179	1	31	2	4	2016-06-13 16:34:57.447569+00	2014
3056	188.60	158.60	5179	2	195	6	13	2016-06-13 16:34:57.530912+00	2014
3057	167.30	135.80	4540	2	416	10	15	2016-06-13 16:34:57.539825+00	2014
3058	157.60	126.50	4541	2	290	10	40	2016-06-13 16:34:57.54749+00	2014
3059	163.20	134.70	4542	2	120	5	10	2016-06-13 16:34:57.555822+00	2014
3060	145.70	120.70	4543	2	108	10	10	2016-06-13 16:34:57.564286+00	2014
3061	132.30	114.90	4544	2	181	5	10	2016-06-13 16:34:57.572609+00	2014
3062	166.90	141.10	4545	2	235	10	20	2016-06-13 16:34:57.580946+00	2014
3063	150.70	127.20	5356	1	772	20	30	2016-06-13 16:34:57.589287+00	2014
3064	213.80	204.80	4546	2	495	20	30	2016-06-13 16:34:57.597601+00	2014
3065	153.90	130.70	4547	2	1885	32	38	2016-06-13 16:34:57.605941+00	2014
3066	160.20	125.50	4547	1	148	8	10	2016-06-13 16:34:57.614318+00	2014
3067	149.90	116.10	5426	4	48	10	12	2016-06-13 16:34:57.688399+00	2014
3068	187.70	154.80	4548	2	498	30	40	2016-06-13 16:34:57.697608+00	2014
3069	132.20	114.50	4548	1	36	5	15	2016-06-13 16:34:57.705932+00	2014
3070	\N	\N	4549	4	17	5	5	2016-06-13 16:34:57.71421+00	2014
3071	124.20	99.90	4549	2	1083	15	25	2016-06-13 16:34:57.724019+00	2014
3072	195.00	175.10	4550	2	1439	35	65	2016-06-13 16:34:57.732403+00	2014
3073	158.40	123.00	5357	1	387	20	30	2016-06-13 16:34:57.739958+00	2014
3074	173.80	130.20	5358	4	68	15	25	2016-06-13 16:34:57.74766+00	2014
3075	199.20	185.80	4551	1	75	5	10	2016-06-13 16:34:57.755949+00	2014
3076	225.60	197.90	4551	2	1250	30	45	2016-06-13 16:34:57.814316+00	2014
3077	200.10	176.40	4552	2	346	10	15	2016-06-13 16:34:57.824962+00	2014
3078	153.90	133.30	4539	1	79	6	9	2016-06-13 16:34:57.833293+00	2014
3079	\N	\N	4539	4	39	8	9	2016-06-13 16:34:57.841331+00	2014
3080	165.20	145.10	4539	2	476	31	37	2016-06-13 16:34:57.84954+00	2014
3081	161.20	126.20	4538	1	71	7	13	2016-06-13 16:34:57.855958+00	2014
3082	161.60	142.00	4538	2	565	23	27	2016-06-13 16:34:57.864308+00	2014
3083	172.30	137.40	4529	2	1199	19	39	2016-06-13 16:34:57.872638+00	2014
3084	\N	\N	4529	4	38	8	12	2016-06-13 16:34:57.880862+00	2014
3085	154.30	119.50	4529	1	157	8	14	2016-06-13 16:34:57.889257+00	2014
3086	158.80	136.10	4528	2	535	30	35	2016-06-13 16:34:57.897578+00	2014
3087	\N	\N	4528	4	37	9	11	2016-06-13 16:34:57.955883+00	2014
3088	163.00	136.50	4528	1	94	6	9	2016-06-13 16:34:57.964252+00	2014
3089	147.50	129.60	4527	2	369	20	30	2016-06-13 16:34:57.972634+00	2014
3090	131.30	115.70	4526	2	324	10	15	2016-06-13 16:34:57.980954+00	2014
3091	146.50	120.00	4525	2	626	15	40	2016-06-13 16:34:57.989271+00	2014
3092	136.90	101.10	4525	1	91	5	15	2016-06-13 16:34:57.997589+00	2014
3093	114.10	82.10	4530	1	67	5	10	2016-06-13 16:34:58.005952+00	2014
3094	146.80	130.10	4530	2	784	15	20	2016-06-13 16:34:58.014295+00	2014
3095	161.30	131.30	4531	2	215	5	20	2016-06-13 16:34:58.022608+00	2014
3096	192.40	162.90	4532	2	1179	10	40	2016-06-13 16:34:58.030963+00	2014
3097	218.60	209.00	4533	2	389	5	35	2016-06-13 16:34:58.039271+00	2014
3098	192.30	169.40	4534	2	255	5	20	2016-06-13 16:34:58.047549+00	2014
3099	199.90	176.90	4535	2	280	5	35	2016-06-13 16:34:58.05596+00	2014
3100	158.80	142.40	4536	2	216	15	20	2016-06-13 16:34:58.06429+00	2014
3101	133.70	90.70	4537	2	540	10	20	2016-06-13 16:34:58.072626+00	2014
3102	107.90	79.60	4635	1	70	2	4	2016-06-13 16:34:58.081647+00	2014
3103	105.10	82.40	4635	2	216	8	11	2016-06-13 16:34:58.089312+00	2014
3104	113.50	84.20	4634	1	73	2	4	2016-06-13 16:34:58.097596+00	2014
3105	153.90	123.90	4634	2	158	8	11	2016-06-13 16:34:58.105986+00	2014
3106	100.50	91.80	4633	1	68	2	4	2016-06-13 16:34:58.114374+00	2014
3107	117.30	88.20	4633	2	183	8	11	2016-06-13 16:34:58.122675+00	2014
4629	132.30	75.70	5410	5	162	5	15	2016-06-13 18:37:56.926657+00	2015
4630	110.60	86.60	5411	2	110	5	10	2016-06-13 18:37:56.934762+00	2015
4631	104.80	82.40	5411	5	166	5	10	2016-06-13 18:37:56.943338+00	2015
4632	189.80	141.30	5412	5	90	5	15	2016-06-13 18:37:56.951456+00	2015
4633	183.10	157.50	4934	2	88	2	8	2016-06-13 18:37:56.959677+00	2015
4634	172.70	135.60	4934	5	136	3	12	2016-06-13 18:37:56.96805+00	2015
4635	155.80	135.00	4933	2	106	2	8	2016-06-13 18:37:57.026422+00	2015
4636	171.00	151.60	4933	5	126	3	12	2016-06-13 18:37:57.034745+00	2015
4637	157.30	130.00	4924	2	81	2	8	2016-06-13 18:37:57.043094+00	2015
4638	165.10	142.20	4924	5	112	3	12	2016-06-13 18:37:57.051418+00	2015
4639	186.80	184.80	4923	2	131	1	7	2016-06-13 18:37:57.059754+00	2015
4640	205.80	157.60	4923	5	141	2	10	2016-06-13 18:37:57.068075+00	2015
4641	119.90	98.50	4914	2	203	15	15	2016-06-13 18:37:57.076404+00	2015
4642	129.20	90.90	4914	5	341	20	25	2016-06-13 18:37:57.084694+00	2015
4643	108.70	95.40	4913	2	147	10	10	2016-06-13 18:37:57.093032+00	2015
4644	110.10	93.10	4913	5	229	15	15	2016-06-13 18:37:57.101402+00	2015
4645	110.60	79.20	4912	2	145	5	15	2016-06-13 18:37:57.109722+00	2015
4646	131.30	109.60	4912	5	287	10	20	2016-06-13 18:37:57.168054+00	2015
4647	138.00	112.90	4911	2	196	10	20	2016-06-13 18:37:57.176371+00	2015
4648	140.80	100.10	4911	5	343	20	30	2016-06-13 18:37:57.184738+00	2015
4649	89.40	73.50	4910	2	232	10	15	2016-06-13 18:37:57.19306+00	2015
4650	121.00	90.20	4910	5	299	15	20	2016-06-13 18:37:57.201402+00	2015
4651	100.30	76.60	4915	2	209	15	15	2016-06-13 18:37:57.209713+00	2015
4652	100.90	87.00	4915	5	377	20	20	2016-06-13 18:37:57.218101+00	2015
4653	120.10	78.80	4916	2	328	15	35	2016-06-13 18:37:57.226346+00	2015
4654	113.80	78.80	4916	5	525	30	50	2016-06-13 18:37:57.23476+00	2015
4655	119.10	103.20	4917	2	77	5	10	2016-06-13 18:37:57.243094+00	2015
4656	119.20	105.90	4917	5	135	10	15	2016-06-13 18:37:57.251428+00	2015
4657	101.30	77.90	4918	2	176	10	20	2016-06-13 18:37:57.310168+00	2015
4658	117.00	94.20	4918	5	413	20	30	2016-06-13 18:37:57.318329+00	2015
4659	93.90	81.50	5413	2	105	5	10	2016-06-13 18:37:57.326462+00	2015
4660	94.40	73.80	5413	5	159	5	10	2016-06-13 18:37:57.335025+00	2015
4661	109.40	80.90	4919	2	161	10	15	2016-06-13 18:37:57.343132+00	2015
4662	116.10	99.20	4919	5	307	15	20	2016-06-13 18:37:57.351695+00	2015
4663	100.30	75.60	4920	2	194	10	20	2016-06-13 18:37:57.359797+00	2015
4664	105.40	82.80	4920	5	319	15	25	2016-06-13 18:37:57.368346+00	2015
4665	116.90	94.00	4921	2	160	10	10	2016-06-13 18:37:57.376389+00	2015
4666	124.00	81.80	4921	5	323	10	20	2016-06-13 18:37:57.384826+00	2015
4667	83.80	75.40	4922	2	174	5	10	2016-06-13 18:37:57.393132+00	2015
4668	78.80	73.50	4922	5	214	5	15	2016-06-13 18:37:57.451504+00	2015
4669	164.40	134.70	4484	2	259	5	25	2016-06-13 18:37:57.461925+00	2015
4670	140.70	106.30	4485	2	948	5	45	2016-06-13 18:37:57.472874+00	2015
4671	99.60	82.80	5328	2	414	5	15	2016-06-13 18:37:57.485356+00	2015
4672	193.80	155.40	4487	2	300	5	15	2016-06-13 18:37:57.493087+00	2015
4673	137.80	120.40	5329	1	503	15	25	2016-06-13 18:37:57.501912+00	2015
4704	166.80	130.70	5423	5	35	2	4	2016-06-13 18:37:57.868232+00	2015
4705	156.30	125.40	5345	5	34	3	4	2016-06-13 18:37:57.876698+00	2015
4706	141.00	120.20	5465	5	39	2	5	2016-06-13 18:37:57.892419+00	2015
4707	124.60	115.20	5347	5	44	2	4	2016-06-13 18:37:57.960462+00	2015
\.


--
-- Name: score_score_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('score_score_id_seq', 4707, true);


--
-- Data for Name: subject_subject; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY subject_subject (id, name) FROM stdin;
8	Tojik tili va adabiyoti
9	Qoraqalpoq tili va adabiyoti
10	Ingliz tili
11	Fizika
13	Ona tili va adabiyoti
14	Qozoq tili va adabiyoti
15	Nemis tili
16	Qirg'iz tili va adabiyoti
18	Fransuz tili
19	Biologiya
20	O'zbek tili va adabiyoti
21	Turkman tili va adabiyoti
22	Tarix
23	Jismoniy tarbiya va sport
24	Kimyo
25	Geografiya
27	Rus tili va adabiyoti
26	Matematika
12	Ijodiy imtihon
17	Chet tili (ingliz/nemis/fransuz)
\.


--
-- Name: subject_subject_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('subject_subject_id_seq', 27, true);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: branch_branch_code_2b125ca3_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY branch_branch
    ADD CONSTRAINT branch_branch_code_2b125ca3_uniq UNIQUE (code);


--
-- Name: branch_branch_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY branch_branch
    ADD CONSTRAINT branch_branch_pkey PRIMARY KEY (id);


--
-- Name: branch_faculty_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY branch_faculty
    ADD CONSTRAINT branch_faculty_pkey PRIMARY KEY (id);


--
-- Name: branch_studylang_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY branch_studylang
    ADD CONSTRAINT branch_studylang_pkey PRIMARY KEY (id);


--
-- Name: college_college_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY college_college
    ADD CONSTRAINT college_college_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: admissions_user
--

ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- Name: django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: admissions_user
--

ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: profession_profession_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY profession_profession
    ADD CONSTRAINT profession_profession_pkey PRIMARY KEY (id);


--
-- Name: profession_profession_subjects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY profession_profession_subjects
    ADD CONSTRAINT profession_profession_subjects_pkey PRIMARY KEY (id);


--
-- Name: profession_profession_subjects_profession_id_1ab66d7b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY profession_profession_subjects
    ADD CONSTRAINT profession_profession_subjects_profession_id_1ab66d7b_uniq UNIQUE (profession_id, subject_id);


--
-- Name: robots_rule_allowed_pkey; Type: CONSTRAINT; Schema: public; Owner: admissions_user
--

ALTER TABLE ONLY robots_rule_allowed
    ADD CONSTRAINT robots_rule_allowed_pkey PRIMARY KEY (id);


--
-- Name: robots_rule_allowed_rule_id_83b262d4_uniq; Type: CONSTRAINT; Schema: public; Owner: admissions_user
--

ALTER TABLE ONLY robots_rule_allowed
    ADD CONSTRAINT robots_rule_allowed_rule_id_83b262d4_uniq UNIQUE (rule_id, url_id);


--
-- Name: robots_rule_disallowed_pkey; Type: CONSTRAINT; Schema: public; Owner: admissions_user
--

ALTER TABLE ONLY robots_rule_disallowed
    ADD CONSTRAINT robots_rule_disallowed_pkey PRIMARY KEY (id);


--
-- Name: robots_rule_disallowed_rule_id_4d9b6222_uniq; Type: CONSTRAINT; Schema: public; Owner: admissions_user
--

ALTER TABLE ONLY robots_rule_disallowed
    ADD CONSTRAINT robots_rule_disallowed_rule_id_4d9b6222_uniq UNIQUE (rule_id, url_id);


--
-- Name: robots_rule_pkey; Type: CONSTRAINT; Schema: public; Owner: admissions_user
--

ALTER TABLE ONLY robots_rule
    ADD CONSTRAINT robots_rule_pkey PRIMARY KEY (id);


--
-- Name: robots_rule_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: admissions_user
--

ALTER TABLE ONLY robots_rule_sites
    ADD CONSTRAINT robots_rule_sites_pkey PRIMARY KEY (id);


--
-- Name: robots_rule_sites_rule_id_093f04ea_uniq; Type: CONSTRAINT; Schema: public; Owner: admissions_user
--

ALTER TABLE ONLY robots_rule_sites
    ADD CONSTRAINT robots_rule_sites_rule_id_093f04ea_uniq UNIQUE (rule_id, site_id);


--
-- Name: robots_url_pkey; Type: CONSTRAINT; Schema: public; Owner: admissions_user
--

ALTER TABLE ONLY robots_url
    ADD CONSTRAINT robots_url_pkey PRIMARY KEY (id);


--
-- Name: score_score_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY score_score
    ADD CONSTRAINT score_score_pkey PRIMARY KEY (id);


--
-- Name: subject_subject_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY subject_subject
    ADD CONSTRAINT subject_subject_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: branch_branch_5b719d66; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX branch_branch_5b719d66 ON branch_branch USING btree (block_3_id);


--
-- Name: branch_branch_b973c37f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX branch_branch_b973c37f ON branch_branch USING btree (block_2_id);


--
-- Name: branch_branch_e25746bc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX branch_branch_e25746bc ON branch_branch USING btree (block_1_id);


--
-- Name: branch_faculty_09fd5b13; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX branch_faculty_09fd5b13 ON branch_faculty USING btree (branch_id);


--
-- Name: branch_faculty_3d404635; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX branch_faculty_3d404635 ON branch_faculty USING btree (college_id);


--
-- Name: college_college_6be37982; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX college_college_6be37982 ON college_college USING btree (parent_id);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: profession_profession_subjects_162f386a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX profession_profession_subjects_162f386a ON profession_profession_subjects USING btree (profession_id);


--
-- Name: profession_profession_subjects_ffaba1d1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX profession_profession_subjects_ffaba1d1 ON profession_profession_subjects USING btree (subject_id);


--
-- Name: robots_rule_allowed_29608e0a; Type: INDEX; Schema: public; Owner: admissions_user
--

CREATE INDEX robots_rule_allowed_29608e0a ON robots_rule_allowed USING btree (url_id);


--
-- Name: robots_rule_allowed_e1150e65; Type: INDEX; Schema: public; Owner: admissions_user
--

CREATE INDEX robots_rule_allowed_e1150e65 ON robots_rule_allowed USING btree (rule_id);


--
-- Name: robots_rule_disallowed_29608e0a; Type: INDEX; Schema: public; Owner: admissions_user
--

CREATE INDEX robots_rule_disallowed_29608e0a ON robots_rule_disallowed USING btree (url_id);


--
-- Name: robots_rule_disallowed_e1150e65; Type: INDEX; Schema: public; Owner: admissions_user
--

CREATE INDEX robots_rule_disallowed_e1150e65 ON robots_rule_disallowed USING btree (rule_id);


--
-- Name: robots_rule_sites_9365d6e7; Type: INDEX; Schema: public; Owner: admissions_user
--

CREATE INDEX robots_rule_sites_9365d6e7 ON robots_rule_sites USING btree (site_id);


--
-- Name: robots_rule_sites_e1150e65; Type: INDEX; Schema: public; Owner: admissions_user
--

CREATE INDEX robots_rule_sites_e1150e65 ON robots_rule_sites USING btree (rule_id);


--
-- Name: score_score_2a0fe1b8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX score_score_2a0fe1b8 ON score_score USING btree (study_lang_id);


--
-- Name: score_score_5bb92a88; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX score_score_5bb92a88 ON score_score USING btree (faculty_id);


--
-- Name: auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: branch_branch_block_1_id_a06d3bb6_fk_subject_subject_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY branch_branch
    ADD CONSTRAINT branch_branch_block_1_id_a06d3bb6_fk_subject_subject_id FOREIGN KEY (block_1_id) REFERENCES subject_subject(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: branch_branch_block_2_id_e6ffc7db_fk_subject_subject_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY branch_branch
    ADD CONSTRAINT branch_branch_block_2_id_e6ffc7db_fk_subject_subject_id FOREIGN KEY (block_2_id) REFERENCES subject_subject(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: branch_branch_block_3_id_ab1c0a87_fk_subject_subject_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY branch_branch
    ADD CONSTRAINT branch_branch_block_3_id_ab1c0a87_fk_subject_subject_id FOREIGN KEY (block_3_id) REFERENCES subject_subject(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: branch_faculty_branch_id_7622df2e_fk_branch_branch_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY branch_faculty
    ADD CONSTRAINT branch_faculty_branch_id_7622df2e_fk_branch_branch_id FOREIGN KEY (branch_id) REFERENCES branch_branch(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: branch_faculty_college_id_5a9b268f_fk_college_college_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY branch_faculty
    ADD CONSTRAINT branch_faculty_college_id_5a9b268f_fk_college_college_id FOREIGN KEY (college_id) REFERENCES college_college(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: college_college_parent_id_bc01f8dd_fk_college_college_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY college_college
    ADD CONSTRAINT college_college_parent_id_bc01f8dd_fk_college_college_id FOREIGN KEY (parent_id) REFERENCES college_college(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_content_type_id_c4bce8eb_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_c4bce8eb_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: profession_p_profession_id_612a36b1_fk_profession_profession_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY profession_profession_subjects
    ADD CONSTRAINT profession_p_profession_id_612a36b1_fk_profession_profession_id FOREIGN KEY (profession_id) REFERENCES profession_profession(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: profession_profession_subject_id_82d4f687_fk_subject_subject_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY profession_profession_subjects
    ADD CONSTRAINT profession_profession_subject_id_82d4f687_fk_subject_subject_id FOREIGN KEY (subject_id) REFERENCES subject_subject(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: robots_rule_allowed_rule_id_aa90358c_fk_robots_rule_id; Type: FK CONSTRAINT; Schema: public; Owner: admissions_user
--

ALTER TABLE ONLY robots_rule_allowed
    ADD CONSTRAINT robots_rule_allowed_rule_id_aa90358c_fk_robots_rule_id FOREIGN KEY (rule_id) REFERENCES robots_rule(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: robots_rule_allowed_url_id_6157f60a_fk_robots_url_id; Type: FK CONSTRAINT; Schema: public; Owner: admissions_user
--

ALTER TABLE ONLY robots_rule_allowed
    ADD CONSTRAINT robots_rule_allowed_url_id_6157f60a_fk_robots_url_id FOREIGN KEY (url_id) REFERENCES robots_url(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: robots_rule_disallowed_rule_id_fad7328c_fk_robots_rule_id; Type: FK CONSTRAINT; Schema: public; Owner: admissions_user
--

ALTER TABLE ONLY robots_rule_disallowed
    ADD CONSTRAINT robots_rule_disallowed_rule_id_fad7328c_fk_robots_rule_id FOREIGN KEY (rule_id) REFERENCES robots_rule(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: robots_rule_disallowed_url_id_8e02db92_fk_robots_url_id; Type: FK CONSTRAINT; Schema: public; Owner: admissions_user
--

ALTER TABLE ONLY robots_rule_disallowed
    ADD CONSTRAINT robots_rule_disallowed_url_id_8e02db92_fk_robots_url_id FOREIGN KEY (url_id) REFERENCES robots_url(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: robots_rule_sites_rule_id_7921a799_fk_robots_rule_id; Type: FK CONSTRAINT; Schema: public; Owner: admissions_user
--

ALTER TABLE ONLY robots_rule_sites
    ADD CONSTRAINT robots_rule_sites_rule_id_7921a799_fk_robots_rule_id FOREIGN KEY (rule_id) REFERENCES robots_rule(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: robots_rule_sites_site_id_efe5be97_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: admissions_user
--

ALTER TABLE ONLY robots_rule_sites
    ADD CONSTRAINT robots_rule_sites_site_id_efe5be97_fk_django_site_id FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: score_score_faculty_id_a9e7ce7a_fk_branch_faculty_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY score_score
    ADD CONSTRAINT score_score_faculty_id_a9e7ce7a_fk_branch_faculty_id FOREIGN KEY (faculty_id) REFERENCES branch_faculty(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: score_score_study_lang_id_a335c778_fk_branch_studylang_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY score_score
    ADD CONSTRAINT score_score_study_lang_id_a335c778_fk_branch_studylang_id FOREIGN KEY (study_lang_id) REFERENCES branch_studylang(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

