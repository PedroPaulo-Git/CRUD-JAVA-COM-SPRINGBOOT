PGDMP         )                {            CONTATOS    15.3    15.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16806    CONTATOS    DATABASE     �   CREATE DATABASE "CONTATOS" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE "CONTATOS";
                postgres    false            �            1259    16826    contato    TABLE     {   CREATE TABLE public.contato (
    id bigint NOT NULL,
    nome character varying(255),
    email character varying(255)
);
    DROP TABLE public.contato;
       public         heap    postgres    false            �            1259    16831    contato_seq    SEQUENCE     u   CREATE SEQUENCE public.contato_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.contato_seq;
       public          postgres    false            �            1259    16823 
   person_seq    SEQUENCE     t   CREATE SEQUENCE public.person_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.person_seq;
       public          postgres    false            �          0    16826    contato 
   TABLE DATA                 public          postgres    false    215   �	       �           0    0    contato_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.contato_seq', 151, true);
          public          postgres    false    216                        0    0 
   person_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.person_seq', 101, true);
          public          postgres    false    214            g           2606    16830    contato contato_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.contato
    ADD CONSTRAINT contato_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.contato DROP CONSTRAINT contato_pkey;
       public            postgres    false    215            �   v   x���v
Q���W((M��L�K��+I,�W��L�Q���M�QH�M���Ts�	uV�0�QP�I��K,J�WGb;����U״��$�hC�q�)E`s�*j 4˧4�JJ��� #�P�     