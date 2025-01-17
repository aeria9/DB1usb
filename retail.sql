PGDMP     2                
    z            Retail    15.0    15.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16420    Retail    DATABASE        CREATE DATABASE "Retail" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
    DROP DATABASE "Retail";
                postgres    false                       0    0    DATABASE "Retail"    COMMENT     4   COMMENT ON DATABASE "Retail" IS 'MID Basis Data I';
                   postgres    false    3345            �            1259    16422    item    TABLE     �   CREATE TABLE public.item (
    id integer NOT NULL,
    nama character varying(30),
    harga character varying(30),
    stok character varying(20)
);
    DROP TABLE public.item;
       public         heap    postgres    false            �            1259    16421    item_id_seq    SEQUENCE     �   CREATE SEQUENCE public.item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.item_id_seq;
       public          postgres    false    215                       0    0    item_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.item_id_seq OWNED BY public.item.id;
          public          postgres    false    214            �            1259    16436    penjual    TABLE     �   CREATE TABLE public.penjual (
    id integer NOT NULL,
    nama character varying(30),
    nomor character varying(13),
    alamat character varying(50)
);
    DROP TABLE public.penjual;
       public         heap    postgres    false            �            1259    16435    penjual_id_seq    SEQUENCE     �   CREATE SEQUENCE public.penjual_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.penjual_id_seq;
       public          postgres    false    217                       0    0    penjual_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.penjual_id_seq OWNED BY public.penjual.id;
          public          postgres    false    216            �            1259    16443    toko    TABLE     �   CREATE TABLE public.toko (
    id integer NOT NULL,
    nama character varying(20),
    pemilik character varying(30),
    lokasi character varying(50)
);
    DROP TABLE public.toko;
       public         heap    postgres    false            �            1259    16442    toko_id_seq    SEQUENCE     �   CREATE SEQUENCE public.toko_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.toko_id_seq;
       public          postgres    false    219                       0    0    toko_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.toko_id_seq OWNED BY public.toko.id;
          public          postgres    false    218            o           2604    16425    item id    DEFAULT     b   ALTER TABLE ONLY public.item ALTER COLUMN id SET DEFAULT nextval('public.item_id_seq'::regclass);
 6   ALTER TABLE public.item ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            p           2604    16439 
   penjual id    DEFAULT     h   ALTER TABLE ONLY public.penjual ALTER COLUMN id SET DEFAULT nextval('public.penjual_id_seq'::regclass);
 9   ALTER TABLE public.penjual ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            q           2604    16446    toko id    DEFAULT     b   ALTER TABLE ONLY public.toko ALTER COLUMN id SET DEFAULT nextval('public.toko_id_seq'::regclass);
 6   ALTER TABLE public.toko ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219                      0    16422    item 
   TABLE DATA           5   COPY public.item (id, nama, harga, stok) FROM stdin;
    public          postgres    false    215   V       	          0    16436    penjual 
   TABLE DATA           :   COPY public.penjual (id, nama, nomor, alamat) FROM stdin;
    public          postgres    false    217   �                 0    16443    toko 
   TABLE DATA           9   COPY public.toko (id, nama, pemilik, lokasi) FROM stdin;
    public          postgres    false    219   �                  0    0    item_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.item_id_seq', 1, false);
          public          postgres    false    214                       0    0    penjual_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.penjual_id_seq', 1, false);
          public          postgres    false    216                       0    0    toko_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.toko_id_seq', 1, false);
          public          postgres    false    218            s           2606    16427    item item_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.item DROP CONSTRAINT item_pkey;
       public            postgres    false    215            u           2606    16441    penjual penjual_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.penjual
    ADD CONSTRAINT penjual_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.penjual DROP CONSTRAINT penjual_pkey;
       public            postgres    false    217            w           2606    16448    toko toko_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.toko
    ADD CONSTRAINT toko_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.toko DROP CONSTRAINT toko_pkey;
       public            postgres    false    219               /   x�3�,(�)H��*P0400�420�2�L*�.	��L�B1z\\\ y
      	   G   x�3�.-(J�4�02536�0116�t*��L�,�2�N�+�J�Z�������p�����s��qqq {�         H   x�3�.�NT�M�*�
�9�r��K�K����8���38��J2����y
Y�%�\1z\\\ �j�     