--
-- Estrutura da tabela "pais"
--

DROP TABLE IF EXISTS "pais" CASCADE;
CREATE TABLE pais (
                      id       bigserial NOT NULL,
                      nome     varchar(60),
                      nome_pt  varchar(60),
                      sigla     varchar(2),
                      bacen    integer,
    /* Keys */
                      CONSTRAINT pais_pkey
                          PRIMARY KEY (id)
);


--
-- Estrutura da tabela "estado"
--

DROP TABLE IF EXISTS "estado" CASCADE;

CREATE TABLE estado
(
    id   bigserial NOT NULL,
    nome varchar(60),
    uf   varchar(2),
    ibge integer,
    pais integer,
    ddd  varchar(60),
    /* Keys */
    CONSTRAINT estado_pkey
        PRIMARY KEY (id)
);




--
-- Estrutura da tabela "cidade"
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

DROP TABLE IF EXISTS "cidade" CASCADE;

--
-- Estrutura da tabela "cidade"
--

CREATE TABLE public.cidade (
                               id bigint NOT NULL,
                               nome character varying(120),
                               uf integer,
                               ibge integer,
                               lat_lon character varying(120),
                               latitude double precision,
                               longitude double precision,
                               cod_tom integer DEFAULT 0
);


-- ALTER TABLE public.cidade OWNER TO postgres;

--
-- Name: cidade_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cidade_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


-- ALTER TABLE public.cidade_id_seq OWNER TO postgres;

--
-- Name: cidade_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cidade_id_seq OWNED BY public.cidade.id;


--
-- Name: cidade id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cidade ALTER COLUMN id SET DEFAULT nextval('public.cidade_id_seq'::regclass);
