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
-- Name: backup; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.backup (
    backup_id integer NOT NULL,
    name character varying(255),
    relative_gravity numeric NOT NULL
);


ALTER TABLE public.backup OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    stars integer,
    location text,
    discovered integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    relative_gravity numeric,
    planet_id integer,
    photographed boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    habitable boolean,
    atmosphere boolean,
    moons integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    planets integer,
    galaxy_id integer,
    color text,
    name character varying(255) NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: backup; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.backup VALUES (1, 'Moon', 1);
INSERT INTO public.backup VALUES (2, 'Phobos', 1);
INSERT INTO public.backup VALUES (3, 'Deimos', 1);
INSERT INTO public.backup VALUES (4, 'Europa', 1);
INSERT INTO public.backup VALUES (5, 'Ganymede', 1);
INSERT INTO public.backup VALUES (6, 'Callisto', 1);
INSERT INTO public.backup VALUES (7, 'Himalia', 1);
INSERT INTO public.backup VALUES (8, 'Pan', 1);
INSERT INTO public.backup VALUES (9, 'Atlas', 1);
INSERT INTO public.backup VALUES (10, 'Prometheus', 1);
INSERT INTO public.backup VALUES (11, 'Pandora', 1);
INSERT INTO public.backup VALUES (12, 'Janus', 1);
INSERT INTO public.backup VALUES (13, 'Milmas', 1);
INSERT INTO public.backup VALUES (14, 'Dlone', 1);
INSERT INTO public.backup VALUES (15, 'Rhea', 1);
INSERT INTO public.backup VALUES (16, 'Titan', 1);
INSERT INTO public.backup VALUES (17, 'Puck', 1);
INSERT INTO public.backup VALUES (18, 'Ariel', 1);
INSERT INTO public.backup VALUES (19, 'Miranda', 1);
INSERT INTO public.backup VALUES (20, 'Iapetus', 1);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 5780, 'E57A93', 1927);
INSERT INTO public.galaxy VALUES (2, 'Antennae', 15789, 'G87C657', 1901);
INSERT INTO public.galaxy VALUES (3, 'Backward', 687953, 'Z45I876', 1933);
INSERT INTO public.galaxy VALUES (4, 'Black Eye', 687953, 'Z45I876', 1968);
INSERT INTO public.galaxy VALUES (5, 'Bode', 687953, 'Z45I876', 1968);
INSERT INTO public.galaxy VALUES (6, 'Butterfly', 687953, 'Z45I876', 1952);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 3, true);
INSERT INTO public.moon VALUES (2, 'Phobos', 1, 4, true);
INSERT INTO public.moon VALUES (3, 'Deimos', 1, 4, true);
INSERT INTO public.moon VALUES (4, 'Europa', 1, 5, true);
INSERT INTO public.moon VALUES (5, 'Ganymede', 1, 5, true);
INSERT INTO public.moon VALUES (6, 'Callisto', 1, 5, true);
INSERT INTO public.moon VALUES (7, 'Himalia', 1, 5, true);
INSERT INTO public.moon VALUES (8, 'Pan', 1, 5, true);
INSERT INTO public.moon VALUES (9, 'Atlas', 1, 5, true);
INSERT INTO public.moon VALUES (10, 'Prometheus', 1, 5, true);
INSERT INTO public.moon VALUES (11, 'Pandora', 1, 5, true);
INSERT INTO public.moon VALUES (12, 'Janus', 1, 5, true);
INSERT INTO public.moon VALUES (13, 'Milmas', 1, 5, true);
INSERT INTO public.moon VALUES (14, 'Dlone', 1, 9, true);
INSERT INTO public.moon VALUES (15, 'Rhea', 1, 9, true);
INSERT INTO public.moon VALUES (16, 'Titan', 1, 9, true);
INSERT INTO public.moon VALUES (17, 'Puck', 1, 9, true);
INSERT INTO public.moon VALUES (18, 'Ariel', 1, 9, true);
INSERT INTO public.moon VALUES (19, 'Miranda', 1, 9, true);
INSERT INTO public.moon VALUES (20, 'Iapetus', 1, 9, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, false, 0, 1);
INSERT INTO public.planet VALUES (2, 'Venus', false, true, 0, 1);
INSERT INTO public.planet VALUES (3, 'Earth', true, true, 1, 1);
INSERT INTO public.planet VALUES (4, 'Mars', true, true, 2, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, true, 79, 1);
INSERT INTO public.planet VALUES (6, 'Uranus', false, true, 27, 1);
INSERT INTO public.planet VALUES (7, 'Neptune', false, true, 14, 1);
INSERT INTO public.planet VALUES (8, 'Pluto', false, false, 5, 1);
INSERT INTO public.planet VALUES (9, 'Saturn', false, true, 62, 1);
INSERT INTO public.planet VALUES (10, 'Eris', false, false, 1, 1);
INSERT INTO public.planet VALUES (11, 'Arrokoth', false, false, 0, 1);
INSERT INTO public.planet VALUES (12, 'Haumea', false, false, 2, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 456, 1, 'Red', 'ALPHA');
INSERT INTO public.star VALUES (2, 689, 2, 'Blue', 'BETA');
INSERT INTO public.star VALUES (3, 689, 2, 'Blue', 'CHARLIE');
INSERT INTO public.star VALUES (4, 689, 2, 'Blue', 'DELTA');
INSERT INTO public.star VALUES (5, 689, 2, 'Blue', 'GAMMA');
INSERT INTO public.star VALUES (6, 689, 4, 'Red', 'SIGMA');


--
-- Name: backup backup_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.backup
    ADD CONSTRAINT backup_name_key UNIQUE (name);


--
-- Name: backup backup_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.backup
    ADD CONSTRAINT backup_pkey PRIMARY KEY (backup_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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

