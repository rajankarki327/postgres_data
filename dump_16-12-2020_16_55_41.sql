--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4 (Debian 12.4-1.pgdg100+1)
-- Dumped by pg_dump version 12.4 (Debian 12.4-1.pgdg100+1)

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

ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_user_id_9d9f8dbb_fk_user_id;
ALTER TABLE ONLY public.user_roles_roles DROP CONSTRAINT user_roles_roles_user_role_id_ca4c91b9_fk_user_roles_id;
ALTER TABLE ONLY public.user_roles_roles DROP CONSTRAINT user_roles_roles_role_id_b0a8ac64_fk_role_id;
ALTER TABLE ONLY public.tokens DROP CONSTRAINT tokens_user_id_9f60f1af_fk_project_user_id;
ALTER TABLE ONLY public.salt DROP CONSTRAINT salt_user_id_ce8bb742_fk_project_user_id;
ALTER TABLE ONLY public.project_user_ref DROP CONSTRAINT project_user_ref_user_id_da04e89a_fk_project_user_id;
ALTER TABLE ONLY public.project_user_ref DROP CONSTRAINT project_user_ref_project_id_56a04787_fk_project_id;
ALTER TABLE ONLY public.project_role_project_user_ref DROP CONSTRAINT project_role_project_user_id_33512ced_fk_project_u;
ALTER TABLE ONLY public.project_role_project_user_ref DROP CONSTRAINT project_role_project_role_id_3293ffec_fk_project_r;
ALTER TABLE ONLY public.project_component_ref DROP CONSTRAINT project_component_ref_project_id_9ae0b009_fk_project_id;
ALTER TABLE ONLY public.project_component_ref DROP CONSTRAINT project_component_ref_component_id_3024bc9f_fk_component_id;
ALTER TABLE ONLY public.project DROP CONSTRAINT project_client_id_0696401f_fk_client_id;
ALTER TABLE ONLY public.es_index_project_ref DROP CONSTRAINT es_index_project_ref_project_id_44adfd65_fk_project_id;
ALTER TABLE ONLY public.es_index_project_ref DROP CONSTRAINT es_index_project_ref_index_id_e66c19c7_fk_es_index_id;
ALTER TABLE ONLY public.component_user_ref DROP CONSTRAINT component_user_ref_user_id_e08f4b27_fk_project_user_id;
ALTER TABLE ONLY public.component_user_ref DROP CONSTRAINT component_user_ref_component_id_a7d04977_fk_component_id;
ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
DROP INDEX public.user_user_name_37cba673_like;
DROP INDEX public.user_roles_user_id_9d9f8dbb;
DROP INDEX public.user_roles_roles_user_role_id_ca4c91b9;
DROP INDEX public.user_roles_roles_role_id_b0a8ac64;
DROP INDEX public.tokens_user_id_9f60f1af;
DROP INDEX public.salt_user_id_ce8bb742;
DROP INDEX public.project_user_ref_user_id_da04e89a;
DROP INDEX public.project_user_ref_project_id_56a04787;
DROP INDEX public.project_user_fname_6e51e5ea_like;
DROP INDEX public.project_user_email_72825c25_like;
DROP INDEX public.project_roles_role_898fb34b_like;
DROP INDEX public.project_role_project_user_ref_user_id_33512ced;
DROP INDEX public.project_role_project_user_ref_role_id_3293ffec;
DROP INDEX public.project_component_ref_project_id_9ae0b009;
DROP INDEX public.project_component_ref_component_id_3024bc9f;
DROP INDEX public.project_client_id_0696401f;
DROP INDEX public.es_index_project_ref_project_id_44adfd65;
DROP INDEX public.es_index_project_ref_index_id_e66c19c7;
DROP INDEX public.es_index_name_0ace77e3_like;
DROP INDEX public.django_session_session_key_c0390e0f_like;
DROP INDEX public.django_session_expire_date_a5c62663;
DROP INDEX public.component_user_ref_user_id_e08f4b27;
DROP INDEX public.component_user_ref_component_id_a7d04977;
DROP INDEX public.component_name_e850d9ab_like;
DROP INDEX public.client_name_f07dd19b_like;
DROP INDEX public.authtoken_token_key_10f0b77e_like;
DROP INDEX public.auth_user_username_6821ab7c_like;
DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
DROP INDEX public.auth_user_groups_group_id_97559544;
DROP INDEX public.auth_permission_content_type_id_2f476e4b;
DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
DROP INDEX public.auth_group_name_a6ea08ec_like;
ALTER TABLE ONLY public."user" DROP CONSTRAINT user_user_name_key;
ALTER TABLE ONLY public.user_roles_roles DROP CONSTRAINT user_roles_roles_user_role_id_role_id_9473c55e_uniq;
ALTER TABLE ONLY public.user_roles_roles DROP CONSTRAINT user_roles_roles_pkey;
ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_pkey;
ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
ALTER TABLE ONLY public.tokens DROP CONSTRAINT tokens_pkey;
ALTER TABLE ONLY public.salt DROP CONSTRAINT salt_pkey;
ALTER TABLE ONLY public.role DROP CONSTRAINT role_pkey;
ALTER TABLE ONLY public.project_user_ref DROP CONSTRAINT project_user_ref_pkey;
ALTER TABLE ONLY public.project_user DROP CONSTRAINT project_user_pkey;
ALTER TABLE ONLY public.project_user DROP CONSTRAINT project_user_fname_key;
ALTER TABLE ONLY public.project_user DROP CONSTRAINT project_user_email_key;
ALTER TABLE ONLY public.project_roles DROP CONSTRAINT project_roles_role_898fb34b_uniq;
ALTER TABLE ONLY public.project_roles DROP CONSTRAINT project_roles_pkey;
ALTER TABLE ONLY public.project_role_project_user_ref DROP CONSTRAINT project_role_project_user_ref_pkey;
ALTER TABLE ONLY public.project DROP CONSTRAINT project_pkey;
ALTER TABLE ONLY public.project DROP CONSTRAINT project_name_client_id_ba2d4c32_uniq;
ALTER TABLE ONLY public.project_component_ref DROP CONSTRAINT project_component_ref_pkey;
ALTER TABLE ONLY public.es_index_project_ref DROP CONSTRAINT es_index_project_ref_pkey;
ALTER TABLE ONLY public.es_index DROP CONSTRAINT es_index_pkey;
ALTER TABLE ONLY public.es_index DROP CONSTRAINT es_index_name_key;
ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
ALTER TABLE ONLY public.component_user_ref DROP CONSTRAINT component_user_ref_pkey;
ALTER TABLE ONLY public.component DROP CONSTRAINT component_pkey;
ALTER TABLE ONLY public.component DROP CONSTRAINT component_name_key;
ALTER TABLE ONLY public.client DROP CONSTRAINT client_pkey;
ALTER TABLE ONLY public.client DROP CONSTRAINT client_name_key;
ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_key;
ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_pkey;
ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
ALTER TABLE public.user_roles_roles ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.user_roles ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public."user" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.tokens ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.salt ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.role ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.project_user_ref ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.project_user ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.project_roles ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.project_role_project_user_ref ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.project_component_ref ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.project ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.es_index_project_ref ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.es_index ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.component_user_ref ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.component ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.client ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.user_roles_roles_id_seq;
DROP TABLE public.user_roles_roles;
DROP SEQUENCE public.user_roles_id_seq;
DROP TABLE public.user_roles;
DROP SEQUENCE public.user_id_seq;
DROP TABLE public."user";
DROP SEQUENCE public.tokens_id_seq;
DROP TABLE public.tokens;
DROP SEQUENCE public.salt_id_seq;
DROP TABLE public.salt;
DROP SEQUENCE public.role_id_seq;
DROP TABLE public.role;
DROP SEQUENCE public.project_user_ref_id_seq;
DROP TABLE public.project_user_ref;
DROP SEQUENCE public.project_user_id_seq;
DROP TABLE public.project_user;
DROP SEQUENCE public.project_roles_id_seq;
DROP TABLE public.project_roles;
DROP SEQUENCE public.project_role_project_user_ref_id_seq;
DROP TABLE public.project_role_project_user_ref;
DROP SEQUENCE public.project_id_seq;
DROP SEQUENCE public.project_component_ref_id_seq;
DROP TABLE public.project_component_ref;
DROP TABLE public.project;
DROP SEQUENCE public.es_index_project_ref_id_seq;
DROP TABLE public.es_index_project_ref;
DROP SEQUENCE public.es_index_id_seq;
DROP TABLE public.es_index;
DROP TABLE public.django_session;
DROP SEQUENCE public.django_migrations_id_seq;
DROP TABLE public.django_migrations;
DROP SEQUENCE public.django_content_type_id_seq;
DROP TABLE public.django_content_type;
DROP SEQUENCE public.component_user_ref_id_seq;
DROP TABLE public.component_user_ref;
DROP SEQUENCE public.component_id_seq;
DROP TABLE public.component;
DROP SEQUENCE public.client_id_seq;
DROP TABLE public.client;
DROP TABLE public.authtoken_token;
DROP SEQUENCE public.auth_user_user_permissions_id_seq;
DROP TABLE public.auth_user_user_permissions;
DROP SEQUENCE public.auth_user_id_seq;
DROP SEQUENCE public.auth_user_groups_id_seq;
DROP TABLE public.auth_user_groups;
DROP TABLE public.auth_user;
DROP SEQUENCE public.auth_permission_id_seq;
DROP TABLE public.auth_permission;
DROP SEQUENCE public.auth_group_permissions_id_seq;
DROP TABLE public.auth_group_permissions;
DROP SEQUENCE public.auth_group_id_seq;
DROP TABLE public.auth_group;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO faraz;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO faraz;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO faraz;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO faraz;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO faraz;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO faraz;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO faraz;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO faraz;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO faraz;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO faraz;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO faraz;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO faraz;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: authtoken_token; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.authtoken_token OWNER TO faraz;

--
-- Name: client; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.client (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    "serialID" character varying(50) NOT NULL,
    active boolean NOT NULL,
    deleted boolean NOT NULL,
    created_at integer NOT NULL,
    updated_at integer NOT NULL,
    email character varying(50) NOT NULL,
    mobile integer NOT NULL,
    phone integer NOT NULL,
    sec_mobile integer NOT NULL,
    website character varying(50) NOT NULL
);


ALTER TABLE public.client OWNER TO faraz;

--
-- Name: client_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.client_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.client_id_seq OWNER TO faraz;

--
-- Name: client_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.client_id_seq OWNED BY public.client.id;


--
-- Name: component; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.component (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    "serialID" character varying(50) NOT NULL,
    active boolean NOT NULL,
    deleted boolean NOT NULL,
    created_at integer NOT NULL,
    updated_at integer NOT NULL
);


ALTER TABLE public.component OWNER TO faraz;

--
-- Name: component_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.component_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.component_id_seq OWNER TO faraz;

