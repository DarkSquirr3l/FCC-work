--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_game;
--
-- Name: number_game; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_game WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_game OWNER TO freecodecamp;

\connect number_game

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
-- Name: main; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.main (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0 NOT NULL,
    best_game integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.main OWNER TO freecodecamp;

--
-- Name: main_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.main_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_user_id_seq OWNER TO freecodecamp;

--
-- Name: main_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.main_user_id_seq OWNED BY public.main.user_id;


--
-- Name: main user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.main ALTER COLUMN user_id SET DEFAULT nextval('public.main_user_id_seq'::regclass);


--
-- Data for Name: main; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Name: main_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.main_user_id_seq', 74, true);


--
-- Name: main main_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.main
    ADD CONSTRAINT main_pkey PRIMARY KEY (user_id);


--
-- Name: main main_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.main
    ADD CONSTRAINT main_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

