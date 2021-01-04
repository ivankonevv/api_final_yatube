--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.10
-- Dumped by pg_dump version 9.6.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
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


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: _api_comment; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._api_comment (
    id character varying(1) DEFAULT NULL::character varying,
    text character varying(1) DEFAULT NULL::character varying,
    created character varying(1) DEFAULT NULL::character varying,
    author_id character varying(1) DEFAULT NULL::character varying,
    post_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._api_comment OWNER TO rebasedata;

--
-- Name: _api_follow; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._api_follow (
    id character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying,
    following_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._api_follow OWNER TO rebasedata;

--
-- Name: _api_group; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._api_group (
    id character varying(1) DEFAULT NULL::character varying,
    title character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._api_group OWNER TO rebasedata;

--
-- Name: _api_post; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._api_post (
    id smallint,
    text character varying(13) DEFAULT NULL::character varying,
    pub_date character varying(10) DEFAULT NULL::character varying,
    author_id smallint,
    group_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._api_post OWNER TO rebasedata;

--
-- Name: _auth_group; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._auth_group (
    id character varying(1) DEFAULT NULL::character varying,
    name character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._auth_group OWNER TO rebasedata;

--
-- Name: _auth_group_permissions; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._auth_group_permissions (
    id character varying(1) DEFAULT NULL::character varying,
    group_id character varying(1) DEFAULT NULL::character varying,
    permission_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._auth_group_permissions OWNER TO rebasedata;

--
-- Name: _auth_permission; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._auth_permission (
    id smallint,
    content_type_id smallint,
    codename character varying(18) DEFAULT NULL::character varying,
    name character varying(23) DEFAULT NULL::character varying
);


ALTER TABLE public._auth_permission OWNER TO rebasedata;

--
-- Name: _auth_user; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._auth_user (
    id smallint,
    password character varying(78) DEFAULT NULL::character varying,
    last_login character varying(1) DEFAULT NULL::character varying,
    is_superuser smallint,
    username character varying(9) DEFAULT NULL::character varying,
    last_name character varying(1) DEFAULT NULL::character varying,
    email character varying(1) DEFAULT NULL::character varying,
    is_staff smallint,
    is_active smallint,
    date_joined character varying(10) DEFAULT NULL::character varying,
    first_name character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._auth_user OWNER TO rebasedata;

--
-- Name: _auth_user_groups; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._auth_user_groups (
    id character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying,
    group_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._auth_user_groups OWNER TO rebasedata;

--
-- Name: _auth_user_user_permissions; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._auth_user_user_permissions (
    id character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying,
    permission_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._auth_user_user_permissions OWNER TO rebasedata;

--
-- Name: _django_admin_log; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._django_admin_log (
    id character varying(1) DEFAULT NULL::character varying,
    action_time character varying(1) DEFAULT NULL::character varying,
    object_id character varying(1) DEFAULT NULL::character varying,
    object_repr character varying(1) DEFAULT NULL::character varying,
    change_message character varying(1) DEFAULT NULL::character varying,
    content_type_id character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying,
    action_flag character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._django_admin_log OWNER TO rebasedata;

--
-- Name: _django_content_type; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._django_content_type (
    id smallint,
    app_label character varying(12) DEFAULT NULL::character varying,
    model character varying(11) DEFAULT NULL::character varying
);


ALTER TABLE public._django_content_type OWNER TO rebasedata;

--
-- Name: _django_migrations; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._django_migrations (
    id smallint,
    app character varying(12) DEFAULT NULL::character varying,
    name character varying(40) DEFAULT NULL::character varying,
    applied character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE public._django_migrations OWNER TO rebasedata;

--
-- Name: _django_session; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._django_session (
    session_key character varying(1) DEFAULT NULL::character varying,
    session_data character varying(1) DEFAULT NULL::character varying,
    expire_date character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._django_session OWNER TO rebasedata;

--
-- Name: _sqlite_sequence; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._sqlite_sequence (
    name character varying(19) DEFAULT NULL::character varying,
    seq smallint
);


ALTER TABLE public._sqlite_sequence OWNER TO rebasedata;

--
-- Data for Name: _api_comment; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._api_comment (id, text, created, author_id, post_id) FROM stdin;
\.


--
-- Data for Name: _api_follow; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._api_follow (id, user_id, following_id) FROM stdin;
\.


--
-- Data for Name: _api_group; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._api_group (id, title) FROM stdin;
\.


--
-- Data for Name: _api_post; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._api_post (id, text, pub_date, author_id, group_id) FROM stdin;
1	Привет, зайка	2020-12-21	1	
\.


--
-- Data for Name: _auth_group; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: _auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: _auth_permission; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._auth_permission (id, content_type_id, codename, name) FROM stdin;
1	1	add_logentry	Can add log entry
2	1	change_logentry	Can change log entry
3	1	delete_logentry	Can delete log entry
4	1	view_logentry	Can view log entry
5	2	add_permission	Can add permission
6	2	change_permission	Can change permission
7	2	delete_permission	Can delete permission
8	2	view_permission	Can view permission
9	3	add_group	Can add group
10	3	change_group	Can change group
11	3	delete_group	Can delete group
12	3	view_group	Can view group
13	4	add_user	Can add user
14	4	change_user	Can change user
15	4	delete_user	Can delete user
16	4	view_user	Can view user
17	5	add_contenttype	Can add content type
18	5	change_contenttype	Can change content type
19	5	delete_contenttype	Can delete content type
20	5	view_contenttype	Can view content type
21	6	add_session	Can add session
22	6	change_session	Can change session
23	6	delete_session	Can delete session
24	6	view_session	Can view session
25	7	add_post	Can add post
26	7	change_post	Can change post
27	7	delete_post	Can delete post
28	7	view_post	Can view post
29	8	add_comment	Can add comment
30	8	change_comment	Can change comment
31	8	delete_comment	Can delete comment
32	8	view_comment	Can view comment
33	9	add_group	Can add group
34	9	change_group	Can change group
35	9	delete_group	Can delete group
36	9	view_group	Can view group
37	10	add_follow	Can add follow
38	10	change_follow	Can change follow
39	10	delete_follow	Can delete follow
40	10	view_follow	Can view follow
\.


--
-- Data for Name: _auth_user; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) FROM stdin;
1	pbkdf2_sha256$216000$qIv96GJZHH3b$zAlnE1ONR2/DNyczUaYzPcD4AOEipX5RtLDigl3Vlgw=		1	ivankonev			1	1	2020-12-21	
\.


--
-- Data for Name: _auth_user_groups; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: _auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: _django_admin_log; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) FROM stdin;
\.


--
-- Data for Name: _django_content_type; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
8	api	comment
10	api	follow
9	api	group
7	api	post
3	auth	group
2	auth	permission
4	auth	user
5	contenttypes	contenttype
6	sessions	session
\.


--
-- Data for Name: _django_migrations; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-12-21
2	auth	0001_initial	2020-12-21
3	admin	0001_initial	2020-12-21
4	admin	0002_logentry_remove_auto_add	2020-12-21
5	admin	0003_logentry_add_action_flag_choices	2020-12-21
6	api	0001_initial	2020-12-21
7	contenttypes	0002_remove_content_type_name	2020-12-21
8	auth	0002_alter_permission_name_max_length	2020-12-21
9	auth	0003_alter_user_email_max_length	2020-12-21
10	auth	0004_alter_user_username_opts	2020-12-21
11	auth	0005_alter_user_last_login_null	2020-12-21
12	auth	0006_require_contenttypes_0002	2020-12-21
13	auth	0007_alter_validators_add_error_messages	2020-12-21
14	auth	0008_alter_user_username_max_length	2020-12-21
15	auth	0009_alter_user_last_name_max_length	2020-12-21
16	auth	0010_alter_group_name_max_length	2020-12-21
17	auth	0011_update_proxy_permissions	2020-12-21
18	auth	0012_alter_user_first_name_max_length	2020-12-21
19	sessions	0001_initial	2020-12-21
20	api	0002_follow_group	2020-12-22
21	api	0003_post_group	2020-12-22
22	api	0004_auto_20201222_0554	2020-12-22
23	api	0005_auto_20201222_0555	2020-12-22
24	api	0006_auto_20201222_0837	2020-12-22
25	api	0007_auto_20201222_0851	2020-12-22
26	api	0008_auto_20201222_0854	2020-12-22
\.


--
-- Data for Name: _django_session; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: _sqlite_sequence; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._sqlite_sequence (name, seq) FROM stdin;
django_migrations	26
django_admin_log	0
django_content_type	10
auth_permission	40
auth_group	0
auth_user	1
api_post	1
api_follow	0
\.


--
-- PostgreSQL database dump complete
--

