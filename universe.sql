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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(30),
    colmun_2 integer NOT NULL,
    column_3 integer
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40),
    colmun_1 integer NOT NULL,
    colmun_2 integer NOT NULL,
    column_3 integer
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    planet_id integer,
    colmun_2 integer NOT NULL,
    column_3 integer
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
    name character varying(30),
    number_of_moons integer,
    star_id integer,
    colmun_2 integer NOT NULL,
    column_3 integer
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
    name character varying(30),
    number_of_planets integer,
    weight numeric,
    constelation text,
    has_planets boolean,
    is_bigger_than_the_sun boolean,
    galaxy_id integer,
    colmun_2 integer NOT NULL,
    column_3 integer
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'blah', 3, NULL);
INSERT INTO public.asteroid VALUES (2, 'blah', 33, NULL);
INSERT INTO public.asteroid VALUES (3, 'blah', 335, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 1, 3, 5);
INSERT INTO public.galaxy VALUES (4, 'milky way', 404, 5757, 5);
INSERT INTO public.galaxy VALUES (5, 'fafa', 4, 5, 6);
INSERT INTO public.galaxy VALUES (6, 'milky way', 4044, 55757, 5);
INSERT INTO public.galaxy VALUES (7, 'fafa', 4444, 45, 6);
INSERT INTO public.galaxy VALUES (8, 'milky wggay', 40444, 557527, 35);
INSERT INTO public.galaxy VALUES (9, 'fssafa', 44464, 455, 446);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'io', 6, 1, 3);
INSERT INTO public.moon VALUES (3, 'io', 6, 3, 3);
INSERT INTO public.moon VALUES (4, 'io', 6, 33, 3);
INSERT INTO public.moon VALUES (5, 'io', 6, 353, 3);
INSERT INTO public.moon VALUES (6, 'io', 6, 3563, 3);
INSERT INTO public.moon VALUES (7, 'io', 6, 43563, 3);
INSERT INTO public.moon VALUES (8, 'io', 6, 435563, 3);
INSERT INTO public.moon VALUES (9, 'io', 6, 4355763, 3);
INSERT INTO public.moon VALUES (10, 'io', 6, 43553763, 3);
INSERT INTO public.moon VALUES (11, 'io', 6, 435537683, 3);
INSERT INTO public.moon VALUES (12, 'io', 6, 435553783, 3);
INSERT INTO public.moon VALUES (13, 'io', 6, 43555373, 3);
INSERT INTO public.moon VALUES (14, 'io', 6, 4355533, 3);
INSERT INTO public.moon VALUES (15, 'io', 6, 435533, 3);
INSERT INTO public.moon VALUES (16, 'io', 6, 4235533, 3);
INSERT INTO public.moon VALUES (17, 'io', 6, 423553, 3);
INSERT INTO public.moon VALUES (18, 'io', 6, 43553, 3);
INSERT INTO public.moon VALUES (19, 'io', 6, 4553, 3);
INSERT INTO public.moon VALUES (20, 'io', 6, 40553, 3);
INSERT INTO public.moon VALUES (21, 'io', 6, 405543, 3);
INSERT INTO public.moon VALUES (22, 'io', 6, 4055463, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 1, 3, 4, 5);
INSERT INTO public.planet VALUES (2, 'eareth', 2, 4, 5, 6);
INSERT INTO public.planet VALUES (3, 'eareth', 2, 4, 53, 36);
INSERT INTO public.planet VALUES (4, 'eareth', 2, 4, 533, 336);
INSERT INTO public.planet VALUES (5, 'eareth', 2, 4, 5333, 3336);
INSERT INTO public.planet VALUES (6, 'eareth', 2, 4, 53333, 33336);
INSERT INTO public.planet VALUES (7, 'eareth', 2, 4, 535333, 335336);
INSERT INTO public.planet VALUES (8, 'eareth', 2, 4, 5357333, 335336);
INSERT INTO public.planet VALUES (10, 'eareth', 2, 4, 53547333, 335336);
INSERT INTO public.planet VALUES (11, 'eareth', 2, 4, 535457333, 335336);
INSERT INTO public.planet VALUES (12, 'eareth', 2, 4, 53457333, 335336);
INSERT INTO public.planet VALUES (13, 'eareth', 2, 4, 5345333, 335336);
INSERT INTO public.planet VALUES (14, 'eareth', 2, 4, 534533, 335336);
INSERT INTO public.planet VALUES (15, 'eareth', 2, 4, 34533, 335336);
INSERT INTO public.planet VALUES (17, 'eareth', 2, 4, 3453, 335336);
INSERT INTO public.planet VALUES (19, 'eareth', 2, 4, 345, 335336);
INSERT INTO public.planet VALUES (20, 'eareth', 2, 4, 453, 335336);
INSERT INTO public.planet VALUES (21, 'eareth', 2, 4, 4453, 335336);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 1, 24.5, 'andromerda', true, false, 1, 4, 5);
INSERT INTO public.star VALUES (3, 'sun', 1, 24.5, 'andromerda', true, false, 5, 34, 45);
INSERT INTO public.star VALUES (4, 'sun', 1, 24.5, 'andro33merda', true, false, 8, 334, 345);
INSERT INTO public.star VALUES (5, 'sun', 1, 24.5, 'a3merda', true, false, 8, 3334, 3345);
INSERT INTO public.star VALUES (6, 'sun', 1, 24.5, '4a3merda', true, false, 8, 34334, 33445);
INSERT INTO public.star VALUES (7, 'suuun', 1, 24.5, '4a3me4rda', false, false, 8, 534334, 334545);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 21, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: asteroid asteroid_colmun_2_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_colmun_2_key UNIQUE (colmun_2);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_colmun_1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_colmun_1_key UNIQUE (colmun_1);


--
-- Name: galaxy galaxy_colmun_2_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_colmun_2_key UNIQUE (colmun_2);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_colmun_2_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_colmun_2_key UNIQUE (colmun_2);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_colmun_2_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_colmun_2_key UNIQUE (colmun_2);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_colmun_2_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_colmun_2_key UNIQUE (colmun_2);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon fk_moon_plant_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_plant_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_plant_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_plant_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxt_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxt_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