--
-- Name: component_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.component_id_seq OWNED BY public.component.id;


--
-- Name: component_user_ref; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.component_user_ref (
    id integer NOT NULL,
    component_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.component_user_ref OWNER TO faraz;

--
-- Name: component_user_ref_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.component_user_ref_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.component_user_ref_id_seq OWNER TO faraz;

--
-- Name: component_user_ref_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.component_user_ref_id_seq OWNED BY public.component_user_ref.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO faraz;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO faraz;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO faraz;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO faraz;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO faraz;

--
-- Name: es_index; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.es_index (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    "serialID" character varying(50) NOT NULL,
    es_server character varying(15) NOT NULL,
    active boolean NOT NULL,
    created_at integer NOT NULL,
    updated_at integer NOT NULL
);


ALTER TABLE public.es_index OWNER TO faraz;

--
-- Name: es_index_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.es_index_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.es_index_id_seq OWNER TO faraz;

--
-- Name: es_index_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.es_index_id_seq OWNED BY public.es_index.id;


--
-- Name: es_index_project_ref; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.es_index_project_ref (
    id integer NOT NULL,
    index_id integer NOT NULL,
    project_id integer NOT NULL
);


ALTER TABLE public.es_index_project_ref OWNER TO faraz;

--
-- Name: es_index_project_ref_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.es_index_project_ref_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.es_index_project_ref_id_seq OWNER TO faraz;

--
-- Name: es_index_project_ref_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.es_index_project_ref_id_seq OWNED BY public.es_index_project_ref.id;


--
-- Name: project; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.project (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    active boolean NOT NULL,
    "serialID" character varying(50) NOT NULL,
    deleted boolean NOT NULL,
    created_at integer NOT NULL,
    updated_at integer NOT NULL,
    client_id integer NOT NULL
);


ALTER TABLE public.project OWNER TO faraz;

--
-- Name: project_component_ref; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.project_component_ref (
    id integer NOT NULL,
    component_id integer NOT NULL,
    project_id integer NOT NULL
);


ALTER TABLE public.project_component_ref OWNER TO faraz;

--
-- Name: project_component_ref_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.project_component_ref_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_component_ref_id_seq OWNER TO faraz;

--
-- Name: project_component_ref_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.project_component_ref_id_seq OWNED BY public.project_component_ref.id;


--
-- Name: project_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.project_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_id_seq OWNER TO faraz;

--
-- Name: project_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.project_id_seq OWNED BY public.project.id;


--
-- Name: project_role_project_user_ref; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.project_role_project_user_ref (
    id integer NOT NULL,
    role_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.project_role_project_user_ref OWNER TO faraz;

--
-- Name: project_role_project_user_ref_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.project_role_project_user_ref_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_role_project_user_ref_id_seq OWNER TO faraz;

--
-- Name: project_role_project_user_ref_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.project_role_project_user_ref_id_seq OWNED BY public.project_role_project_user_ref.id;


--
-- Name: project_roles; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.project_roles (
    id integer NOT NULL,
    role character varying(10) NOT NULL,
    "serialID" character varying(255) NOT NULL,
    created_at integer NOT NULL,
    updated_at integer NOT NULL
);


ALTER TABLE public.project_roles OWNER TO faraz;

--
-- Name: project_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.project_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_roles_id_seq OWNER TO faraz;

--
-- Name: project_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.project_roles_id_seq OWNED BY public.project_roles.id;


--
-- Name: project_user; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.project_user (
    id integer NOT NULL,
    fname character varying(50) NOT NULL,
    email character varying(100) NOT NULL,
    password character varying(100) NOT NULL,
    "serialID" character varying(50) NOT NULL,
    active boolean NOT NULL,
    admin boolean NOT NULL,
    superadmin boolean NOT NULL,
    created_at integer NOT NULL,
    updated_at integer NOT NULL
);


ALTER TABLE public.project_user OWNER TO faraz;

--
-- Name: project_user_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.project_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_user_id_seq OWNER TO faraz;

--
-- Name: project_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.project_user_id_seq OWNED BY public.project_user.id;


--
-- Name: project_user_ref; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.project_user_ref (
    id integer NOT NULL,
    project_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.project_user_ref OWNER TO faraz;

--
-- Name: project_user_ref_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.project_user_ref_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_user_ref_id_seq OWNER TO faraz;

--
-- Name: project_user_ref_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.project_user_ref_id_seq OWNED BY public.project_user_ref.id;


--
-- Name: role; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.role (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    created_at integer NOT NULL,
    updated_at integer NOT NULL
);


ALTER TABLE public.role OWNER TO faraz;

--
-- Name: role_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.role_id_seq OWNER TO faraz;

--
-- Name: role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.role_id_seq OWNED BY public.role.id;


--
-- Name: salt; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.salt (
    id integer NOT NULL,
    salt character varying(50) NOT NULL,
    created_at integer NOT NULL,
    updated_at integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.salt OWNER TO faraz;

--
-- Name: salt_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.salt_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.salt_id_seq OWNER TO faraz;

--
-- Name: salt_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.salt_id_seq OWNED BY public.salt.id;


--
-- Name: tokens; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.tokens (
    id integer NOT NULL,
    token character varying(100) NOT NULL,
    ip inet NOT NULL,
    component character varying(50) NOT NULL,
    created_at integer NOT NULL,
    updated_at integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.tokens OWNER TO faraz;

--
-- Name: tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tokens_id_seq OWNER TO faraz;

--
-- Name: tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.tokens_id_seq OWNED BY public.tokens.id;


--
-- Name: user; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public."user" (
    id integer NOT NULL,
    user_name character varying(255) NOT NULL,
    salt character varying(255) NOT NULL,
    hashed_password character varying(255) NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    is_superuser boolean NOT NULL,
    is_active boolean NOT NULL,
    created_at integer NOT NULL,
    updated_at integer NOT NULL
);


ALTER TABLE public."user" OWNER TO faraz;

--
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_id_seq OWNER TO faraz;

--
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;


--
-- Name: user_roles; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.user_roles (
    id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.user_roles OWNER TO faraz;

--
-- Name: user_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.user_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_roles_id_seq OWNER TO faraz;

--
-- Name: user_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.user_roles_id_seq OWNED BY public.user_roles.id;


--
-- Name: user_roles_roles; Type: TABLE; Schema: public; Owner: faraz
--

CREATE TABLE public.user_roles_roles (
    id integer NOT NULL,
    user_role_id integer NOT NULL,
    role_id integer NOT NULL
);


ALTER TABLE public.user_roles_roles OWNER TO faraz;

--
-- Name: user_roles_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: faraz
--

CREATE SEQUENCE public.user_roles_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_roles_roles_id_seq OWNER TO faraz;

--
-- Name: user_roles_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: faraz
--

ALTER SEQUENCE public.user_roles_roles_id_seq OWNED BY public.user_roles_roles.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: client id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.client ALTER COLUMN id SET DEFAULT nextval('public.client_id_seq'::regclass);


--
-- Name: component id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.component ALTER COLUMN id SET DEFAULT nextval('public.component_id_seq'::regclass);


--
-- Name: component_user_ref id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.component_user_ref ALTER COLUMN id SET DEFAULT nextval('public.component_user_ref_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: es_index id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.es_index ALTER COLUMN id SET DEFAULT nextval('public.es_index_id_seq'::regclass);


--
-- Name: es_index_project_ref id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.es_index_project_ref ALTER COLUMN id SET DEFAULT nextval('public.es_index_project_ref_id_seq'::regclass);


--
-- Name: project id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project ALTER COLUMN id SET DEFAULT nextval('public.project_id_seq'::regclass);


--
-- Name: project_component_ref id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project_component_ref ALTER COLUMN id SET DEFAULT nextval('public.project_component_ref_id_seq'::regclass);


--
-- Name: project_role_project_user_ref id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project_role_project_user_ref ALTER COLUMN id SET DEFAULT nextval('public.project_role_project_user_ref_id_seq'::regclass);


--
-- Name: project_roles id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project_roles ALTER COLUMN id SET DEFAULT nextval('public.project_roles_id_seq'::regclass);


--
-- Name: project_user id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project_user ALTER COLUMN id SET DEFAULT nextval('public.project_user_id_seq'::regclass);


--
-- Name: project_user_ref id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project_user_ref ALTER COLUMN id SET DEFAULT nextval('public.project_user_ref_id_seq'::regclass);


--
-- Name: role id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.role ALTER COLUMN id SET DEFAULT nextval('public.role_id_seq'::regclass);


--
-- Name: salt id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.salt ALTER COLUMN id SET DEFAULT nextval('public.salt_id_seq'::regclass);


--
-- Name: tokens id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.tokens ALTER COLUMN id SET DEFAULT nextval('public.tokens_id_seq'::regclass);


--
-- Name: user id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);


--
-- Name: user_roles id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.user_roles ALTER COLUMN id SET DEFAULT nextval('public.user_roles_id_seq'::regclass);


--
-- Name: user_roles_roles id; Type: DEFAULT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.user_roles_roles ALTER COLUMN id SET DEFAULT nextval('public.user_roles_roles_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add permission	1	add_permission
2	Can change permission	1	change_permission
3	Can delete permission	1	delete_permission
4	Can view permission	1	view_permission
5	Can add group	2	add_group
6	Can change group	2	change_group
7	Can delete group	2	delete_group
8	Can view group	2	view_group
9	Can add user	3	add_user
10	Can change user	3	change_user
11	Can delete user	3	delete_user
12	Can view user	3	view_user
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add Token	6	add_token
22	Can change Token	6	change_token
23	Can delete Token	6	delete_token
24	Can view Token	6	view_token
25	Can add user	7	add_user
26	Can change user	7	change_user
27	Can delete user	7	delete_user
28	Can view user	7	view_user
29	Can add user_role	8	add_user_role
30	Can change user_role	8	change_user_role
31	Can delete user_role	8	delete_user_role
32	Can view user_role	8	view_user_role
33	Can add role	9	add_role
34	Can change role	9	change_role
35	Can delete role	9	delete_role
36	Can view role	9	view_role
37	Can add component	10	add_component
38	Can change component	10	change_component
39	Can delete component	10	delete_component
40	Can view component	10	view_component
41	Can add client	11	add_client
42	Can change client	11	change_client
43	Can delete client	11	delete_client
44	Can view client	11	view_client
45	Can add project	12	add_project
46	Can change project	12	change_project
47	Can delete project	12	delete_project
48	Can view project	12	view_project
49	Can add project_ component_ ref	13	add_project_component_ref
50	Can change project_ component_ ref	13	change_project_component_ref
51	Can delete project_ component_ ref	13	delete_project_component_ref
52	Can view project_ component_ ref	13	view_project_component_ref
53	Can add e s_index	14	add_es_index
54	Can change e s_index	14	change_es_index
55	Can delete e s_index	14	delete_es_index
56	Can view e s_index	14	view_es_index
57	Can add e s_index_ project_ ref	15	add_es_index_project_ref
58	Can change e s_index_ project_ ref	15	change_es_index_project_ref
59	Can delete e s_index_ project_ ref	15	delete_es_index_project_ref
60	Can view e s_index_ project_ ref	15	view_es_index_project_ref
61	Can add user	16	add_user
62	Can change user	16	change_user
63	Can delete user	16	delete_user
64	Can view user	16	view_user
65	Can add project_ user_ ref	17	add_project_user_ref
66	Can change project_ user_ ref	17	change_project_user_ref
67	Can delete project_ user_ ref	17	delete_project_user_ref
68	Can view project_ user_ ref	17	view_project_user_ref
69	Can add component_ user_ ref	18	add_component_user_ref
70	Can change component_ user_ ref	18	change_component_user_ref
71	Can delete component_ user_ ref	18	delete_component_user_ref
72	Can view component_ user_ ref	18	view_component_user_ref
73	Can add tokens	19	add_tokens
74	Can change tokens	19	change_tokens
75	Can delete tokens	19	delete_tokens
76	Can view tokens	19	view_tokens
77	Can add salt	20	add_salt
78	Can change salt	20	change_salt
79	Can delete salt	20	delete_salt
80	Can view salt	20	view_salt
81	Can add project_roles	21	add_project_roles
82	Can change project_roles	21	change_project_roles
83	Can delete project_roles	21	delete_project_roles
84	Can view project_roles	21	view_project_roles
85	Can add project_roles_project_users_ref	22	add_project_roles_project_users_ref
86	Can change project_roles_project_users_ref	22	change_project_roles_project_users_ref
87	Can delete project_roles_project_users_ref	22	delete_project_roles_project_users_ref
88	Can view project_roles_project_users_ref	22	view_project_roles_project_users_ref
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.authtoken_token (key, created, user_id) FROM stdin;
\.


--
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.client (id, name, "serialID", active, deleted, created_at, updated_at, email, mobile, phone, sec_mobile, website) FROM stdin;
1	bigmart	2d385906ab0642118337bd4c2f433101	t	f	1598442961	1598442961	test@test.com	0	0	0	www.test.com
2	yeti	644361fdfe514881a04181b64b5df84d	t	f	1598610674	1598610674	test@test.com	0	0	0	www.test.com
3	unplug	1c18ee09de124812a4b391acd3a00edd	t	f	1598610680	1598610680	test@test.com	0	0	0	www.test.com
4	merokinmel	d93eee9a84c649a0ac6100c1681d05b8	t	f	1598610686	1598610686	test@test.com	0	0	0	www.test.com
5	espo	d910f56ab9e040ea8fe0f2c19718e7b1	t	f	1598610696	1598610696	test@test.com	0	0	0	www.test.com
6	oa	fe430ed1f0274c0c8b6dda51b2bc636c	t	f	1598610702	1598610702	test@test.com	0	0	0	www.test.com
7	ekbana	96c9fa1369b243498b4217c16c470827	t	f	1598931359	1598931359	test@test.com	0	0	0	www.test.com
8	quikr	dd3bf27d689c46d6a21976ec5cfb86f9	t	f	1602677398	1602677398	test@test.com	0	0	0	www.test.com
9	hgi	a70d2e156ec24ee9840d7abe219c62b9	t	f	1607061686	1607061686	hgi@ekbana.com	0	0	0	www.hgi.com
10	litatrip	74c77421d4464477b6597560f88220ab	t	f	1607407951	1607407951	test@test.com	0	0	0	www.test.com
\.


--
-- Data for Name: component; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.component (id, name, "serialID", active, deleted, created_at, updated_at) FROM stdin;
1	api	603f60ddcb584b219d23a3fd3b4ba064	t	f	1598442953	1598442953
2	log	773a0d432617490ab68b65db1609139c	t	f	1598610753	1598610753
3	kafka connectors	a37600b145c048b388d7596c8f850c58	t	f	1598610786	1598610786
4	service metrics	e4738a99daab42968aff16e632d9fc06	t	f	1598931386	1598931386
5	visualization	91256c4056d345218902321424466481	t	f	1598934100	1598934100
\.


--
-- Data for Name: component_user_ref; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.component_user_ref (id, component_id, user_id) FROM stdin;
109	2	4
110	3	4
54	1	1
55	2	1
70	2	21
75	2	5
77	2	14
78	2	17
79	2	12
80	2	11
86	1	6
87	2	6
88	3	6
89	4	6
90	5	6
94	2	3
95	3	3
96	3	15
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	auth	permission
2	auth	group
3	auth	user
4	contenttypes	contenttype
5	sessions	session
6	authtoken	token
7	account	user
8	account	user_role
9	roles	role
10	components	component
11	clients	client
12	projects	project
13	projects	project_component_ref
14	es_index	es_index
15	es_index	es_index_project_ref
16	project_user	user
17	project_user	project_user_ref
18	project_user	component_user_ref
19	tokens	tokens
20	tokens	salt
21	project_roles	project_roles
22	project_roles	project_roles_project_users_ref
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	roles	0001_initial	2020-10-06 13:14:07.502481+00
2	account	0001_initial	2020-10-06 13:14:07.761939+00
3	account	0002_auto_20200818_1653	2020-10-06 13:14:08.061244+00
4	account	0003_auto_20200818_1751	2020-10-06 13:14:08.070818+00
5	account	0004_auto_20200818_1755	2020-10-06 13:14:08.087765+00
6	account	0005_auto_20200818_1800	2020-10-06 13:14:08.130496+00
7	account	0006_auto_20200818_1805	2020-10-06 13:14:08.146359+00
8	account	0007_auto_20200818_1806	2020-10-06 13:14:08.162664+00
9	account	0008_auto_20200818_1806	2020-10-06 13:14:08.179626+00
10	account	0009_auto_20200818_1812	2020-10-06 13:14:08.198026+00
11	account	0010_auto_20200818_1818	2020-10-06 13:14:08.221971+00
12	contenttypes	0001_initial	2020-10-06 13:14:08.361967+00
13	contenttypes	0002_remove_content_type_name	2020-10-06 13:14:08.388805+00
14	auth	0001_initial	2020-10-06 13:14:08.796932+00
15	auth	0002_alter_permission_name_max_length	2020-10-06 13:14:09.279194+00
16	auth	0003_alter_user_email_max_length	2020-10-06 13:14:09.29416+00
17	auth	0004_alter_user_username_opts	2020-10-06 13:14:09.310402+00
18	auth	0005_alter_user_last_login_null	2020-10-06 13:14:09.327549+00
19	auth	0006_require_contenttypes_0002	2020-10-06 13:14:09.338182+00
20	auth	0007_alter_validators_add_error_messages	2020-10-06 13:14:09.354259+00
21	auth	0008_alter_user_username_max_length	2020-10-06 13:14:09.456016+00
22	auth	0009_alter_user_last_name_max_length	2020-10-06 13:14:09.481247+00
23	auth	0010_alter_group_name_max_length	2020-10-06 13:14:09.498091+00
24	auth	0011_update_proxy_permissions	2020-10-06 13:14:09.515673+00
25	authtoken	0001_initial	2020-10-06 13:14:09.597746+00
26	authtoken	0002_auto_20160226_1747	2020-10-06 13:14:09.674687+00
27	clients	0001_initial	2020-10-06 13:14:09.764978+00
28	clients	0002_auto_20200818_1653	2020-10-06 13:14:09.819573+00
29	clients	0003_auto_20200818_1751	2020-10-06 13:14:09.851375+00
30	clients	0004_auto_20200818_1755	2020-10-06 13:14:09.85962+00
31	clients	0005_auto_20200818_1800	2020-10-06 13:14:09.867684+00
32	clients	0006_auto_20200818_1805	2020-10-06 13:14:09.872989+00
33	clients	0007_auto_20200818_1806	2020-10-06 13:14:09.881285+00
34	clients	0008_auto_20200818_1806	2020-10-06 13:14:09.889826+00
35	clients	0009_auto_20200818_1812	2020-10-06 13:14:09.897875+00
36	clients	0010_auto_20200818_1818	2020-10-06 13:14:09.906325+00
37	clients	0011_auto_20200825_0425	2020-10-06 13:14:09.914807+00
38	clients	0012_auto_20200825_0438	2020-10-06 13:14:09.923279+00
39	clients	0013_auto_20200825_0505	2020-10-06 13:14:09.931239+00
40	clients	0014_auto_20200825_0506	2020-10-06 13:14:09.939712+00
41	clients	0015_auto_20200911_0634	2020-10-06 13:14:10.004695+00
42	clients	0016_auto_20200911_0709	2020-10-06 13:14:10.447005+00
43	clients	0017_auto_20200911_0713	2020-10-06 13:14:10.468098+00
44	components	0001_initial	2020-10-06 13:14:10.554327+00
45	components	0002_auto_20200818_1653	2020-10-06 13:14:10.651219+00
46	components	0003_auto_20200818_1751	2020-10-06 13:14:10.669341+00
47	components	0004_auto_20200818_1755	2020-10-06 13:14:10.677629+00
48	components	0005_auto_20200818_1800	2020-10-06 13:14:10.685737+00
49	projects	0001_initial	2020-10-06 13:14:10.779849+00
50	es_index	0001_initial	2020-10-06 13:14:11.254839+00
51	es_index	0002_auto_20200818_1653	2020-10-06 13:14:11.490951+00
52	es_index	0003_auto_20200818_1751	2020-10-06 13:14:11.529988+00
53	es_index	0004_auto_20200818_1755	2020-10-06 13:14:11.555257+00
54	es_index	0005_auto_20200818_1800	2020-10-06 13:14:11.605283+00
55	es_index	0006_auto_20200818_1805	2020-10-06 13:14:11.625571+00
56	es_index	0007_auto_20200818_1806	2020-10-06 13:14:11.63313+00
57	es_index	0008_auto_20200818_1806	2020-10-06 13:14:11.641646+00
58	es_index	0009_auto_20200818_1812	2020-10-06 13:14:11.667084+00
59	es_index	0010_auto_20200818_1818	2020-10-06 13:14:11.674727+00
60	es_index	0011_auto_20200825_0425	2020-10-06 13:14:11.682677+00
61	es_index	0012_auto_20200825_0438	2020-10-06 13:14:11.691256+00
62	es_index	0013_auto_20200825_0505	2020-10-06 13:14:11.699399+00
63	es_index	0014_auto_20200825_0506	2020-10-06 13:14:11.707727+00
64	es_index	0015_auto_20200911_0634	2020-10-06 13:14:11.716228+00
65	es_index	0016_auto_20200911_0709	2020-10-06 13:14:11.72417+00
66	es_index	0017_auto_20200911_0713	2020-10-06 13:14:11.73475+00
67	project_user	0001_initial	2020-10-06 13:14:11.956437+00
68	project_user	0002_auto_20200818_1653	2020-10-06 13:14:12.182758+00
69	project_user	0003_auto_20200818_1751	2020-10-06 13:14:12.197902+00
70	project_user	0004_auto_20200818_1755	2020-10-06 13:14:12.21506+00
71	project_user	0005_auto_20200818_1800	2020-10-06 13:14:12.231671+00
72	project_user	0006_auto_20200818_1805	2020-10-06 13:14:12.24139+00
73	project_user	0007_auto_20200818_1806	2020-10-06 13:14:12.250219+00
74	project_user	0008_auto_20200818_1806	2020-10-06 13:14:12.264951+00
75	project_user	0009_auto_20200818_1812	2020-10-06 13:14:12.27321+00
76	project_user	0010_auto_20200818_1818	2020-10-06 13:14:12.281692+00
77	project_user	0011_auto_20200825_0425	2020-10-06 13:14:12.289807+00
78	project_user	0012_auto_20200825_0438	2020-10-06 13:14:12.298245+00
79	project_roles	0001_initial	2020-10-06 13:14:12.406784+00
80	project_roles	0002_auto_20200825_0505	2020-10-06 13:14:12.549213+00
81	project_roles	0003_auto_20200825_0506	2020-10-06 13:14:12.648678+00
82	project_user	0013_auto_20200825_0505	2020-10-06 13:14:12.668949+00
83	project_user	0014_auto_20200825_0506	2020-10-06 13:14:12.676477+00
84	project_user	0015_auto_20200911_0634	2020-10-06 13:14:12.684765+00
85	project_user	0016_auto_20200911_0709	2020-10-06 13:14:12.692807+00
86	project_user	0017_auto_20200911_0713	2020-10-06 13:14:12.701306+00
87	projects	0002_auto_20200818_1653	2020-10-06 13:14:12.721662+00
88	projects	0003_auto_20200818_1751	2020-10-06 13:14:12.745344+00
89	projects	0004_auto_20200818_1755	2020-10-06 13:14:12.770074+00
90	projects	0005_auto_20200818_1800	2020-10-06 13:14:12.79559+00
91	projects	0006_auto_20200818_1805	2020-10-06 13:14:12.813947+00
92	projects	0007_auto_20200818_1806	2020-10-06 13:14:12.844779+00
93	projects	0008_auto_20200818_1806	2020-10-06 13:14:12.889312+00
94	projects	0009_auto_20200818_1812	2020-10-06 13:14:12.924002+00
95	projects	0010_auto_20200818_1818	2020-10-06 13:14:12.952993+00
96	projects	0011_auto_20200825_0425	2020-10-06 13:14:12.985905+00
97	projects	0012_auto_20200825_0438	2020-10-06 13:14:13.010956+00
98	projects	0013_auto_20200825_0505	2020-10-06 13:14:13.052895+00
99	projects	0014_auto_20200825_0506	2020-10-06 13:14:13.086673+00
100	projects	0015_auto_20200911_0634	2020-10-06 13:14:13.110872+00
101	projects	0016_auto_20200911_0709	2020-10-06 13:14:13.13601+00
102	projects	0017_auto_20200911_0713	2020-10-06 13:14:13.180047+00
103	roles	0002_auto_20200818_1653	2020-10-06 13:14:13.28054+00
104	roles	0003_auto_20200818_1751	2020-10-06 13:14:13.337716+00
105	roles	0004_auto_20200818_1755	2020-10-06 13:14:13.353882+00
106	roles	0005_auto_20200818_1800	2020-10-06 13:14:13.521326+00
107	roles	0006_auto_20200818_1805	2020-10-06 13:14:13.663675+00
108	roles	0007_auto_20200818_1806	2020-10-06 13:14:13.678644+00
109	roles	0008_auto_20200818_1806	2020-10-06 13:14:13.716451+00
110	roles	0009_auto_20200818_1812	2020-10-06 13:14:13.745923+00
111	roles	0010_auto_20200818_1818	2020-10-06 13:14:13.761805+00
112	roles	0011_auto_20200825_0425	2020-10-06 13:14:13.781226+00
113	roles	0012_auto_20200825_0438	2020-10-06 13:14:13.79512+00
114	roles	0013_auto_20200825_0505	2020-10-06 13:14:13.812152+00
115	roles	0014_auto_20200825_0506	2020-10-06 13:14:13.828639+00
116	roles	0015_auto_20200911_0634	2020-10-06 13:14:13.845339+00
117	roles	0016_auto_20200911_0709	2020-10-06 13:14:13.861782+00
118	roles	0017_auto_20200911_0713	2020-10-06 13:14:13.879847+00
119	sessions	0001_initial	2020-10-06 13:14:13.982532+00
120	tokens	0001_initial	2020-10-06 13:14:14.231872+00
121	tokens	0002_auto_20200818_1653	2020-10-06 13:14:14.350794+00
122	tokens	0003_auto_20200818_1751	2020-10-06 13:14:14.389215+00
123	tokens	0004_auto_20200818_1755	2020-10-06 13:14:14.424732+00
124	tokens	0005_auto_20200818_1800	2020-10-06 13:14:14.455147+00
125	tokens	0006_auto_20200818_1805	2020-10-06 13:14:14.480112+00
126	tokens	0007_auto_20200818_1806	2020-10-06 13:14:14.503217+00
127	tokens	0008_auto_20200818_1806	2020-10-06 13:14:14.530178+00
128	tokens	0009_auto_20200818_1812	2020-10-06 13:14:14.552449+00
129	tokens	0010_auto_20200818_1818	2020-10-06 13:14:14.580259+00
130	tokens	0011_auto_20200825_0425	2020-10-06 13:14:14.592072+00
131	tokens	0012_auto_20200825_0438	2020-10-06 13:14:14.608759+00
132	tokens	0013_auto_20200825_0505	2020-10-06 13:14:14.625688+00
133	tokens	0014_auto_20200825_0506	2020-10-06 13:14:14.643734+00
134	tokens	0015_auto_20200911_0634	2020-10-06 13:14:14.659163+00
135	tokens	0016_auto_20200911_0709	2020-10-06 13:14:14.675655+00
136	tokens	0017_auto_20200911_0713	2020-10-06 13:14:14.692476+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
dcf1166v7uhr8oauhizegj2uzqyswg6m	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-10-20 13:15:11.366964+00
72dwq6144jvrcqjhvzsedks3xu240doe	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-09-09 10:45:13.357681+00
shsg8feuoskehar6chq41eozx8uvk5qf	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-09-09 11:25:39.436026+00
42qz9mx5inlzz64xz0puj39reclwhx6j	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-09-09 20:04:45.574848+00
6guporrhn9qnwu4onxm3r3wqon6gg11r	NmRmOWZiNDhjZmFlZjhiNTVhYTIxOGFhNDBmNmM4MTA4NzQ4MDY5YTp7fQ==	2020-09-11 12:15:31.477401+00
etlocwagwy3n2vuyn539rqj9nj2b56je	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-09-14 04:29:04.192345+00
vxk2gszk6c0u0jf5ybk5yc4mzdl1j9r9	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-09-14 11:21:32.562458+00
12vu9m4vzxcm2rgwluvj442io9l7wqh4	NmRmOWZiNDhjZmFlZjhiNTVhYTIxOGFhNDBmNmM4MTA4NzQ4MDY5YTp7fQ==	2020-09-14 11:25:19.391795+00
9dkbl20zk51oj7krrfk8u9c50vanuhzj	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-09-14 11:25:29.274056+00
t7hmdl3yg4zkzbcnsxkvfwhqladpysrb	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-09-14 11:28:38.735922+00
wx6hlbmlictdd8j8466obenm68w6q3tr	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-09-14 11:31:36.465373+00
ge8ouyvifqqyqeu9gpt9whi53el7dhh0	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-09-18 03:09:29.824024+00
t2gpy2ntywxhzw93afp13cb1pwyqgzi2	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-09-24 03:37:21.265053+00
bzbrw8n1nxnhypn2etw4ygugunbc6dfk	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-09-29 06:20:34.517509+00
uz5j95bjur0a6mln41smohbmdautjyvh	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-09-30 16:19:43.742412+00
kat2yfi4shfqyeronns11skoqts7t0wg	NmRmOWZiNDhjZmFlZjhiNTVhYTIxOGFhNDBmNmM4MTA4NzQ4MDY5YTp7fQ==	2020-10-01 05:45:30.30325+00
ft96z9vk4bscu5qhhiq7sel7hhrcsxca	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-10-02 04:32:21.87482+00
snnlo5g91szsfywtikidh2sxzkciv31b	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-10-06 07:27:28.287711+00
33btdvkzf8rsbfr28nj19kkdqggbz9k7	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-10-13 06:47:31.211347+00
442odv58wla8l0mdia4wikyvm1pvodua	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-10-15 04:07:48.019814+00
gpjaakea468pmdb7v5ybhu3p0njunywg	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-10-16 05:54:30.311358+00
82ldzcukobwpk5z4lfczj1kw3mzmrmim	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-10-16 08:26:40.559661+00
fhf3e41zgqzxcofgikggtsq8l1ditn0u	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-10-21 03:24:33.734853+00
u02ge0g15mkiy3swtoj1l7lhu89encyp	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-10-28 05:57:19.328185+00
p43n37o3cdf8ay6ecj0ud9nuqtsjdsfh	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-10-30 05:18:36.487434+00
kpc0rz4z15vx0e0z0pebhy56c19it1oh	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-10-30 10:31:52.125566+00
el5vpkfi2spnzq3bgohfcbv990uxrs7e	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-10-31 17:22:09.917924+00
50v49gznbcrvbur3c34nqfw7aybg78fi	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-11-04 05:03:15.305695+00
a9in3s73j3180a7xrfou4q3cy4o36f8w	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-11-04 06:32:36.562428+00
yqn3z0kg36b532ct2fyo4iwp2o65pagj	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-11-13 05:13:07.693613+00
vrfi5d79qi4wd310xqbmtkwa4yj0k7uq	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-11-18 05:30:58.728641+00
g0kqt8o8psxensshtm34i0i7rroc8h2v	NmRmOWZiNDhjZmFlZjhiNTVhYTIxOGFhNDBmNmM4MTA4NzQ4MDY5YTp7fQ==	2020-11-18 11:27:28.218874+00
al6cupodh80b2u7eksmtrh2kegujz79k	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-11-19 06:38:44.594129+00
pr1johug5xf9qh9aemw80igza4hn2pzn	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-11-27 10:49:05.082156+00
juqxoh0pvll8yub3seqtly3k0jcrx81c	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-12-08 06:58:18.431405+00
seqchs4b8hn1azjgf5euni3ae80jvnfz	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-12-08 07:40:50.311435+00
qno2qidz18vzqybfoizl9g9r0s13ohbq	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-12-09 12:46:32.915926+00
h91cc1w2iy516mmucits5pfuf5azkamd	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-12-14 05:50:11.317315+00
pi65s3ip7jmufoszxr2n4mjsodhhbeoh	NmRmOWZiNDhjZmFlZjhiNTVhYTIxOGFhNDBmNmM4MTA4NzQ4MDY5YTp7fQ==	2020-12-14 10:12:35.304521+00
gqhaob75hvzw12p8dcojhuqbm3qwax5z	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-12-18 05:53:35.314925+00
pepw0zt7g886r9snxwlepv69jwev35p1	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-12-18 05:53:52.917489+00
0zujgc63eeermt4ij6v3io1xfgcm0hj8	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-12-23 05:21:33.600446+00
ggg9clk8a4s7s26umnporynh5gyt4ure	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-12-24 06:34:19.017263+00
jbu9rxyh7wgm1gugqifs6g37ei7hztga	ZDQ1OTlkZjQ4NjE3MGQwMzYwZWQxOTdkZWM1MmYyNDE0NmIzMjU3MTp7InVzZXJuYW1lIjoiYWRtaW4iLCJ1c2VyIjoyOH0=	2020-12-29 07:32:39.887543+00
\.


--
-- Data for Name: es_index; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.es_index (id, name, "serialID", es_server, active, created_at, updated_at) FROM stdin;
1	rp_analysis	8e107c9449394e29b99c15da126a4cdb	dev	t	1598934495	1598934495
2	eklogstash-bigmart	b30b68a2f94047dd87f0da403c39700b	prod	t	1601360414	1601360414
5	rp_platform	6f98c4ff542946b2976ba23553189087	dev	t	1601627325	1601627325
6	rp_bannertype	6f98c4ff542946b2976ba23553189087	dev	t	1601631978	1601631978
7	rp_advertisement	6f98c4ff542946b2976ba23553189087	dev	t	1601632020	1601632020
3	rp_analytics	6f98c4ff542946b2976ba23553189087	dev	t	1601637395	1601637395
4	rp_analytics_v2	6f98c4ff542946b2976ba23553189087	dev	t	1602655210	1602655210
9	adv_mobile_devices	da81393d006a40d3abbac82b8291b8cd	dev	t	1606203733	1606203733
10	adv_mobile_os	da81393d006a40d3abbac82b8291b8cd	dev	t	1606204059	1606204059
11	adv_desktop_os	da81393d006a40d3abbac82b8291b8cd	dev	t	1606204075	1606204075
12	adv_referrer	da81393d006a40d3abbac82b8291b8cd	dev	t	1606204451	1606204451
13	adv_daily_hits	da81393d006a40d3abbac82b8291b8cd	dev	t	1606204498	1606204498
14	adv_weekly_hits	da81393d006a40d3abbac82b8291b8cd	dev	t	1606204517	1606204517
15	adv_monthly_hits	da81393d006a40d3abbac82b8291b8cd	dev	t	1606204557	1606204557
16	adv_daily_month_hits	da81393d006a40d3abbac82b8291b8cd	dev	t	1606204574	1606204574
17	ns_analysis_part2	3d396912ce7245dea8655084f619ef5d	dev	t	1606747212	1606747212
18	ns_analysis_full	3d396912ce7245dea8655084f619ef5d	dev	t	1607420346	1607420346
19	n_p_analytics	3d396912ce7245dea8655084f619ef5d	dev	t	1607582077	1607582077
\.


--
-- Data for Name: es_index_project_ref; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.es_index_project_ref (id, index_id, project_id) FROM stdin;
13	4	9
14	9	9
15	10	9
16	11	9
17	12	9
18	13	9
19	14	9
20	15	9
21	16	9
22	17	9
24	18	9
25	19	9
\.


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.project (id, name, active, "serialID", deleted, created_at, updated_at, client_id) FROM stdin;
1	bigmart_sales	t	f3f035eb-853b-4e24-8c54-c0f3e2977ae4	f	1598442969	1598442969	1
8	Service Metrics	t	294524fe-1647-4d01-8eec-73e9bec2126e	f	1598931434	1598931630	7
9	visualization	t	3193f111-0dc2-461d-8df6-5d5536184353	f	1598934133	1598934133	7
11	twitteranalysis	t	12bf6897-5b4b-4a3b-b7b0-ac541e32b5fe	f	1603172318	1603172318	7
12	yeti-mobile	t	9481dfb6-03ae-40fd-a59a-2038a845d1fb	f	1606189384	1606189384	2
13	yeti-web	t	04174ba9-4959-4786-94a9-6911a7ab40c6	f	1606189413	1606189413	2
14	merokinmel-mobile	t	1ce4fbfc-a073-4f21-b73d-ba4a4e8ba8ac	f	1606198284	1606198284	4
15	quikrfood-mobile	t	34f1b239-fb30-4796-961f-03c0064c95ec	f	1606198461	1606198461	8
16	espo-web	t	9967c8a2-b269-46bf-992c-622d1c616523	f	1606402580	1606402580	5
17	oa-mobile	t	6619e088-a4a7-45d6-8c65-c073dd91d7dd	f	1606402597	1606402597	6
18	pointnemo	t	1857eae8-e875-4e32-9f14-276955c4767b	f	1606809349	1606809349	7
19	unplug-web	t	7abf5831-a934-4a1b-b5ca-cc11b6a70d87	f	1607051682	1607051682	3
20	unplug-mobile	t	1691d195-a9c5-45c0-8675-a10255495c93	f	1607051695	1607051838	3
21	HGI	t	7e0dad84-f718-4bbc-9143-90b81c519326	f	1607061580	1607061711	9
22	bigmart-mobile	t	22d74432-e2a0-4df4-b211-6fdbd73dc4b0	f	1607404282	1607404282	1
2	Bigmart	f	32d49647-37fb-493e-b392-32fb1595ae2a	f	1598610824	1607406735	1
4	ESPO	f	aa8ac74b-a94f-4ec0-a1d5-4c32ae587ef8	f	1598610905	1607406747	5
7	MeroKinmel	f	accf8724-76b1-45a4-9906-a15cd37d1466	f	1598610952	1607406753	4
5	OA	f	102925aa-a95c-4b4b-830d-a5ba4a58f4f7	f	1598610920	1607406762	6
10	Quikr	f	efc9c356-ab1a-473c-85a7-c5848b8d1a34	f	1602677420	1607406775	8
6	Unplug	f	745e7b5a-6748-42b7-997f-60b426871481	f	1598610943	1607406792	3
3	Yeti	f	8193dae4-e9a8-4e68-86b5-e39b4ca08ef1	f	1598610889	1607406803	2
23	litatrip-mobile	t	f94898c2-0aa4-43e1-8473-906e63f72070	f	1607407978	1607407978	10
\.


--
-- Data for Name: project_component_ref; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.project_component_ref (id, component_id, project_id) FROM stdin;
1	1	1
39	4	8
40	5	9
50	1	11
51	2	12
52	2	13
53	2	14
54	2	15
55	2	16
56	2	17
57	1	18
58	2	19
60	2	20
63	3	21
64	5	21
65	2	22
71	3	2
72	3	4
73	1	4
74	3	7
75	3	5
76	3	6
77	3	3
78	2	23
\.


--
-- Data for Name: project_role_project_user_ref; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.project_role_project_user_ref (id, role_id, user_id) FROM stdin;
\.


--
-- Data for Name: project_roles; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.project_roles (id, role, "serialID", created_at, updated_at) FROM stdin;
2	QA	e0863266dd2c4b91b32f23b1aad973ea	1598472358	1598472358
3	Ekbana	1834bb3c082844bbb91761ce076d9995	1598616010	1598616010
\.


--
-- Data for Name: project_user; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.project_user (id, fname, email, password, "serialID", active, admin, superadmin, created_at, updated_at) FROM stdin;
13	faraz	faraz.khan@ekbana.info	193d759d8ecdb678b444137143f74eb0	fbe8c9395e3e47f2bb74bffbd402fd3d	t	f	f	1598932089	1600274361
16	Tchiring	tchiring@ekbana.info	4f8a8e5f76c977d6f5ba18916f8c08ac	6468ba30bac6457bbe3502d428e78ae0	t	f	f	1600321107	1600321107
5	gaurav	gaurav@ekbana.info	757bd4cb20dbada607940ac251b85361	c46286414bec4bc1ad3fb9fb7fe34f98	t	t	f	1598873018	1607407049
1	saurab	d.saurab1@gmail.com	08b570474935408d65644343cff5c80c	c147f1d6d61a4c93ae32b63de7014c8b	t	t	f	1598442995	1606809373
18	dipesh	dipesh.shrestha@ekbana.info	3a107254c16a1baad061c13cc0148b80	60552a4743b14a54a913e4157af581e0	t	f	f	1603172368	1603172419
14	rikee	r@m.com	132600defc55334ef221380b66d27dc4	2a4686322ec547269d63f515b17cb194	t	t	f	1598934221	1607407082
17	shreeya	shreeya@ekbana.info	d56770f0f1e9ed6bd9f9b8e7a20cfdd8	93936aeafd3a4a04819a1f25b218c7a3	t	t	f	1600925914	1607407091
12	suman	suman@ekbana.info	9b66d43dbee148118b274ab3507d0163	6654dcbbed484979ae621013e0609b82	t	t	f	1598874544	1607407101
11	jeeten	jeeten@ekbana.info	0c7e2406e1f738f25ddee7c5dfb9082a	c7831fdb6bae4697a4effba2d7454324	t	t	f	1598874079	1607407110
22	bemita	bemita@ekbana.info	931e607a89a9b917a6ddd42206c2cfe3	a6f1227f7f3640a88334af1bae9d5e56	t	f	f	1604646154	1607407997
19	suji	suji.suji@ekbana.info	31f990e93fb95c2c0595652070057758	62b8a7f54cd546708b8bdf9457866297	t	f	f	1603191715	1604294196
6	salistha	salistha@gmail.com	b876822070efbf8aa7cf9341a8bacbee	9156a7181c384aa997822eb56e081b85	t	t	f	1598873624	1607417327
3	aashir	aashir@ekbana.info	af507b5e2b2d34ee14d7b04d6a9814ee	0e0e9b89425347af93cf7968ab6e910f	t	t	f	1598616058	1607417634
15	sajita	sajita.pathak@ekbana.info	1bb6cd2e4c85866209b6573524126b43	3525666b979b4abb8852a65b9c961b87	t	t	f	1599709178	1607420802
2	user_qa	user_qa@ekbana.info	048d7c564dd9d4fb53336eae5d8f8b51	1588e642b1444754b6422cb1fe248c99	t	f	f	1598611013	1607052273
23	unplug	test@gmail.com	cd5a080eab5e161f1857474d8db50192	383199459dcd46d6b7c1138e516db7f7	t	f	f	1607427002	1607427002
10	pratik	pratik@ekbana.info	1b3bcf0bba67158798755297e616eb75	702f455d57b74234a876adbb2cb4b9db	t	f	f	1598874050	1607404387
8	arjun	arjun@ekbana.info	08f4e2dd21594bce47e88311f60ff0e2	b0a8b1116ee14d07929fa0931ba66b2c	t	f	f	1598873773	1607404403
20	avinash	avinash@ekbana.info	494737055d8a5baacea9b7930798ad11	efddec9eb9d942b793e8a92c47bc75f2	t	f	f	1604034898	1607404418
21	sachin	sachin@ekbana.info	0f4ab36b9ad08b848f66c509fad131c8	a8da97b5f1724b8a856f349e2db50f1c	t	t	f	1604382341	1607404465
4	bibek	bibek.chaudhary@ekbana.info	c1c7806dd913ac472d0467366d206c5e	979bf523dc0f4c7791f57bc597a15eb9	t	t	f	1598872966	1607490942
\.


--
-- Data for Name: project_user_ref; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.project_user_ref (id, project_id, user_id) FROM stdin;
474	14	8
475	15	8
476	22	20
517	12	11
518	12	22
519	13	22
520	22	22
521	23	22
491	22	21
529	1	6
530	8	6
531	9	6
532	21	6
539	1	3
540	13	3
541	8	3
542	21	3
545	8	15
510	22	5
546	21	15
157	8	13
158	2	13
162	8	16
549	19	23
550	20	23
512	9	14
513	8	14
514	22	14
515	12	17
516	12	12
560	22	4
561	21	4
562	8	4
380	1	1
381	4	1
382	8	1
383	9	1
384	2	1
240	11	18
385	18	1
438	19	2
439	20	2
272	11	19
273	1	19
274	3	19
275	2	19
471	19	10
472	20	10
473	22	10
\.


--
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.role (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: salt; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.salt (id, salt, created_at, updated_at, user_id) FROM stdin;
2	873ecd448be44be186019bb408abef8c	1598611013	1598611013	2
3	28ba20c8385d4b989a426c3557bc5902	1598616058	1598616058	3
4	fd670338a5294849abe993ca5ad49753	1598872966	1598872966	4
5	a5059c7e270942e3ab99836ebd8d69af	1598873018	1598873018	5
8	f1cc432382c7490c872e9b7b1d75b16e	1598873773	1598873773	8
10	ce622eb53740480da00a696d94ab9c52	1598874050	1598874050	10
11	00bc9dd518c7431c91b582451557221e	1598874079	1598874079	11
12	8fd8fed52e8141b99ac10db4638cc361	1598874544	1598874544	12
13	ffd475af5cab4becbde4f41a3663b6dc	1598932089	1598932089	13
14	472604d27baa4df5a2b8ee7da02ffa9c	1598934221	1598934221	14
15	af572724ecb743469610a81c2311aa73	1599709178	1599709178	15
16	29eb730ce1e04c74bddfa49492af80e1	1600321107	1600321107	16
17	6248683b3b794c908e1b3ef44f4413a3	1600925914	1600925914	17
1	79a8da8ab7a34089b36d31fcd0259434	1598442995	1598442995	1
6	2388b1e76c43421e8a9de8943b833764	1598873625	1598873625	6
18	958c9918ceaa46a9bbb94bb096f9ab88	1603172368	1603172368	18
19	bb730f2803f64e34bd2b5d8b0bd74b80	1603191715	1603191715	19
20	04acce84651647cb80579b6e0f0b7fac	1604034898	1604034898	20
21	3d0d568f2d9b4211af9ce24899a0d679	1604382341	1604382341	21
22	fa7c86b4bda842308e47ba0c20cdf72a	1604646154	1604646154	22
23	0ba8d00ce9df463eab2a5741755eb58b	1607427003	1607427003	23
\.


--
-- Data for Name: tokens; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.tokens (id, token, ip, component, created_at, updated_at, user_id) FROM stdin;
142	5bdf63521e83413098a5d90769357020	110.44.123.47	773a0d432617490ab68b65db1609139c	1599450466	1599450466	5
840	1123daf767024a3ea6de6e7b72325a0a	110.44.123.47	a37600b145c048b388d7596c8f850c58	1607417413	1607417413	6
842	df55e2f226b4435a8aa2c34e84057d35	110.44.123.47	a37600b145c048b388d7596c8f850c58	1607417639	1607417639	3
844	3341b1884fb84700b0c14acab214496a	110.44.123.47	a37600b145c048b388d7596c8f850c58	1607417662	1607417662	3
846	925814b1142a49a3a3ecdb44c51a1624	110.44.123.47	773a0d432617490ab68b65db1609139c	1607425837	1607425837	14
848	46319f25032c4c4b917fee6d63d92cf9	110.44.123.47	773a0d432617490ab68b65db1609139c	1607426419	1607426419	3
778	a240df9a11b74d0e81f522dcb4b2a0c4	110.44.123.47	773a0d432617490ab68b65db1609139c	1606404230	1606404230	4
200	d9b4e77020e6439793383f2e76bdae4a	110.44.123.47	773a0d432617490ab68b65db1609139c	1599706592	1599706592	5
285	588b03b1a20c4fb39c0c27cb5ad88c1a	110.44.123.47	773a0d432617490ab68b65db1609139c	1600154195	1600154195	13
850	baf73a3f4b704ec8b26bf4e22821e8e4	110.44.123.47	773a0d432617490ab68b65db1609139c	1607427128	1607427128	4
852	2685793ef1704287ab6750d9997e8234	110.44.123.47	773a0d432617490ab68b65db1609139c	1607481269	1607481269	3
854	e1e88c2f8fd1412799a127c85c2e6ceb	110.44.123.47	e4738a99daab42968aff16e632d9fc06	1607487079	1607487079	15
208	3e3fd5a4b2464f3c8978f5f439032c3f	110.44.123.47	773a0d432617490ab68b65db1609139c	1599709534	1599709534	5
209	c7513ebdf82f42d0b473948d6005dc6d	110.44.123.47	773a0d432617490ab68b65db1609139c	1599709545	1599709545	5
856	b6301433959c41bead25ad8fcd9f5610	110.44.123.47	a37600b145c048b388d7596c8f850c58	1607487764	1607487764	4
297	6371c31138694b5bb9e664b95e81d03e	110.44.123.47	e4738a99daab42968aff16e632d9fc06	1600321180	1600321180	16
858	13791fc1f8714f00b8b8d36969eb126c	110.44.123.47	773a0d432617490ab68b65db1609139c	1607491513	1607491513	4
860	1876062b31e94bf5bdeecc7956b73255	110.44.123.47	91256c4056d345218902321424466481	1607505189	1607505189	14
615	ba4d87347de34c3eadad2a4aa2bfbd30	110.44.123.47	773a0d432617490ab68b65db1609139c	1604035085	1604035085	20
870	7d9d11a0b4044a8a964c57abc5d77f01	110.44.123.47	773a0d432617490ab68b65db1609139c	1607599913	1607599913	14
872	8ff119a8db1f42d3a9d74f8fe7800d50	110.44.123.47	a37600b145c048b388d7596c8f850c58	1607659973	1607659973	6
806	6f5d88bc902442b89498034908821b2f	110.44.123.47	e4738a99daab42968aff16e632d9fc06	1606730915	1606730915	13
874	2625f541102042d9a70132010d925ab6	110.44.123.47	91256c4056d345218902321424466481	1607660161	1607660161	1
245	6d90341cac2649e4a37681fc320ad52a	110.44.123.47	773a0d432617490ab68b65db1609139c	1599779492	1599779492	5
623	38f79a3515f94e568529569105d66166	110.44.123.47	773a0d432617490ab68b65db1609139c	1604382964	1604382964	21
251	65be8647f5424c8b86b52d98eebac823	110.44.123.47	773a0d432617490ab68b65db1609139c	1599817074	1599817074	13
258	debc8c6553314bdb9c3acd5ab9f635e8	110.44.123.47	773a0d432617490ab68b65db1609139c	1600060989	1600060989	11
259	73b3eaca26cf4174b5e1fd852b95685f	110.44.123.47	773a0d432617490ab68b65db1609139c	1600062311	1600062311	5
264	6e307a8a2be74960a4a31897a29868e3	110.44.123.47	773a0d432617490ab68b65db1609139c	1600076962	1600076962	5
360	b48128439a0e462289257e98c16c0a75	110.44.123.47	773a0d432617490ab68b65db1609139c	1600767820	1600767820	13
880	95985b9a867b4477b5d96b01c7791ced	110.44.123.47	91256c4056d345218902321424466481	1607685633	1607685633	14
882	f3845522e3884e0ea9d743bcf6619423	110.44.123.47	e4738a99daab42968aff16e632d9fc06	1608009273	1608009273	13
884	3f1b210bc42844a8b7816921812cc04d	110.44.123.47	e4738a99daab42968aff16e632d9fc06	1608009307	1608009307	13
508	b178f570c78840089b91c3d83f67831d	110.44.123.47	773a0d432617490ab68b65db1609139c	1601855608	1601855608	5
830	5802c0b066bc43e99ef2607ce16fa677	110.44.123.47	a37600b145c048b388d7596c8f850c58	1607401459	1607401459	6
408	5ee6217d42b64a00bca7f1029546823c	110.44.123.47	773a0d432617490ab68b65db1609139c	1601172999	1601172999	5
410	25bb2e1ab54a42cb9093263c4d893a3d	110.44.123.47	773a0d432617490ab68b65db1609139c	1601266232	1601266232	10
757	11a318c3fc434ac1a6b1ff7530e61f39	110.44.123.47	773a0d432617490ab68b65db1609139c	1606279691	1606279691	4
669	3597fced9a6d49b2be7847439b9d1d28	110.44.123.47	773a0d432617490ab68b65db1609139c	1605006553	1605006553	4
764	dce48cf976254a22893c4458ed5f4722	110.44.123.47	773a0d432617490ab68b65db1609139c	1606365401	1606365401	4
766	1340ea9a942d474692ed481ef95eb87e	110.44.123.47	773a0d432617490ab68b65db1609139c	1606368045	1606368045	12
841	7d15606583f54c098b396c5d9a3ce9ff	110.44.123.47	a37600b145c048b388d7596c8f850c58	1607417594	1607417594	6
843	2d5bbe6034624b1f8ea731759a211fb3	110.44.123.47	a37600b145c048b388d7596c8f850c58	1607417661	1607417661	3
845	931912dc5d2e4388809a6e3a9b64a2d7	110.44.123.47	91256c4056d345218902321424466481	1607420207	1607420207	14
779	4c47d0e58bd94be284dc8ea4a028c96e	110.44.123.47	773a0d432617490ab68b65db1609139c	1606428900	1606428900	12
781	0da2ca94416c4609b5a4fc79aaf00148	110.44.123.47	91256c4056d345218902321424466481	1606449157	1606449157	14
851	0d20e0be108f462fa3eefe74361ef681	110.44.123.47	773a0d432617490ab68b65db1609139c	1607427534	1607427534	23
702	6d99b13cb3264ad18b6426c5f83a2b96	110.44.123.47	e4738a99daab42968aff16e632d9fc06	1605693919	1605693919	16
526	5bc1e35501f04c8fb2337adc93861d03	110.44.123.47	603f60ddcb584b219d23a3fd3b4ba064	1602061554	1602061554	1
787	5a9aeb8dd3244d6c8069abd51a1f63f2	110.44.123.47	773a0d432617490ab68b65db1609139c	1606454532	1606454532	14
618	fb7e792e2f934221aebb73d694561a84	110.44.123.47	91256c4056d345218902321424466481	1604305777	1604305777	1
789	af4d7cd0eff64d37b2020da6920bd95a	110.44.123.47	773a0d432617490ab68b65db1609139c	1606454577	1606454577	14
791	19160e3ceb034937bb302f6faa79e8fd	110.44.123.47	773a0d432617490ab68b65db1609139c	1606455014	1606455014	14
624	bb3fac76bdbe460d8fedf85d25ab6fc9	110.44.123.47	91256c4056d345218902321424466481	1604391994	1604391994	1
626	df222eb35a1f454cadde6bcf319c990a	110.44.123.47	e4738a99daab42968aff16e632d9fc06	1604464377	1604464377	1
853	5e009aa97379432e9cae7a0fc7870359	110.44.123.47	a37600b145c048b388d7596c8f850c58	1607487031	1607487031	3
855	34ad99322d274528a09c5761958a7f9a	110.44.123.47	a37600b145c048b388d7596c8f850c58	1607487665	1607487665	6
857	c971f868f9d845e1a76cf0b9f1103a9e	110.44.123.47	e4738a99daab42968aff16e632d9fc06	1607490948	1607490948	4
859	293f0a17a396411294caf25b6126467c	110.44.123.47	773a0d432617490ab68b65db1609139c	1607492104	1607492104	3
793	07f18ba232a64c0ba73b5ca0a434bd5b	110.44.123.47	773a0d432617490ab68b65db1609139c	1606455501	1606455501	14
861	3b302e79357343f9ad21d98003f7c7ab	110.44.123.47	91256c4056d345218902321424466481	1607509328	1607509328	14
638	3a56d9f939d641efafcea096001266b0	110.44.123.47	91256c4056d345218902321424466481	1604478796	1604478796	1
640	c88217234ae64fcaaaa7201ef664e072	110.44.123.47	773a0d432617490ab68b65db1609139c	1604481679	1604481679	12
863	a65d018668e648e79630fce1f17c964f	110.44.123.47	91256c4056d345218902321424466481	1607572331	1607572331	14
797	abaac02556654f8a91c529432fdb28cd	110.44.123.47	91256c4056d345218902321424466481	1606459532	1606459532	14
799	218ab206467547f8a51c3d0cf950d6cc	110.44.123.47	91256c4056d345218902321424466481	1606474686	1606474686	14
803	6d74262e98e84dde810e2650dc839ba1	110.44.123.47	91256c4056d345218902321424466481	1606709073	1606709073	14
805	c5c3ce42e96e44d4894a66e96d7e1146	110.44.123.47	e4738a99daab42968aff16e632d9fc06	1606730176	1606730176	13
650	8186ebda8e094bc19149e0778e338ddf	110.44.123.47	e4738a99daab42968aff16e632d9fc06	1604643449	1604643449	1
652	548a14ef76ff4c75858b2fdf2f05f170	110.44.123.47	773a0d432617490ab68b65db1609139c	1604646254	1604646254	22
809	2e28ad737373400ca2fcb093d539b52c	110.44.123.47	a37600b145c048b388d7596c8f850c58	1606824652	1606824652	1
811	168c5a88499844f3acbd8923e140e02f	110.44.123.47	773a0d432617490ab68b65db1609139c	1606882406	1606882406	4
656	6325022ef2864221a5b68f6ebd59da86	110.44.123.47	773a0d432617490ab68b65db1609139c	1604820050	1604820050	12
726	8e9cbf279def4394b3fabae2a4c9a915	110.44.123.47	773a0d432617490ab68b65db1609139c	1605870812	1605870812	21
664	762eac4e44654ce4be7737a73094999f	110.44.123.47	773a0d432617490ab68b65db1609139c	1604979658	1604979658	4
732	b6978a30c82d44b4a7a27d6227022e75	110.44.123.47	603f60ddcb584b219d23a3fd3b4ba064	1606129887	1606129887	1
815	1e868da8a4ac44b18f4986b525b4d24b	110.44.123.47	91256c4056d345218902321424466481	1606892203	1606892203	14
817	5e5800c988434d759307c6599531ec48	110.44.123.47	e4738a99daab42968aff16e632d9fc06	1606927029	1606927029	1
666	17bb86109f974450a45db5710e0803be	110.44.123.47	773a0d432617490ab68b65db1609139c	1604990247	1604990247	4
873	51820dbcc1d547ddb099fb0f91d7adfc	110.44.123.47	91256c4056d345218902321424466481	1607660104	1607660104	1
668	7c270794e65144ea86dec12f0166e182	110.44.123.47	773a0d432617490ab68b65db1609139c	1605005952	1605005952	4
881	2e80591df7a2460198d4bef06b49ff36	110.44.123.47	e4738a99daab42968aff16e632d9fc06	1608009162	1608009162	13
568	7b1b34a4b8c94b9ea0ac1a1da11a5504	110.44.123.47	91256c4056d345218902321424466481	1602825034	1602825034	1
569	34d4506feff44172b41e48f45358a558	110.44.123.47	91256c4056d345218902321424466481	1602825469	1602825469	1
570	4286fa732eb04a8f88c14c1169a022fb	110.44.123.47	773a0d432617490ab68b65db1609139c	1602826316	1602826316	1
571	5ee78c276ee64f50af564f6c47801eb3	110.44.123.47	773a0d432617490ab68b65db1609139c	1602826346	1602826346	1
883	65707014787c4831af3e84cac50c49e2	110.44.123.47	773a0d432617490ab68b65db1609139c	1608009301	1608009301	20
678	3eb4077b7bd647d1b583b8e04a3f572a	110.44.123.47	91256c4056d345218902321424466481	1605153729	1605153729	1
829	e241b2b5846747ce8c34a177270d7717	110.44.123.47	a37600b145c048b388d7596c8f850c58	1607399738	1607399738	15
752	3cc88ef06f5d4ba2a5839ea322625bb5	110.44.123.47	773a0d432617490ab68b65db1609139c	1606211656	1606211656	12
754	65742339749a4a67a4012f60922a5ad8	110.44.123.47	603f60ddcb584b219d23a3fd3b4ba064	1606217898	1606217898	1
578	2b92908053fb4e1eb74a6c0abcecea30	110.44.123.47	603f60ddcb584b219d23a3fd3b4ba064	1602955380	1602955380	1
839	b938745f15c04157a7a34e319822ca13	110.44.123.47	a37600b145c048b388d7596c8f850c58	1607415415	1607415415	6
584	b2b7a24f224247748183387296d03813	110.44.123.47	603f60ddcb584b219d23a3fd3b4ba064	1603172389	1603172389	18
585	6f1a258178bc4049a53e492240cb2423	110.44.123.47	603f60ddcb584b219d23a3fd3b4ba064	1603172394	1603172394	18
586	7fa434fa71434e4d938c1dc3048d4cde	110.44.123.47	603f60ddcb584b219d23a3fd3b4ba064	1603173015	1603173015	1
767	68da1ab7f5b644a39d25ec9991bca1e5	110.44.123.47	773a0d432617490ab68b65db1609139c	1606368047	1606368047	12
769	814f77c5b3ae4d6f8fcd996980c43e1a	110.44.123.47	91256c4056d345218902321424466481	1606370664	1606370664	1
771	c3d09b55e16b4cc2af6300569691a7cb	110.44.123.47	91256c4056d345218902321424466481	1606389341	1606389341	1
593	63898aca6ca0486c9b5655d32399e861	110.44.123.47	603f60ddcb584b219d23a3fd3b4ba064	1603179000	1603179000	1
594	4db6510f6c9644dab4560187fa5c8e70	110.44.123.47	603f60ddcb584b219d23a3fd3b4ba064	1603192117	1603192117	19
599	72dcfda0db79405f9d91546c149c0e8b	110.44.123.47	773a0d432617490ab68b65db1609139c	1603353268	1603353268	5
600	8e01072dee3f4d4fbfd17d3cc4a6bbc3	110.44.123.47	773a0d432617490ab68b65db1609139c	1603355827	1603355827	12
601	d052fcdbc54342ef9890546c1ce1c095	110.44.123.47	773a0d432617490ab68b65db1609139c	1603424251	1603424251	12
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public."user" (id, user_name, salt, hashed_password, first_name, last_name, email, is_superuser, is_active, created_at, updated_at) FROM stdin;
28	admin	1a38bdc029084ef9b8280837ab2785ae	0adb5a826b3c380fed40cb8ea2d2c383			admin@gmail.com	t	t	1	1
\.


--
-- Data for Name: user_roles; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.user_roles (id, user_id) FROM stdin;
\.


--
-- Data for Name: user_roles_roles; Type: TABLE DATA; Schema: public; Owner: faraz
--

COPY public.user_roles_roles (id, user_role_id, role_id) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 88, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: client_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.client_id_seq', 10, true);


--
-- Name: component_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.component_id_seq', 5, true);


--
-- Name: component_user_ref_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.component_user_ref_id_seq', 110, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 22, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 136, true);


--
-- Name: es_index_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.es_index_id_seq', 19, true);


--
-- Name: es_index_project_ref_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.es_index_project_ref_id_seq', 25, true);


--
-- Name: project_component_ref_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.project_component_ref_id_seq', 78, true);


--
-- Name: project_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.project_id_seq', 23, true);


--
-- Name: project_role_project_user_ref_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.project_role_project_user_ref_id_seq', 9, true);


--
-- Name: project_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.project_roles_id_seq', 3, true);


--
-- Name: project_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.project_user_id_seq', 23, true);


--
-- Name: project_user_ref_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.project_user_ref_id_seq', 562, true);


--
-- Name: role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.role_id_seq', 1, false);


--
-- Name: salt_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.salt_id_seq', 23, true);


--
-- Name: tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.tokens_id_seq', 884, true);


--
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.user_id_seq', 28, true);


--
-- Name: user_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.user_roles_id_seq', 1, false);


--
-- Name: user_roles_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: faraz
--

SELECT pg_catalog.setval('public.user_roles_roles_id_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: authtoken_token authtoken_token_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);


--
-- Name: authtoken_token authtoken_token_user_id_key; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);


--
-- Name: client client_name_key; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_name_key UNIQUE (name);


--
-- Name: client client_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (id);


--
-- Name: component component_name_key; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.component
    ADD CONSTRAINT component_name_key UNIQUE (name);


--
-- Name: component component_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.component
    ADD CONSTRAINT component_pkey PRIMARY KEY (id);


--
-- Name: component_user_ref component_user_ref_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.component_user_ref
    ADD CONSTRAINT component_user_ref_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: es_index es_index_name_key; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.es_index
    ADD CONSTRAINT es_index_name_key UNIQUE (name);


--
-- Name: es_index es_index_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.es_index
    ADD CONSTRAINT es_index_pkey PRIMARY KEY (id);


--
-- Name: es_index_project_ref es_index_project_ref_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.es_index_project_ref
    ADD CONSTRAINT es_index_project_ref_pkey PRIMARY KEY (id);


--
-- Name: project_component_ref project_component_ref_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project_component_ref
    ADD CONSTRAINT project_component_ref_pkey PRIMARY KEY (id);


--
-- Name: project project_name_client_id_ba2d4c32_uniq; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_name_client_id_ba2d4c32_uniq UNIQUE (name, client_id);


--
-- Name: project project_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_pkey PRIMARY KEY (id);


--
-- Name: project_role_project_user_ref project_role_project_user_ref_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project_role_project_user_ref
    ADD CONSTRAINT project_role_project_user_ref_pkey PRIMARY KEY (id);


--
-- Name: project_roles project_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project_roles
    ADD CONSTRAINT project_roles_pkey PRIMARY KEY (id);


--
-- Name: project_roles project_roles_role_898fb34b_uniq; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project_roles
    ADD CONSTRAINT project_roles_role_898fb34b_uniq UNIQUE (role);


--
-- Name: project_user project_user_email_key; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project_user
    ADD CONSTRAINT project_user_email_key UNIQUE (email);


--
-- Name: project_user project_user_fname_key; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project_user
    ADD CONSTRAINT project_user_fname_key UNIQUE (fname);


--
-- Name: project_user project_user_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project_user
    ADD CONSTRAINT project_user_pkey PRIMARY KEY (id);


--
-- Name: project_user_ref project_user_ref_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project_user_ref
    ADD CONSTRAINT project_user_ref_pkey PRIMARY KEY (id);


--
-- Name: role role_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id);


--
-- Name: salt salt_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.salt
    ADD CONSTRAINT salt_pkey PRIMARY KEY (id);


--
-- Name: tokens tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT tokens_pkey PRIMARY KEY (id);


--
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- Name: user_roles user_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (id);


--
-- Name: user_roles_roles user_roles_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.user_roles_roles
    ADD CONSTRAINT user_roles_roles_pkey PRIMARY KEY (id);


--
-- Name: user_roles_roles user_roles_roles_user_role_id_role_id_9473c55e_uniq; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.user_roles_roles
    ADD CONSTRAINT user_roles_roles_user_role_id_role_id_9473c55e_uniq UNIQUE (user_role_id, role_id);


--
-- Name: user user_user_name_key; Type: CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_user_name_key UNIQUE (user_name);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: authtoken_token_key_10f0b77e_like; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);


--
-- Name: client_name_f07dd19b_like; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX client_name_f07dd19b_like ON public.client USING btree (name varchar_pattern_ops);


--
-- Name: component_name_e850d9ab_like; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX component_name_e850d9ab_like ON public.component USING btree (name varchar_pattern_ops);


--
-- Name: component_user_ref_component_id_a7d04977; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX component_user_ref_component_id_a7d04977 ON public.component_user_ref USING btree (component_id);


--
-- Name: component_user_ref_user_id_e08f4b27; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX component_user_ref_user_id_e08f4b27 ON public.component_user_ref USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: es_index_name_0ace77e3_like; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX es_index_name_0ace77e3_like ON public.es_index USING btree (name varchar_pattern_ops);


--
-- Name: es_index_project_ref_index_id_e66c19c7; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX es_index_project_ref_index_id_e66c19c7 ON public.es_index_project_ref USING btree (index_id);


--
-- Name: es_index_project_ref_project_id_44adfd65; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX es_index_project_ref_project_id_44adfd65 ON public.es_index_project_ref USING btree (project_id);


--
-- Name: project_client_id_0696401f; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX project_client_id_0696401f ON public.project USING btree (client_id);


--
-- Name: project_component_ref_component_id_3024bc9f; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX project_component_ref_component_id_3024bc9f ON public.project_component_ref USING btree (component_id);


--
-- Name: project_component_ref_project_id_9ae0b009; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX project_component_ref_project_id_9ae0b009 ON public.project_component_ref USING btree (project_id);


--
-- Name: project_role_project_user_ref_role_id_3293ffec; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX project_role_project_user_ref_role_id_3293ffec ON public.project_role_project_user_ref USING btree (role_id);


--
-- Name: project_role_project_user_ref_user_id_33512ced; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX project_role_project_user_ref_user_id_33512ced ON public.project_role_project_user_ref USING btree (user_id);


--
-- Name: project_roles_role_898fb34b_like; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX project_roles_role_898fb34b_like ON public.project_roles USING btree (role varchar_pattern_ops);


--
-- Name: project_user_email_72825c25_like; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX project_user_email_72825c25_like ON public.project_user USING btree (email varchar_pattern_ops);


--
-- Name: project_user_fname_6e51e5ea_like; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX project_user_fname_6e51e5ea_like ON public.project_user USING btree (fname varchar_pattern_ops);


--
-- Name: project_user_ref_project_id_56a04787; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX project_user_ref_project_id_56a04787 ON public.project_user_ref USING btree (project_id);


--
-- Name: project_user_ref_user_id_da04e89a; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX project_user_ref_user_id_da04e89a ON public.project_user_ref USING btree (user_id);


--
-- Name: salt_user_id_ce8bb742; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX salt_user_id_ce8bb742 ON public.salt USING btree (user_id);


--
-- Name: tokens_user_id_9f60f1af; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX tokens_user_id_9f60f1af ON public.tokens USING btree (user_id);


--
-- Name: user_roles_roles_role_id_b0a8ac64; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX user_roles_roles_role_id_b0a8ac64 ON public.user_roles_roles USING btree (role_id);


--
-- Name: user_roles_roles_user_role_id_ca4c91b9; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX user_roles_roles_user_role_id_ca4c91b9 ON public.user_roles_roles USING btree (user_role_id);


--
-- Name: user_roles_user_id_9d9f8dbb; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX user_roles_user_id_9d9f8dbb ON public.user_roles USING btree (user_id);


--
-- Name: user_user_name_37cba673_like; Type: INDEX; Schema: public; Owner: faraz
--

CREATE INDEX user_user_name_37cba673_like ON public."user" USING btree (user_name varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authtoken_token authtoken_token_user_id_35299eff_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: component_user_ref component_user_ref_component_id_a7d04977_fk_component_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.component_user_ref
    ADD CONSTRAINT component_user_ref_component_id_a7d04977_fk_component_id FOREIGN KEY (component_id) REFERENCES public.component(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: component_user_ref component_user_ref_user_id_e08f4b27_fk_project_user_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.component_user_ref
    ADD CONSTRAINT component_user_ref_user_id_e08f4b27_fk_project_user_id FOREIGN KEY (user_id) REFERENCES public.project_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: es_index_project_ref es_index_project_ref_index_id_e66c19c7_fk_es_index_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.es_index_project_ref
    ADD CONSTRAINT es_index_project_ref_index_id_e66c19c7_fk_es_index_id FOREIGN KEY (index_id) REFERENCES public.es_index(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: es_index_project_ref es_index_project_ref_project_id_44adfd65_fk_project_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.es_index_project_ref
    ADD CONSTRAINT es_index_project_ref_project_id_44adfd65_fk_project_id FOREIGN KEY (project_id) REFERENCES public.project(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: project project_client_id_0696401f_fk_client_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_client_id_0696401f_fk_client_id FOREIGN KEY (client_id) REFERENCES public.client(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: project_component_ref project_component_ref_component_id_3024bc9f_fk_component_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project_component_ref
    ADD CONSTRAINT project_component_ref_component_id_3024bc9f_fk_component_id FOREIGN KEY (component_id) REFERENCES public.component(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: project_component_ref project_component_ref_project_id_9ae0b009_fk_project_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project_component_ref
    ADD CONSTRAINT project_component_ref_project_id_9ae0b009_fk_project_id FOREIGN KEY (project_id) REFERENCES public.project(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: project_role_project_user_ref project_role_project_role_id_3293ffec_fk_project_r; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project_role_project_user_ref
    ADD CONSTRAINT project_role_project_role_id_3293ffec_fk_project_r FOREIGN KEY (role_id) REFERENCES public.project_roles(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: project_role_project_user_ref project_role_project_user_id_33512ced_fk_project_u; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project_role_project_user_ref
    ADD CONSTRAINT project_role_project_user_id_33512ced_fk_project_u FOREIGN KEY (user_id) REFERENCES public.project_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: project_user_ref project_user_ref_project_id_56a04787_fk_project_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project_user_ref
    ADD CONSTRAINT project_user_ref_project_id_56a04787_fk_project_id FOREIGN KEY (project_id) REFERENCES public.project(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: project_user_ref project_user_ref_user_id_da04e89a_fk_project_user_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.project_user_ref
    ADD CONSTRAINT project_user_ref_user_id_da04e89a_fk_project_user_id FOREIGN KEY (user_id) REFERENCES public.project_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: salt salt_user_id_ce8bb742_fk_project_user_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.salt
    ADD CONSTRAINT salt_user_id_ce8bb742_fk_project_user_id FOREIGN KEY (user_id) REFERENCES public.project_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tokens tokens_user_id_9f60f1af_fk_project_user_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT tokens_user_id_9f60f1af_fk_project_user_id FOREIGN KEY (user_id) REFERENCES public.project_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_roles_roles user_roles_roles_role_id_b0a8ac64_fk_role_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.user_roles_roles
    ADD CONSTRAINT user_roles_roles_role_id_b0a8ac64_fk_role_id FOREIGN KEY (role_id) REFERENCES public.role(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_roles_roles user_roles_roles_user_role_id_ca4c91b9_fk_user_roles_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.user_roles_roles
    ADD CONSTRAINT user_roles_roles_user_role_id_ca4c91b9_fk_user_roles_id FOREIGN KEY (user_role_id) REFERENCES public.user_roles(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_roles user_roles_user_id_9d9f8dbb_fk_user_id; Type: FK CONSTRAINT; Schema: public; Owner: faraz
--

ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_user_id_9d9f8dbb_fk_user_id FOREIGN KEY (user_id) REFERENCES public."user"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

