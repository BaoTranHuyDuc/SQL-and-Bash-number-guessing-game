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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: number_guess; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.number_guess (
    username character varying(22)
);


ALTER TABLE public.number_guess OWNER TO freecodecamp;

--
-- Data for Name: number_guess; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.number_guess VALUES ('user_1676633357869');
INSERT INTO public.number_guess VALUES ('user_1676633357868');
INSERT INTO public.number_guess VALUES ('user_1676633398780');
INSERT INTO public.number_guess VALUES ('user_1676633398779');
INSERT INTO public.number_guess VALUES ('user_1676633422505');
INSERT INTO public.number_guess VALUES ('user_1676633422504');
INSERT INTO public.number_guess VALUES ('user_1676633580394');
INSERT INTO public.number_guess VALUES ('user_1676633580393');
INSERT INTO public.number_guess VALUES ('user_1676633617404');
INSERT INTO public.number_guess VALUES ('user_1676633617403');
INSERT INTO public.number_guess VALUES ('user_1676633780698');
INSERT INTO public.number_guess VALUES ('user_1676633780697');
INSERT INTO public.number_guess VALUES ('user_1676633782952');
INSERT INTO public.number_guess VALUES ('user_1676633782951');
INSERT INTO public.number_guess VALUES ('user_1676633783342');
INSERT INTO public.number_guess VALUES ('user_1676633783341');
INSERT INTO public.number_guess VALUES ('user_1676633915240');
INSERT INTO public.number_guess VALUES ('user_1676633915239');
INSERT INTO public.number_guess VALUES ('user_1676633951478');
INSERT INTO public.number_guess VALUES ('user_1676633951477');
INSERT INTO public.number_guess VALUES ('user_1676634156270');
INSERT INTO public.number_guess VALUES ('user_1676634156269');
INSERT INTO public.number_guess VALUES ('user_1676634320043');
INSERT INTO public.number_guess VALUES ('user_1676634320041');
INSERT INTO public.number_guess VALUES ('user_1676634409724');
INSERT INTO public.number_guess VALUES ('user_1676634409723');
INSERT INTO public.number_guess VALUES ('user_1676635435999');
INSERT INTO public.number_guess VALUES ('user_1676635435998');
INSERT INTO public.number_guess VALUES ('user_1676635515660');
INSERT INTO public.number_guess VALUES ('user_1676635515659');


--
-- PostgreSQL database dump complete
--

