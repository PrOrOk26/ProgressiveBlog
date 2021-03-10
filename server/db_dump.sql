--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2 (Ubuntu 13.2-1.pgdg20.04+1)
-- Dumped by pg_dump version 13.2 (Ubuntu 13.2-1.pgdg20.04+1)

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
-- Name: articles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.articles (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    subtitle character varying(255) NOT NULL,
    text text NOT NULL,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.articles OWNER TO postgres;

--
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.articles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articles_id_seq OWNER TO postgres;

--
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.articles_id_seq OWNED BY public.articles.id;


--
-- Name: core_store; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.core_store (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.core_store OWNER TO postgres;

--
-- Name: core_store_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.core_store_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_store_id_seq OWNER TO postgres;

--
-- Name: core_store_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.core_store_id_seq OWNED BY public.core_store.id;


--
-- Name: globals; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.globals (
    id integer NOT NULL,
    "siteName" character varying(255) NOT NULL,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    subtitle character varying(255)
);


ALTER TABLE public.globals OWNER TO postgres;

--
-- Name: globals_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.globals_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    global_id integer NOT NULL
);


ALTER TABLE public.globals_components OWNER TO postgres;

--
-- Name: globals_components_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.globals_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.globals_components_id_seq OWNER TO postgres;

--
-- Name: globals_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.globals_components_id_seq OWNED BY public.globals_components.id;


--
-- Name: globals_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.globals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.globals_id_seq OWNER TO postgres;

--
-- Name: globals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.globals_id_seq OWNED BY public.globals.id;


--
-- Name: homepages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.homepages (
    id integer NOT NULL,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.homepages OWNER TO postgres;

--
-- Name: homepages_components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.homepages_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    homepage_id integer NOT NULL
);


ALTER TABLE public.homepages_components OWNER TO postgres;

--
-- Name: homepages_components_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.homepages_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.homepages_components_id_seq OWNER TO postgres;

--
-- Name: homepages_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.homepages_components_id_seq OWNED BY public.homepages_components.id;


--
-- Name: homepages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.homepages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.homepages_id_seq OWNER TO postgres;

--
-- Name: homepages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.homepages_id_seq OWNED BY public.homepages.id;


--
-- Name: strapi_administrator; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_administrator (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255) NOT NULL,
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "registrationToken" character varying(255),
    "isActive" boolean,
    blocked boolean
);


ALTER TABLE public.strapi_administrator OWNER TO postgres;

--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_administrator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_administrator_id_seq OWNER TO postgres;

--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_administrator_id_seq OWNED BY public.strapi_administrator.id;


