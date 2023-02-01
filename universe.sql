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
    name character varying(20) NOT NULL,
    galaxy_shape text,
    total_planets integer,
    star_id integer NOT NULL,
    galaxy_type integer
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
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_type_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_type_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_planet numeric,
    planet_id integer NOT NULL,
    resources text
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
    has_life boolean NOT NULL,
    description text,
    star_id integer,
    has_water boolean NOT NULL
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
    age_in_millions_of_years integer,
    galaxy_id integer NOT NULL,
    color character varying(20)
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
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_galaxy_type_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, 1, 1);
INSERT INTO public.galaxy VALUES (2, 'Magenallic Cloud', NULL, NULL, 2, 2);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', NULL, NULL, 3, 3);
INSERT INTO public.galaxy VALUES (8, 'Milky Way2', NULL, NULL, 4, 4);
INSERT INTO public.galaxy VALUES (9, 'Magenallic Cloud2', NULL, NULL, 5, 5);
INSERT INTO public.galaxy VALUES (10, 'Andromeda2', NULL, NULL, 6, 6);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'type1', 'description of type1');
INSERT INTO public.galaxy_types VALUES (2, 'type2', 'description of type2');
INSERT INTO public.galaxy_types VALUES (3, 'type3', 'description of type3');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (3, 'Moon', NULL, 1, NULL);
INSERT INTO public.moon VALUES (4, 'Moon2', NULL, 2, NULL);
INSERT INTO public.moon VALUES (8, 'Moon11', NULL, 7, NULL);
INSERT INTO public.moon VALUES (9, 'Moon22', NULL, 8, NULL);
INSERT INTO public.moon VALUES (10, 'Moon13', NULL, 10, NULL);
INSERT INTO public.moon VALUES (11, 'Moon23', NULL, 9, NULL);
INSERT INTO public.moon VALUES (12, 'Moony', NULL, 15, NULL);
INSERT INTO public.moon VALUES (13, 'Moonsy', NULL, 16, NULL);
INSERT INTO public.moon VALUES (14, 'Mooner', NULL, 17, NULL);
INSERT INTO public.moon VALUES (15, 'Mono', NULL, 18, NULL);
INSERT INTO public.moon VALUES (16, 'Almoon', NULL, 21, NULL);
INSERT INTO public.moon VALUES (17, 'Troom', NULL, 22, NULL);
INSERT INTO public.moon VALUES (18, 'Trenoon', NULL, 23, NULL);
INSERT INTO public.moon VALUES (19, 'Aloon', NULL, 24, NULL);
INSERT INTO public.moon VALUES (20, 'Joon', NULL, 25, NULL);
INSERT INTO public.moon VALUES (21, 'Koon', NULL, 26, NULL);
INSERT INTO public.moon VALUES (22, 'Loon', NULL, 27, NULL);
INSERT INTO public.moon VALUES (23, 'Yoon', NULL, 28, NULL);
INSERT INTO public.moon VALUES (24, 'Mooon', NULL, 29, NULL);
INSERT INTO public.moon VALUES (25, 'Moo100', NULL, 30, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, NULL, 3, true);
INSERT INTO public.planet VALUES (2, 'Mars', false, NULL, 2, true);
INSERT INTO public.planet VALUES (7, 'Pluton', false, NULL, 6, true);
INSERT INTO public.planet VALUES (8, 'Mercury', false, NULL, 4, true);
INSERT INTO public.planet VALUES (9, 'Venus', false, NULL, 7, true);
INSERT INTO public.planet VALUES (10, 'Saturn', false, NULL, 8, true);
INSERT INTO public.planet VALUES (15, 'Jupiter', false, NULL, 9, true);
INSERT INTO public.planet VALUES (16, 'Neptune', false, NULL, 12, true);
INSERT INTO public.planet VALUES (17, 'Exco', false, NULL, 15, true);
INSERT INTO public.planet VALUES (18, 'Trem', false, NULL, 14, true);
INSERT INTO public.planet VALUES (21, 'Aldor', false, NULL, 13, true);
INSERT INTO public.planet VALUES (22, 'Trem2', false, NULL, 1, true);
INSERT INTO public.planet VALUES (23, 'Aldor2', false, NULL, 16, true);
INSERT INTO public.planet VALUES (24, 'Trem3', false, NULL, 17, true);
INSERT INTO public.planet VALUES (25, 'Aldor12', false, NULL, 19, true);
INSERT INTO public.planet VALUES (26, 'Trem13', false, NULL, 18, true);
INSERT INTO public.planet VALUES (27, 'Aldor122', false, NULL, 21, true);
INSERT INTO public.planet VALUES (28, 'Trem123', false, NULL, 20, true);
INSERT INTO public.planet VALUES (29, 'Aldor123', false, NULL, 23, true);
INSERT INTO public.planet VALUES (30, 'Trem223', false, NULL, 22, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star1', NULL, 1, 'blue');
INSERT INTO public.star VALUES (2, 'Star2', NULL, 2, 'Green');
INSERT INTO public.star VALUES (3, 'Star3', NULL, 3, 'Red');
INSERT INTO public.star VALUES (4, 'Earth', NULL, 1, 'Blue-Green');
INSERT INTO public.star VALUES (6, 'Star7', NULL, 1, 'blue');
INSERT INTO public.star VALUES (7, 'Star4', NULL, 2, 'Green');
INSERT INTO public.star VALUES (8, 'Star5', NULL, 3, 'Red');
INSERT INTO public.star VALUES (9, 'Star6', NULL, 1, 'Blue-Green');
INSERT INTO public.star VALUES (12, 'Star11', NULL, 1, 'blue');
INSERT INTO public.star VALUES (13, 'Star9', NULL, 2, 'Green');
INSERT INTO public.star VALUES (14, 'Star8', NULL, 3, 'Red');
INSERT INTO public.star VALUES (15, 'Star10', NULL, 1, 'Blue-Green');
INSERT INTO public.star VALUES (16, 'Star12', NULL, 1, 'blue');
INSERT INTO public.star VALUES (17, 'Star13', NULL, 2, 'Green');
INSERT INTO public.star VALUES (18, 'Star14', NULL, 3, 'Red');
INSERT INTO public.star VALUES (19, 'Star15', NULL, 1, 'Blue-Green');
INSERT INTO public.star VALUES (20, 'Star19', NULL, 1, 'blue');
INSERT INTO public.star VALUES (21, 'Star18', NULL, 2, 'Green');
INSERT INTO public.star VALUES (22, 'Star17', NULL, 3, 'Red');
INSERT INTO public.star VALUES (23, 'Star16', NULL, 1, 'Blue-Green');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 10, true);


--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_type_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 33, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 23, true);


--
-- Name: galaxy galaxy_galaxy_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_type_key UNIQUE (galaxy_type);


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
-- Name: galaxy galaxy_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_star_id_key UNIQUE (star_id);


--
-- Name: galaxy_types galaxy_types_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_description_key UNIQUE (description);


--
-- Name: galaxy_types galaxy_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_name_key UNIQUE (name);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


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
-- Name: moon moon_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_key UNIQUE (planet_id);


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
-- Name: planet planet_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_key UNIQUE (star_id);


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
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

