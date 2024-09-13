-- 
-- to save : docker compose exec database pg_dump -U app --data-only > dump.sql
-- to restore : docker compose exec database psql -U app < dump.sql
-- PostgreSQL database dump
--

-- Dumped from database version 16.4
-- Dumped by pg_dump version 16.4

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

--
-- Data for Name: admin; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.admin (id, username, roles, password) FROM stdin;
1	jmvie5	["ROLE_ADMIN"]	$2y$13$vPwSlgg42r4NIpgQV/r78eJDacEzOA05N5kjfc7i5FJ5..3S/hYGy
\.


--
-- Data for Name: conference; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.conference (id, city, year, is_international, slug) FROM stdin;
1	qwer	qwer	f	qwer
2	Boom bébé	1996	f	boom-bebe-1996
\.


--
-- Data for Name: comment; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.comment (id, conference_id, author, text, email, created_at, photo_filename) FROM stdin;
1	2	Le bébé	Meilleur shit ever done backend specialist or what	bite@bite.ca	2024-09-09 19:31:44	6223d400d1ff.png
\.


--
-- Data for Name: doctrine_migration_versions; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.doctrine_migration_versions (version, executed_at, execution_time) FROM stdin;
DoctrineMigrations\\Version20240904144308	2024-09-09 19:10:30	138
DoctrineMigrations\\Version20240904145036	2024-09-09 19:10:31	30
DoctrineMigrations\\Version20240909193024	2024-09-09 19:30:30	4
\.


--
-- Data for Name: messenger_messages; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.messenger_messages (id, body, headers, queue_name, created_at, available_at, delivered_at) FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: app
--

COPY public.sessions (sess_id, sess_data, sess_lifetime, sess_time) FROM stdin;
96tutk13alj81hsk8u0m5hvcfc	\\x5f7366325f617474726962757465737c613a373a7b733a32333a225f73656375726974792e6c6173745f757365726e616d65223b733a363a226a6d76696535223b733a31343a225f73656375726974795f6d61696e223b733a3436353a224f3a37343a2253796d666f6e795c436f6d706f6e656e745c53656375726974795c436f72655c41757468656e7469636174696f6e5c546f6b656e5c557365726e616d6550617373776f7264546f6b656e223a333a7b693a303b4e3b693a313b733a343a226d61696e223b693a323b613a353a7b693a303b4f3a31363a224170705c456e746974795c41646d696e223a343a7b733a32303a22004170705c456e746974795c41646d696e006964223b693a313b733a32363a22004170705c456e746974795c41646d696e00757365726e616d65223b733a363a226a6d76696535223b733a32333a22004170705c456e746974795c41646d696e00726f6c6573223b613a313a7b693a303b733a31303a22524f4c455f41444d494e223b7d733a32363a22004170705c456e746974795c41646d696e0070617373776f7264223b733a36303a2224327924313324765077536c6767343272344e49706751562f723738654a446163457a4f4130354e356b6a6663376935464a352e2e33532f68594779223b7d693a313b623a313b693a323b4e3b693a333b613a303a7b7d693a343b613a323a7b693a303b733a31303a22524f4c455f41444d494e223b693a313b733a393a22524f4c455f55534552223b7d7d7d223b733a33393a225f637372662f68747470732d65612d62617463682d616374696f6e2d626174636844656c657465223b733a34333a227943564d757459695f49774b32463737374f6e4d432d4f79322d484966545a655448586168484f704f5251223b733a32313a225f637372662f68747470732d65612d64656c657465223b733a34333a22754a5f4e374f535a4259747454725a2d664a4a674134595444644f52556c686f6652767839635a3653306f223b733a32323a225f637372662f68747470732d436f6e666572656e6365223b733a34333a224554786a6e6936716e556a78773373756a593030583751747266474f615a774e533930685766743946376b223b733a32313a225f637372662f68747470732d65612d746f67676c65223b733a34333a227077774f737a6d6f59676a587061745953656e6e486b426161724744726257486243483867695564592d4d223b733a31393a225f637372662f68747470732d636f6d6d656e74223b733a34333a22755a425f4a3833684e6c666c6e4959445f3263486a504c66764f37464231732d6a44334c7842564c455951223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313732353931303330343b733a313a2263223b693a313732353930393735363b733a313a226c223b693a303b7d	1725911744	1725910304
undl82l0ss86pk0ks8s49bk25i	\\x5f7366325f617474726962757465737c613a313a7b733a31393a225f637372662f68747470732d636f6d6d656e74223b733a34333a226d574c6c464c456a51325a367871594e313072456562444c6565475642424a72647330674c536c77767573223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313732363233383839393b733a313a2263223b693a313732363233383439353b733a313a226c223b693a303b7d	1726240339	1726238899
\.


--
-- Name: admin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app
--

SELECT pg_catalog.setval('public.admin_id_seq', 1, true);


--
-- Name: comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app
--

SELECT pg_catalog.setval('public.comment_id_seq', 1, true);


--
-- Name: conference_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app
--

SELECT pg_catalog.setval('public.conference_id_seq', 2, true);


--
-- Name: messenger_messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: app
--

SELECT pg_catalog.setval('public.messenger_messages_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