--
-- Name: strapi_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_permission (
    id integer NOT NULL,
    action character varying(255) NOT NULL,
    subject character varying(255),
    fields jsonb,
    conditions jsonb,
    role integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.strapi_permission OWNER TO postgres;

--
-- Name: strapi_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_permission_id_seq OWNER TO postgres;

--
-- Name: strapi_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_permission_id_seq OWNED BY public.strapi_permission.id;


--
-- Name: strapi_role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_role (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    description character varying(255),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.strapi_role OWNER TO postgres;

--
-- Name: strapi_role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_role_id_seq OWNER TO postgres;

--
-- Name: strapi_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_role_id_seq OWNED BY public.strapi_role.id;


--
-- Name: strapi_users_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_users_roles (
    id integer NOT NULL,
    user_id integer,
    role_id integer
);


ALTER TABLE public.strapi_users_roles OWNER TO postgres;

--
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_users_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_users_roles_id_seq OWNER TO postgres;

--
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_users_roles_id_seq OWNED BY public.strapi_users_roles.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO postgres;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_webhooks_id_seq OWNER TO postgres;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: upload_file; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upload_file (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "alternativeText" character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255) NOT NULL,
    ext character varying(255),
    mime character varying(255) NOT NULL,
    size numeric(10,2) NOT NULL,
    url character varying(255) NOT NULL,
    "previewUrl" character varying(255),
    provider character varying(255) NOT NULL,
    provider_metadata jsonb,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.upload_file OWNER TO postgres;

--
-- Name: upload_file_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.upload_file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_file_id_seq OWNER TO postgres;

--
-- Name: upload_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.upload_file_id_seq OWNED BY public.upload_file.id;


--
-- Name: upload_file_morph; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upload_file_morph (
    id integer NOT NULL,
    upload_file_id integer,
    related_id integer,
    related_type text,
    field text,
    "order" integer
);


ALTER TABLE public.upload_file_morph OWNER TO postgres;

--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.upload_file_morph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_file_morph_id_seq OWNER TO postgres;

--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.upload_file_morph_id_seq OWNED BY public.upload_file_morph.id;


--
-- Name: users-permissions_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."users-permissions_permission" (
    id integer NOT NULL,
    type character varying(255) NOT NULL,
    controller character varying(255) NOT NULL,
    action character varying(255) NOT NULL,
    enabled boolean NOT NULL,
    policy character varying(255),
    role integer,
    created_by integer,
    updated_by integer
);


ALTER TABLE public."users-permissions_permission" OWNER TO postgres;

--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."users-permissions_permission_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_permission_id_seq" OWNER TO postgres;

--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."users-permissions_permission_id_seq" OWNED BY public."users-permissions_permission".id;


--
-- Name: users-permissions_role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."users-permissions_role" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    type character varying(255),
    created_by integer,
    updated_by integer
);


ALTER TABLE public."users-permissions_role" OWNER TO postgres;

--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."users-permissions_role_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_role_id_seq" OWNER TO postgres;

--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."users-permissions_role_id_seq" OWNED BY public."users-permissions_role".id;


--
-- Name: users-permissions_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."users-permissions_user" (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    provider character varying(255),
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "confirmationToken" character varying(255),
    confirmed boolean,
    blocked boolean,
    role integer,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public."users-permissions_user" OWNER TO postgres;

--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."users-permissions_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_user_id_seq" OWNER TO postgres;

--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."users-permissions_user_id_seq" OWNED BY public."users-permissions_user".id;


--
-- Name: articles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles ALTER COLUMN id SET DEFAULT nextval('public.articles_id_seq'::regclass);


--
-- Name: core_store id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_store ALTER COLUMN id SET DEFAULT nextval('public.core_store_id_seq'::regclass);


--
-- Name: globals id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.globals ALTER COLUMN id SET DEFAULT nextval('public.globals_id_seq'::regclass);


--
-- Name: globals_components id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.globals_components ALTER COLUMN id SET DEFAULT nextval('public.globals_components_id_seq'::regclass);


--
-- Name: homepages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.homepages ALTER COLUMN id SET DEFAULT nextval('public.homepages_id_seq'::regclass);


--
-- Name: homepages_components id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.homepages_components ALTER COLUMN id SET DEFAULT nextval('public.homepages_components_id_seq'::regclass);


--
-- Name: strapi_administrator id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_administrator ALTER COLUMN id SET DEFAULT nextval('public.strapi_administrator_id_seq'::regclass);


--
-- Name: strapi_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_permission ALTER COLUMN id SET DEFAULT nextval('public.strapi_permission_id_seq'::regclass);


--
-- Name: strapi_role id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_role ALTER COLUMN id SET DEFAULT nextval('public.strapi_role_id_seq'::regclass);


--
-- Name: strapi_users_roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_users_roles ALTER COLUMN id SET DEFAULT nextval('public.strapi_users_roles_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: upload_file id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_file ALTER COLUMN id SET DEFAULT nextval('public.upload_file_id_seq'::regclass);


--
-- Name: upload_file_morph id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_file_morph ALTER COLUMN id SET DEFAULT nextval('public.upload_file_morph_id_seq'::regclass);


--
-- Name: users-permissions_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_permission" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_permission_id_seq"'::regclass);


--
-- Name: users-permissions_role id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_role" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_role_id_seq"'::regclass);


--
-- Name: users-permissions_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_user" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_user_id_seq"'::regclass);


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.articles (id, title, subtitle, text, created_by, updated_by, created_at, updated_at) FROM stdin;
1	purus. Maecenas libero est, congue a, aliquet	ornare, lectus ante dictum mi, ac mattis velit justo nec	scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut.	1	1	2021-03-07 17:35:24.424+02	2021-03-07 17:35:24.447+02
2	eget nisi dictum augue malesuada malesuada. Integer	non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh.	vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis	1	1	2021-03-09 13:10:06.575+02	2021-03-09 13:10:06.585+02
\.


--
-- Data for Name: core_store; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.core_store (id, key, value, type, environment, tag) FROM stdin;
7	model_def_strapi::role	{"uid":"strapi::role","collectionName":"strapi_role","kind":"collectionType","info":{"name":"Role","description":""},"options":{"timestamps":["created_at","updated_at"]},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"collection":"user","via":"roles","plugin":"admin","attribute":"user","column":"id","isVirtual":true},"permissions":{"configurable":false,"plugin":"admin","collection":"permission","via":"role","isVirtual":true}}}	object	\N	\N
10	model_def_plugins::users-permissions.permission	{"uid":"plugins::users-permissions.permission","collectionName":"users-permissions_permission","kind":"collectionType","info":{"name":"permission","description":""},"options":{"timestamps":false},"attributes":{"type":{"type":"string","required":true,"configurable":false},"controller":{"type":"string","required":true,"configurable":false},"action":{"type":"string","required":true,"configurable":false},"enabled":{"type":"boolean","required":true,"configurable":false},"policy":{"type":"string","configurable":false},"role":{"model":"role","via":"permissions","plugin":"users-permissions","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}	object	\N	\N
4	model_def_application::homepage.homepage	{"uid":"application::homepage.homepage","collectionName":"homepages","kind":"singleType","info":{"name":"Homepage"},"options":{"increments":true,"timestamps":["created_at","updated_at"]},"attributes":{"seo":{"type":"component","repeatable":false,"component":"shared.seo"},"hero":{"type":"component","repeatable":false,"component":"sections.hero","required":true},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}	object	\N	\N
1	model_def_strapi::core-store	{"uid":"strapi::core-store","collectionName":"core_store","info":{"name":"core_store","description":""},"options":{"timestamps":false},"attributes":{"key":{"type":"string"},"value":{"type":"text"},"type":{"type":"string"},"environment":{"type":"string"},"tag":{"type":"string"}}}	object	\N	\N
3	model_def_application::global.global	{"uid":"application::global.global","collectionName":"globals","kind":"singleType","info":{"name":"Global"},"options":{"increments":true,"timestamps":["created_at","updated_at"]},"attributes":{"siteName":{"type":"string","required":true},"subtitle":{"type":"string","required":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}	object	\N	\N
5	model_def_strapi::webhooks	{"uid":"strapi::webhooks","collectionName":"strapi_webhooks","info":{"name":"Strapi webhooks","description":""},"options":{"timestamps":false},"attributes":{"name":{"type":"string"},"url":{"type":"text"},"headers":{"type":"json"},"events":{"type":"json"},"enabled":{"type":"boolean"}}}	object	\N	\N
6	model_def_strapi::permission	{"uid":"strapi::permission","collectionName":"strapi_permission","kind":"collectionType","info":{"name":"Permission","description":""},"options":{"timestamps":["created_at","updated_at"]},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"fields":{"type":"json","configurable":false,"required":false,"default":[]},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"model":"role","plugin":"admin"}}}	object	\N	\N
15	plugin_content_manager_configuration_content_types::strapi::role	{"uid":"strapi::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"code":{"edit":{"label":"Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Code","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"Users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"editRelations":["users","permissions"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6}]]}}	object		
27	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null}}	object		
13	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true}	object	development	
14	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"/auth/auth0/callback","scope":["openid","email","profile"]}}	object		
11	model_def_plugins::users-permissions.role	{"uid":"plugins::users-permissions.role","collectionName":"users-permissions_role","kind":"collectionType","info":{"name":"role","description":""},"options":{"timestamps":false},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"collection":"permission","via":"role","plugin":"users-permissions","configurable":false,"isVirtual":true},"users":{"collection":"user","via":"role","configurable":false,"plugin":"users-permissions","isVirtual":true},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}	object	\N	\N
16	plugin_content_manager_configuration_content_types::strapi::permission	{"uid":"strapi::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"subject":{"edit":{"label":"Subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subject","searchable":true,"sortable":true}},"fields":{"edit":{"label":"Fields","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Fields","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"Conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"editRelations":["role"],"edit":[[{"name":"action","size":6},{"name":"subject","size":6}],[{"name":"fields","size":12}],[{"name":"conditions","size":12}]]}}	object		
17	plugin_content_manager_configuration_content_types::application::article.article	{"uid":"application::article.article","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"Subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subtitle","searchable":true,"sortable":true}},"text":{"edit":{"label":"Text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Text","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","subtitle","text"],"editRelations":[],"edit":[[{"name":"title","size":6},{"name":"subtitle","size":6}],[{"name":"text","size":6}]]}}	object		
19	plugin_content_manager_configuration_content_types::strapi::user	{"uid":"strapi::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"Firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"Lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"RegistrationToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"RegistrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"IsActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IsActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"Roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"editRelations":["roles"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"resetPasswordToken","size":6}],[{"name":"registrationToken","size":6},{"name":"isActive","size":4}],[{"name":"blocked","size":4}]]}}	object		
20	plugin_content_manager_configuration_content_types::plugins::upload.file	{"uid":"plugins::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"AlternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AlternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"Caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"Width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Width","searchable":true,"sortable":true}},"height":{"edit":{"label":"Height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"Formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"Hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"Ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"Mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"Size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Size","searchable":true,"sortable":true}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"PreviewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PreviewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"Provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider_metadata","searchable":false,"sortable":false}},"related":{"edit":{"label":"Related","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Related","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"editRelations":["related"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}]]}}	object		
21	plugin_content_manager_configuration_content_types::plugins::users-permissions.user	{"uid":"plugins::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"ConfirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ConfirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"Confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"editRelations":["role"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4}]]}}	object		
23	plugin_content_manager_configuration_content_types::plugins::users-permissions.role	{"uid":"plugins::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"type"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"Users","searchable":false,"sortable":false}}},"layouts":{"list":["id","name","description","type"],"editRelations":["permissions","users"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6}]]}}	object		
22	plugin_content_manager_configuration_content_types::plugins::users-permissions.permission	{"uid":"plugins::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"type","defaultSortBy":"type","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"controller":{"edit":{"label":"Controller","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Controller","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"enabled":{"edit":{"label":"Enabled","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Enabled","searchable":true,"sortable":true}},"policy":{"edit":{"label":"Policy","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Policy","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","controller","action"],"editRelations":["role"],"edit":[[{"name":"type","size":6},{"name":"controller","size":6}],[{"name":"action","size":6},{"name":"enabled","size":4}],[{"name":"policy","size":6}]]}}	object		
24	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object		
25	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object		
9	model_def_plugins::upload.file	{"uid":"plugins::upload.file","collectionName":"upload_file","kind":"collectionType","info":{"name":"file","description":""},"options":{"timestamps":["created_at","updated_at"]},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"collection":"*","filter":"field","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}	object	\N	\N
2	model_def_application::article.article	{"uid":"application::article.article","collectionName":"articles","kind":"collectionType","info":{"name":"article","description":""},"options":{"draftAndPublish":false,"increments":true,"timestamps":["created_at","updated_at"],"comment":""},"attributes":{"title":{"type":"string","required":true},"subtitle":{"type":"string","required":true},"text":{"type":"text","required":true},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}	object	\N	\N
26	type_setup_initHasRun	true	boolean	development	
8	model_def_strapi::user	{"uid":"strapi::user","collectionName":"strapi_administrator","kind":"collectionType","info":{"name":"User","description":""},"options":{"timestamps":false},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"collection":"role","collectionName":"strapi_users_roles","via":"users","dominant":true,"plugin":"admin","configurable":false,"private":true,"attribute":"role","column":"id","isVirtual":true},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true}}}	object	\N	\N
18	plugin_content_manager_configuration_content_types::application::global.global	{"uid":"application::global.global","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"siteName","defaultSortBy":"siteName","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"siteName":{"edit":{"label":"SiteName","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SiteName","searchable":true,"sortable":true}},"subtitle":{"edit":{"label":"Subtitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subtitle","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","siteName","created_at","updated_at"],"edit":[[{"name":"siteName","size":6},{"name":"subtitle","size":6}]],"editRelations":[]}}	object		
12	model_def_plugins::users-permissions.user	{"uid":"plugins::users-permissions.user","collectionName":"users-permissions_user","kind":"collectionType","info":{"name":"user","description":""},"options":{"draftAndPublish":false,"timestamps":["created_at","updated_at"]},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"model":"role","via":"users","plugin":"users-permissions","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"private":true}}}	object	\N	\N
\.


--
-- Data for Name: globals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.globals (id, "siteName", created_by, updated_by, created_at, updated_at, subtitle) FROM stdin;
1	Progressive	1	1	2021-03-09 12:33:03.487+02	2021-03-09 12:37:41.226+02	Let's create a life that is worth living
\.


--
-- Data for Name: globals_components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.globals_components (id, field, "order", component_type, component_id, global_id) FROM stdin;
\.


--
-- Data for Name: homepages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.homepages (id, created_by, updated_by, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: homepages_components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.homepages_components (id, field, "order", component_type, component_id, homepage_id) FROM stdin;
\.


--
-- Data for Name: strapi_administrator; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_administrator (id, firstname, lastname, username, email, password, "resetPasswordToken", "registrationToken", "isActive", blocked) FROM stdin;
1	Vlad	Raniuk	\N	vraniuk@gmail.com	$2a$10$CKgCj1KjfPy6FzB9aeuQ1O8UDU/OCDnfXlEFMNgwiqVtiLEmG9J82	\N	\N	t	\N
\.


--
-- Data for Name: strapi_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_permission (id, action, subject, fields, conditions, role, created_at, updated_at) FROM stdin;
1	plugins::content-manager.explorer.create	application::article.article	["title", "subtitle", "text"]	[]	2	2021-03-07 16:29:55.653+02	2021-03-07 16:29:55.675+02
2	plugins::content-manager.explorer.create	application::global.global	["siteName"]	[]	2	2021-03-07 16:29:55.654+02	2021-03-07 16:29:55.676+02
3	plugins::content-manager.explorer.read	application::global.global	["siteName"]	[]	2	2021-03-07 16:29:55.654+02	2021-03-07 16:29:55.676+02
4	plugins::content-manager.explorer.read	application::article.article	["title", "subtitle", "text"]	[]	2	2021-03-07 16:29:55.654+02	2021-03-07 16:29:55.676+02
5	plugins::content-manager.explorer.update	application::article.article	["title", "subtitle", "text"]	[]	2	2021-03-07 16:29:55.654+02	2021-03-07 16:29:55.676+02
6	plugins::content-manager.explorer.update	application::global.global	["siteName"]	[]	2	2021-03-07 16:29:55.655+02	2021-03-07 16:29:55.676+02
7	plugins::content-manager.explorer.delete	application::article.article	\N	[]	2	2021-03-07 16:29:55.655+02	2021-03-07 16:29:55.676+02
8	plugins::content-manager.explorer.delete	application::global.global	\N	[]	2	2021-03-07 16:29:55.655+02	2021-03-07 16:29:55.676+02
9	plugins::upload.read	\N	\N	[]	2	2021-03-07 16:29:55.655+02	2021-03-07 16:29:55.677+02
10	plugins::upload.assets.create	\N	\N	[]	2	2021-03-07 16:29:55.655+02	2021-03-07 16:29:55.683+02
11	plugins::upload.assets.update	\N	\N	[]	2	2021-03-07 16:29:55.71+02	2021-03-07 16:29:55.718+02
12	plugins::upload.assets.download	\N	\N	[]	2	2021-03-07 16:29:55.711+02	2021-03-07 16:29:55.718+02
13	plugins::upload.assets.copy-link	\N	\N	[]	2	2021-03-07 16:29:55.711+02	2021-03-07 16:29:55.72+02
14	plugins::content-manager.explorer.create	application::article.article	["title", "subtitle", "text"]	["admin::is-creator"]	3	2021-03-07 16:29:55.733+02	2021-03-07 16:29:55.753+02
15	plugins::content-manager.explorer.create	application::global.global	["siteName"]	["admin::is-creator"]	3	2021-03-07 16:29:55.734+02	2021-03-07 16:29:55.753+02
16	plugins::content-manager.explorer.read	application::article.article	["title", "subtitle", "text"]	["admin::is-creator"]	3	2021-03-07 16:29:55.734+02	2021-03-07 16:29:55.753+02
17	plugins::content-manager.explorer.read	application::global.global	["siteName"]	["admin::is-creator"]	3	2021-03-07 16:29:55.734+02	2021-03-07 16:29:55.753+02
18	plugins::content-manager.explorer.update	application::article.article	["title", "subtitle", "text"]	["admin::is-creator"]	3	2021-03-07 16:29:55.735+02	2021-03-07 16:29:55.754+02
19	plugins::content-manager.explorer.update	application::global.global	["siteName"]	["admin::is-creator"]	3	2021-03-07 16:29:55.735+02	2021-03-07 16:29:55.754+02
20	plugins::content-manager.explorer.delete	application::article.article	\N	["admin::is-creator"]	3	2021-03-07 16:29:55.736+02	2021-03-07 16:29:55.754+02
21	plugins::content-manager.explorer.delete	application::global.global	\N	["admin::is-creator"]	3	2021-03-07 16:29:55.736+02	2021-03-07 16:29:55.754+02
23	plugins::upload.assets.create	\N	\N	[]	3	2021-03-07 16:29:55.741+02	2021-03-07 16:29:55.762+02
22	plugins::upload.read	\N	\N	["admin::is-creator"]	3	2021-03-07 16:29:55.736+02	2021-03-07 16:29:55.762+02
24	plugins::upload.assets.update	\N	\N	["admin::is-creator"]	3	2021-03-07 16:29:55.788+02	2021-03-07 16:29:55.796+02
25	plugins::upload.assets.download	\N	\N	[]	3	2021-03-07 16:29:55.788+02	2021-03-07 16:29:55.796+02
26	plugins::upload.assets.copy-link	\N	\N	[]	3	2021-03-07 16:29:55.788+02	2021-03-07 16:29:55.798+02
27	plugins::content-manager.explorer.create	application::article.article	["title", "subtitle", "text"]	[]	1	2021-03-07 16:29:55.836+02	2021-03-07 16:29:55.856+02
29	plugins::content-manager.explorer.create	plugins::users-permissions.user	["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]	[]	1	2021-03-07 16:29:55.837+02	2021-03-07 16:29:55.856+02
30	plugins::content-manager.explorer.read	application::article.article	["title", "subtitle", "text"]	[]	1	2021-03-07 16:29:55.837+02	2021-03-07 16:29:55.856+02
32	plugins::content-manager.explorer.read	plugins::users-permissions.user	["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]	[]	1	2021-03-07 16:29:55.837+02	2021-03-07 16:29:55.857+02
33	plugins::content-manager.explorer.update	application::article.article	["title", "subtitle", "text"]	[]	1	2021-03-07 16:29:55.837+02	2021-03-07 16:29:55.857+02
37	plugins::content-manager.explorer.delete	application::global.global	\N	[]	1	2021-03-07 16:29:55.888+02	2021-03-07 16:29:55.906+02
38	plugins::content-manager.explorer.delete	plugins::users-permissions.user	\N	[]	1	2021-03-07 16:29:55.888+02	2021-03-07 16:29:55.906+02
39	plugins::content-type-builder.read	\N	\N	[]	1	2021-03-07 16:29:55.888+02	2021-03-07 16:29:55.906+02
41	plugins::upload.assets.update	\N	\N	[]	1	2021-03-07 16:29:55.892+02	2021-03-07 16:29:55.911+02
42	plugins::upload.assets.download	\N	\N	[]	1	2021-03-07 16:29:55.892+02	2021-03-07 16:29:55.911+02
44	plugins::upload.assets.create	\N	\N	[]	1	2021-03-07 16:29:55.892+02	2021-03-07 16:29:55.911+02
40	plugins::upload.read	\N	\N	[]	1	2021-03-07 16:29:55.888+02	2021-03-07 16:29:55.912+02
47	plugins::content-manager.collection-types.configure-view	\N	\N	[]	1	2021-03-07 16:29:55.945+02	2021-03-07 16:29:55.962+02
49	plugins::users-permissions.roles.create	\N	\N	[]	1	2021-03-07 16:29:55.948+02	2021-03-07 16:29:55.966+02
50	plugins::users-permissions.roles.read	\N	\N	[]	1	2021-03-07 16:29:55.948+02	2021-03-07 16:29:55.966+02
52	plugins::users-permissions.roles.delete	\N	\N	[]	1	2021-03-07 16:29:55.949+02	2021-03-07 16:29:55.966+02
53	plugins::users-permissions.providers.read	\N	\N	[]	1	2021-03-07 16:29:55.949+02	2021-03-07 16:29:55.966+02
48	plugins::content-manager.components.configure-layout	\N	\N	[]	1	2021-03-07 16:29:55.945+02	2021-03-07 16:29:55.967+02
55	plugins::users-permissions.email-templates.read	\N	\N	[]	1	2021-03-07 16:29:55.954+02	2021-03-07 16:29:55.971+02
58	plugins::users-permissions.advanced-settings.update	\N	\N	[]	1	2021-03-07 16:29:55.997+02	2021-03-07 16:29:56.014+02
60	admin::marketplace.plugins.install	\N	\N	[]	1	2021-03-07 16:29:55.997+02	2021-03-07 16:29:56.015+02
61	admin::marketplace.plugins.uninstall	\N	\N	[]	1	2021-03-07 16:29:55.998+02	2021-03-07 16:29:56.015+02
62	admin::webhooks.create	\N	\N	[]	1	2021-03-07 16:29:55.998+02	2021-03-07 16:29:56.015+02
57	plugins::users-permissions.advanced-settings.read	\N	\N	[]	1	2021-03-07 16:29:55.995+02	2021-03-07 16:29:56.015+02
64	admin::webhooks.update	\N	\N	[]	1	2021-03-07 16:29:56.002+02	2021-03-07 16:29:56.019+02
65	admin::webhooks.delete	\N	\N	[]	1	2021-03-07 16:29:56.002+02	2021-03-07 16:29:56.02+02
67	admin::users.read	\N	\N	[]	1	2021-03-07 16:29:56.054+02	2021-03-07 16:29:56.069+02
68	admin::users.update	\N	\N	[]	1	2021-03-07 16:29:56.054+02	2021-03-07 16:29:56.069+02
69	admin::users.delete	\N	\N	[]	1	2021-03-07 16:29:56.054+02	2021-03-07 16:29:56.069+02
70	admin::roles.create	\N	\N	[]	1	2021-03-07 16:29:56.054+02	2021-03-07 16:29:56.07+02
73	admin::roles.delete	\N	\N	[]	1	2021-03-07 16:29:56.058+02	2021-03-07 16:29:56.074+02
43	plugins::upload.assets.copy-link	\N	\N	[]	1	2021-03-07 16:29:55.892+02	2021-03-07 16:29:55.911+02
51	plugins::users-permissions.roles.update	\N	\N	[]	1	2021-03-07 16:29:55.948+02	2021-03-07 16:29:55.966+02
59	admin::marketplace.read	\N	\N	[]	1	2021-03-07 16:29:55.997+02	2021-03-07 16:29:56.015+02
71	admin::roles.read	\N	\N	[]	1	2021-03-07 16:29:56.054+02	2021-03-07 16:29:56.07+02
35	plugins::content-manager.explorer.update	plugins::users-permissions.user	["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]	[]	1	2021-03-07 16:29:55.838+02	2021-03-07 16:29:55.857+02
45	plugins::upload.settings.read	\N	\N	[]	1	2021-03-07 16:29:55.897+02	2021-03-07 16:29:55.916+02
54	plugins::users-permissions.providers.update	\N	\N	[]	1	2021-03-07 16:29:55.953+02	2021-03-07 16:29:55.971+02
63	admin::webhooks.read	\N	\N	[]	1	2021-03-07 16:29:56.002+02	2021-03-07 16:29:56.019+02
72	admin::roles.update	\N	\N	[]	1	2021-03-07 16:29:56.058+02	2021-03-07 16:29:56.073+02
36	plugins::content-manager.explorer.delete	application::article.article	\N	[]	1	2021-03-07 16:29:55.838+02	2021-03-07 16:29:55.862+02
46	plugins::content-manager.single-types.configure-view	\N	\N	[]	1	2021-03-07 16:29:55.901+02	2021-03-07 16:29:55.921+02
56	plugins::users-permissions.email-templates.update	\N	\N	[]	1	2021-03-07 16:29:55.962+02	2021-03-07 16:29:55.98+02
66	admin::users.create	\N	\N	[]	1	2021-03-07 16:29:56.02+02	2021-03-07 16:29:56.049+02
74	plugins::content-manager.explorer.create	application::global.global	["siteName", "subtitle"]	[]	1	2021-03-09 12:35:52.657+02	2021-03-09 12:35:52.667+02
75	plugins::content-manager.explorer.read	application::global.global	["siteName", "subtitle"]	[]	1	2021-03-09 12:35:52.658+02	2021-03-09 12:35:52.667+02
76	plugins::content-manager.explorer.update	application::global.global	["siteName", "subtitle"]	[]	1	2021-03-09 12:35:52.66+02	2021-03-09 12:35:52.67+02
\.


--
-- Data for Name: strapi_role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_role (id, name, code, description, created_at, updated_at) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2021-03-07 16:29:55.603+02	2021-03-07 16:29:55.603+02
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2021-03-07 16:29:55.622+02	2021-03-07 16:29:55.622+02
3	Author	strapi-author	Authors can manage the content they have created.	2021-03-07 16:29:55.635+02	2021-03-07 16:29:55.635+02
\.


--
-- Data for Name: strapi_users_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_users_roles (id, user_id, role_id) FROM stdin;
1	1	1
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: upload_file; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: upload_file_morph; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") FROM stdin;
\.


--
-- Data for Name: users-permissions_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) FROM stdin;
1	application	article	count	f		1	\N	\N
2	application	article	count	f		2	\N	\N
3	application	article	create	f		1	\N	\N
4	application	article	create	f		2	\N	\N
5	application	article	delete	f		1	\N	\N
6	application	article	delete	f		2	\N	\N
7	application	article	find	f		1	\N	\N
8	application	article	find	f		2	\N	\N
9	application	article	findone	f		1	\N	\N
10	application	article	findone	f		2	\N	\N
11	application	article	update	f		1	\N	\N
12	application	article	update	f		2	\N	\N
13	application	global	delete	f		1	\N	\N
14	application	global	delete	f		2	\N	\N
15	application	global	find	f		1	\N	\N
16	application	global	find	f		2	\N	\N
17	application	global	update	f		2	\N	\N
18	content-manager	collection-types	bulkdelete	f		1	\N	\N
19	application	global	update	f		1	\N	\N
20	content-manager	collection-types	bulkdelete	f		2	\N	\N
21	content-manager	collection-types	create	f		1	\N	\N
22	content-manager	collection-types	create	f		2	\N	\N
23	content-manager	collection-types	delete	f		1	\N	\N
24	content-manager	collection-types	delete	f		2	\N	\N
26	content-manager	collection-types	find	f		2	\N	\N
27	content-manager	collection-types	findone	f		1	\N	\N
28	content-manager	collection-types	findone	f		2	\N	\N
29	content-manager	collection-types	previewmanyrelations	f		1	\N	\N
25	content-manager	collection-types	find	f		1	\N	\N
30	content-manager	collection-types	previewmanyrelations	f		2	\N	\N
31	content-manager	collection-types	publish	f		1	\N	\N
32	content-manager	collection-types	publish	f		2	\N	\N
33	content-manager	collection-types	unpublish	f		1	\N	\N
35	content-manager	collection-types	update	f		1	\N	\N
36	content-manager	collection-types	update	f		2	\N	\N
37	content-manager	components	findcomponentconfiguration	f		1	\N	\N
38	content-manager	components	findcomponentconfiguration	f		2	\N	\N
39	content-manager	components	findcomponents	f		1	\N	\N
34	content-manager	collection-types	unpublish	f		2	\N	\N
40	content-manager	components	findcomponents	f		2	\N	\N
41	content-manager	components	updatecomponentconfiguration	f		1	\N	\N
42	content-manager	components	updatecomponentconfiguration	f		2	\N	\N
44	content-manager	content-types	findcontenttypeconfiguration	f		2	\N	\N
45	content-manager	content-types	findcontenttypes	f		1	\N	\N
46	content-manager	content-types	findcontenttypes	f		2	\N	\N
47	content-manager	content-types	updatecontenttypeconfiguration	f		1	\N	\N
48	content-manager	content-types	updatecontenttypeconfiguration	f		2	\N	\N
49	content-manager	relations	find	f		1	\N	\N
43	content-manager	content-types	findcontenttypeconfiguration	f		1	\N	\N
50	content-manager	relations	find	f		2	\N	\N
52	content-manager	single-types	createorupdate	f		2	\N	\N
53	content-manager	single-types	delete	f		1	\N	\N
54	content-manager	single-types	delete	f		2	\N	\N
55	content-manager	single-types	find	f		1	\N	\N
56	content-manager	single-types	find	f		2	\N	\N
57	content-manager	single-types	publish	f		1	\N	\N
51	content-manager	single-types	createorupdate	f		1	\N	\N
59	content-manager	single-types	unpublish	f		1	\N	\N
58	content-manager	single-types	publish	f		2	\N	\N
60	content-manager	single-types	unpublish	f		2	\N	\N
61	content-manager	uid	checkuidavailability	f		1	\N	\N
62	content-manager	uid	checkuidavailability	f		2	\N	\N
63	content-manager	uid	generateuid	f		1	\N	\N
64	content-manager	uid	generateuid	f		2	\N	\N
66	content-type-builder	builder	getreservednames	f		2	\N	\N
67	content-type-builder	componentcategories	deletecategory	f		1	\N	\N
68	content-type-builder	componentcategories	deletecategory	f		2	\N	\N
69	content-type-builder	componentcategories	editcategory	f		1	\N	\N
65	content-type-builder	builder	getreservednames	f		1	\N	\N
70	content-type-builder	componentcategories	editcategory	f		2	\N	\N
173	application	article	find	t		3	\N	\N
71	content-type-builder	components	createcomponent	f		1	\N	\N
72	content-type-builder	components	createcomponent	f		2	\N	\N
74	content-type-builder	components	deletecomponent	f		2	\N	\N
75	content-type-builder	components	getcomponent	f		1	\N	\N
76	content-type-builder	components	getcomponent	f		2	\N	\N
77	content-type-builder	components	getcomponents	f		1	\N	\N
78	content-type-builder	components	getcomponents	f		2	\N	\N
183	content-manager	collection-types	findone	f		3	\N	\N
193	content-manager	components	updatecomponentconfiguration	f		3	\N	\N
203	content-manager	uid	generateuid	f		3	\N	\N
213	content-type-builder	connections	getconnections	f		3	\N	\N
223	upload	upload	destroy	f		3	\N	\N
233	users-permissions	auth	emailconfirmation	f		3	\N	\N
243	users-permissions	userspermissions	createrole	f		3	\N	\N
253	users-permissions	userspermissions	getemailtemplate	f		3	\N	\N
73	content-type-builder	components	deletecomponent	f		1	\N	\N
87	content-type-builder	contenttypes	getcontenttype	f		1	\N	\N
96	upload	upload	count	f		2	\N	\N
104	upload	upload	getsettings	f		2	\N	\N
112	users-permissions	auth	callback	t		2	\N	\N
131	users-permissions	user	destroyall	f		1	\N	\N
141	users-permissions	userspermissions	createrole	f		1	\N	\N
157	users-permissions	userspermissions	getroles	f		1	\N	\N
168	users-permissions	userspermissions	updateemailtemplate	f		2	\N	\N
174	application	article	findone	t		3	\N	\N
184	content-manager	collection-types	create	f		3	\N	\N
194	content-manager	content-types	findcontenttypes	f		3	\N	\N
206	content-type-builder	componentcategories	editcategory	f		3	\N	\N
218	content-type-builder	contenttypes	deletecontenttype	f		3	\N	\N
227	upload	upload	search	f		3	\N	\N
239	users-permissions	user	count	f		3	\N	\N
246	users-permissions	userspermissions	getpolicies	f		3	\N	\N
256	users-permissions	userspermissions	updateadvancedsettings	f		3	\N	\N
121	users-permissions	auth	resetpassword	t		1	\N	\N
79	content-type-builder	components	updatecomponent	f		1	\N	\N
89	content-type-builder	contenttypes	getcontenttypes	f		1	\N	\N
99	upload	upload	find	f		1	\N	\N
109	upload	upload	upload	f		1	\N	\N
128	users-permissions	user	create	f		2	\N	\N
137	users-permissions	user	me	t		1	\N	\N
148	users-permissions	userspermissions	getemailtemplate	f		2	\N	\N
158	users-permissions	userspermissions	getroles	f		2	\N	\N
167	users-permissions	userspermissions	updateemailtemplate	f		1	\N	\N
175	application	article	count	t		3	\N	\N
185	content-manager	collection-types	update	f		3	\N	\N
197	content-manager	relations	find	f		3	\N	\N
209	content-type-builder	components	getcomponent	f		3	\N	\N
216	content-type-builder	contenttypes	createcontenttype	f		3	\N	\N
226	upload	upload	upload	f		3	\N	\N
237	users-permissions	user	find	f		3	\N	\N
249	users-permissions	userspermissions	getroutes	f		3	\N	\N
258	users-permissions	userspermissions	updateproviders	f		3	\N	\N
119	users-permissions	auth	register	t		1	\N	\N
80	content-type-builder	components	updatecomponent	f		2	\N	\N
90	content-type-builder	contenttypes	getcontenttypes	f		2	\N	\N
100	upload	upload	find	f		2	\N	\N
110	upload	upload	upload	f		2	\N	\N
120	users-permissions	auth	register	t		2	\N	\N
130	users-permissions	user	destroy	f		2	\N	\N
140	users-permissions	user	update	f		2	\N	\N
150	users-permissions	userspermissions	getpermissions	f		2	\N	\N
160	users-permissions	userspermissions	getroutes	f		2	\N	\N
170	users-permissions	userspermissions	updateproviders	f		2	\N	\N
176	application	article	create	t		3	\N	\N
187	content-manager	collection-types	publish	f		3	\N	\N
196	content-manager	content-types	updatecontenttypeconfiguration	f		3	\N	\N
205	content-type-builder	builder	getreservednames	f		3	\N	\N
217	content-type-builder	contenttypes	updatecontenttype	f		3	\N	\N
225	upload	upload	getsettings	f		3	\N	\N
235	users-permissions	user	create	f		3	\N	\N
252	users-permissions	userspermissions	updaterole	f		3	\N	\N
81	content-type-builder	connections	getconnections	f		1	\N	\N
91	content-type-builder	contenttypes	updatecontenttype	f		1	\N	\N
101	upload	upload	findone	f		1	\N	\N
126	users-permissions	user	count	f		2	\N	\N
134	users-permissions	user	find	f		2	\N	\N
142	users-permissions	userspermissions	createrole	f		2	\N	\N
151	users-permissions	userspermissions	getpolicies	f		1	\N	\N
161	users-permissions	userspermissions	index	f		1	\N	\N
171	users-permissions	userspermissions	updaterole	f		1	\N	\N
177	application	article	update	t		3	\N	\N
188	content-manager	collection-types	unpublish	f		3	\N	\N
199	content-manager	single-types	createorupdate	f		3	\N	\N
210	content-type-builder	components	createcomponent	f		3	\N	\N
220	upload	upload	find	f		3	\N	\N
232	users-permissions	auth	register	f		3	\N	\N
242	users-permissions	user	me	f		3	\N	\N
251	users-permissions	userspermissions	searchusers	f		3	\N	\N
111	users-permissions	auth	callback	t		1	\N	\N
82	content-type-builder	connections	getconnections	f		2	\N	\N
94	email	email	send	f		2	\N	\N
107	upload	upload	updatesettings	f		1	\N	\N
127	users-permissions	user	create	f		1	\N	\N
138	users-permissions	user	me	t		2	\N	\N
146	users-permissions	userspermissions	getadvancedsettings	f		2	\N	\N
155	users-permissions	userspermissions	getrole	f		1	\N	\N
166	users-permissions	userspermissions	updateadvancedsettings	f		2	\N	\N
178	application	article	delete	t		3	\N	\N
186	content-manager	collection-types	delete	f		3	\N	\N
195	content-manager	content-types	findcontenttypeconfiguration	f		3	\N	\N
204	content-manager	uid	checkuidavailability	f		3	\N	\N
214	content-type-builder	contenttypes	getcontenttypes	f		3	\N	\N
228	users-permissions	auth	callback	f		3	\N	\N
236	users-permissions	user	update	f		3	\N	\N
244	users-permissions	userspermissions	deleterole	f		3	\N	\N
254	users-permissions	userspermissions	updateemailtemplate	f		3	\N	\N
117	users-permissions	auth	forgotpassword	t		1	\N	\N
83	content-type-builder	contenttypes	createcontenttype	f		1	\N	\N
95	upload	upload	count	f		1	\N	\N
105	upload	upload	search	f		1	\N	\N
113	users-permissions	auth	connect	t		1	\N	\N
132	users-permissions	user	destroyall	f		2	\N	\N
143	users-permissions	userspermissions	deleterole	f		1	\N	\N
153	users-permissions	userspermissions	getproviders	f		1	\N	\N
163	users-permissions	userspermissions	searchusers	f		1	\N	\N
179	application	global	find	t		3	\N	\N
190	content-manager	collection-types	previewmanyrelations	f		3	\N	\N
200	content-manager	single-types	delete	f		3	\N	\N
208	content-type-builder	components	getcomponents	f		3	\N	\N
219	email	email	send	f		3	\N	\N
229	users-permissions	auth	resetpassword	f		3	\N	\N
240	users-permissions	user	destroy	f		3	\N	\N
250	users-permissions	userspermissions	index	f		3	\N	\N
123	users-permissions	auth	sendemailconfirmation	t		1	\N	\N
84	content-type-builder	contenttypes	createcontenttype	f		2	\N	\N
93	email	email	send	f		1	\N	\N
102	upload	upload	findone	f		2	\N	\N
116	users-permissions	auth	emailconfirmation	t		2	\N	\N
122	users-permissions	auth	resetpassword	t		2	\N	\N
133	users-permissions	user	find	f		1	\N	\N
147	users-permissions	userspermissions	getemailtemplate	f		1	\N	\N
154	users-permissions	userspermissions	getproviders	f		2	\N	\N
162	users-permissions	userspermissions	index	f		2	\N	\N
172	users-permissions	userspermissions	updaterole	f		2	\N	\N
180	application	global	update	t		3	\N	\N
189	content-manager	collection-types	bulkdelete	f		3	\N	\N
198	content-manager	single-types	find	f		3	\N	\N
207	content-type-builder	componentcategories	deletecategory	f		3	\N	\N
215	content-type-builder	contenttypes	getcontenttype	f		3	\N	\N
224	upload	upload	updatesettings	f		3	\N	\N
234	users-permissions	auth	sendemailconfirmation	f		3	\N	\N
245	users-permissions	userspermissions	getpermissions	f		3	\N	\N
257	users-permissions	userspermissions	getproviders	f		3	\N	\N
85	content-type-builder	contenttypes	deletecontenttype	f		1	\N	\N
92	content-type-builder	contenttypes	updatecontenttype	f		2	\N	\N
103	upload	upload	getsettings	f		1	\N	\N
118	users-permissions	auth	forgotpassword	t		2	\N	\N
129	users-permissions	user	destroy	f		1	\N	\N
139	users-permissions	user	update	f		1	\N	\N
149	users-permissions	userspermissions	getpermissions	f		1	\N	\N
159	users-permissions	userspermissions	getroutes	f		1	\N	\N
169	users-permissions	userspermissions	updateproviders	f		1	\N	\N
181	application	global	delete	t		3	\N	\N
191	content-manager	components	findcomponents	f		3	\N	\N
201	content-manager	single-types	publish	f		3	\N	\N
211	content-type-builder	components	updatecomponent	f		3	\N	\N
221	upload	upload	findone	f		3	\N	\N
231	users-permissions	auth	forgotpassword	f		3	\N	\N
241	users-permissions	user	destroyall	f		3	\N	\N
248	users-permissions	userspermissions	getroles	f		3	\N	\N
86	content-type-builder	contenttypes	deletecontenttype	f		2	\N	\N
97	upload	upload	destroy	f		1	\N	\N
108	upload	upload	updatesettings	f		2	\N	\N
124	users-permissions	auth	sendemailconfirmation	f		2	\N	\N
136	users-permissions	user	findone	f		2	\N	\N
144	users-permissions	userspermissions	deleterole	f		2	\N	\N
156	users-permissions	userspermissions	getrole	f		2	\N	\N
165	users-permissions	userspermissions	updateadvancedsettings	f		1	\N	\N
182	content-manager	collection-types	find	f		3	\N	\N
192	content-manager	components	findcomponentconfiguration	f		3	\N	\N
202	content-manager	single-types	unpublish	f		3	\N	\N
212	content-type-builder	components	deletecomponent	f		3	\N	\N
222	upload	upload	count	f		3	\N	\N
230	users-permissions	auth	connect	f		3	\N	\N
238	users-permissions	user	findone	f		3	\N	\N
247	users-permissions	userspermissions	getrole	f		3	\N	\N
255	users-permissions	userspermissions	getadvancedsettings	f		3	\N	\N
115	users-permissions	auth	emailconfirmation	t		1	\N	\N
88	content-type-builder	contenttypes	getcontenttype	f		2	\N	\N
98	upload	upload	destroy	f		2	\N	\N
106	upload	upload	search	f		2	\N	\N
114	users-permissions	auth	connect	t		2	\N	\N
125	users-permissions	user	count	f		1	\N	\N
135	users-permissions	user	findone	f		1	\N	\N
145	users-permissions	userspermissions	getadvancedsettings	f		1	\N	\N
152	users-permissions	userspermissions	getpolicies	f		2	\N	\N
164	users-permissions	userspermissions	searchusers	f		2	\N	\N
\.


--
-- Data for Name: users-permissions_role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."users-permissions_role" (id, name, description, type, created_by, updated_by) FROM stdin;
2	Public	Default role given to unauthenticated user.	public	\N	\N
3	Author	This is an author role\n	author	\N	\N
1	Authenticated	Default role given to authenticated user.	authenticated	\N	\N
\.


--
-- Data for Name: users-permissions_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."users-permissions_user" (id, username, email, provider, password, "resetPasswordToken", "confirmationToken", confirmed, blocked, role, created_by, updated_by, created_at, updated_at) FROM stdin;
1	prorok26	vraniuk@mail.ru	local	$2a$10$5a0OdwBHAT6Xkr0dcqw5SOhkLu48kDT4KfXclxDQ/wdNwRe.lBgc2	\N	\N	t	f	3	1	1	2021-03-07 16:49:27.786+02	2021-03-07 16:49:27.792+02
\.


--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.articles_id_seq', 2, true);


--
-- Name: core_store_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.core_store_id_seq', 27, true);


--
-- Name: globals_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.globals_components_id_seq', 1, false);


--
-- Name: globals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.globals_id_seq', 1, true);


--
-- Name: homepages_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.homepages_components_id_seq', 1, false);


--
-- Name: homepages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.homepages_id_seq', 1, false);


--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_administrator_id_seq', 1, true);


--
-- Name: strapi_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_permission_id_seq', 76, true);


--
-- Name: strapi_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_role_id_seq', 3, true);


--
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_users_roles_id_seq', 1, true);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: upload_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.upload_file_id_seq', 1, false);


--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.upload_file_morph_id_seq', 1, false);


--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."users-permissions_permission_id_seq"', 258, true);


--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."users-permissions_role_id_seq"', 3, true);


--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."users-permissions_user_id_seq"', 1, true);


--
-- Name: articles articles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- Name: core_store core_store_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.core_store
    ADD CONSTRAINT core_store_pkey PRIMARY KEY (id);


--
-- Name: globals_components globals_components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.globals_components
    ADD CONSTRAINT globals_components_pkey PRIMARY KEY (id);


--
-- Name: globals globals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.globals
    ADD CONSTRAINT globals_pkey PRIMARY KEY (id);


--
-- Name: homepages_components homepages_components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.homepages_components
    ADD CONSTRAINT homepages_components_pkey PRIMARY KEY (id);


--
-- Name: homepages homepages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.homepages
    ADD CONSTRAINT homepages_pkey PRIMARY KEY (id);


--
-- Name: strapi_administrator strapi_administrator_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_email_unique UNIQUE (email);


--
-- Name: strapi_administrator strapi_administrator_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_pkey PRIMARY KEY (id);


--
-- Name: strapi_permission strapi_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_permission
    ADD CONSTRAINT strapi_permission_pkey PRIMARY KEY (id);


--
-- Name: strapi_role strapi_role_code_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_code_unique UNIQUE (code);


--
-- Name: strapi_role strapi_role_name_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_name_unique UNIQUE (name);


--
-- Name: strapi_role strapi_role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_pkey PRIMARY KEY (id);


--
-- Name: strapi_users_roles strapi_users_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_users_roles
    ADD CONSTRAINT strapi_users_roles_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: upload_file_morph upload_file_morph_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_file_morph
    ADD CONSTRAINT upload_file_morph_pkey PRIMARY KEY (id);


--
-- Name: upload_file upload_file_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_file
    ADD CONSTRAINT upload_file_pkey PRIMARY KEY (id);


--
-- Name: users-permissions_permission users-permissions_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_permission"
    ADD CONSTRAINT "users-permissions_permission_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_role users-permissions_role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_role users-permissions_role_type_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_type_unique" UNIQUE (type);


--
-- Name: users-permissions_user users-permissions_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_user users-permissions_user_username_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_username_unique" UNIQUE (username);


--
-- Name: globals_components global_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.globals_components
    ADD CONSTRAINT global_id_fk FOREIGN KEY (global_id) REFERENCES public.globals(id) ON DELETE CASCADE;


--
-- Name: homepages_components homepage_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.homepages_components
    ADD CONSTRAINT homepage_id_fk FOREIGN KEY (homepage_id) REFERENCES public.homepages(id) ON DELETE CASCADE;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

