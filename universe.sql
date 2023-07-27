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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type_of_galaxy character varying(30) NOT NULL,
    color text,
    distance_from_earth_lightyears numeric(2,1)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: life; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.life (
    life_id integer NOT NULL,
    type_of_life text NOT NULL,
    intelligence_score_from_10 integer NOT NULL,
    name character varying(30)
);


ALTER TABLE public.life OWNER TO freecodecamp;

--
-- Name: life_life_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.life_life_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.life_life_id_seq OWNER TO freecodecamp;

--
-- Name: life_life_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.life_life_id_seq OWNED BY public.life.life_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_round boolean,
    color text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    type_of_planet character varying(30) NOT NULL,
    number_of_seas integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years numeric(4,1) NOT NULL,
    number_of_spots integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: life life_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life ALTER COLUMN life_id SET DEFAULT nextval('public.life_life_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Cuba', 'Cigar', 'Red & Blue', 2.1);
INSERT INTO public.galaxy VALUES (2, 'France', 'Baguette', 'Red, White & Blue', 1.1);
INSERT INTO public.galaxy VALUES (3, 'Wales', 'Dwarf', 'Red, White & Green', 0.5);
INSERT INTO public.galaxy VALUES (4, 'Mexico', 'Sombrero', 'Red, White & Green', 2.8);
INSERT INTO public.galaxy VALUES (5, 'Spain', 'Elliptical', 'Red & Yellow', 1.6);
INSERT INTO public.galaxy VALUES (6, 'USA', 'Messy', 'Red, White & Blue', 4.2);


--
-- Data for Name: life; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.life VALUES (1, 'carbon', 7, 'humans');
INSERT INTO public.life VALUES (2, 'silicone', 6, 'silcones');
INSERT INTO public.life VALUES (3, 'ammonia', 2, 'ammoniums');
INSERT INTO public.life VALUES (4, 'quantum', 11, 'quantums');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'arroz con leche', true, 'beige', 1);
INSERT INTO public.moon VALUES (2, 'arroz con frijoles', true, 'dark', 1);
INSERT INTO public.moon VALUES (3, 'poppy', true, 'red', 10);
INSERT INTO public.moon VALUES (4, 'daisy', true, 'yellow', 10);
INSERT INTO public.moon VALUES (5, 'john', false, 'beige', 9);
INSERT INTO public.moon VALUES (6, 'diabetus', false, 'black', 8);
INSERT INTO public.moon VALUES (7, 'gaia', true, 'green', 12);
INSERT INTO public.moon VALUES (8, 'huevo frito', false, 'yellow', 2);
INSERT INTO public.moon VALUES (9, 'colin', false, 'blue', 4);
INSERT INTO public.moon VALUES (10, 'pedos', true, 'brown', 4);
INSERT INTO public.moon VALUES (11, 'eruptos', false, 'green', 5);
INSERT INTO public.moon VALUES (12, 'beauty', false, 'pink', 5);
INSERT INTO public.moon VALUES (13, 'glands', false, 'brown', 6);
INSERT INTO public.moon VALUES (14, 'walks', false, 'green', 6);
INSERT INTO public.moon VALUES (15, 'beach', false, 'sand', 6);
INSERT INTO public.moon VALUES (16, 'garden', false, 'green', 6);
INSERT INTO public.moon VALUES (17, 'food', false, 'brown', 6);
INSERT INTO public.moon VALUES (18, 'bath', false, 'white', 6);
INSERT INTO public.moon VALUES (19, 'treats', false, 'red', 6);
INSERT INTO public.moon VALUES (20, 'cwtches', false, 'purple', 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Clara', true, 'Gaseous', 1, 1);
INSERT INTO public.planet VALUES (2, 'Luis', false, 'Constructor', 8, 1);
INSERT INTO public.planet VALUES (3, 'Enrique', true, 'Liquid', 1, 1);
INSERT INTO public.planet VALUES (4, 'Ed', true, 'Tired', 11, 3);
INSERT INTO public.planet VALUES (5, 'Lizzie', true, 'Gorgeous', 1, 3);
INSERT INTO public.planet VALUES (6, 'Arlo', false, 'Doggo', 7, 3);
INSERT INTO public.planet VALUES (7, 'Kathy', true, 'Worried', 1, 4);
INSERT INTO public.planet VALUES (8, 'Chris', true, 'Sweet', 8, 4);
INSERT INTO public.planet VALUES (9, 'Vicky', false, 'Lost', 1, 5);
INSERT INTO public.planet VALUES (10, 'Lexi', true, 'Baking', 1, 5);
INSERT INTO public.planet VALUES (11, 'George', true, 'Teaching', 1, 5);
INSERT INTO public.planet VALUES (12, 'Joice', false, 'Expecting', 7, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Havana', 12.0, 23, 1);
INSERT INTO public.star VALUES (2, 'Paris', 34.0, 45, 2);
INSERT INTO public.star VALUES (3, 'Cardiff', 56.0, 67, 3);
INSERT INTO public.star VALUES (4, 'Brigend', 78.0, 89, 3);
INSERT INTO public.star VALUES (5, 'Bristol', 90.0, 98, 3);
INSERT INTO public.star VALUES (6, 'Florida', 87.0, 76, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: life_life_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.life_life_id_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: life life_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life
    ADD CONSTRAINT life_name_key UNIQUE (name);


--
-- Name: life life_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.life
    ADD CONSTRAINT life_pkey PRIMARY KEY (life_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

