PGDMP                         z         
   MyPharmacy    14.2    14.2 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    90966 
   MyPharmacy    DATABASE     p   CREATE DATABASE "MyPharmacy" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1256';
    DROP DATABASE "MyPharmacy";
                postgres    false            �            1259    90967    admin_pharmacy    TABLE       CREATE TABLE public.admin_pharmacy (
    id bigint NOT NULL,
    "pharmacyId" bigint,
    "adminId" bigint,
    admin_msg character varying,
    pharmacy_msg character varying,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);
 "   DROP TABLE public.admin_pharmacy;
       public         heap    postgres    false            �            1259    90972    admin_pharmacy_id_seq    SEQUENCE     �   ALTER TABLE public.admin_pharmacy ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.admin_pharmacy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    209            �            1259    90973    admins    TABLE     \  CREATE TABLE public.admins (
    id bigint NOT NULL,
    first_name character varying,
    last_name character varying,
    phone_number character varying,
    email character varying,
    password character varying,
    image character varying,
    cin bigint,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);
    DROP TABLE public.admins;
       public         heap    postgres    false            �            1259    90978    admins_id_seq    SEQUENCE     �   ALTER TABLE public.admins ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.admins_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    211            �            1259    90979    admins_tokens    TABLE     �   CREATE TABLE public.admins_tokens (
    id bigint NOT NULL,
    admin_id bigint,
    token character varying,
    device character varying,
    ip character varying,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);
 !   DROP TABLE public.admins_tokens;
       public         heap    postgres    false            �            1259    90984    admins_tokens_id_seq    SEQUENCE     �   ALTER TABLE public.admins_tokens ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.admins_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    213            �            1259    90985    category    TABLE     �   CREATE TABLE public.category (
    id bigint NOT NULL,
    name_en character varying,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    90990    category_id_seq    SEQUENCE     �   ALTER TABLE public.category ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215            �            1259    90991    cities    TABLE     �   CREATE TABLE public.cities (
    id bigint,
    name_en character varying,
    name_ar character varying,
    state_id bigint,
    country_id bigint,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public.cities;
       public         heap    postgres    false            �            1259    90996 	   countries    TABLE     �   CREATE TABLE public.countries (
    id bigint NOT NULL,
    name_en character varying,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone
);
    DROP TABLE public.countries;
       public         heap    postgres    false            �            1259    91001    countries_id_seq    SEQUENCE     �   ALTER TABLE public.countries ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.countries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    218            �            1259    91002    facture    TABLE     �   CREATE TABLE public.facture (
    id bigint NOT NULL,
    user_id bigint,
    order_id bigint,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);
    DROP TABLE public.facture;
       public         heap    postgres    false            �            1259    91005    facture_orders    TABLE     �   CREATE TABLE public.facture_orders (
    id bigint NOT NULL,
    "factureId" bigint,
    "orderId" bigint,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);
 "   DROP TABLE public.facture_orders;
       public         heap    postgres    false            �            1259    91008    facture_orders_id_seq    SEQUENCE     �   ALTER TABLE public.facture_orders ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.facture_orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    221            �            1259    91009    favorite_product    TABLE     �   CREATE TABLE public.favorite_product (
    id bigint NOT NULL,
    "userId" bigint,
    "productId" bigint,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);
 $   DROP TABLE public.favorite_product;
       public         heap    postgres    false            �            1259    91012    favorite_product_id_seq    SEQUENCE     �   ALTER TABLE public.favorite_product ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.favorite_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    223            �            1259    91013    order_products    TABLE        CREATE TABLE public.order_products (
    id bigint NOT NULL,
    "orderId" bigint NOT NULL,
    "productId" bigint NOT NULL,
    quantity bigint NOT NULL,
    price numeric NOT NULL,
    status bigint,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);
 "   DROP TABLE public.order_products;
       public         heap    postgres    false            �            1259    91018    order_products_id_seq    SEQUENCE     �   ALTER TABLE public.order_products ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.order_products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    225            �            1259    91019    orders    TABLE     s  CREATE TABLE public.orders (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    pharmacy_id bigint NOT NULL,
    payment character varying NOT NULL,
    country character varying NOT NULL,
    state character varying NOT NULL,
    lat numeric NOT NULL,
    lng numeric NOT NULL,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    91024    orders_id_seq    SEQUENCE     �   ALTER TABLE public.orders ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    227            �            1259    91025    pharmacists    TABLE     �  CREATE TABLE public.pharmacists (
    id bigint NOT NULL,
    first_name character varying,
    last_name character varying,
    email character varying,
    password character varying,
    phone_number character varying,
    photo character varying,
    cin bigint,
    license text,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    license_path character varying
);
    DROP TABLE public.pharmacists;
       public         heap    postgres    false            �            1259    91030    pharmacists_id_seq    SEQUENCE     �   ALTER TABLE public.pharmacists ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.pharmacists_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    229            �            1259    91031    pharmacy    TABLE     f  CREATE TABLE public.pharmacy (
    id bigint NOT NULL,
    name character varying,
    owner_id bigint,
    logo text,
    establish_date date,
    delivery_fees bigint,
    status bigint DEFAULT 0,
    status_reject character varying,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    phone_number character varying
);
    DROP TABLE public.pharmacy;
       public         heap    postgres    false            �            1259    91037    pharmacy_documents    TABLE     �   CREATE TABLE public.pharmacy_documents (
    id bigint NOT NULL,
    pharmacy_id bigint,
    document_name character varying,
    path character varying,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);
 &   DROP TABLE public.pharmacy_documents;
       public         heap    postgres    false            �            1259    91042    pharmacy_documents_id_seq    SEQUENCE     �   ALTER TABLE public.pharmacy_documents ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.pharmacy_documents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    232            �            1259    91043    pharmacy_id_seq    SEQUENCE     �   ALTER TABLE public.pharmacy ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.pharmacy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    231            �            1259    91044    pharmacy_locations    TABLE     F  CREATE TABLE public.pharmacy_locations (
    id bigint NOT NULL,
    pharmacy_id bigint,
    location_name character varying,
    country character varying,
    state character varying,
    lat character varying,
    lng character varying,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);
 &   DROP TABLE public.pharmacy_locations;
       public         heap    postgres    false            �            1259    91049    pharmacy_locations_id_seq    SEQUENCE     �   ALTER TABLE public.pharmacy_locations ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.pharmacy_locations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    235            �            1259    91050    pharmacy_messages    TABLE     �   CREATE TABLE public.pharmacy_messages (
    id bigint NOT NULL,
    pharmacy_id bigint,
    firebase_id character varying,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);
 %   DROP TABLE public.pharmacy_messages;
       public         heap    postgres    false            �            1259    91055    pharmacy_messages_id_seq    SEQUENCE     �   ALTER TABLE public.pharmacy_messages ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.pharmacy_messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    237            �            1259    91056    pharmacy_product    TABLE     �   CREATE TABLE public.pharmacy_product (
    id bigint NOT NULL,
    "pharmacyId" bigint,
    "productId" bigint,
    quantity bigint,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    favorite bigint
);
 $   DROP TABLE public.pharmacy_product;
       public         heap    postgres    false            �            1259    91059    pharmacy_product_id_seq    SEQUENCE     �   ALTER TABLE public.pharmacy_product ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.pharmacy_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 999999999999999999
    CACHE 1
);
            public          postgres    false    239            �            1259    91060    products    TABLE     /  CREATE TABLE public.products (
    id bigint NOT NULL,
    category_id bigint,
    name character varying,
    price double precision,
    description text,
    image text,
    country_id bigint,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    quantity bigint
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    91065    product_id_seq    SEQUENCE     �   ALTER TABLE public.products ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    241            �            1259    91066    states    TABLE     �   CREATE TABLE public.states (
    id bigint,
    name_en character varying,
    name_ar character varying,
    country_id bigint,
    iso2 character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
    DROP TABLE public.states;
       public         heap    postgres    false            �            1259    91071    tokens    TABLE     �   CREATE TABLE public.tokens (
    id bigint NOT NULL,
    user_id bigint,
    token character varying,
    device character varying,
    ip character varying,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);
    DROP TABLE public.tokens;
       public         heap    postgres    false            �            1259    91076    tokens_id_seq    SEQUENCE     �   ALTER TABLE public.tokens ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    244            �            1259    91077    tokens_pharmacists    TABLE       CREATE TABLE public.tokens_pharmacists (
    id bigint NOT NULL,
    pharmacist_id bigint,
    token character varying,
    device character varying,
    ip character varying,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);
 &   DROP TABLE public.tokens_pharmacists;
       public         heap    postgres    false            �            1259    91082    tokens_pharmacist_id_seq    SEQUENCE     �   ALTER TABLE public.tokens_pharmacists ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tokens_pharmacist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    246            �            1259    91083    user    TABLE     p  CREATE TABLE public."user" (
    id bigint NOT NULL,
    first_name character varying NOT NULL,
    last_name character varying NOT NULL,
    email character varying NOT NULL,
    password character varying NOT NULL,
    phone_number character varying,
    photo character varying,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);
    DROP TABLE public."user";
       public         heap    postgres    false            �            1259    91088    user_address    TABLE     �  CREATE TABLE public.user_address (
    id bigint NOT NULL,
    user_id bigint,
    country character varying,
    state character varying,
    zip_code bigint,
    type character varying,
    building character varying,
    floor bigint,
    unit bigint,
    lat character varying,
    lng character varying,
    landmark character varying,
    street_name character varying,
    city character varying,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);
     DROP TABLE public.user_address;
       public         heap    postgres    false            �            1259    91093    user_address_id_seq    SEQUENCE     �   ALTER TABLE public.user_address ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.user_address_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    249            �            1259    91094 	   user_card    TABLE     �   CREATE TABLE public.user_card (
    id bigint NOT NULL,
    user_id bigint,
    card_number bigint,
    expiration_date date,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);
    DROP TABLE public.user_card;
       public         heap    postgres    false            �            1259    91097    user_card_id_seq    SEQUENCE     �   ALTER TABLE public.user_card ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.user_card_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    251            �            1259    91098    user_facture_id_seq    SEQUENCE     �   ALTER TABLE public.facture ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.user_facture_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    220            �            1259    91099    user_id_seq    SEQUENCE     �   ALTER TABLE public."user" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    248            �            1259    91100    user_messages    TABLE     �   CREATE TABLE public.user_messages (
    id bigint NOT NULL,
    pharmacy_id bigint NOT NULL,
    user_id bigint NOT NULL,
    firebase_id character varying,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);
 !   DROP TABLE public.user_messages;
       public         heap    postgres    false                        1259    91105    user_messages_id_seq    SEQUENCE     �   ALTER TABLE public.user_messages ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.user_messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    255            �          0    90967    admin_pharmacy 
   TABLE DATA           x   COPY public.admin_pharmacy (id, "pharmacyId", "adminId", admin_msg, pharmacy_msg, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    209   -�       �          0    90973    admins 
   TABLE DATA           �   COPY public.admins (id, first_name, last_name, phone_number, email, password, image, cin, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    211   J�       �          0    90979    admins_tokens 
   TABLE DATA           b   COPY public.admins_tokens (id, admin_id, token, device, ip, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    213   ��       �          0    90985    category 
   TABLE DATA           I   COPY public.category (id, name_en, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    215   �       �          0    90991    cities 
   TABLE DATA           d   COPY public.cities (id, name_en, name_ar, state_id, country_id, created_at, updated_at) FROM stdin;
    public          postgres    false    217   ��       �          0    90996 	   countries 
   TABLE DATA           J   COPY public.countries (id, name_en, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    218   ��       �          0    91002    facture 
   TABLE DATA           R   COPY public.facture (id, user_id, order_id, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    220   B�       �          0    91005    facture_orders 
   TABLE DATA           ^   COPY public.facture_orders (id, "factureId", "orderId", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    221   ��       �          0    91009    favorite_product 
   TABLE DATA           _   COPY public.favorite_product (id, "userId", "productId", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    223   ��       �          0    91013    order_products 
   TABLE DATA           w   COPY public.order_products (id, "orderId", "productId", quantity, price, status, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    225   `�       �          0    91019    orders 
   TABLE DATA           w   COPY public.orders (id, user_id, pharmacy_id, payment, country, state, lat, lng, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    227   �       �          0    91025    pharmacists 
   TABLE DATA           �   COPY public.pharmacists (id, first_name, last_name, email, password, phone_number, photo, cin, license, "createdAt", "updatedAt", license_path) FROM stdin;
    public          postgres    false    229   ��       �          0    91031    pharmacy 
   TABLE DATA           �   COPY public.pharmacy (id, name, owner_id, logo, establish_date, delivery_fees, status, status_reject, "createdAt", "updatedAt", phone_number) FROM stdin;
    public          postgres    false    231   ��       �          0    91037    pharmacy_documents 
   TABLE DATA           l   COPY public.pharmacy_documents (id, pharmacy_id, document_name, path, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    232   A�       �          0    91044    pharmacy_locations 
   TABLE DATA           �   COPY public.pharmacy_locations (id, pharmacy_id, location_name, country, state, lat, lng, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    235   ��       �          0    91050    pharmacy_messages 
   TABLE DATA           c   COPY public.pharmacy_messages (id, pharmacy_id, firebase_id, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    237   ��       �          0    91056    pharmacy_product 
   TABLE DATA           w   COPY public.pharmacy_product (id, "pharmacyId", "productId", quantity, "createdAt", "updatedAt", favorite) FROM stdin;
    public          postgres    false    239   "�       �          0    91060    products 
   TABLE DATA           �   COPY public.products (id, category_id, name, price, description, image, country_id, "createdAt", "updatedAt", quantity) FROM stdin;
    public          postgres    false    241   ��       �          0    91066    states 
   TABLE DATA           `   COPY public.states (id, name_en, name_ar, country_id, iso2, created_at, updated_at) FROM stdin;
    public          postgres    false    243   ��       �          0    91071    tokens 
   TABLE DATA           Z   COPY public.tokens (id, user_id, token, device, ip, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    244   /�      �          0    91077    tokens_pharmacists 
   TABLE DATA           l   COPY public.tokens_pharmacists (id, pharmacist_id, token, device, ip, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    246   ��      �          0    91083    user 
   TABLE DATA           {   COPY public."user" (id, first_name, last_name, email, password, phone_number, photo, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    248   <�      �          0    91088    user_address 
   TABLE DATA           �   COPY public.user_address (id, user_id, country, state, zip_code, type, building, floor, unit, lat, lng, landmark, street_name, city, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    249   d�      �          0    91094 	   user_card 
   TABLE DATA           h   COPY public.user_card (id, user_id, card_number, expiration_date, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    251   ��      �          0    91100    user_messages 
   TABLE DATA           h   COPY public.user_messages (id, pharmacy_id, user_id, firebase_id, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    255   �      �           0    0    admin_pharmacy_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.admin_pharmacy_id_seq', 28, true);
          public          postgres    false    210            �           0    0    admins_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.admins_id_seq', 21, true);
          public          postgres    false    212            �           0    0    admins_tokens_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.admins_tokens_id_seq', 48, true);
          public          postgres    false    214            �           0    0    category_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.category_id_seq', 12, true);
          public          postgres    false    216            �           0    0    countries_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.countries_id_seq', 1, false);
          public          postgres    false    219            �           0    0    facture_orders_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.facture_orders_id_seq', 2, true);
          public          postgres    false    222            �           0    0    favorite_product_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.favorite_product_id_seq', 88, true);
          public          postgres    false    224            �           0    0    order_products_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.order_products_id_seq', 223, true);
          public          postgres    false    226            �           0    0    orders_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.orders_id_seq', 122, true);
          public          postgres    false    228            �           0    0    pharmacists_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.pharmacists_id_seq', 96, true);
          public          postgres    false    230            �           0    0    pharmacy_documents_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.pharmacy_documents_id_seq', 33, true);
          public          postgres    false    233            �           0    0    pharmacy_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.pharmacy_id_seq', 138, true);
          public          postgres    false    234            �           0    0    pharmacy_locations_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.pharmacy_locations_id_seq', 30, true);
          public          postgres    false    236            �           0    0    pharmacy_messages_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.pharmacy_messages_id_seq', 3, true);
          public          postgres    false    238            �           0    0    pharmacy_product_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.pharmacy_product_id_seq', 158, true);
          public          postgres    false    240            �           0    0    product_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.product_id_seq', 125, true);
          public          postgres    false    242            �           0    0    tokens_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tokens_id_seq', 135, true);
          public          postgres    false    245            �           0    0    tokens_pharmacist_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.tokens_pharmacist_id_seq', 98, true);
          public          postgres    false    247            �           0    0    user_address_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.user_address_id_seq', 20, true);
          public          postgres    false    250            �           0    0    user_card_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.user_card_id_seq', 8, true);
          public          postgres    false    252            �           0    0    user_facture_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.user_facture_id_seq', 18, true);
          public          postgres    false    253            �           0    0    user_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.user_id_seq', 46, true);
          public          postgres    false    254            �           0    0    user_messages_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.user_messages_id_seq', 6, true);
          public          postgres    false    256            �           2606    91107 $   admin_pharmacy admin_pharmacist_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.admin_pharmacy
    ADD CONSTRAINT admin_pharmacist_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.admin_pharmacy DROP CONSTRAINT admin_pharmacist_pkey;
       public            postgres    false    209            �           2606    91109    admins admins_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.admins
    ADD CONSTRAINT admins_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.admins DROP CONSTRAINT admins_pkey;
       public            postgres    false    211            �           2606    91111     admins_tokens admins_tokens_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.admins_tokens
    ADD CONSTRAINT admins_tokens_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.admins_tokens DROP CONSTRAINT admins_tokens_pkey;
       public            postgres    false    213            �           2606    91113    category categories_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.category
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.category DROP CONSTRAINT categories_pkey;
       public            postgres    false    215            �           2606    91115    countries countries_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_pkey;
       public            postgres    false    218            �           2606    91117 "   facture_orders facture_orders_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.facture_orders
    ADD CONSTRAINT facture_orders_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.facture_orders DROP CONSTRAINT facture_orders_pkey;
       public            postgres    false    221            �           2606    91119 %   favorite_product favorit_product_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.favorite_product
    ADD CONSTRAINT favorit_product_pkey PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.favorite_product DROP CONSTRAINT favorit_product_pkey;
       public            postgres    false    223            �           2606    91121 "   order_products order_products_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.order_products
    ADD CONSTRAINT order_products_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.order_products DROP CONSTRAINT order_products_pkey;
       public            postgres    false    225            �           2606    91123    orders orders_pkey1 
   CONSTRAINT     Q   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey1 PRIMARY KEY (id);
 =   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey1;
       public            postgres    false    227            �           2606    91125    pharmacists pharmacists_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.pharmacists
    ADD CONSTRAINT pharmacists_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.pharmacists DROP CONSTRAINT pharmacists_pkey;
       public            postgres    false    229            �           2606    91127 *   pharmacy_documents pharmacy_documents_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.pharmacy_documents
    ADD CONSTRAINT pharmacy_documents_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.pharmacy_documents DROP CONSTRAINT pharmacy_documents_pkey;
       public            postgres    false    232            �           2606    91129 *   pharmacy_locations pharmacy_locations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.pharmacy_locations
    ADD CONSTRAINT pharmacy_locations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.pharmacy_locations DROP CONSTRAINT pharmacy_locations_pkey;
       public            postgres    false    235            �           2606    91131 (   pharmacy_messages pharmacy_messages_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.pharmacy_messages
    ADD CONSTRAINT pharmacy_messages_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.pharmacy_messages DROP CONSTRAINT pharmacy_messages_pkey;
       public            postgres    false    237            �           2606    91133    pharmacy pharmacy_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.pharmacy
    ADD CONSTRAINT pharmacy_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.pharmacy DROP CONSTRAINT pharmacy_pkey;
       public            postgres    false    231            �           2606    91135 &   pharmacy_product pharmacy_product_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.pharmacy_product
    ADD CONSTRAINT pharmacy_product_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.pharmacy_product DROP CONSTRAINT pharmacy_product_pkey;
       public            postgres    false    239            �           2606    91137    products product_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.products
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.products DROP CONSTRAINT product_pkey;
       public            postgres    false    241            �           2606    91139 )   tokens_pharmacists tokens_pharmacist_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.tokens_pharmacists
    ADD CONSTRAINT tokens_pharmacist_pkey PRIMARY KEY (id);
 S   ALTER TABLE ONLY public.tokens_pharmacists DROP CONSTRAINT tokens_pharmacist_pkey;
       public            postgres    false    246            �           2606    91141    tokens tokens_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT tokens_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.tokens DROP CONSTRAINT tokens_pkey;
       public            postgres    false    244            �           2606    91143    user_address user_address_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.user_address
    ADD CONSTRAINT user_address_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.user_address DROP CONSTRAINT user_address_pkey;
       public            postgres    false    249            �           2606    91145    facture user_invoices_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.facture
    ADD CONSTRAINT user_invoices_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.facture DROP CONSTRAINT user_invoices_pkey;
       public            postgres    false    220            �           2606    91147    user user_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            postgres    false    248            �           2606    91149 !   user_messages users_messages_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.user_messages
    ADD CONSTRAINT users_messages_pkey PRIMARY KEY (id);
 K   ALTER TABLE ONLY public.user_messages DROP CONSTRAINT users_messages_pkey;
       public            postgres    false    255            �           2606    91150 (   admin_pharmacy admin_pharmacy_adminId_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_pharmacy
    ADD CONSTRAINT "admin_pharmacy_adminId_fk" FOREIGN KEY ("adminId") REFERENCES public.admins(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 T   ALTER TABLE ONLY public.admin_pharmacy DROP CONSTRAINT "admin_pharmacy_adminId_fk";
       public          postgres    false    209    211    3286                        2606    91155 +   admin_pharmacy admin_pharmacy_pharmacyId_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_pharmacy
    ADD CONSTRAINT "admin_pharmacy_pharmacyId_fk" FOREIGN KEY ("pharmacyId") REFERENCES public.pharmacy(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 W   ALTER TABLE ONLY public.admin_pharmacy DROP CONSTRAINT "admin_pharmacy_pharmacyId_fk";
       public          postgres    false    231    3306    209                       2606    91160 '   admins_tokens admins_tokens_admin_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admins_tokens
    ADD CONSTRAINT admins_tokens_admin_id_fk FOREIGN KEY (admin_id) REFERENCES public.admins(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 Q   ALTER TABLE ONLY public.admins_tokens DROP CONSTRAINT admins_tokens_admin_id_fk;
       public          postgres    false    3286    213    211                       2606    91165 +   pharmacy_documents documents_pharmacy_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pharmacy_documents
    ADD CONSTRAINT documents_pharmacy_id_fk FOREIGN KEY (pharmacy_id) REFERENCES public.pharmacy(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 U   ALTER TABLE ONLY public.pharmacy_documents DROP CONSTRAINT documents_pharmacy_id_fk;
       public          postgres    false    232    231    3306                       2606    91170    facture facture_order_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.facture
    ADD CONSTRAINT facture_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 G   ALTER TABLE ONLY public.facture DROP CONSTRAINT facture_order_id_fkey;
       public          postgres    false    220    227    3302                       2606    91175 +   facture_orders facture_orders_facture_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.facture_orders
    ADD CONSTRAINT facture_orders_facture_id_fk FOREIGN KEY ("factureId") REFERENCES public.facture(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 U   ALTER TABLE ONLY public.facture_orders DROP CONSTRAINT facture_orders_facture_id_fk;
       public          postgres    false    221    220    3294                       2606    91180 )   facture_orders facture_orders_order_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.facture_orders
    ADD CONSTRAINT facture_orders_order_id_fk FOREIGN KEY ("orderId") REFERENCES public.orders(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 S   ALTER TABLE ONLY public.facture_orders DROP CONSTRAINT facture_orders_order_id_fk;
       public          postgres    false    227    3302    221                       2606    91185 .   favorite_product favorit_product_product_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.favorite_product
    ADD CONSTRAINT favorit_product_product_id_fk FOREIGN KEY ("productId") REFERENCES public.products(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 X   ALTER TABLE ONLY public.favorite_product DROP CONSTRAINT favorit_product_product_id_fk;
       public          postgres    false    241    223    3316                       2606    91190 +   favorite_product favorit_product_user_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.favorite_product
    ADD CONSTRAINT favorit_product_user_id_fk FOREIGN KEY ("userId") REFERENCES public."user"(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 U   ALTER TABLE ONLY public.favorite_product DROP CONSTRAINT favorit_product_user_id_fk;
       public          postgres    false    223    248    3322                       2606    91195 +   pharmacy_locations locations_pharmacy_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pharmacy_locations
    ADD CONSTRAINT locations_pharmacy_id_fk FOREIGN KEY (pharmacy_id) REFERENCES public.pharmacy(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 U   ALTER TABLE ONLY public.pharmacy_locations DROP CONSTRAINT locations_pharmacy_id_fk;
       public          postgres    false    235    231    3306                       2606    91200 )   order_products order_products_order_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_products
    ADD CONSTRAINT order_products_order_id_fk FOREIGN KEY ("orderId") REFERENCES public.orders(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 S   ALTER TABLE ONLY public.order_products DROP CONSTRAINT order_products_order_id_fk;
       public          postgres    false    225    227    3302            	           2606    91205 +   order_products order_products_product_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_products
    ADD CONSTRAINT order_products_product_id_fk FOREIGN KEY ("productId") REFERENCES public.products(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 U   ALTER TABLE ONLY public.order_products DROP CONSTRAINT order_products_product_id_fk;
       public          postgres    false    241    3316    225            
           2606    91210    orders orders_pharmacy_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pharmacy_id_fk FOREIGN KEY (pharmacy_id) REFERENCES public.pharmacy(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 F   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pharmacy_id_fk;
       public          postgres    false    227    231    3306                       2606    91215    orders orders_user_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_user_id_fk FOREIGN KEY (user_id) REFERENCES public."user"(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 B   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_user_id_fk;
       public          postgres    false    3322    248    227                       2606    91220 0   pharmacy_product pharamcy_product_pharmacy_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pharmacy_product
    ADD CONSTRAINT pharamcy_product_pharmacy_id_fk FOREIGN KEY ("pharmacyId") REFERENCES public.pharmacy(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.pharmacy_product DROP CONSTRAINT pharamcy_product_pharmacy_id_fk;
       public          postgres    false    231    3306    239                       2606    91225 /   pharmacy_product pharamcy_product_product_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pharmacy_product
    ADD CONSTRAINT pharamcy_product_product_id_fk FOREIGN KEY ("productId") REFERENCES public.products(id) ON UPDATE CASCADE NOT VALID;
 Y   ALTER TABLE ONLY public.pharmacy_product DROP CONSTRAINT pharamcy_product_product_id_fk;
       public          postgres    false    239    241    3316                       2606    91230 2   pharmacy_messages pharmacy_messages_pharmacy_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pharmacy_messages
    ADD CONSTRAINT pharmacy_messages_pharmacy_id_fk FOREIGN KEY (pharmacy_id) REFERENCES public.pharmacy(id) NOT VALID;
 \   ALTER TABLE ONLY public.pharmacy_messages DROP CONSTRAINT pharmacy_messages_pharmacy_id_fk;
       public          postgres    false    3306    237    231                       2606    91235    pharmacy pharmacy_owner_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pharmacy
    ADD CONSTRAINT pharmacy_owner_id_fk FOREIGN KEY (owner_id) REFERENCES public.pharmacists(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 G   ALTER TABLE ONLY public.pharmacy DROP CONSTRAINT pharmacy_owner_id_fk;
       public          postgres    false    3304    229    231                       2606    91240    products product_category_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT product_category_id_fk FOREIGN KEY (category_id) REFERENCES public.category(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 I   ALTER TABLE ONLY public.products DROP CONSTRAINT product_category_id_fk;
       public          postgres    false    3290    215    241                       2606    91245    products product_country_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT product_country_id_fk FOREIGN KEY (country_id) REFERENCES public.countries(id) NOT VALID;
 H   ALTER TABLE ONLY public.products DROP CONSTRAINT product_country_id_fk;
       public          postgres    false    3292    218    241                       2606    91250 3   tokens_pharmacists tokens_pharmacist_pharmacists_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tokens_pharmacists
    ADD CONSTRAINT tokens_pharmacist_pharmacists_fk FOREIGN KEY (pharmacist_id) REFERENCES public.pharmacists(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 ]   ALTER TABLE ONLY public.tokens_pharmacists DROP CONSTRAINT tokens_pharmacist_pharmacists_fk;
       public          postgres    false    229    3304    246                       2606    91255    tokens tokens_user_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT tokens_user_id_fk FOREIGN KEY (user_id) REFERENCES public."user"(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 B   ALTER TABLE ONLY public.tokens DROP CONSTRAINT tokens_user_id_fk;
       public          postgres    false    248    3322    244                       2606    91260 $   user_address user_address_user_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_address
    ADD CONSTRAINT user_address_user_id_fk FOREIGN KEY (user_id) REFERENCES public."user"(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 N   ALTER TABLE ONLY public.user_address DROP CONSTRAINT user_address_user_id_fk;
       public          postgres    false    249    3322    248                       2606    91265    user_card user_card_user_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_card
    ADD CONSTRAINT user_card_user_fk FOREIGN KEY (user_id) REFERENCES public."user"(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 E   ALTER TABLE ONLY public.user_card DROP CONSTRAINT user_card_user_fk;
       public          postgres    false    3322    248    251                       2606    91270 !   facture user_facture_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.facture
    ADD CONSTRAINT user_facture_user_id_fkey FOREIGN KEY (user_id) REFERENCES public."user"(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 K   ALTER TABLE ONLY public.facture DROP CONSTRAINT user_facture_user_id_fkey;
       public          postgres    false    3322    220    248                       2606    91275 *   user_messages user_messages_pharmacy_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_messages
    ADD CONSTRAINT user_messages_pharmacy_id_fk FOREIGN KEY (pharmacy_id) REFERENCES public.pharmacy(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 T   ALTER TABLE ONLY public.user_messages DROP CONSTRAINT user_messages_pharmacy_id_fk;
       public          postgres    false    255    3306    231                       2606    91280 &   user_messages user_messages_user_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_messages
    ADD CONSTRAINT user_messages_user_id_fk FOREIGN KEY (user_id) REFERENCES public."user"(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 P   ALTER TABLE ONLY public.user_messages DROP CONSTRAINT user_messages_user_id_fk;
       public          postgres    false    255    3322    248            �      x������ � �      �   F  x����n1�s�)�^ud;�cω#=p����$e�E������Br.�%���%�]~�Sz_=~H7�:)O�?����t;�7�[�/s{�RfIX�@!;��Z����J�{�X����Ty�H���*Rx�% l���>�sQI׍����'�`��?�$�"�0Ͳ'���%ҷ�1�/l2������^����~�2z�l�4�+���乵����٢è��@��N|�ɭ��7�~_�f��������r���ßu����={���j3�檙�\��½���9�W7�C=FaX�j�n��������v��O��o d��      �   f  x���K�0D�ݧ�}�FY}�l��avY���@.0P,a��J�A�hPf�ō�����d��ka�,�NA���Tt��5Z4j�"a�lB�?:�ڪ�c���ilO�����g��'\O];�
��tM��pQ�,�ZԌ�Ay�$���2pY�$����mwr`a��m2UD������~�~|�y}_} ��~�/�'�������z��F&�A��/V�8� ki]$Á�8%.(>����ޥ ��:C�{� ˷,�}X'ܫ�)����u�@��h�����-�6O���t��Ƚ[����V�ļ���Z�.���]�:�^�u�V�2�c?@Ho����X���~=��V���      �   �   x�m�=�0���Wt7��AAuq�#apa��1������Ac�N�=}���-�V7��
�N�fI���ˉر�Œ�Dn�tF���ڛ��k�:Cv��u��{�02;k:W�$��F_�S5JDO!e:fE�̑�����v�2��'A@��I
� �8��J:�㡐�g�*E�_�hx�����Mk      �      x������ � �      �   6	  x���Ks�:���_�e��)|kg;���I<~�֤fI��$�����!)����)�l�
�	��O���o�Jf��@2�iZ��4��L�Y��5)N��D3��,�O$�ujX&7c�5Fsss~��&r&Z� �������G��x���ai��'*&Z��u �� �adRn1�EC"�i�J���s��~	���\�� �(\������ �r���T�<�8@�Z�i7W�;��s�R�������9e�'5�m��z\�GmJA	ji�#V
:םr@d@Z��x$���4�31 �L�	Y���Cy�`;�HM��ۑ�&		�Z��n�x��`��UL�R��EO���ڙ.�`983�q��K�i��B��'���u��;�J���'X%�k�Ż5�@�^�6�+��㑊.T?�Kdxu`��6^�Y�̠ ��)�|�n��`j���� �t���{r��P����;���GF+/�<�7�zE �(�K[�P�@�Yva��ͭ��8����b;����R��u@�(X+�}P< ��c�N�v��_s�|��D�K�_Ϊ���c��6�Ų�M_U�d��C�y�����v[��?���:r�_\%o�݋�Ƶh�
�v���u�Ӌ�EC���+��w�)��n��O�y����f@�������-eF�<�ɓ�؈�r�\x�[ R�e��L�@I�w:����.x���pν�f�����k�C��.��"�A���2v�0�ޫn�[�i%�uV�`F��w�s9sT���;5,�VU2��f�d�"V�O��v�A��4�?�G�v��{F��+5�N�2�ԀՂ��u-���dıӉw�uFW+dꜮ̜-���PAWNk@ u�'0�U� KY�tŹPw�o��5���$�4���{���� <�t��}v�-�_:~n��B��H���qT>dU�-����ke��ڔt��[����;;�O�ME�vXz� �L�܆�o��>��g���z��&ҔnR�H��X����X
|��!�Oi� P0��}I7�S:��iE7��i������0�A��H�v#�B�`�z��[�S���.DF�z�"k�9�g�
�t!
�dݴ���nN��e�泼�I�\I�ʎpE�\E����0Ěn������Н�X!S&d�NHAwz���)�������̡]!�� ���Mz'��F˒�i塝!+���{?�XM�By�>�P/�&Dd)SKժq�0�	�:�
�b&���Y��yl��� !C+0!�
u�Ӊ��|��b�
�*~�W��`�!� 7q����/Y����o�1���<ck�	`�����2rօY8�t��-�°8�"B�+�Zh/���I�yV��F�?Pvr�uv��V����ЀB�+X��{$��>�� K��Ș�.��EN��Ff�`C�Cǿ�$�Bw�����o�,�YQ0W1��\���E�'�j�YᢡOlQ�j=���2�j`�Kq ��k��A4Xf�~��ݨe~�a��c�j��˽}U�/K��#����^���.���]�M ��u(j�Yޜ�*ej�'�A�`d�U2�|��QI���>y�ѽFH����tf���r�
�7�B7�z�J�� ��`	�Iu+�k7ٰ�T������5�bV�'�N�A�� }F-������%=�2uF���$�Ge�)�֝F���5�4�O6}�/�U]�p��[VG�ް�Ї��P�;hJ��]��a��wx��zXJ�"�n7;=W!�v��I���.'o����g�N�haG�D#�8���&c�&O�?|�{�XFM�_���)�45,�`9��а̴��
��O$��T��J+7G��c�Vm�]������5r�){:���1�]��Y��9�!ͅL�����	 G�B���5�G��(ʔ��ANʔU�Lr��52>�62�����]�)��xQ�<l8���a���7&^�h^��4��K�ry�K��(���L�C�p,�-b�(�I�Wh*F���JQ36� � ECO+~p�ғ�I)XkąK)��=�x�R��d�
eNOl��$e��[��A�3Q2R�p��`Y���q�P&.�CL�J<�+2=��E�YJ��p"�#����Lz�/��eo���Z*3���\�9���D'���l+��~�<
|�������:�����k4cd}Q�W ��ff�º0����1x5�S���nl���S����8G s��_e(ys<�o�e.��&Ϗ�џ���!f�����ڊ�s�S�SX�yT+���w�#�1/髂��ʼ������+r���[;ڗ��ez�֧�HD1˲Y��O�oONN�	��}      �   z   x���1�0��~E�")+������h �С4��A����V"'�=� �{��1G��ݟ��/;��]iu���o�%��g,����Xb����-ˤcQ�C-��ޔ3�\V���w���5�L.      �      x������ � �      �   g   x���A�0�s�
�FH۷��wH�`L<��	v�+��i�la̙��u�14(4�U�O����N0��nڞ�)��\��Zn&�5��Z�	|i+.      �   �   x���A!�5�b��@T�,��9�g�L�va������2I����ubRV=y�jK2c�X��2�͔V����߆��̅(�A>���-��M(��W���m�!�`j�.#��FJ}��U�)@ N����H����+Nm0�{�iȸ�w-�| 65S      �   �   x���=j1�Z{
��b��h~t�\ ��%�&͒�GX	��v	����R Q>�����|?��:�"V�,����
�S�jB*Z��od7���u%��:�S��e\-�>Q�3P�h{�#�h�D�z��wpM��~B��J��z���m-�U��pqu)Q����'x1s���Sv�4s=�̘cĴ[�1f�i��n�+�f��9����9���,�/����      �   �  x����n\1��w���Gf�h� lC�j~"���z�J���Jg�1>��&���������_�׫�_N�~�FTDJ�QxJ&Aʐ2�)�Y���JN�&���	-G�>KB1�䕋�eM���yh;7���:B�ib��DlŶ#a�Uwcإھ�A�(��a��ؠ;ԑ])�0�1�2c��6]K�Ũ�v���.WQ�.�#n������OP�v�3���w���w,g�3��������ӷ��7���nkq����9;kgV�&md>f�����QBTZ�`7�j' /��dM��!�x[�RB�&��!I"��w�ǋ Ӣ5�L6�`��Ud�չ�?�,u��I��AR�zZޏ�?��W-�א����F�V��JU1
]8��A'���l�`hr��yx9���%�n      �   �  x���M�1�s�����M}&��z���%����e�"�{�3��A�SB��M�����\O�|��S;M��R�U3��Tb�n�Tp57u�R%�P{�VK mT�a�d���4����&�	�Ǐ���
�2, �� n�a^w��dK)>��(� fD�#�;�/~���/dah�������J.H�w�zς!�U �Xѫ��)�X�S�q%�P��L;��aK�y�Kf�|(����k^n��S:R������∐G�E��it��J�-�jٚgzTK�~xy;bN���<l� �&�c�㎶�l�r��Ҍl��|��	�]�h¥Wc!Ƈ;��T#�86�֭q!����bԞ�'i��{�����\�suA>��6�z\����:fϏ�<Ͽ &ީP      �   c  x���Mn�0F��)f_�AR%�=A���O:m:LR�}e(f�E.�� ��iB
����-?n�������\cA7WL�S��X=1$��I�#tMR�����A���:���O�+��/��1��J���h��t�n�_V�|��o���jo����j߻`�5�.*��Xw2���"`�0[(r+#'�bHz?f}`�9��@;��1Ƹr^��d�f�Õ���������r)�����sŒ�L�%9%w��ʠmL�+k@.��G��Զ[4a����5�TTmjlw(�)�+��4%ι��ѓw]ޛ�����)ɈwE�-!��
�TQ�uz�:j~Z�y�kۛ�      �   �   x�m�?k1�g�S�^b�זo�R��B:fq!7�B��c_H�!��	��$J@̰=�˰>�y���y:Ou�@4f�SW��v�	��ù>g,fQJ��1��?>���|��v���y������J(ɲ�g6V�I�fż�L�ȼ´B�F�Vo��&��m�d�ZAH��z�}yARls3v!M��VJ�����A��l��F���ѻB�-�Y-      �   u   x�3�444��2��)q7�Hw.����1t��4202�50�50Q00�20 "mCda##+C3+Ss=cSC�����gya@�WjZ��{�oV�eV���%q�Z�陚������� ZM"�      �   �  x���K�1E�ի�<j0���� �_G���EzF�t�~G�r�P=�O*�7�7�������qnqHu|�����H��
�"r�㈡�>06�-� �6'!Ň��1�>EN�%>���������85J�) �(�ϐ� ȍj�J5��)��$/`�Xp��Z vЎ�f��u�%��X����&%���JUB������@^������"�L�U59�3Qi�`��h0 1n /��
��\e<y� �B�=��!���Z���a2nBU�G�I�nD Ex���d��K7P�!C4º%Ꝕ��Ш�=4���;%�4�Ɏ��*��="b(YA���(����d ����6���]�눘Z� r�E\gDGͤ�k57��q��F���L�ܵ�ᜣ.B�̚z��*"�]��H^-O���o>O��DN��T�ڴ|����`�2��[/�r���	V�LY��,G������<Y��6K�eI񺡚�q9R�n��ȸ)^�	�#o��"B[���B-�U^��H`;j��%^�h핗��aΎE��Hp䬊p&5����-�PE��ɨgR�9��M*�;Y݉ޤ��B݉ޤ��B݉ޤ��B݉ޤڴ��;��&�#"��ú��nщ8���5�L�\@��N�i!:f���� �yɐ���?l�$?������y�πN�0r�6�gY:/U>$"�bmP�;��(��֤�K�>3}tAR�H�B���A>Q0��,*����E!�TD�'��))�s+���`�x��Ti,P�젔 �v�-�x����'�p�X���S�s�mnQz(����>�"5d{��wM�P����X)8(�����!��}��� �6;�����!ā�M
)D�{���O$�}F~��!�*����� ��5      �      x��{YvI��7r��U��D���(�R0�Y"��Γ?6�^�(RPG��ZB��w�+��@E�"U��		>���gw0{0aFgqy�N'5��i\T�C�vgݪ�\�U��#�\-�T�{|��M'#���V�$��nt-�k����:[�M���}��[�Z��U���"��sMǦ�ua����ȏ�YG����x��o�u8�p�ݘ:�7�j$G�k]N�Ye_؏wݪκ�-{�O&G����}�q�b�k\���U��	.5�B��t�~��&mD*�قس,I�`����T[�I.NX�y��d�����O#��s�C�Gjt��9�����ߝ�=c7w��	��uf��<�E5-Α��}�΄"}*ҵ�h��eS�)sm	�7/����X�q�~��f���Qo���ͺ�^���N���/�W��:.
>HN#���<.S����G�jM���բ�2
���5qe����L^���(�{H�xr�ej�6V;2��}����:�L{L1�f?��z�^��r�^t���N5N�
��"��w�>�VE	��tN��K�:��d
�m3�ڬ|+>����כ��cV�ʏ���ס�/qr������.-��;���I�F��o�|��HIvA��S
����RǠ���6o=���"<7��&�$�B8����c�w9�#7z�Ni��3;�VxAz�%� ������g�A�� #�����C�x<}5(4 ��ٺ��:�(1AUl�&_e�N��T(�9�2�@��Ԩ1si ����~Ӥ���*�2C(/�y�q���ʨ�K ���r�&�)f�3��g�L���ɸ�4��aEf��K�-2�?/�j�O��l�=�yU]�`�캏sv���`��Uw�Տ"T�{[�,ڊ\k�M�\b,!�❴�ν��L���\L�{`8������p[���>������ٱ0���nɦ�t9�:�>u��S-���z���l��=x}u�聎���]�^�V?��x����E�i�]ʦf�D��b~� Ζі�-2YL��dot�N������v���+��6¯K~��q,�������"溊�~�j|����/�
p�/�'�u��!OԳUL#���>"M>X���̫�qMڄ�Duք�4��`�vHfHQ
���/����hp�s@�+)�1��y�O�9tCi���}�>����l���L�_���?��i��CI���FBAYH�n3�X���]����rY@�Ɠ"�v���Zb�X�c��F�ml
w��>V���u�^"���}�?D㖃�!�O��1
�tx�TsYa�qSERY@O���Y��OѪ҄�*��7��'�&űrǚ����*����TTlzH�y{r~s������߯�n._�ܜ���3��욝�|yvzs~�暽�|wq���ٻk?����;������kL���``-iLʭ6�Cu �TC- &}H�q-���/�-��B��w�sǒJ2<�V��.^�]��RtN������U?�4�VH�jZ�t���UϦ=�
���T��۟�-pt`��
��c��6BS���s�k)��&cF�f�� ꈘ\"��k��j�Z`�N������ۆ�����^mBd��oN^��9c�l�O��-����%����|W��X���&݇ʖ�o���"g�i��M<{-\R�2'x���(i�`]��2 �k��T&y����v0ۑ1��<?y��	>��b#�S��ɒ�cI
���F̱Xt��N�u����?l��}��.i���y]�.�~�׳BA�m�S[��(��M��27$S3�D�� ����
>'�o���2�@��
Z ����m����R	lJ^�c?�O��۳��az_�dW'�o^��`'o^����v���7/·i��Ď+���؁�6�,M\Jv�zAk�6>�%ᅳ�}"ƈ���?�O��@)N\������{�΋xO�1��K���8��=T{<��	�A�+]@�Z`M�S�g�'a�?��/�0	r�B��D� d��I����`�+1�Z߆c������yv?aWW��A�)��|���H�C�p�'T.�E��ܲ��E�]=��$]ְ����hOZ���.�v����	��z���zXE�
��K��K�0]\�2-e��J
�W!�
�U�`���q�x��� k�&�w��.6	r�t��I����S�_�^q/���S� C�T��O�Ed�����)ˑ��{�$��W�(��6�K�k+"Af�|�ٚ��&�DI�����2�w:�X���_����.n<�
/�����i����4�7��w=�PPi��t� j�������֚j��T���KH8�&E���vx�B�.�8l�b��%�|{�����N/.ߜ�����5c�t����Hu��-�7��8��#��uN��"H�~�n��a2�ƺY���\��e�+�䧮�����dN&��,'����|Ŧ��q���"�Z�c�tr�*Lq��9�;��'{�&g1�v��Ĺ��p:�π���h��62w��m�A�?@���trb�!6��c`�vtwsz����%T��+�f������Ay,��|�M�b�eͨ�ˢ���/V4�����Y���wu=��g,��I���g�ñ~��7�����G�3���Vwq2��D�4P�@���G<c���i%c�"H��;������~����_S�p7�{��\+V�xƢ�f8��f�_�5o
��K��qE�΁�`Հզ�ȅG+J�� 4/�#��!�R�:����*�_]KU�5R�琉=��"w���0�<�Ǹ���,y��C)!��v�>%h�Q:Íf��؜��1��G�:�`r������i��c-���n#���f���%�Y�����ȭ����&��C�EL���
�e[���R2-D�β�J��X�pr<7^e䎜�
6A��b�Q�CW�B���� �����u������(�#4���}>�m��hh��Ƃ�Jі�UV�	o&ѧ��	�K+]F��C<8
�\p��B!��?PZ��	͝��8���C^���P�.��l}az�#��NRD2��P����jXq{
?W�B$�*�Ws�Q�,"8���4ȑE����^�I[a�\���D��x!�z�v��W ���7k'���cSP�V$!@�R�����EX`�/")��ٸ�a ��>�b,�.[ѻ�V�q��5���?����vw�����瞋8�� �g+`'�Q(Z�f!�J��*���YXxJ������IH��O9��B.���#��b�E�?�)�U�`Ư���0�� ]�6��s/�,���`|6)(Up>9� ��p]��Č�|����±t�}�ޅ��K�����C*���Í���g����ۍ��1iQ �ؒ��B&�!]>)��W�H+$_�H�SYTkb���1A�1�e���0�o{�p��)ؽ�=������end����=��/[����D�A����Ai%5��xY���	�n��\��	V�����дA�"m0s!�+ZL]Aq?�������翖��~����T�Ư�Lw�-���v�K�"q6F�a�An�����(T)�E��q�9� �ā�JZ�A��%Z�w'u~���PqN��ab�C��r�;�k�c�w��t&`�ۆRmp	�cȏ"��%�2.�HK{�_���T�MAB����'���ÿ��D(���@������W�x�~㮁������kё%�_hP�6��j0}uVW�Q���f��&	_T�Q��88F���.Fbur�uZ�َ�w+��{n6{ݯ�dd4��E�;����}5*��B��� ��s�����J�ڸQ�`&6�R�pA:��Ӵ��ŧ���Wt}ѓJ�����˞đ�v�QL+���ؓ���w+ �; ������:WSE��Z��!8�n�ڋ�,���Y�Ͷ��T�ۅN��XW��eS�Ѧ��/�ʳ�.�/��rP���hG�Q48��}�h$��oZj�ܠz :)�R���f-H����{�ϥ�� �	  z���X���v��Y~�Ց�߲C��3���j$�w�$�N��}�EY�2�Js�@��8�Z�N�$`�O�L�
,nʡs@ĒM�ۇ��t�#~���.���_��ocL.(Y#��Zy	���&hn�'(��.f[Q]��Bի2��U!L�� L�=�xZ�N�i<��ѽ���H��<��p���	��pS�h�ƚ�mȟ�%�hP�A*cQ�� k����L�}��.��(��¿���HHCN�	�m���?��C��߃��qc�6�d<��0��g�K0����&��j߬�� �����C��=�����
�x/��r���x����Gz��~���	H�#���i^~��ڽ.�*hP�2!@�s."b���h���T�2,��|��Zg]u87li��c��.t�ПC�~���Wy{ӯiӎ��a�T�Б�q�lp��C���zZ������'���8Wů"2^Ct�9�}��l�X�]m9�6�q��£�K?�0��_xz��_���p��SQI˛�A:����p�n>[� ڋ@֛0sT�wR�@�:Z0{=+ԯ����	���P��ڐ);Dl���B<1�׹Ti�J�^���_��
g�1��F+P4���P�[�1�w��ћ~1���ˮ��W�����U�}�^�V�=�*)	ش�]��G,���Gr'��ІE�E�ٌ����װl���^�֓0XVQb3���Z���I%a�E���wxS��M��]�a!|z7�M�}��f3��[�E�h�a�F^\Y�����B
����0�*$7>�\kS&zg�:���sM=����7�%�%J�S)�٬���y��F��]��ݼ�����]*/B��0�f���5�����@�.��|E�)P��!b��, �����|Y���
�ІЋ���	߂/ڭ��j]~�V�B�
��9x�
�/qJD��k���[I:Y�V��S��3����i�M�d��C�fg�/�C{��\9�J\�ZA�Ҩ]H��'�Go
c���0��y��td���j�&��YBڄF=%v��"5��m��?�j׫�}�9�+	T����ˑ�,���n j��;��ʤEZ�W�M%BX���v���Z�)�^� � l�Ձa�����BINa�˝�ay�%u�����r�^ }6a�WD:u
 >[.�,בQ�Wq1���<her��T<̭��E��Zirֈ?�t�.!�����6�f��`�����N�J�ay�u��U]-�I]O�_���GJ�� ��o]BIެ�ȝ�R�9U����3P7yﭨVh� I��(���K�
�Q�0-�1;������}d��+Z�&���gl��r�l�7�/qAi�Mq��%�S_-[i���)���Ex�@�9L?�AZ#�W	�'��԰Exx�ƍ�ߧS!��]Fj�n?F���7��=&�E7_>�ނ��v�LP5\;_�}c����s��i������4~;]�%�u��H�*��G���
 I�p�E߼�F�C6}��&� 1n��T�_��ٲ����U���O��{���Wl�}R�k�޾ֈ9�p�+\H�2�d2�T�U� �Yգ85�-ߣ��Y��#-��"#������۷��n�i���'m�o�7�3��'�v۴BE���SKڴ�<�56i��U��&|�I�EZW���=���(3�n�`��ˎ��7h�6��j�o^������>��^�YjޗZ�u�R�b�$@�2	����/���\�r��?}�:P8�_�1߭T�>Sc�W�5y�����x��[�
;Y�R_m7� !R��K]?4�����M&K�]���q��ͨ�I]���1C��s��M�j��&�34 Q��ІԠ��O$�O;flڕ2������e7[/]�����a���g�AK�⯜b�~�%M�U�\��W�v�<Yz��x�����	�s��?������vbh����Ȣ�6+X��Ӟ~�gh�	�
�����4�[�������gcۖx��;��.���\��u�Qk�dR�P	1ȓ�έi�wq�-�t�C�\7<�T�ڴA������E�	2�����}� ����I��������ņ_���CZ������i���z'�������������.�J(�
y�:����)ZE�ME�bd�Ŗ�s����7%c�����山c��~�svEM��t�|�P#J���|"ư�qq~O����y\�D���b��}^Swˠ(���w@�f��:��&���GE��ψh�b�`[�˒�E?e²{L��<���sg�j�t�v��ĭ�nR��{��wFԼE�k��0�c�"~��Z�*���������p��\�Cj�e�X�Ի��^-��3��Ew�ь�� NQ@��P���5��\�1�q���դ��ʭ�����
�lPJ�d�pm����9 �?�q�8s�e�����?��I�      �      x����Zɖ&:�z�x��9q����)He�f�+�	w�#%���El�����t�v��� 6J�]Y���	�A���'9�b�Y����׽+S���|ٺ۲�Jj%N�]?�
��0����a�E��0��:j��x#���~~���}ٿ����w���/�Wo�/�
_���/�WGW'�_}�������� ��NyE��X����L�8S�J�?V�X��ߕK3��L�X(W�����R�ʰ�>�+�����߿|٣d�Or�W�l��m�L��7W�9����V�N��l�'��O�y��QW�F��'I�;=�:G*� �q�j��Nl��y'zN_/7�� =���H�D����1�N���;��VWg�縿3���;���jΏ�AWG�4�����m����>�?^ewg����Wp����,�}�o����N�#�P4���S��'K��f��`P�m�P�hsRqu���� �ղ?�փ5]XJ�`-�@���`��N�96�z~ف%JUO�+�ר�9�77<����A�ꎎ�0��k���e���p��X��x1/�b5�4���z�w/���yuJ�%x]-�����)���W'���_�y�Z�<�8�}�9��s"���*���4��_�f�ܟp'�a�F~�&�HoN%�3n~�,w��קr?�����0���^��'����lQ���Z��{�^s,j��/;��G��-�_Lf�N �451�;����~:�i��=d V@���\Ss��0.,��5&�?Ap�u�c��� -z`T؈�ОZ�۝8���> e�����U��j�'a��4��aa^oC��?ă!?��w࠿��b?Xk>�0��k���L�����]4����C��"0�2`3��f<mo~��λίc+%8�P����� *�	-^l��>��n����dٱ@'��l9�V*��pNۍ������X�r~F�T�B��
-�"�f��R+��o��Ԃ��..|��6���q}<Z�{^����G����e>�轶.��w�x�	��N��#!��aU��^z[oؽt���U�:&\��^i�'�t Ѥc�d.PZQ�W��Uנ��ҷ���;��ē�.���Z���߳1%�x�^K�����x�A��8	�,���G���I�i���R"���VAL��[3�2E�.���@1M��(1����W��'��x;���醍G&���u;���c�m��Yw��pƼm�膚E1w���r�x_6*;p�
� �z��OHR�п[΍^+*�}_A'5�������8�<�4���,�X� ��j����~��'Ğ`C���83��/�y�I$
�
�p���\S?9�5@avm͕��AY�o١U�[�I�25���,�2t�S�=��֢U��Y:�*u�,���@� �	�s�\}��3;���J ��w���l�c��Z����$�bE�~���9���y�e{���T�k?�z�_�'I��W��2�͛��Ջj��� *r�?P6�`g�p��	�%��&�"g�-�)�l���euO�C$�O�S���9`*GC8rps�<��`��0�7��bK>8���X�N�;����������Z�\�0^����4F��������Џa�_fw�0Ɓ�A���u�Κ�%\�x�Y�~��g� ZV�xF�!
��Tσ��[���'<Ð@�ˡWT ԺmMi�g��|}~-�b���Fi�0�ɾ]��Ke�?��dI�vt۷&�߂�����d~��՝���m9�4 ���pݍS+�	y�4?�zU���n�4�����;U7���w���?��RGQ����8�\�U�K�WW��w�$������,�k¨�W5����0[�i�~��(�ہ�)�{=e8�����x��4�7:���������E���j��fl�������#��uH�����q��������x�"�H�Ͽ�F���6��do��H��z�[z��s����)%�����I ���L3��L�X�Ш��|����D@����W��Zy	����@�5�>���ש�-���E��՚o/��s�k�)9`j.H>�;�V&���t&�x�Om�%pP��ÐIa~�7��V��}�G>2��Np��@���/�o=�%��'�7���������/��	��IZ��_��7�������a%iM�: ��4���-X�N�]:�ӌ2�%�YS�ЛQxLpx����Ԭ��AЦ�G���@T4�{��u�1c�\�o`� B����?��`�_�H���T:�mQ�r�چ�Yb�S����Gi�j0cJ�����5`~[S���Y�6D%Ȏ�_������6K~>0��{�ë�fB~�(�wI~
�h�O�{~�/�Y��F���$5{f���쏿�~����J%��IH\'0H@�cLt�.<�H�B<�I3]��AT��kN��:�ۅ#�K���&.��O����
8�TT��4����� �.�J�0g� �$
��E��� <�����t���>Dp�������T9T}���1��
H
��{� e�$%*�HM-�8��Ѕ�@f��ND�T�v92��&�"���X�S�����-%��im�)]�f�z��� G:N��I�2L�����ǉ��4#h����=4��?���cU�o�O����,x؟�7p
�=����?��p80a��ǅ,��[Iܣ��h��2TU`0�u��4%���JY�M�Z���_X�fnLU�me�Z���˟x��N��;Ei=�Ji�R�9v=~N�?�		���(��M]�ʌ���+���W�����y*P�m>�Lg��AρSy/W��v�Gᆵ<ąD���}���u'#�.�(]��O��Haf<,ّ�8�Q�`���`�3��l�����F��R*��T:�p�YSr~M�`�u
szK]���Z;�?�V����x0$����oE�^Aԗt���ԑ��bL�G�L�Ҭ���DY-lmo�qҶ޿��	�)�%���N���͆}=�E����& �gm��.�*����u�L���SL|��կ�^�������J%=f{��^Ћ�4{���� ��:xK�aܶWd���.9G&I�<+ٹ��~k+��g�Ȼ���Z���m�E��,'�f�����S��߼���g�_���M��&=�u�'mO��>�_+R�BGG�0 �t�`Dc�V_�Z��4�[���{�3�X�U����F�E��[�n%V�s�����G�gvU�jU*!���*�,���ZA�Z�����J�R��Z�<�R�pvEBbO-�����=�i2�ܐ~�[Ɇ�}=��;�0���-y�����d��(�5�B0:��wE���fS[1���}�~���D������t��B��� � �V�Ї�IV�r�\�'7�]p��*�n���?�R��9����E���T���H���,P�7j�;�`�k�k@��\��S��I��ԠM�jH��� /Imi�<�M6���%�+�`̨�ݬ�Š�:|��Ч�T��A��nj%:U��^ ��!�$���A����#����HA6�+��I]G�*�`t����+CX����|��b��|�G�xz��R��k�Y�nZB�*�#^�U0�_eВSD�L�y�J�(���0�WW�:������z�:8��,
3��WY
ד���1N���{�����u����mC-�	�Y��7��<�T�d�M�4x1,еԖ�9ϩ��0.��e��_Q��R��o������$~^��%|�`e�]�en\]�� �FF���N��}����Y}I�\Q�p�����1>����z(覑�5w9.R��|��{���5T�K> ���V�arOî�L����z�|�3�;A�K��J��BL^Ԉ>��!�>X�eG6?c��Uj���^�G>�c��7~e^Ն�M�����U%b�,�� p�t�a�p�w�� "t	~�ĭ@y�BG�
${    /xC�$u��}s�{�V$㏼��Q��`�kW,�g�w��4��nlC'���1ׄ �%������A�g]��v��a��N�#~]��;8$�+\�Ɩ08��nu�Ns��O��=��/	׀h��ñ�c~drt9�*���x4�G��ƛKq����<���ֹ�����+�����K�Ώ7~��4?;�ߩgA7����N��n�PUI��f��&�8���n=���!$G��]��L�|0��Tl�J��M��Z�c7�������`�:eq��KtٙD�0&���;d��%���>�}~%P.�l�r܋:��8Z�i��U�x�� q0&�^V��ߐ�(�Z�����]{�*���t�Nɇ�u���e�����;��LM�(O�=��hQ+�A
�������v�ԃo�f}���kl���0�W��=�|����\S����uG0z����y/��ȤTV�P���TH�r
��;���^�9�i-�IeJ���m��\�5�5M'�N1S�sG�[���o{��o���)Xs2�M�E*�/=�>?z��S�#һإ����q,����g` ��i���l1���3o7-�#�>�0SYhL�k�(a ����|�q�A�� �o�����^�wr%��G>�V�	�,�茦-�>ؑ����2����!�������".)��ji �<�( o�y�;���G#N����7!0L�ӫ�أ�ߋ�Smm�@��� ����>����.������v
���m'�9�O|���J�3l�hI�+P)�ڑ�{u�3JJE=����k��W���.v���VX�3D͝�GԚZN#��:H��xmJ,"H����W=���A
�]�&Ȇ��	�Oep\�u_C��]<�#��6���w��	�o�48�����.j�h��*v���N*�?��>�J�v�S��X����Eׂ�C��W�̂ ��-���N�2�on)_Al!!I#�v�n�
@T�&:�T�:�%-*��*V~�]?t�_��k����8 6�� o�d�(�g-!�J�oj�[��	���aM��d�ɤT=i,33�@`��C ��ck��	�b�E��(�M�g��զZ�|ױc_pʕ0�Ҡ8�^���0s�'S�xn�gY+���w^����9�`��Q\Vz��ە2�����0BbWǾ��\�or��2� pakU����Q����� -��Z4Ն��
��si�
�E�A��X[cPA�i5�����jˋ�����Q.�Y�� Qk�i��)Wq� �Sk�
O�2���7t�$g�(�n��~����ڧ!K,��yq[�m�r�xPt��ݡ��q����V����2��,�a���-�����sy+,��V�:�
���\���E�+��5V�-kx�5 �-���V=S���l����>��+��N/�ļ��K _}"o�'F���t� ��q}�n�@��g�U���[��:T#F[��Uw:0��ZN.�Gk��3'qlj�+�����(�Q�sp�V��90��T�,���&���U����pZʅ]��ρ�ą�O9�i��k��S���L�k�o]�һ�50�+��`���Kסi'�E��?�f(\���}`��#�1�>���������n�?�S;�&��C��G��+� ������_�A����].�9 b�t�k��z85���G�Ӷ?�"H�w�� ��.Ӵ���e��AvR��iٽ]�WČ|��;�E�;�C��X����w�3t$��?p�SR�zPXM#��e��`E�D�ku�\k��|೬^���iz�S�r
��|!}��Us-YQ�����Zo)W�����$d�Z�!^p~��n7���+�
 �)(�˟#�w
�'��*��X`�ѩk!���t.��Ybǅ�A���D����G/R`���{�}z��e<L1��i4�#p_�xECX��k��A7^"wH*�G�d����Fi'��������]a۝��	A��j�a��r��6�uA�5(��;=��a���P��ۘ�����q�V�=���-�W�Lj�l)��k��`�
^]�����?k����*��m�x6�s �m}N]�5,tN��4��<��ͺz�e�>]J�?8�MO����no�0+z�$g�Pq���T��-Alb��VZ���+���mw7v`�[_Б��\qbȹ�_�+E��Nmz����4�<�%�-�����3�C��������~m ��?0���=�
l�}��eD����f{@����oeU�~�@)y^aA�����Ám��p���P���J�ˀaR���A�;?��M=mleJ�F�7�T��yطA�B����F�v�-r
�\�ÒzWp.8�'���	��)kU��Њ�-�V�����
�k�t�ֵ�R�����?Đz8���t0���N�]U�I<��<<�_.�g�¼��k����eյo٫�lC����;>�&�|f#���H���tl� ��O�L���}�J���m�vd�O�j�}�J����t���'l(���V+�l�u������{�fV��2���o��&s6P���id�$r�1�g�*���81Oǘ�RfU=M{i�	��L~�����=��T��J��-�����>�({\g�)Y�\�����N��^/��4��.� gP�R�����n��m\�U�5����ZR�;�Z�^ �P����oV�p>k��s�RT?�h��9kt���ch��UJȆ��tÃ�^�N�zQ��.���y���T�'�����M������y��1f맡Kn8�A�@�-��
X���X������S��Dr�:h�����e{#sC� ���@�!0��l�|�I�6�����@/h��t+/S�n��'�+��zآJR��7�%e�+����=T���)k:��"���T���{���^4eL�$�.�E�S�]��u����Ҟ��oEs��ć��}�*D���Ʈb���c�M.��7.�m8�&n��ב�,X���M���r�x�R��D��RUk��k)�OhŮ�GF�F�Xq#J鰓���'����jG��mw�$�q�$�l}�����RKO�,đ��&4��Dq(߭�y���G�l��_mT�S����eV�pD	����A} ��&������@����TW��H�E֙+�v�'��.u��s@�k�GJ\��V����\��.Kװ�|򵮃��c=�I4�8.��t�ۤOwӬY[$��!Ό��]|b
4�G^�`�uL��_�XD1��b�b"�������u䈻��W,����,���c��^0pQ�"-�<��G����*��3)z޳�T� ��p�U�M��'_���i��k�Ň�jק��d~���uJ
:]��k.hI��GA���)3�ȇ��:6�J]bV�3_IRS-�����P� SZ`3��lP.���	�h��R���m��wE��$�?��l.�7K��Ƅl�i�T�ό�0�WUO�S�m6�s-Jt���*��C��t/��&��	H�-��A����v���~j�%d��K��K;0�ȠJx��������Fʪ"��z��vzȪ��y
|�>N��]���<�&Bek{<��0�m9R��<;}FU�X���СK�c�Vv�G�@16*�0���~h�Up��*Y9�C�W�܍�K<�	�K�\φH�^�&�]���2�?4N���(��4�q�:jn	4NJ��K���ٚHK�h50��`��*�M���(�HS���ӞCT�L��d�%:��ݗ���w�� �*a�f��9�۫�4�$�X�빀���� N��Z���Q}���d_�CU9��f�i;�0fv%߃�X,drh1c����v��i�%3q>o���ԓ-mO瘷�GY2G�Kcݎ]���p9�ȍs�zi*����V�
�6v{���3^NMy�rY``}|�Z���7i��������z��N32���� �����hW�g����,� Q_�DC���Δgw?�zT�}~�Ļ�l5�q�l�c~�d�    :��z]�d��"K�N,��T�)Q�������}ϲ>��UTӲ�i�S��k�� L�t�B0pG8Y�d,�-Y-!���єt��j�,��B����=fIP�0��v\�N:eAa<&��18��1d20��K7��TG�ǐƎJ�\�,}�K����s�ບ������t��;�����}a��K�u	�?2��jn�ˍ���VY:c6��v�J;��"Gu4��O�cU��ʘ�����)�Qf�D#Q.��絮�K���(Rp�����\��Y�{sU%�Yf�w�;��	s@}�M�(P&��ǝ����̈�|�i��_����Q�RM��9S?4���J��+>�4t��~nH,���!� ]�́���6�X�8p��+��F��Ⱥ���q�����W��{7I�oH�E�Y�d�A��8�/H%T+��X�Ɖ�gF�h"�l	��T��K������ `D*)�-W���k'�ɧj��78q|��3w7�_�,H+�����x���dJ�è��wǙ��l[�)h)#�����5�G�d�PB��z
:�U��
{������q�;��d�����l]E�l_�ǾUF1q�]�ɫ�2^8I�1�z[S��!zU���]�CWE�ȸ��T�
&h�j�b��1
[b�5P$iϙ�F=2"� �W�BI��n���@�q���<5���)��*�ʂ�X��)�&?{>�$Lq�뇡����3i��)n<%4��Q+"����8`��P+��� ��1 �U+�g��n�4tJ} 	��* ���E���R�+ډ@6jU|�|3�K��o���i�S���!� ˉ�{� ��9�n�~�%,_��}��H�h�Oڔ��k<�O�0�s|�Uv�v�4�O��,F(�zQ�%��7�;�9�5"6�4���j��V�ml@��4˦���|�<UCD�zy��Q���t������S�+ꁟl�|�g��?�t��m�q��L6�~��|�@+�A���%�K�ǑG�/�_�4�5�-|͊v��c���5	/ ��:v�K����� ��Fw�8�3ﲇA�/�]�8-E�lzv�%�L�q���4�s?
��̝���?�C�MX��%}�@�՛��}���RM��I̙WTO������$��B��bH~��wjx��HC�<��ҧ�� z���Q7D��++>����A��nY91:��
��4D�ɫ�;�'*s~�!_�����Zš`q���ư�,���?��zx���|����*�����^���u_�����R��U�G�pf1N0m�de�^�J��� ���4�0pW�����"��y_�!\S�e��c/�z!Ƚ�� ����i��v��5��]f��o~��.ߵ���_6P��O3oQ"��f���޼-�����P#Ő�8�4[�c���i/�m�(�2�Xͫ}�$ �Ϯy~��~h`k�~K�ũ}��D����Dt5���x�n��"�
�7�i�����4�lԎ����z>�V������)jԂHд��/\�alt&�#<@����4����(�˿`���I��z���<����@�>�*�'I;�be�❙�1��RSƨK�m0s7��h�hK]��֟�c��Q����u�;�*��Kz0 ?K�9���S	z-!Z�1s�OCfփ/���4�7=�TMl7y���[�K�SƑ���&��6�_J�ʃP) ^��:���!���`��'��^�I0&��N��%'�T�� ���9lϑ��8��o��8P��g�����w*뛇>,����v�_�����u�M
����X�#'U�8{����5��է����6HWX��f4�}�:�@���m�;�+�:A��DB��')i6J#pB��<{S��c��L-<鷈?����a��P�K��9gt���rn���i�\pD�ɰ ���兕�.u�Ӗ��)J���oxO�aˉ6�֊�n͓b�t��1�h���A%Qx������A]F��Up
��Pڦ�.�ߩV���-RuaA����p8lLy��ll����Way���`G�Uڻ�c��ۅXe-K��/�F�HՎ���d[��0�l��D�h$�`��������	��+j(C~�9��SӦ�N�f\�x�
�O���/ͻ"F��������6=j��� �%���䄒q�4F���:�8 ��W�A�I)j�I�bU�����7`�{]��k�ȿ"�7����.PVtG#گ.H��\��-Bv�W��fx{��2����> B�ލ�ux�"�WD�g���y[[*U����C����TI�`W䂅ð|���I����<u/�No}8�9�`
 �޷��{2j�]��[�n�:��[B��D9+ӵ�yq�84�%�aa��b�ֽV�i�p�7	�.o���{䒺o0"���`�	��[�'��pa��k��1G�T3�*㮹��T�j��n��O�x�0��'�T1�K[�}�ܲx�G��S�:�Ԑ%���f��O�Y�Tb�����U��Z�ʼ%2,m�^�ϔ�!�XB��P _��F*��2�' i�o׵�������y����lk���8r�S]�)U"0gk��Z �m׺���j~d���Y[n�^�ڲ(�ףgZ�cmI@$8wЇ/n�i�qA'��e]h�­���`нm�����Ly?�(�*���tt���'��ɐج*���=wġ���uW �X����'!}�qP�6n��Pߠ��m_���(�͜��M��&m�{���sQ{�I�G����A'�������=`��$������V��,7�7E*l�$`O�^���,�+�`��N[n��@ҳ��|��R�i)[!��naO39��+��T 1��q��Ae�CsLK��M���t]6�-�8��~"�����͒�~�mueV��������f������� �I�`鶇+��lMkxXI���d�hg��X/�;��=`>�H��/[ᎄ1�e,*�0�0��(��)^��e���K�/<r�'E����������]�������b�ST����+؟Y�
���p��Ah������N��ۮ�Hx�b+����\ؿs^д�dvE�"����Qo����VҮ��~# ��EG'�z�	�ˮk,�M�i�=�9_W������7Aؒ�-�md�����V�����Q������q����Я;����K�^���c6�z�|H��J\�����Q��1f���o�ƫ�5o���:�ͩ�d1c�H�H�R�H�;fp�f͙��]캠�{˿�2�����9������n~`n�8��������~���� #ЫW2CFh '��_S=�I�kR�c4/�E�U��I'"{&����+5�u��QTK螵��$��^��g�2gW�4JppQ��`�\Ď�@�a�E����PQ���)@Q� �B���-g�T܌� ,��9�z��������q��P�����cYXfHH&�Q���<�D��V����F����G����`1��^wb���Y��o�U�����?���[���[��J��>���9��[��+��hYI ���f	��܎�?��3|2'�#��馃[O+��Gf�	q�_/����� ܪ�_pu����s;=�Lo����΅\S��v��?�EA"�	��!mwo��䩲��t:�
,\<�8�<��jv�p`
���m�1\�u7lQ�2��p�V�p��G+�9�.�Z��n��g2���z=1�G��bܵ�.=��:+��g�:6�H{�X)A�e;WH��w��b��@�������?����f�G2���4����9fٺP��[�b����;�'���x����ZC�Z���-���Hg�4�����&�źZ�;�n�����ȝHrF�ɊZ���q4O�l�B������C�psC��7���g�q�=x�@��W4�b3�m���6A]C�T̎���C�Kh�zq�	K/    [�IER�S/�A�/��M����Czhx'���Ƹ^��g!(d�v���n{��.I��9�����Ϭ�jj5H������:V$eu�5�7�Џ[��W��z��°��D�m� �KH�2n��f?D�XS-�?^��e$�Q��\Οᩗ�j��]�y9�S.]W�7hjS��	�QΒV��G�-c��}�z��eg/
6�bT��S�v��"J(��H�o��Z
���C-����nOQ�]��[��XC����T.�ۋ�r-��'�%�o�[~��.g��{%�����۹e}�~Μ �R9�.�oµ�1��KLY+옲���z���I��Q����V$��u,a��`���aUB�jf$m;�Hkɰ��n2 ?�B�9��U�����ũ�d׼��_���s�{���]�M���m���ɋ{����o��t�L�NH��$����	�d�;�jQ�l�à�8�a�å4
ւ����싙������u�B,����d�8P�f�\�$!L��P��֫e�\�C����ࡴ��[[/��A}u�N��YG�H�ewX���|��q9]���d������"��̓V��O���iцdQ��Nִ�Kϸ|��S[�
&q+���0�p.2�f;	Sx�v�f������	��~�yO0W꾿���`}
�Nit穹ejY�ʸVw�:Zs+E~n�3�aI�_+�g`r|��������%�b���[<~��؂�ћ� ��h�fX��d�F�=��4�q�^�ĜsM�U��@�(6�LOBzi,�Z�Sy����xp�i&���VW����Ϥ��k��^��q| =R�ԝ$�L]�|�O+X��Vh�g�j�ҥL7���hI�^k��`�7�HR�����H
>�:�lR�)�O���H�KrQ�����i
�~��H �2��M��n�G�~u��J�X0/��TG��o�M��G����x2���}z�Om�x�8j���q|^�ǟ����#��:l������>fs-���MO��p������/�����B���fT���p�7!��L�u����x0L?�<�H���I����!���`}����_nS�5)�u����v��j�WWY��	9���=��`���Q���u���'`���R���=��I4&��5��<B��F����NF��G$��:k�Pz�
pz{n*�OYWKN��n]XF^�O�st���E����JN�����̭�F��!�<p��a<��#7�}������/�0.<I�m�L9��&��'�ٳ�#aɒ%�Ӎ����N��� +��bu����a����sz:��!X���=Vp����l����$Y_��z�'��^���c��5U-;d��� `)��e�fx���_`=-�������$nO��/<8��@ᡮtԂ�N�3aŃ +�U\��
�PaIH�Co�S�L�������51�݀��[�"���=�YT�i���R����g�s#��@��اb�3��+������@*�X@���q4���$nOwsLG&|l���n"�P@���M����i|vj����m&�����4S��y�'��gSt��m��p:ӡ�j7M�*�@�u�8��S|ֆY�(�@� ��z2���(u>b.�4|�im�	י^��HΡ��t��͵Ԇ�YZä�M�W,��a�v�8�#˫x�e�+��§�?=��-���wL��I��?���Ht�b��#~^~��+j������� |�o#�TQyEL��`��������W��j�_��Ѓ��u����s,��&��q�n��o��u��k!�Ի�]��01N��0z��a��n`5I{Л�1�\�^����+b�xV�)n�);#]b�z~k�X��S�n#�$r��y�u���X�|�`z���&[����$_UVO�A�4"k��ʯ޽R����:�f���an_2��%�P���2S�u�[�,QE��9O�p{��ܵ��hA ����O�r�q�e�X%J��9�zS�������^��I\X�éYON�ew3l�$��T+��t�=���"�c����H7ܒ>�K���q(���;�O����,�g-�S����	���r.u��X�
����_�؛R�	-UHE�|�O��gVB�SCsKE��_BwWp5�A���{���þ:V�{L��zRL
����
,#��K�����2[��}w������ÇL�Җ*��Pw��	�'�>ﮂ�c�������W��Y�K6���s��pP,{��-��KMmƗ7����ѫ`�.h�/6�����x�������	�g���p��ۿl��
��O�[��`�.���ln:�;j����@S'���!\[���`�{3K� t���,1��;��O�)�y���$m�df.c��z���(�?�&��#K\�����|:s?N0��]��j��73̲&�bԧ�V�-�W�����o�� 5�'T���x
�A3���O:�.�7�0 �Hd�a�AM�WБӫ4�3�����vH0^�Q,x�	���ƫՓA���f氲y�A���Equ�U9�̆�k��Գ�G����v�^��������`��$ؤaI vo�l��~�(*Y��b�����N~�%��B�����c��$6a��S��]S�����|��#A���K6��&jT�a!����gq;	�����mp�5Uv����Z�~��j}=8��Q�v=x�F��Pŉ}��6�2zn�K��*6i	��Պ3u6�#�f0����J��e���Ö�*#C�VR��O��6���E��[��RG�����W��ԯ���׊xga��AWS�HCp�8�k9%�;p����<��[�{H3�� ��j5ll�'��I������҃ v��n7s���j=X��"��FR/��l��j\��PK[}?Q�k9:�]�Q��'����ū5'��1���n$�zQ����LoD�[�H��A�zC����nu�~��)��3�\@0}�%�P��m�x>=�4���
�~�Nd��R`:��m�#���f˧@�`G���KO�n�N��B�C�*��a�^���m[8^p�a=[�qǰ�k�\�{�rg�d�,�2�0����T��g���4�Q̣�v� �+�6ʚ��b��(#Y�+�ԁ�ݶQ��W.���ȉ����
�!J'{d:[���?�VZ+((��"-t���&p;Tj�	�w����B7#m�_�$����?K@1�5��H��4ƹU�b��^W;���qB�U��>��(��P� <���C<I7h�������X����R>�
�	��}��4����8
��ډD��/���~%��".R���z�fTM}���s_�#tY�������N�W1��r?$BЊ�Dzݩm�8�1����H$���֓��c�;B��`8��trqO8�L]���P��J�D�u]��Z,q����*�}���x`A�n���$;�������4�md�85�u�<,����Hmm�G�O5o�&�l�R��[-𤦏ו�����X����$v�{����ǅ_V��:?�{&2�Ɵ`�Qq-�բI ,�w��LoR':�����bi�������_���3��[j]`�8@��];��~J��I�bT����q��S:�7�����\�^h&���L�6fw6�0eJ�n�R&����M����np{�ԋ�F	�m[+�츍b�tcG'�X��-��I,�ki�k�B�z�ҏ���w��c}��ZsF]��Ʉ��g#�1�6༯Y�[��ٚ���qd��IGǎ��.��R�lNJrYk~\k��ݚ�qߌ�M������Q��G�����&�t�cѴ��t-���`�C��n�k#o�ֲͅ�mT�:t��Y�;fC륍�3I/�W{��Qin�i��X�J˕�Ѥ��u���3�xN)�=n�o���Mp(��8��yP�q����ۭF�o��6>���a.�k�^�9\��Z�2�Ы���NI��c縑[�ú�k�q    |3�FP��Yh}3�­�{�d�ٽg�1�m.L�[��g����Z2�Z�1���5�`�s�7!����i���W>�e���Z�IOo�r(,'�m�&>�LO����v��
SQf�ʘ_˽�	W~lk���.���=~e�d	�㸰q�To+Vp�4���'��*����xl�\�xl�qoʷ#U?����b�.���O�7���+$����@:���+r�5�sa7����7�ߘ �|��?�����{;�'���z���S����!OLτG�xAQ<����N<�F_�d��(�k /<�{=�?�y~�[����S�����"�[p�,l������*�W�EG��^S?�5�4��-75	� ���`q/�. ���) ����k��F$�4�S���/׌��Q�����q2Eш�/fbwёJt�W�j��h�J\?�M�k��z��a�ë�X�C]�e�=E��-G�]f��ZS	�����3�Ĉ`���_qu�{�Ց,BV����)3ǒ#����~<]1�i�c�d�qt-�{���FVw�[�E�U���ܱ�	2R�j��h����F4�b�,b-�w,R+�J�*�>��Ґ8嵒z��1�S�1���o�!��(��� �%"�evH�*m�*^�T/�q��'�$|�`1����N�e/���+j�fl�8�)��z��,%�Z]=|��S|�#r:�UhQ�n�<��)2�?��z��P���{��s��,qUkBl7�����"z���^T+��i��ق�I�B��)�i!�H�e_`��p���4��J	��.�� u��V��i	Q���W=�k^��������"H�PP��7EѕR�^WO�Z+�Z������<�ͫqAa~*
�qK�,�&-�I����zC=�_�4��zʼڧ��;�@>��� �X��T?�=,<4L��?�z; <��AO׺�K)�.��bƴN�qa��=H���_�]x8�[8!�]7��go��)�Z�L%�`�VB�Z��fÖ�5��.�O���c�\08T�o�k��Ԅ~�[}��Jm*
+k�0з��_����i����x඙G�%jj.	���[��ô��u�>�{tAs�M����o�o��Bs�o���i�7ӡ�w�h�����vlk����_�i�F�Nr�8Z�'�*̈*��Y�c����|	��i]ۼ׺�D7v_��aa�O�j��u�M�^s9T6��#�ߌZ1�뛌r�%�T�u��O�q�ay�W�O������z�+�V�xߓ������	򩀗�_VW'�8�3��ɘG�#�[)���V�(҉�����@X�8vqҎ_�&:�K�c3�����$_��l0�!

?�c��_�:��Ho��*S�a4��. �#�7t����y�y�`��B������k��yͼ&Ѕ�����N^�p�$
s�!�Hطɐ��e�[G{_`f�E��F�[�*���k*���)��4&-S�֗ޅWVw�5�d�e��׬��3��۲"�����l���ޭ@�5ޭ���	A��6B�S�~	^���(��Ͳ9���aw]?��2�tZ��_�:+F��� ��@����V��&8tA�Y��T�� ��R�5�0���Y,����NЕ����/@���q����^�_f[�.(Q}sx8M��Ք9IF���$XVK�A�����h�?���'�H�rY��G�>�a���ZǷm�c��@��wf:Tє�]x�M��6�~��%^�#�[�ؚz�����_/kZ@P%�]�8�Oĝy�759��~���<���S����b��w?�g�#W6���[�oћT��cf�_���i? /�,ü�pr�}�߿m��ڂ)J�����M�T)g�K��Q;��sN�Ȫ�,�a��*e6,�U&k�3�3Z#���5*�b���q�o�z��4KU2�_�?��yM:��h��13��+�A~����v�Qt�@	cI +%,���q�H��p���ִ��K��л$���3B�N�v�a	k�ulIǼ���\M�tE Z�1�萢[�"aB�f����G���=�����)��QC�_�Ļ�O5�`��v;��RL?Gǔ�ܣ�QB�\��F;� q���+���r�^�����H��d�l�wg9�ԍ%;�Y����|��n�������(�|� Q����L~ϺYƁ:�XQ��E ���Os5>��B�bat#yg����f�Hr*+��O��4+d^o�HcVnۍ282����JY�K|�ۡ2u��/~oB諸�?iV*ؠa#ވ���pL�怐mC�\HU���Q��y����
صRS/��4Lg�!��J�~��yd$|����A+�C?�ĞPq,�ܗ|���6�>���Pb���hs���SU-I #�:b ��[l1aT	���y�#���;yH�	p�E5ߍ#8P��o�Kއ�t�*�cv��|�5ռ@$��7ҝT[�G�������LP-cvC[�m�?x�
�=�t�ڎ)0�+��?aS�'��u��dӿ��l�إ�>a.
4j���k���m���tۦRi@�+P2U�8�^�]�8��m�9	_���P�ײ����:5b��s��jk��`�ƣX�0T��.�C��#�t�"����>� GW�Č5P�����.�Je�x�5c�@�$A��k책ɽk	��N*��w�m�8��{�k'I��?+��	���n���q�ɢv�������R2�$WƗ@W� >�V��l�4�+3��oՑw,:ҹDM=
�x�X��^QЈ��#	|���^�~�	/N�a�Y��K�wT�d�8�=��_��N���Q���a�Y��q.A��s;W0����8�ǩ����4���[F����E�0i�i��~ꌠZ����y���v~L�H��s��������+��G�z^3�%����qM�����xɞlv�����l���lDp�e�D�x�ߟ�7����J��u��O�`�4�c⏄�HBl섛|�[�^p�-��\�s�h;p=c��yV.�e��T�q��^S�c�7��Kr���bڊ�-'�.G����%��ǧ�8��뙜y�\>��-'�\�̗���k�{J�d�t=�x�@��aLY�=Ţ��@��R�la6�Y�-�fL�[3�y4�����-��\�����䥎���0_8*����I>���F ���|���y���x�=�ݾnO;$�5�3sT�^k��@�_XN�h�?M���Р�2�͛�O�`ӚOq.�T�p��i��LW]s;Gk<x��5�dYA��ὑ�����Δ>(�_���8�A�z�O]�o) D����QQ��`�*2um�����nTՊߋ��D��;Y{��N���a����@��Yo�Es)�Js���@}��n0�M����`�C��R9���r5�ᖛM(�vaj)p�e��$m����k	N�ӳ��	Z=h�s��FWG]���H��pZ"��X�
��E�4�{e�f�b[	��g�Up�EϏ��yz��d�'s"���}��î���5��FhX����j� �ҭ4t��E�:E�lV'Ԉ��0�w���M��u��m�&���k�(a���H.�p�I�E��2/��&�Ρ�fVNL���6�@[7�����G6T���C��ak4�D��[6P�ꤖ��� K�bQ=�3�-ݶ���L�n��_h�g�B�V 	ݞ�����z����Et����z8l�fR�=�/\Wœ/�fW��&���'�.�M����_���i�t��J�9`Z�2ܐ5ܑ�ҕ�(�b]�&����Pw��ܔvS#^4�X�j�܈��Uf� R��c�1�?��ö��e��E��g�fy��FC���O�R�h�����	���.�-���5�.8Hg{9�F�H=?�:�Ma��d{��1�ݞ�+�,�q�c����Dm�B�6�Uv�A�B��4͍V�#����}�K�������i{>,Հ��� c�=T�u�`    7H]������2�s����hC����� �p����]ٞ���j%�D��S��G�-��'��A����y<���u� ����m��7�Mb��m��P@�%��N���{,5���Bv@�j�6+�2�h�sӐiR�m��heu�?��1"ohZ�j8#�W��gNnOr��Z�C��f�/�-��;7
�y�yWF-\ߓ�NCTX�[~�%d��\<4�gk��F�ԃˋv����O��?.N�~�e�K��� ��.��*�RT��͟߇���m��λ��u<a��rBT�yg���`{��ę�3��@�Q�N ����&�?���iF?E���� �.�;~+���p����q�����fc��]����8Kz�tH�}^}�&B<8)k\�Ʈ��[����ս�y[��\�OԶ���e%^`��w��d��V%�W���
��kݢ���d��1�1����驻4��pY�m�@7 v�	]S�NF������[q���5�
�)@|�?l-��M߁����c�*	sVK������4��B�K��Zf$G3+�F;��%�Irh�/�d�	I��KĴZQ�@1nϐvIa�m8͸�X�B�����p�>"��<�Ďժ�篃P�G���':�m݊õ|��Ae��� �����E(�&�%k� ������u�C8>�EG��"F��9%u��'n�����>� ��5��(�陌�I0X	�}��O먹�2sݱ��)�m�j�.�O?��d"y��&0����d�pV�\^�m!y<����e���g�o�!9 ���ǖ?�P�|�nm`�?�mY"�5���7��w}��} ��GzVDǚ�Ɂ[�I�����$̏E0����wC5�J|�t�`�� �)V��]���R��6激���Fx��%R_x&��|KF�S����HsUS&����a���Hβ^�<��Q:ڮ��>qo�
�=��H|	3��cfV�W�u�_o_~����Ѧ�R�?����| IB֫j.m��,�9�辙����:�E���)��+���R�T9 �ժ���� ��nO���LTmOM݀�Z��u�P�i�����O�����P'��B�ɟ]8�g�|��Ɔ����zȖ߼� S�U��%V ߺ����Sj�T��^)�G~�S#�gUg�13�w�_�|y��zoͥ#�ϸ؊Z����m�>g�(���T��7c���H8�8��"ߍZ�P��Hw���w��$��!��5#�z��1��Tݭ;@��+L����l�?����,X�]��l#�}��-��9�k����GRx_�/�MlJ���(c�L��#f�����ܖ�*�H؞ƃ��߿5���d�xZᩄ5#�[¶Nn��P���5�^�]:��d:r>��̖�%ؑ.����P�5ےD#!�.X�����o���,Ϯ��u�mH�@,�;�y�-���E�^�U6l�	+	�H����摏+�W�M#��N��Z4�]oL��$z�Y�`מEU�H64 96o�H�#��m°;�y� 4GR���[������D�#�����F�Q�r���K��b���,w�l`�pη�(�"R��L��7~���ۼDܚcs��`p���v���'LoL���o9�s�;>��D��Pw�����V�uJ5��T5��'a7�ݰ�$��S��%�@W��8t�XD�U�����߮�U��^�^RO�k�Ը���`���dP�6�u���c�]?��ا�{$������fAA��ؿ�wLȶ�nd����,�Vj�W�kX5��3���Пz��� 8��/C\���������5U�bw�p�+Z���j����ȵ�z'va��6�����w8��~���yo	���w��w�Z�=��ƀ�j+���B�^�k;� �"֓��y��:{ th�m����e�0��`�4�ӆCs�1?
@���O)�E�"��\0�a�c��by�]�C�X���l�!� �ȕ��p�^/��(�&��$�?Y�V՟rR�w�e����u
�{E��w-0�{(�DzI�-5�N�r�m��3I�tS�^��;��]}�LG�pב�u~�s�r�9jǩS��PM��F	�L�BLg�8��Ċ;Lx��K�Y��D�����Z׏�v62�:������	%Q_e,�<s똿s�3��a+�����N\��~���%����Rp�ۗ��xQ���\]����o�����_iJ�.+	]<u�[h��d
^ĜdA�o�_S<�#��E��L����mg�?�#l�[��r�W�.�"���Ol��[a��F/�2 ;�$ݎS;YN��a�������hl�N�-2V��Q����`��A8t����h~[Su�
 �+�������h��!Tnp0�8�����W'T����A����h��z��Ȗq�;��~�o��ܡ�594��i!�U����4���6�ʍ�P��sؾ���u���w.�&�H'�S���9_ۼ'4�`)`ے�ﻕ<&�xp�G�̪%�r�n8m�X��ku	�#'��;�۹��	�z]�
��D����	~k�y�qp/RU�a'���3]��{�F��!�^J��`�.�k�C�%x�K��!�I'���ş�>r�QB��&��5��Go4y�Î� [sA�2������U�|�B��U����l�����<m'�M��3�� [�i����I*0Co���X�����V��Z%�L��.�;π����Y�`�VV�t���=_�ҘA��6�Pm�o��7nMrKL*�ZU-�����ۉ�B��d�&R�E+-nTJ��Z�7�0t�S��[Z��X��K5lv�A�\��0�h�����fs���o�~�|%Mg͟�,�Ǜ�~?�����fD]}J5��ߒ:�m	�)�6i\��5B/Ix�^T��S����&�Ȭc�l��\F�/��z����+��f��ܘ�t���ؼDw��)��\P9�Wԃ�8?>��ʥ	��Ĳԫ��&��ȹ�.n�Of��e)�F˩���)�y��=F��EՄ^L��ey�����E��D������큃5l��ɤǊ������?z�N}�L���n�[�D�M5��ng�g N�	��� P����V�t�p>"��
���O�x�v̓�lx@P���n,�\��Ѻv�;������$�֠ݽXďN+��q�Z�ëb-_'��E5�YT�΍����ɫ�|,�4�b�<ܲ>�$���?�%�C.��gٷ�l��nj+\ߒb:��}q�`2E��ӑһ/�Ħ��b���|��#BH�Р�k~8���u%�a�9J�H��i���r�qdH���;�ժ����c?1�?4����{kT��CݎCg��L��4�r��z!=���|0����?�	t���z�ӕ�FX7�#�lل�$\e��=Q1M�QǛ�5��m.x013����ZL;.�N���E�ݔ�pj��琇D:�.<�x��3k^�8/_A�oimn�"9+���Eu��a��u;ū�_��	�9�e��̔������\�!<G����Ǘ6���P���һ��،u-��X� 9f
�[34�m����:j���-�IiKLB��C?p�c'nsMl-����˟���wz�;t�|[ʴ���,%��H�q˹��8+��D]�g�X��
�I�]h��U?�������C��WX�}H�={��<�
>��V�JC�p���$���Z�r�hZv;U�X���v��Kx����y�=�]���/���H�{1M�8�k��q�}�U�+�C汁מ-�uE�� �	��x焯m����e�v��%�u�[��c���>f{�9�%�8�-ŉ��='�����	��.�0��E$�Q��3���s�{���E�+a�I����S���+�~1w�:��U���uJE����c?rF�Y��D����KA�:����@i��d���/�ƒN�z ���׾1ʜK� ަ���4��+ڈ���f���UE���廩ڛ    {�c���akf�^;����w���cv`�-X¦��+�����,��[��f���������TԜD7��)��`8^G^q�;=�DH����i~��&�^Һ�3ꅿ�W�B��j[�;�(��A�|tt�f�c�N7��l ,2��#Ř��k{Ũ�dpӵ-��L\��`��s╳}��Lbr�x݁Y�ݰ:A+$������C~H���I'j5C�}�|J!�E!C&@����f W�q_n|�	�	�.h��u�zߏ���{-��^m7�NToD�nd!�{����X;Qj������&k]|ݲO����W�	XD���.D6���(�A�%\[������R ��ޠ�Aڡ���D�	\R�:�ޞ�{�^|P��E���s���߱���ƕa�
HE=l��l��%��Ж�r�b�^L��?`
���y'65�^�ݗ`�2��z����Ul/N��ԙ�SV�Au[0�D�໵5uV ~G��WN�z���D�u:�@����)�E��!����k�pjo����8�	$�r��RU`��,i:����ܹ��m\�k�Jޓ*��K�1e5۞z����сK΢Z�F�/_|��?�%#��ǿ���֧R���iF��
������=��?%�EѦ��ND`�Ā���-y��$@����n��J���A2Q�-Y���To���sV������SO���+��K�B�O�:�|��@���P�'_ʰG5p�K�,�s2����Yj��w�����)�c����?����	]Q������V�]�Z��{|Ϗ:��*����M�=�zGu���q;+Q��')�suz���+A{I��ZM=���X �r܋�����B���� ��̓t/YW�qKoMA�Z��E��)z�q�̂n_��<S��e��8��qr�x I*��`�C`9��6�\��	�L�"	j�9��N�����Ӿܭ����$����G��:�_'+��X���z�{|}�	brg8w����7;᱾i���%�ǹ��������{�;�^"��������,�����+�?�e��ל�԰���&2q*���a��W��:�/��c�7��G�)옩>�1Q�j\�D!�Y��vXA�"=qD�j��q�bAƹQ�f,�WUO�Hd�+����#3#*���Gps���J�i��C�@��6��V��D֌�4\������=�8T^E}�I�*k\��EH�|k�xw"�S�0@m8�rew�v�P��j�+�PQu_�7��x����i�gml	�B��P�E<L%8�9
���/��؁��>N��V�״�]V#�Q���A�oa���M)b��J��Q�ƛ�C��C�n&��HRi��&}���։^»�A��r����)�XkҜp�o��,����"(�a�Nׯͻ�F�*���H)��A���\[��]�p
�[t���8��2�q�������G�F�PW�w�NT���`�#�cS/q8b�l��I��q�퇆�+=d���+�I��oE��&�+ڨ�˚��8���IJ��^+DVI���%�ݚ�8������� ��#o�d^�&)���$Q�(T�(���ʤ(6w7b#6b&v�ף�'6-7G�l��B�?P��K6�9��* ��F��mQ<�2�ܯ��X��%��d�5%���d��W�P_^�0T�����p[�v�â;x�u�vE,����­k���,?�������;���i8FA�;�0��'"��̿ ��N����PI���������cmb�#v��D	k�ӿ(���q�U��M@�v^ʑ���]:ؕ!�l���KT��bY��x�{����?%�tZ�=\gP[l���}�x��܎.)�#�����Tݬ������,F*eҁ�t�q�	�. E�/qɺ�	��o������yt��[jX%�W��=��½B����V�V `��΃y<�^l��t��*w�L�S�|�vOXF>4��PS�=�Ϳ��'}�a��.�|,B�g[aо��3���/0gB�o�ht�i�/�F�g��N �eN��+{�L;���i���	^�uQG=e�(���{{��P&]�8E'X�K6���̰N@qB�1��j�d	ʥ�#A]H�nܹ)T�b���y��d(&�j��?��f�t���á�U_+p�Ͷ�CN�ѫ��J��0j"Ѐ�#��p� �X���^�l������4��j@����+Qi#����Dɸ 0s��_�}�����t�q�pFI M:#����4�=�I��C�T���u���UZ�u2���)e�̱��J;[�)��~�%\�0(R�iV�l��yՊQ�xEe����֡�N��̶�I@��˩&�X�C����pLݘ��V9tRU�����_���>ua�a�y�z�x�GA4LA�@b���x������b�A^���|���ג{��f'x`Ũ@�zW����Y�L'v����{���#��U�X{�L���o4E�0��,�N~���
 8�F�ϛ�n��*b�BP�5T�dA��5�z�"
�@���mp���{]�ȧ�6G9�,���+A �(u��\��c���`�jҁ��D�:� ��B9
|��;�R����1��ďu ���E� K�Q�5�a��*@L��P����*Nv��Z0lW��`���6xOՆ�t������ٙ/���o��c{�!']i�42�I`9n!���I���_��	��X{����Z�ө�+��Ϋy�`B�a�~�]:�w��7��h�鰑Ĩ�qo)��̵z�Ԭ�h�����QNѥk�0ͷ�(���q����(��5�:���\wd�,�2�H[�2q��w��7�Y��c9ԬU�� Yv,�^�~7��N,ޑqg��M�F'�J�"G�$.�\��pGJa�fL�Ylfq�C�u�{��(Wc��x�4O��R��}�(=�$�W�9E$��2����l�ςO$����?���������͉@���0Y����%�-���R�#�{J��Uh�w�Q��O8.���y��~�@9!�෮�_��N/R�|�MN��kT`�<��V�0���:#��5���`7�	cy8�É%:���	L4<��G��Q���),���a��:#>R�ЏD�]�Xj�QW@� �@���8�Fc�ƍ>T�W��,�r�:�ǉ����I�YbY�Raa�5Nv�<�N�fH8NY�-�๣��G�����;�e�(?:�vк-\�b΋��x�E��W_ԩ.|��D���C�*����IW�=��#�~~:oP�@y�>$��7z+5d�֜R�`�,_�Q��"���F�����hP����d!�u��H�#ܒ�u-
ȳs�b���C?ރD'�?�z=ņ�����4��f<��[sZ�����Rv�+Yn�ќ*��*}'����bx�,Jj���_IyMLt�A=[��pAl��3�JQw��]��[��7 O�*���ɾ����O�$�ok^!N���Yq4����,���E�-S_�7�,�퍟q޸US�~{٥�X� �lՕ�3F�\�����[sFI6l��هN����#���5{��{A�R�O����9o��4��/e�#Ω&��,&g���׆6��w��dڴ�i�s�=z�,�!z���9���W���-(�9��G�z�۟w�{�in~)V~�t�)�ߜ3�E�a�h"��{���"==��0gp�P(S2�S����QNͬ��J�j��*�p�bN_�P��)�ߕ�3&\� g0�_2�.ٜ�
�Vϰ�ƃ��L��X����w��)�Y��6|i��Ru��s��~fr�oЄ$�+3	���$�Kz��{2�]�z��k��"ah��!He](%r٘O�� IKh�O6�q��Ų�V9@�B������ V�}�r�ǘ�)MZ���,�Y�Hp*�9³f)���SX�� *����Q��>*��jeO�Qw�Hl����y���KJa�Ԟ?W���a��ֆ��|A)dzh��>` �>ys��j�\W�C߷���#�k2ʡ�oyC3C��9���|�o .q�    +6��j���1��&H�S�S�&��� �1���zKv���a�הh�B&��Fo��_����W*ʝ8�A H`��<`�O�
�RX�^"�O'��Q0�;������ ��d]�֌o�V*	К����^���ʸ�W����p�3�ē��	�p�)�	����Q���L]���)H�ւ�~���L�B��B�B������`6QJ(�	4��� ��z{� [�)-�~����>�Nr��i��N�m��G�t��C%0�x�?�j�� U�b#�"_G]�2�?̺��	�"�C	?t����lSYNxU�؏��Qx ᙱ��E��=�5����#o��{��I�P�H	7�_d�a��s��\(*1�K��D�&����Kc�h�8�A��E��+�.(<���}7NH3>�.�ɽ@K��p�ۄ�VS�`6|a�����4u�j	�2)g|a��q�nhVD�p^����&O��%���ꑻ�C�H0����:O���ԏ��yn��K�+?]�S����(q��U�BÈ�V���X��8J6�I�Q:
��Uf��/f4��P��?a#�_��q�̓"����C4�R�7�`�����I*N��i��8�$�s6-hƾ�E֝�����{��eM�8��ՑMY:6��0N���h��I�v���^S�h3�]��t�HGL�\:Bc��9�@¼s(�4��՟hB���]�J���6;یv�1	v�,F�.�g4./� k��TE<�{q4�n��V����	�g!�~��(�nt
N^`���aG��"%���I����B�t�K��Lgf ���ĉتON��I���v�8a��#ʴ�MQ�IN�J*O�ݸ!�w��0j��ͼ�J3Co�nɬ`]e��#(x#��I���?�V��x���(.m�-t�k7ϵ�rN��`'R����P�2�-�=M�V��VA��I�P�i�8<R��/㤯{tb�i}��APD"���3}��v�)������sYZ���G��&�F��u+�l��r���(��!G�ԛb=N�!�TjL@a=�.�#'8�@Ȏ��{�Ê5#q�z[<�%չ������R�� �>�4U?�H�FEl��-f��S��nq��$ְ��È������_��a�R	R��;,)��dօ0K�j˱8��v0�Rt�´nLt¬�5م4����)����kN��w�Gk-U��2�-@�%����b-����Vz�^�Lcv�tH뜐��N$Pl���f��im<r�l��[�R�I��"iآ�.�MX|����~/uM�[���/�%̜�aWt�ʤ��`���6�q�����x�/qI� �-��]�v�c�k���%�n���0B����+�0�䁬m�NT��QXp�d�Z׆84֬���$ٕѿ����?��&��*���,�F9���#��R:����y��X7�[i��z�t��;��`��E�>�E�-����Y�W�K�ޛ��@n�����`���q�a��G�	ت()98 �y�t���A��7�L�0�˺���R�S]qK`�=�N�0�V)u�* �>��ڪ�Ǌ,l�l
B�7�^���� ��^��9:�rdq��4�þ�Eɉ*GN�L��)�3�[��Vw'e�&��ۿ��ef��݆���3Yd(��ѝcd���%<blW�B�{�3�F��|?�Y�����A��}g9�����nH�~nR�ir �A��g&�_e!��qp���9�n�DP�JvGI��z��̤њ��;Z�B�w�X'���hw[`���&�A�v��͢,�iQ�R���4]s$�@�ڂZ��Y���,q+Wk�A�l�pծ;����9m�"�3v8bS�����a��ܧZt�J��dA��#ه���oJ:�yE��1z��E��g���F�_2����I�A���ȵTiJ7UMR2��C)	J�YD�Oø�:8��_$��38�:]���!�HI���Q�	jUW�ZS�.��i1���S���ԹR�f�8����\�8��y�ᨡ�r؞�� .��/|�
�È-���f=��;��	N��l=�
���¿��8Ay�����.~?����L�i�wԫ4�2#�UW�<�@/4K�['��G�U�s����z�S'y���?`�?���щ��C��w���O���=0��#�X�4��������Bx�F�� z�A��[���*8���+�#]��~�Q�wJU�Uǂ9'�v������x8]#�\W>�j��J��)i� 1lg�]�$!�m�
���މ�����Od���UјTN'P�\ulmu"��l��p�tֈ.����W���4�n�ɗ~�����[?�Pp�&���FMI�<��_}��f<6#V���Y��'�]�E���W���) pF[�Q����ʗ�lx����!5To�ǆ��s�Ǎ��&����DAJ]�G����XU^YۺPmY0NtxM�E�ps�,o��5Fw��zP�A�UM͡�ؐ�!�X:�e��σ�ߍ�����G����qߘ2l�NJ,(�SJ�
5�)~>ft[+�z]<���d����qi����R^a��H�!n�b�۟GN4c{�Wt9�5�b��(�Z��zŨ��{�J��=�#��д�K��3D�ȑʞ2��-�w��})��Cg{<�(˨��b��玟d�x��`_�@���9IMy����#߅DG=0�HQ?XK�(��]vB+u�~h�mR�	�Fg�u�o 
�J'��c�eD�CP� %��J�������P		7]���%��b5������Q�&]=,S�AΖC$ �h�t�-��^���٫	،��z�MG��uYtg��8J�,���9������v�����T2��ض�8�(��{�^�V�	��b@ܳ/�s�����u^���A<�ʥ:�/Ө�ۿgvi#���`_��q�k*Z��w���Ϋ����O �0�#����9��5��U��/�dW@r�C�4�i]D/��)�!֝�ji���c{�E������>�Jǿ�X9��zj#�����������?�ev�(�e����:��qlz8��V�]�"`��"I�����)���G�_$���0�q� �'C��<.�@oT��ns�%��w�M�*bf�l(Q��w�KV"Q�^�&`�l7 Ns�Гg��#�:�$u�Ϝ��sV���A��s��8��y���)��#y�$=%����A�*�lz�a��w��w��_$���CA���R�D3?D����.�P�&��k9؏C��V5�;����,��Y�8S����\�$�w�5%�}%׬��&�kK��9׃�B�jizc��7�?�7�D�aBhx4J�ڍ~�P9���&���������?t�S�����m� V�t��T�d��:�[Y��l�P��(��LĹ�#�,�S&	�ZdH�r�q=��l��r���NC�F`R��ɉdΛ�ʙ-�p�8�^�c�;��U�d1i��taPsh�U .G�'��S*��W�)嫷<(MQ߉�E��E:1'&ݪ�����#��I�z�&/ʷ4x)斒M��xj,KC�C�9Ž�V#�Z=j��g���D�Tv���cW��\�>f���Ş-,0��m����g�P���]t�8h�(��(��#��e��#(�qK�w�9_d2�����
�Т��Ai0�Y�E���� ��t>~(N��d6i�C/PB�H���``N��Y/���� ��a,�7:K}�)(�#tqZU?I㯹z��L] F�pZ���x����m��@X��Q��u��k7�Z(�}�3�T�4h�1
9� �vK<�\��l�<�:���Ɣf����8e��r�.ԩ#�f�I�'�J&�!�)�^	�0�2~af4��b�{u�f�n�
�����-Ȅ8�v�Q���imXX���;�k7�V��E�dm�cB���-
�!Ne�Â01e�
�o�#��Ʊ�BL�n{D'�v�d���i�\q��L�rf ��s�$Nl�.�;
������o�N�Mf;1W�>V    ��rk/�h����uZ{��h<�Sru��Rk�K�,c��1a���.����l�ߢ���gCwx �?pVeٽ�����iY4���4�pn8���!i3��H[b�Lz���� /�E�m��[�Z����b֌u�wUV��*}y�G<vR/f�i>DS�}�vɘt�Y�F�d@'�x�D�_zq�����iԯ��7�4�#�d+'tOl�#)f ��M���WH�m��4�r,`T�,4p=��R@d�muANd�9R� �{�`ņ�M 8K��k��U�w�2ٗ{���z��am�hN,0)��;
g���jm�PZ�Lpcr�&�����)z�G��t1���g��w[�Ǉ~R⒡i��`E�˶�C^���������'���y�op�SL���g\�����୛��@T0y�1����)屭�ωGOퟋ�i��4;!گ8̤��j�ˑ"��1�"��*%�/q��&k]��(�?�4�H�s��H���7��?Π�s4�����d���l�Lm$"�6�ω�������8���ǉ�-dҕ)QC��`as+J��k���v�Tg��h��}[ډ������:������m�z3�̦�x-W~��Y���$	�������	�;�H�b��C�t�;R��r{�?�V�t˓Y�P��X�[۬'���Ϣ�Lb V'����'�|[�W��]�����������U_9[r����(����|��S�`8E�o�� ���k����������(�sE�60)���gg4�K�p+�M�,�ʐ@k��{/�#[ςZ�p%ig�g��ep�&�ȃ����®'�r�������C�2��#6��z��@�<��t8�p(X������l%�ND�!,�(%P��;(����:�҉��c��n��L�4��لw� Nd�)vz)���<@-�8]�s�i2��f�WM|��h�|C禟��n�c�|F@Л<%��Ȍ4v�t���إ���<�e�fm�s����P&)���v#�"�&k�;4��0�ך�?ԓ859����X�B���R �t���|�]�P�	
�kذm�iOC:AՅ}�Xv҉��hG����ܦ|�7&�'�w���K�)փ]?�K0�7N���A��/u��%r/�9���v�o����8F���x�m���Oz����4:��<bF�ݗf��K,��؜�
 UL��|���6�%[�	�b��-��UW������^�o�>�.��IxIn�튶l�C�ϩHo!ڋ�I�{�a�UC��uN���O�(�]n�1q;
�o)�?}���XD]+�m]��ɳ�]f�@�`}�x "(ʅuϲ��J>hJYg}��T8�����"��ǶI�N�ͩo���,㗳��)� ��>W�����廛���0̖�+!�`�ͭ �V�N�0�ޏ�4�Ͱ�I�6
�?�M��+E��o(=V�œL���cy���j� ��7Z�h��/�nH�S],���#�vb�0'jO<� �R��FP��d=[�~�Ee�t�����������L��S|���:AyzQ&�?�{QG�ٽ�Y5��-�Cq�����W&�G�ȯVs��"c�s0�2,-�@>\�7�4/���[SP:�@��.4����r�&�D�qdٻ�n�*Zϳ;���91E�c?I��w�&��a�y=#�1��|\�3��)�2���cC�!�$�U�[/(�&�9���e՘�k�#���*+?�]��=3W�Q��:zC_d��Z�p����
���ǶO}c��X�p4n{�����}f8�t �����i�R^~�K�6�uu�kێuU�gQ	���8w4Oal�'dA"GS���W�xʥY��E>�����.����ah1ӄ����=�T����1X��4',�ԍ[2တ0����&�yҕ�0� ��&��3`�\��`W&�#a��$��"{�'�ր�A{�KRʀ$���L����r�a��"�)�����s�ŰĚ�V��+� �R7c���{b��i�X����^����w��u8�J�a��IP�3wf�C��p������?ጟ�&d��=oq",*i�P�4��l� I�b�Y�&��)�R����-���L�q�����+��^S� q2#xԬ�Ŷbc\�1m�N�ɳő<��X��#	)��g�c��b<؈�Zۄ�@�����D�!���y@��5;2�d�"�`+�>�+�Ut�Vr�R�÷Կv'%�;�������	�Eջ�)��&����t��Q4�!@���p2�qb�du�!�Z��QU'�3��=q��f�mmT���J���p���p�7�~�����ԁ�i���z���I��\�{4e{�(�C�e�N�JZd3�h *�)l־1'����ԇ�t��)�	'�����R��X2���*J�O�n��,:�L��]0(��k��q�jk�iF�`#���m������hBڬCl��gs�����+O�2م���v�nh9�;Jؙ`L$9��*��s��7)��~2�ځI���O���L�&���t�?�?�l3BM�3Ri'�����/�%ǈ~6��e��S��.rf�6끊���Λ�ȁ+��vF̬�M����ћ����cSy͉#��`�\��Qf
XP��,�hM �DB��}�E(��ߝ8���Roڦ��ܱM�4o���M��x�m� �qX�K$���l�C<x��� Tu��a�N|�����0�A��X#��ӱ#H�O��Br���u�G�����4s�w��q�j�� �2@�^P��d�8TZkL� �
_jKb�����^ܙ�S���gQ+����.zL�Y+2�z��7����f��eD���"�n�=?�S�2��]e����6�
;����D��c�����"�LE̮tY�!{�0('O<�#x����s��]�pj����(�1�*�@Yc]F}�2�z	���Â��� ����?�J�YZ0�E��ړ��z4[f7���q"-���M���4D���zk���dM9�g15LV��'P�"t�*m��%y�%���(��$�+c̆I3!��b�"wo����9�h�|V���t�g�q�_D=��L)���O����1�����&���c�u��<x�	�R��]kn}�(�kN�=��?�ڢ���M��)��h4\�#�*+R���*BXbQ��#�#���"Ƿn@$��b�bt�,�u����ǰo�}Z֦�JR}��M�(g�op�!MG~`��ba�d�)��w����)G]6�R�~ܝJᣁ8N���!���ŉ�]b�-r���	��ۊ�k�y�,呋���܎��R`3>��g�w2)��QouxKi��<���oZ�h��:��I��lڬyA�i�!sw(!���'��T.�f���c���h
,~8����E�\�87��k$���{KJ,[b�T�T���;�0�U4�S��״���1<Q����4�
�B��.gw��'���Ez0m��e�ǀ�G���j~!T�Rb���5�
�n���D�؊��(܅�6_�L�H�X�B�H4�4�>b=ӄ!�'{P�4͢XdsjL����$��l�lȍ6�Y8R`�*oUɛ�?F���w�=��{EIQ<�����aǄ�L�(�{8Wm��C�1-'*�6�x*��_��lrB5z벴��OIb`v�_��@
�q��m�	i;H`��
PԺ�(��^۬#xPf���a*�����.>GXswd"��n�5�=J���2�q��o�i��h�V��8\l�����?�})yF]zȿ�F8j���{s��!���<a��[N=!�}�0�s?�G؍�@8-0�v[O	��D6�G*��_��a������T�5��W�:�=©h��2��ˠ�����f���#���>M�_0(�U�Ęt���Д�rW���U����W6����S_Ⱦ�D"��I�9TǷ��p��!3��>�F N�M��tj�-����� �`+��
2u��X_�Ư�ϳVf� T�b    Q��|^�ۅ�7k��a�Q�l�H7�˪@�sU�
�k��Q�XhCo��4���p�2����h}��k$�6ӡ,�(%�Ew�hC��i9�i�sNl�;�݀8�!��72Ŧ5CA�T��r�m�U�)]z�^2��*-M�K.
�M֓����%	��Q:p������Kh#	F�}�$��[� �VrA�
�\��V���4��)l&�;9��Ц�x�ba��Э��u������WN+c��s����G������n�N�JE�	!����B�r'M2QG��ji�Eɋ��7q�L
#��"%����:�b�}/(l��2�i�!?��"�I�PW�@�P�����%Gm@�U/����)���6Z9������~2�b����v�+k3��`��"
&]�/��%Di�A��G��D"�鼱�@V�lP D�X��\x�U��Sz�*j:�Jy��k3�ǒ��($�ָ��R��a0��QŃ8lE�@@4�DϦ�ݷ�G�_��YN��		�am?I���)F���_��҂�/�A��N��l���� ;�;*"�����#���Zb��$�ѽ��cѤwD��,G�����hY{`s9�X�J�weGF�@���5	��smXI]je�H{�GR�9��� � 5b#2{��׾�H�ZEl��0�lؚL|�A}�x镎Й�q�K��hԪ,�ir$G�h�k�z�2D���ȍ6������>���u��	.�M�2Cq�}� ا��Y�q���b��Gr7�C�*�N3��Yz`Y9�5ģA��;@?��8A7ŗr�<�{.�S`�O4no�޳��B�D��^��$����d�u҆��Zb[�{�d�r�o@N d���8���Oc���mdtz�@�8��z��=˲�C@}�a��GOG<˜��W�s%���aF�4� ��X�|j#�/�#��x��`�s���E�kTw31�`�vp��
(Ȥ~Ɂ@�[� a
a�$Ȋr�5�8�v�48|V�E����b�K^b��	Z3W��J�)˘��\�$'O��d�S[��7�%���`B|�x~2�����;15�fp܋�J�삦���ڊ@�h[ba�&���*�^��\���J§�x�|�Ϙ+W8n�� O�p�Ip�{�,v�񱮨��v��!'�-�#G�r����.mΓ���ىI1��,I��1���X����1��k����z��\}l���]�i���P�f8ƴ@q<��b9q����^O����J��J*���i�ȯ��s��gO��%��e�)�������P���ő+e���i?�H�Ÿ�xO�<2m�wH�z��{ʤK��p�9>}�K�a���49�xx"NxJ�-��n|/M+%�>��.?ϛz&���E �g�z5��yġզ��2l��a�3*��8�ܬ��0h�3v^P�Xc�vq�t��	6�d��A$�25�Q�q�OSqn+9��/�=W�UX�Y���E_�'�r8��Z�Б���7�:DK���nN>_eY���aI�f[]w�J����wa�6U��a��-o��^�:.��U�~:���*��5x�rZ�4��`$9ꃳ_���^�Jz�*��^|�
O��D�q�I���7-o" ����x���گ� *��n:���(��3�C��!ǻl)vġ�W\7f6�[um[��H�۞�g�U��HO~����9%N4M*!�������m�7؂�A<v�c�l��6�36�MN����r�ϩy�z����`y�,ւd|3H��\����s+�$��L����7��X�~[�(��X�a_��a�d#�hd�%m�{G�9i�������VA�{2��ڴ�DQ�ʿ鄠�.[���?5�Ȕ�۴�b'e�B9�+��'��n�u?
�n";yJ� ��;��(<�+�~�s<����!Z�㱶�Q��VA�n�I�vL���h:๙Ɋj��HY���m���b�����Ӄ��_L�<5��h�+Z��)�i���S��"M2��p�^�ܫ��Y���a!�B)��!�����5�;G}f���D�W��.��֑<�y��Ix��F�8��6����������PV;�Z��D�;G���rR���~��/q�v��L��8����Q�G[��m+�Z��C�L���&#׮(MGI<��@�u,ѐ1�����JE�F�#f~P�&�c��0�����B�A`��@^�h��=PO<��d4[�B �%��GTj�T��s���$���h)V0,��%O).��ūk�]׮4`��ho���ot�'��4=Q�u;�5�"���&B:|� ����{'��ؔ�$��{�RY�P\�if�{��3L�`�~�mԛz�K�R�$  [��.K������|đ��:��;��t��B�yΪR�r/��w�@�g�am�$��h�ԧ*�Ɣ;��'��Q�UXnӗ�z�������q�_j����H?I�2�&�˰`4�<�ݯ����6�#9� �op
�rU'���A5�@�d���Vl�R�`�Y����@ةko(�.m{e����mMU�*b+�)�y/	G�{U�{�f�+��C��x�3�6L��)@��m���߆���T��k8�#�`9��M�����W����^a}NCl+��'�~B��G�z4�l�~���9!P>��M~C���xhBɨk��7TGp8R�/��Q0^��p�^��J���2���xMY�~�U�Q*tK�.���?�m�h��I~�F�!�d,��~���)w�̲S]�qA�$�|�YH�O_�#-D(�����UX7߀5ئ�7����[X���Gq�z�k�+VWwPb���IP���4�}ꩿ�ݨ��ϳ1����S��z:�O�qtviܮa��F{.����"���ęW��R�壽8��MK������$�\d�dN��Wk�
v�UOɴ�8�ej#�o`��:��#�!մ ��,`H���x�$�q�+]kv����tc���i9��+\)u�1�tܧ��m��}�xT�Gn!o��g�����-�y�L���<N�e�J͘��{c�{:G�rL�*�P�t���y�O��[;��9l��N-�@)��waxES�`Ѭ�m��:aC�o��	3��L��/����l@j~�>��w�ʘ�����a+�v��ۂ=�eߒ�Vڦl]��_���=I$�_/}m���B�yb�
v\��$�>Ǽ��+��8��#rͦr������n�bP80���n~r��,`_��	h�C����T�D�?w�(���#E��)X��;�?�`�Q��x�bQdѽ��A�"�K�(236ޚ#49��,��4�̸'�c}?6��	�"�8�e��٬L'\hf=�Q��q�o�Y��U� �qI���a�|��K�CGM`g�����3�S3��
�"�a��g����F�'a�Q�hxZ�&N�M��:�6eh���Τ����{�j5]%G���X�C��Ά�����3���>ȼ�>�h����#:��=��c�g�E��*����X��AN$y���9Ѫ���%hǺ�m^�68,Ҫ���]YS�n4a�6���*�3�:�j҈o��Uꀠ����}?Qf��{ �R��*�EXla�u��'���+��#�[1�X��<���n=�aS��r�x��v�W�Z
�P�g¿�b@���e��{=eH���#lkD��]�#p,�n�z-�p��sqI���|g"���؏l(�F�����1��x�Wuk?�?��{�ӆ�(��]�q����H���|��Xz}S�;^a��{Xj��`�_f��v���!l'�1�(��i�Ę���K_���X��J�̉b��^������\�HK�~"\��!kh�{��Wp7l��N�m�0����a�j�Z_;�j�\VGp��P�[BF���V	�R��[M���:1���̏�x��D�獅!��2�z�ԡz+�&/'r��`���Bl����dmRsB�����]���    ��ݟ���	�.�D�����iI�����r�j@�?���t/6Y��������Z������tR�F}DeG�U�8!���@��?
�K���[�;��ᲀ��M!�2@9�i
bl�U��=O���|�^��"�J�<���8A�8�ć���:�0o$xb+�:����2]�,�G�f5'��؆�N�N`L��yEMS��X��X�
Q_%Qz�����N�W����c�9("�= ?�Z/�����O���(	�FK�g��I�*L��9�Zbe��c(
�ƍ'X�c&g"!�˦�Xa�f{B`���E6���p ɼ�{@U-��xO�v�!��e���<�NM'<EF�"J�e
�����ͧI�@f���rŐ�c[Q�ndW���(҃n�m0j]�o���� o�t�DR$��q��������y�x*��Ѱ�|'�#`����@��=�R�⩭dΉ���0��ʋ�X3qA���Ý��b�(������>���N�-��w��۟�,��x��<&��'��X�����TW �;v\ ����O�HHSa�
�T���	G�W/Hd��x�Q���]�",'�ؑ)RN��e{ �u��'��<�}��'{c��:W�	�*_+m0�l�[��7����uq_�{�7��ѐn�,�oJ������
�� .�D ���AF�\��!q�[�%�q�ߩֻ �ֻ���qx��Lĝ^�@��G�����O�n��N����c��5�"��#al
�َ�8��V_�B �"hv���z�;I�u�z��9F��XҮ��m ��"�	�.V�������BW!Y�^�����h/��4�=�S?�����W|�+�%V�?:��h}��y�"�[���R�t,�05K�n��Y�]�wWfg��Xs5H߁�=�&��/ $��[/���8��n�w� o�F�Մ��G����C�#(��K!�rMٱQ���!"��9W�f��YI��4F'}����TF��B�
4GWB���ߓ �|HB�.w�gui�+1���]8FtL��B�1�?s�4�v
$��'T�`p�zh� �M;;�����ԯq���HM�Rp����C����m5���b� h��ۣ��6��ZJ�2T�Zn�����m�Xc�W������*�Yl��x��Աn;X�B��XTp��lua��F��?�X����X90Ȳ����Ei~%~��Y�*d"���O�F���?�\�l�z|8�$���b�u1FOAn@��=�m���%�`��Ss�Cs����G6�tBු�dZ��0����e�_�EZ�n%]����Ox�5U�����o�MxVh9,�;��-}�'ev=m�� n�`�lV�b�w'���zE���ȱ�U�ɳ|�n� ���['��(��S1��?a����z:�"�'S���'�[OA�lt~x]l*��H�`��.�L���D���d?M��-Eu����
�uںzSl����.Ё�J�\��۾����Yi�&�Q�dh#7�߳;=m��󱭲X��4�����!�e��*b�̾�&>����*�!i�H�%���֬�$�f���l�c�k
ʝ���nAd�+��=i!mHb����Ij���Nu�$
FG�B�Gu��J.7���jh�m3}p�~�㖴ƾ��{�:q�	T�LH&�t;���3���j��ߋ������ړ�2�����|�Q��Q@!Z��v��W���Q������4��Q��%(+w�]��k��'�T��sB(�J������u��m���7䌯�^��[Vȉ��l�܅�=KN6�Ġ4CuC?(m����J�/L��̓�IA��.rB�a�I'���Ꞁ3&�B�^���	#�MB���R҉�AC�W���mf٘^)<��a��u������0��~�: y@&2�8^�f:��B�';�6����Q�X�"ԍ�N��`m�tbh�� ���`J�ş.��f��vଔˊV�H�3i����,�6�׉�"V��؇=z���1k9�LU(j;�o�֬�F�>�Aԕ2,6P�g`�/�&ֽ�Nʶ���e�� �6m��믲p�-w�0:)�5z�#�q�v�:q*M"�bܢh���e|�"��x�_�߮[]�j��8q�M%r������;����&�m���x*�XJ��M~R$MieҖq�����~��C�������ȶ�rE�a�MF�*K3S]�a��8��{n����}��; o�+9�{�a,�(���xA-�$Og�8"6���ԏG��}� �1�A�d�]v�2��Y�qW��>u�6G�(v^��I��h�SxJ�K(X7����7wz�4i�	�̂A%��������8������Xm�M[��cO6^�-��s�x?�"h5����4'�=����\(�e����(��3������\!��@���$�����M��(p�RF��r�N��X�G1,�_؃0�4c}���k
�5G��8y����p4	���gNV�X6n��
�-e焯���WRo�"'��K��{'F��=�9�*���{ ��ƕ�Ng��M]�-��D�"�T�E|�Ϡ�,:[<ޅ�+��D��(('��m�qHҫ(��/2��\���:�צ��ي8��PP(g�M-�:�|CtRc�S��QM 0���@�$�6�`�Bԑ�<��Y��!|����ŗ0��V}�{ ?R{3@�X)^Vx:���d�̺�����Fvjf�e�̺��ؒ��Л���ʅ1\���6�LNճw �b��ŎR-J8���Vꇕid����2��r$A���X�X�9Aం⛅#�H&��c{~dc��,��u�n{=��I���q�ؑ칸X�󊠲.���� ��nCG�Mw+��bS�yB[����Q����.a�Џp�4Ґ\E����s#3be�^Pj�l|�,�kAY��w��V*ѡ]�Ue�49�Ðn�9��#速�wR�`���pa��a��bOWפ����%����]�I�˹�1e�w�Ͳ��~����ſ �:��	����'��'fD�t0HTy�VLIa��@A�7�Z8��~:��;Rf��i�m֣�a�ʺҒ~2\�q��MF�XD�)��(8g����I�	 [�|v4ˑ����A��T��Xt�+�<���os���������#}>�v�gN�T�P4������
�ݲ�Fd$KQ+�y#��u;P=x���C��ņ.����~�Oʲ�5�2�������oh��R௰�/����&�`V���4ښ��n�!��7%�'�6e��d}{S��� ��"���&�GI����-q�JF}u���9�&���q�D�:h��B4��,�W揮�֤ϱ��e�v����c�A��L�G��a�fE�ő�L�6�C��82�Y�΄t��0(n�[g}��^6���Ɂc��p�FYY����iֵ�jV�Y�������C�P���a�z�X։N,��(�����`�8@������`���.L��9_HwېA�B�³�+���e���j"�D�BJϏ�H�����^c:V1������~���T�!�V6���U�5!�*b;8�.s����P��L8�������N��;�N�[�����o)>I��N��a*���/4.�#'��Ut����M��C��#{�,j�$���9ڹ��A�S�Q��m�:7��b�3��-r"��u�%�����>]$���L�ʱ,Zm�(��9��{P��Bc�U�����o�#q��Ѹ�$O9�VFt2:�w���[�h�*vR��$]a\�m&FY9��'~�ۄ�U���ٵ�"��R3��)Δ˳)����ٓ3u%��Ȯ�S^Vi7Ħ0[�C����A�H���PrG.��Bݽ�6+m�X�:Ѵp~��� �<���Q�n���/�V��`��~�X(v4�����ߟ����(�œ��&�n���	}7�������9�^��|���n1H��,�Uy�h��;u��v���@�1��T����sp�������3��羞k�N�2�I�\������_x���e�\�    ��;��=vO��E�8����ut�ASYi�ۂ�9LD��ZŪ�ʶ�\�N7ۆ�I'u�����¹o��,���;N�=ZMqx�RQ|����U��<%�����	��9Vs�Պ'���nv�s��{3���o>}KW��W�?*59y�׻2QOiq��"��`�ac��*��d����{�,gJ��v@�ìB�c]����Yt��3���_��\e�0>p:VT>E:���j�it�T'�0:NDϩ�V�@l��/�Sc/�:��	��&���e�h�-)���0V�*R��-����_�c��ժ�����?]�������H�*M���Y ���4��s'��r�{�Dn��#qc�������Lve"�\�O�sx�#g=1�=���-�I�l`E�F��_MN�����^��q4�V|�9��Gh�U̣W�{a�Vt�F���-��o
�٪�3��<�o�~V ����%xB��	0�Nv|��A�I����q�a]��QB����k��������m�G+��8N��,_�e{��倫�������k�^� ��=�O�p��m`>��Z^��0(��䐞�o�z'�����كrrU�>�~��U�upģ��pcr����!�31����8�sbÿ�������b]=e ��d<���C���X�>�0.)����%k�B�C̖��pTyV؎n?��C�H{�pd#�>�0,���g��0GC�j$n'�7�t,�uE��#t�y'տ�^1Yx
:ʼz����]��\.�]0�`�������+��ޚ�J�}5o�?�j��)@��+���C���`����+t�Bm�2e ���\�T�O��i�/l����*�q襸���+u�����:1\���%�6o����� �?��	<Ҽ����M`>惾a��%'�:�4>��w���؏�C����YfP
+'C�woLkS��-��W���BW�ӚWt]�7��ۺ��� *���������6��|�v�s��Uei,�*kHV0�z�0��,	�6�0o@h�ŗi��q���/�_%��T�j��T`���A�Z��s©�� �G��Ai!�Q<��݃�n�#��S��hȅ!�ի���-F&�$��-T�i{k�Gy��A���]����=�XM���h���̘�+��-�bU�A�����d�.�p�6��E�{�H�%U�қo��8a4��]�����W�ˠ�>�6�	|7G��T������Yt���OJ��)����7��i3���S#�6m��.Ͳ�S��n�+�?�Ԋ��aS�_����fp�ҟ8QQiՀ�E�6���x �s�j��)[ߛLMI�]?@Q2?䁭��	�#x� �ȳ�ʦ��0`��@\'�%Mt�2{=X~M�3����y'������J_��g�淄��<bs�mDA���l�ס��Ý�wVm��^���l!#y`�|������F��
����r¯��8�F�uWFq4�[u�S�%]j�@d���Ģ��߿��O���>02P���Q���S��,G̴�ޝ�\��A��8<%7��Lf���B���Z�ےt4��D�+���Y�)?s5�h��J�9Bf>�]9
���>��Jv@b2�D���0��Xt{#�a�[�����=|d3�]`a�֨� ���%%m�О �m��@+b=G��'q���W/&~4P%l����s��ǫbq���*��p��i+9��AH��9�ۆA����8�=�"o�lg��+�VK��Ύ�M�G(�)g`d�w?�
~�����l�p����S��<��Y��֏��l=�i;�o�!]7TS��յZ�P'�fv�����U�ӓ8"�Le���;%�n�%�'�� �JK �ZKt_��
8�l��8��$�\� N�`Q�~Dp�O�4HLw(OW4���#\@�{��������%�
�W+�i�N���,�NG���@+����n0��e�r1�ql-�p@B!�)}������㑣�~Xs��9]���f��,��<:<�"���rM,Ǉ�$R�^�k��=oJ�B�� �e�����1[(�=���`
ʵ� ��o�6�Љ�a�`�v�?F�f,@E�;�l18�+7m���&t�J�Ц ��+��V3��E���ȁ��d�H���G���WЅ ��)��cW�b��rq
ͳ��Ch�Κ~Kz�P����RE�,
�o��C���.��V��}���U<ˣn�#�gS4�[�_���k4�N��`f �l�eOq�952)D�6�Ӄ��&A��ӂ�3ߦ�-]�&ß�`ݗL�>�,X��=��W3�J�r�z$�m%��獭�%��C'¦��GJd��]?�x��:��)$����os�a�z�V&���`'|�eU�JG���ugN�m�)姤����i�ҍ��#���v��t�Q��a0��OP��D����04/a��1��1���V9��܃G���k�ӽ�;���n���ߪU����|k�g��¨�yx�MK#�9��j��F�{qto��{��q��zR��3�<Hh<�)\RR�_JO#�-%R���+�g,�h��K��n
|��,,2B?^��0�'�ׂ�0�}�w? 
<,��C��Ƣ�FW�8��PS1r�d�� ����ɨ�g��l*������'��I`�Sm%r�p���QR�9�<���;��@�ޕ6/p�rN�m�p���	�^7M��a�oY&�~)u��~E�e���2�+��(>�M!�j�P�֞qDl�D�/�,����c�|>���S�[�X�wt:�?����w��G�zEϱ�Q��Z.m����?�2P�ZF�T3�ta��+[�	����]}B�y�"l���xD�Q�I�"��Y��+Q��}�!���Cnrl�9�F�0�P��S��M��FS�!���Z�ut��꽎�pD7,w�ZfR	`;����!���)�n����ENXӃJ���O�֧�n�r���çh�q'��ah�i�t)D
�A���G>��Z����3�Ȳuk�q{���I�HiT�"�k�F�$��AlFX��k���������.�e��[k G��a4HG��h��^g��Ǭ����GP�l���Jg:-�5�.ӄ��uϨ�Ҕ�Q�����4C_��f�/�AǷZ��ß` �x�K�X/�#���@ʟ���ڼCo��m�6���zE}�!�ǔvd���Lh��!��Ph��>���մwŹ����8:�l�v�M�0�qL��'��y+=��b1�*3����`�m�$+,�^�QDy=�y��	�l�)���B#�����u%���8��@ �o�3o�?d��؋2���54�d׏ ��~�:D2���@���"Na��e�.����p�� �r�ϱ��%֧���6�Z�����J�ZO�~7��/��`��=#N���`� ���bP8��|5%�cs�s�����Db�����Dd�60�Pi�A)�=�'B��pq������2R��\32Z����
Լm]��D�鯆�9A�_Gd&��F:�n@�<���(B6����˛�Q'�U�~�V�������I��E�dm�BW�3E�5/c�Q�R~��c:�������)&0Ɂ?T�TPw8Z�&����]�nA�c̒k~4�`�7z~8�h
��dOz�'X\C�yW4j�\!�f�5�J�A�c2��>���Zk����j�i�[A��:�q�! K���I�g�19{�CO��&ĕ>��ֳ|�mn��5��pu1�S��)z{�c75=��)�`3���M���,�ݬ��GI�C#t�8'u�5i��1�n'�U�/��0j�[��'k�iZs_��A|V#v\���Q�C���"2Zp�LHt˥m�.�%�{����x�/�{��tCE�:��(��0��(�; ��[��Z}Ʊ�Ze��+kvƇ��7*.��>��L��M��*b�����@o/S�������` `��;��Z=:��ϛ��Ǯ�    �A���H��A
����`�#��0d߂�<C�a8o�pH�Zز�	<��e|���HE��H��Y|h2���#*`$S�M1L�Cd��_�Q_K<������^�)O�`cb��O9*���21�/w��p-��,mo����r�����Jђ-��_t[;�8�(X�#m9P�P��'υ%u�UX`u�h-�#\	� 5@�:M��O�ۣD����Z龡���~�p��x����ֈ������s���bU��^|`���jk%���f��MѮKe�C=�4ߟ�r7�a�s�\��-��wt�B��(���X�Ѵ�˒�؎��n68��݆�I�I��a��O�[�b�y�O,P�J1���6��1�.�^e�Z�"�s��}�T^#A�a����ɍ��P�a�[Kr�uԻ y���keO,����!�f�ԁry�a��`S(�]��h&#�>�f6#�S++M���0nwoL IW����"����E��iBѕɁW�z��'�c�zI��s �^ �,�-��D�)|7.��b�C[�Î2h����J[�y�|��1��
=*��>W��Ͱj[���׏�yl{�Ta�M����Q��P�-W6$p��5�tsV�XH�C��x�����p���F�&�*˶-n3B��vMM��I*�W8�ʵJ],���I��nK��]Q�z�/)us�k��hA��/�WY��P: }��y����\9��C�ü�$9���YE $��sb$��-L���$F;	*�}Ƒ`��x�Ml�<��ɇ��=�\T����MI�yV��1gW?�Ĭj���6�v ��Yo����	�Vtk����� ��\�ӥN��qTmU����u��BYJ9u�ĉX֪��"�����w�Ήtժ0�,h*�}9A���\���>����ԁE��%'�\�*�b���:f�1�-����	@���Y��fe�a1תdn�8�Hj  �!�׺vҙ9=@�g��	�yeu{�Y�a�E�䤦j^E�ʑ"T_vhP �ſ��8|�7]��¡B�v#L�"	��o��iu�{2� 題 v?�<�F7h�7U��XOR�F��!���� ���l�{!���X�.����h���`I�!�%�7P�8+3N��@X�X�=��^S���D)^���U��9i��R����	���0G��#lX��J�+-���'�t�V�_W�V�qdU.ܵ�ƨ$��ʔ�_N�]�(��= �1F2��'�'|�g�O8�*�q|x4�&��Lu>���j�|=Rt�A7�3JZ~;��q��ΐ�\�,��(�0���8��Zm|�������3J�k0� ����
��D�6���G�y�^�݄�S�0�]�0a[��^��#���/C_oK\n� �lc%A]�x?���A��R�6}]P���̏��,>�� ~F2cj���B��*G.��b	
���d�%�R�<��LX�T5�������\�v�JrZ�j�*H�<V�vŒ�d5���*���mm'�����T:�����]��ay-���Ӧ�=�3+���_u�vO�}�~�	��_a	�z]�O��Z�o�߿ә�-N�T����"M�TTD>d>�����`=^ځB~*-͊h��p�zj��&�K�>��E���h@�XЯ����l.]��i���q�8~�Ӽ�
�5�8�%P��7'>�@2�)T.����+��D���x	kuݢ�D7b��yd�b�u��DۦTq� -*��8��e��B�\��9�Qk8G��W�j��5u�L�}�!��¸�g,#��P~H!�O�B�Wu[ն=G7�JN�F�� ������h��^�$����ÊD7 ������0K���9��fF^Bp7M�.��̦S`�h�-�4+d�/�Y���és�XA�l�s�M%oS����^�j��'��D-��L5}�w�d�3`��`Z\5�?�b�7�Cm�´(� !�u��A����Fc��q�3��f-ZZ�4�N�%�� ǽ+��m6ţ���4�=^��G�z�ZS1]��B��
���,4��m�5�e<��$��	��9�j�(�\�)�w��V�vg�J�U��e�e�E���ʤR�)B��vt�X6IK�w��!N��B?°٧s�!/�%��pd���=�Lʫ�l���s�d ���o����<�2�c4����s���zl����b*e�eÖW8ʤ����n���o?��ϏWX��4���|l�;��7YW��<� K�(�q�U"}�n2�$o�����������IM�%*]�x�ւ��$��D�~���1��ʎ�+b��fs8�؃^^a}suZ��&ʄ<�z�d
킣 %EƷ8&�;ɐF`�����u�n�2_��H=0�2׼������P��|(�t��ԋm@�:�Z����#���z@Ti�{�%�A�7.>��zNL-���vV`���ڔ+nq4vzn���u��Y�}�S�X/��ğ��ta�X�]�-���mu[��O��Q�Aܗ��v���v~�b���yrrp���g�_;�*m���!y����֗m�Q���X-�Ѱ��\��+N@�'&J��M�f6�`X��A'�q�u{�t!f��l��d<̚���F�iUc�hN�0��C�04�.e�E�-��F]E��Ҕ%�����2I��脢��ܵb�b�:2��iJ�*�8\6���倪�ų8ɗR7�.י�axfM�;�W�
;>�Al���Z�N ���R9;N���J,Yu��	��l8�;g�n=n�	x��
�2���t8=Nw��p��C'tP��̰m0�8������w�Z�O׭�gN�M��?��3��\��4KV��	Rٷ�������2�d' ��M����2@ܰ] �V�^or�*)q�L�M�̄�H���Ɍ�mœ���I'�������ܕ��>���Uq���6���L��������� f�%��Z2_����V��U�@�t�|i�#c���&	v7wo�ڂm�̃O~gORa)�|�F���Y�ܔbPp���Ֆ�2f	��=>�2F�����DK�	�N����X�_������w�� ���2h&3�3HD[�]%��<o����e��[��1�hm�wER\�:83��MK�$���W� �X���t1���Y[��l�F�G��L� 1�sE�0�LjlZ��8����|C��E�ݡ���PG��)�U��}0�Ճ����G����O�����Q���/��F9���:��	��ۅ]]�0��c�B5�}[��t[�9N������4�VV#�?�z�]�keEn��k�P��������+b1��`��%`��ZC,�2�N����A��S��
��?)R�����(�n� �3���cC�������_�-�r����$��^_�ǲ߳�~�yl�.� a[����%!��)}6�9aAI��7��|�����\�e�/��دz�����'I�J��i^��ۙ��}����g]�g����+^ӌ?�,�|��,u"�}��~2��uw/:dg�~ĕ�5u����WZ5ݝu��T�cD��Ag��2�YK<��~>������N�8(�vCo`۔�]�F�ٗ_��"N	U�����p�oտ��a7Y߮X���fƵ���o��4X�[��wo/g�:Z��x��v$��pf��b�7��LT�����w�h&
-7F�!Ku�k���>ȸ�Y���*ػA̼�K��ݰ�{J䇟�l7z���l�ꡦHʖ��#���S���~���u�rU>��=�q�TYOk���B;�fmR�ǯwz�2��s����I����'��yO��22h<�u�Ϭ.�Ŝf�%�k
�����	��z�uA��"Ͳ����aΒHZJ���X�������w}?�U�#�	Z>��Xp<���h��ԓ�O�hV�	/hmV��5��@k
h8��oM@���h�,\�f��[V�e1o�Q���$_h��G
 ([�TS<�{����N��'�A��Cа��@F�u����"�y�t�����q�7��x�-��    4헶G��)m�T���ώ��	ZozѾX�B~��Џ79��R��ko�Ǒ����-����g	�$@� !�F��	T%QITeBY�d;
 ��9mv���.��=!�h�h��fg��Y���~��?�YU@x�|�5�(r����p��[�{�,2���ל8+� �����~D�+�h�Y5��}:�X����M��e��{6
U8#7���8岊2���|/|�-�%�|��,��574����H�Q��רq�G��lT���@|M6[�x6K*g┙�їl'��/_~Ϝ5��U4����2����N�A�Jf��g����������Q.��>}}y嚆b�<���6>v��4c=�~e��=���V��w:�����چh,u�f��kW�˕��gKC�������J�u�]�	!�+�4UZ��q%�vt�o�����z�Ȋ��<�I@}���'N���]2������]���:(������e�D�b�m��iy���������ڥ��dީL����7Z��5��z��Ϩ�#����j9�{|���yRlTG�3m�� ��Z�k£0��b����[s��g!��f}�G
��y8L�6��}M���t�������q��Jf)�e���1�*0�w`���ife˰cD6/
x��q�
���Ӊt+�V�u	:��~BG�R��륪�|�9V��~�Z "����8LQ.%� R�f���H
�V&�N��iɨϧ\YA�{*����_�Z#��,%q��##l���5nb�a�x�m��8-�	��=nBa�%HB��x"�����ƌ���U&����;�h�A�w��{��w2��4�@v�kE����F���BS��c,��O��}9�i[�N�q���Qs�S�!�"e�A��kr A}E�p���v��ת:�>��vt�v���S tJ>��%��a�S\�-��M*�{G���H��4ign���-� R�9�8?�ӂ}��H���@C�=���X��EҧnSi���Wp��^�-��,�?s�-��tP��VJ�,��8�|�˗ V�{~y����(�v�-�����
�h�iܷۈ��ܵ�`i�GZ�ϫIAh�v�Xnv�\�J�+)R�9���;�4Iuo��� ���}d+�B�\s�Q��<�����/n	7p�6x@A�=w+�gǓ��޸0�T[ׄ +���9O��R�_+��M���9�A�D皡`�<��DN��Ւ��F��ڗO�����4d������T ~A*���n_,(��\�y��L��_BdV��я���\$^3����-�ᰐ+on#:���T�~z]��U�X�j=S�`wq@ܘw�6;	�J�zo���k���XE���wG?72!�G3��=q�dWx_���Nd�`�I܉��8�cM�G�ը#��wY�4}�s�D��]~���znũp-�ڽ�R(Fh��|��"�29/�p�ˤ�͝��*�[�Ǉ�8�IbC�8��<��c{_!I�7�d�����\���tͬ퇹D�}׿^��ѹ�	��������/��L�����$]��3B���d/\�3����d�$3�<�K�؆��q�	_bI�P/rb��U�d�$��/�D�0��X�Zc�8Od8�	՚f&p-*�=_�E$U1�>�Y�u�b\��@i^sC�<�ό��jg])��@頻H=��I�3Nտ��X�h4�Y���'�1�R�O�=Z�b-fSX�Q���.��J#���{�x�CcE^4����Y�sRmn+����k�&��4ڪ�F�T�u����˧����"8��#b��������4ڭQ6�^�֓�q����B J���F4*X�ء�,��+�?sUY���' 2S�#�9�-A��j.]��Y�)K��-ٛO	�m�w����F�~I��!��-�^b �A�R��o�˷;1�E���%|,�A>k���{��i2xF��*�C�X�<�<����{':���Iw�h��Ζ�vy��,�G��;U)���6���+��nۂ�O��g���:���'�5.N�F�����P3K��|�h�)/��	'�Dv'�">���[�&��l�M�m�>ǿ�B�~9x��EM�!��L�J~�8v�>(���>�Mռ/8� ����C���)������D�V�C-�]9�n�<���.�Ȋƛ�ߏӭ)F���Zb�Qm�
|��i���+ט�Vլ����P��FrZ5�,?L]�+.>vK����I1�$�#�w����Ј�f�2�����`�����t7ʛ��%���O=D|Jd���,Pn���N����WVnG�X�dڷ��Ҭ��˲m�����#��D��QĲ�;֦5g�(w��0p�b5<��5�S�F1���yM��̢��4�u��zvk��Ǟ�;]��`��<Y I�_0���6����|��J��9��T��r���:
	��Q*�p���d��{����(,i�[@˶�:S,�����%��qu�'`:%�$�5�&o��-��^����g�����T�����m>=��	/(�y�T3_�a$Uē�r��b�V�2��U�ݘ��Ns�[�/��i u@��|l5��0�wo_�#��}��.��/����̡'�Ԅ�r�w���G��=��:s�����@�6b��s���Y.#���)�ٽ��W�7q/H�ֆA_Z6�D� � �L�eOe�r��ߎ�j��S��%0��%�x�k�kfmd!�����Vl4�u~/w+��{CM�*fH����Qn�ۃa�UF�?;9�>���F��C֪4�C葚s��^&`�(�h�[9K�ɿu��+�A����s���� �3]�R2k|F�H޽�����Bo���^-����Z���Ԙ�
Y=�w�{��`O`�?8&�W+JL�|9���݁�ġd�=k��հ=�^���OB�z<
Sc��H���	���MFu��gp���>4@�G#��v��o~�b���ϳ���=IV§�X��W�"��*ӣn����-����8�^��P��E��9�*��πK��r�.jP�O��L��A�?�'���Hy<�v��ٓ����knMA���4I�����CS�ǩ�^5���>�� M�՟yS��i��ZC� * O�XOs�Jɬ�VU���Wl�r���ˌ��~��|�Vdv8X�o��쏽r��b_4(�BV�/y덛�{ؗif-}|��V��K�������A��\C��X2w!�w�a�S��;�0B��Cz}u�i��d5N����	�u�j����@fK#ַmO(+z�c�:��u���ؾ�ں	��ï��U�B����$��8�羠�]*έu ����Pp|^p�8l��O]�x7�Vt�|�^�/̗If��zwn?I�z�[��+vu���m�k��|cNd6-0kaϯ�9G�sq��X���	^��M��Q#�򓃱��P�,jı���C��s�.���S�ɹ��I뚻Y�tn׆m;�$[!7ٽ�	�H����_ϑ�ʦԳ��[A?Hl2�B�f<��79��Ts��7�Lf�wԛ��Ɔ�c���Y��l�|	�n>#����t7�,M�v��O��ߠ���Ó��Y�y��%0��G��ٲqwc�4��������<{��pN�;'7fR��-�S_oB�<�Oí8��4�s\�|�ҟ]g�acs��t׉Uѧj�L��$q���t��!_�aD4y��Yɣ�5�f=!Pc0��e��}0\�a�`��J�>^�+�?���'Sj���62��Y0�{��=c���c�D� ���f	s�?�����eO�K�d���:��vj��b���'�f���r�k M@,�|/-��Dfl��x�e2�N]�{���Hē���1�(��$���׀��m�'Y%3h��|�;1����!��d�d6M�(a.�a��s�N<�"�RC��n;�<�<{��6x�l`y�
.X����G�F�ʜ�kd�Y2��;�[i����Gy�-�!��Sm��<�I[v�C����z2h2U��q�	{8�R���~잫XT�|o��F��$���    <:$��T�H��i���F�@�Iz�:7�w�5W�Y7�TS���d���b�3P��he��}�8��<17�\lz��dʈ�u��N����H�U�k�����Ю�����>	uҞQҡ���d$��Ch�7)�����l>�+����,��;'���}�LK�za�����+<Ȁп���,?UN�Z���v/��鈭,�-��;O�ڨ��Lp�t���@�r{��el�|�2��YO�C۳}A����I���U�t�}��':��9B�[*�M-$�l���j��ٕ�5(��>�W��Y,�������G�X�d}�D7�mb��_�w��L��32���7�.G�[�'�,V����õ����-W¹�R�9�b4�Aw�Yb��2��*I��vd��hT���Jq��E����N��r냹�i7h3��)������6i録�6\�ԛ����M�����h�<�O�H�������^�T�#�]v����ʴK��SQ�_��Lr4T�f=��(�x�$s@iIw��%f��ơ����|�xw��|!�_E�)�O�,�/��{� &��Y���UlM�p=��H7h.���ܴN�/�`���䍳k�·�.�������ޫw�]S抐�Yj�{;�mۋ���8X�̙v&W����BFc�ی˙��HG�ݸ������=�T[�l�L	��	Va��w��(ҸMP-K�v�6K'�4�DH��~B�!��x�n���mu`�]��+�@u�+R��2�&���ݎ��0�w�^8��c�٠k�����+�c~M�%<P�>^����_�I�� �n q_U�L�ubӶ�.����Uf�q�PQ��,7�����@��I�ߐ�����Kݯr���.�
�z0@;>�"��#m[��tF�6���q�5�����P�����X�\)"|:���1���ڢG�&��&��ҭ���@�b �����q&W�4�@�ѩj��Rf2�[*���Կ�|����?C�Y5��A�ȣ7�#�Oֹ:G��f�w"_#��@eL!O�9��ѩ���&��SX솽 ��&m�`#Δt'�8�m6yBW<.�4{tDy�̄sw���GZ\�l�������rwg�x�	��euD�i�/���a4`���A�I����^��w�<�DS��H�P}X�ڇ"r�B��w�$|�#z����CW�����E�ǑT�5B\-cj:��%�
,zΥQ�В��[���n��{�u�gŏPm|�|c#T��Ѻ�D���F� ,�o��Dl�s�YjT	�x,}яd����䴠:l=ڵ��Y	� �ځ+��+>�� �|�	�����|t����\�G,Z��ﰷ7<gx��)��8k"���;;�G�x���Q7�|�k�A�d�f�
��F^6.���v�EY�ݬ�bWM�����4=�1�YszD|�A��h��S���/�D�:
��$^�P<����|v3j��5	ALkfن=�������-?�L��M&M����
_�g��-���|*�l�E��MQ<��Κ�$�-\��O��ۋ�SH���>I�٦��������It��}m��;}�M9�� ڐY9D�<s�U�����{T���0�[�3�^Y�#���:ě��`8����p�t5���8�;��a��d�y�`X�Z����#�MD��gw�}�P2a��5��:�ũ�!�ޱ8s��m"��H�O��u�#�Vv�s�S.�N~��%��7�8}{�>�J�l ��+Ƈ=Dz�y��e���mw��w>�=(���Md�ৃO*ԏ�'�T5
���.�Iw�����=�Ush�*��v0�"��`Ơi�~��԰�*���-^A��]�P��[|��K��Y����s�6}f��.�r["լ}�0����D��������\2/+� ��׼Ψ�C�=��� ��۾�H���̽�W�	?��̇4� X<���I,�E3?�]�ö�"�Xf��� �7}	�G�%���#Q~���&IR�R(8��p��/=TQ��͸���>u�/���}Վ��6�2��v,����E�5�Ȧ��o�Q�L|��Ɂ�#iJ:ul/�D}@�&7��tI��/�/�i�ƀ�{?� s���yՖ7QT�����*ُXH|�H������?	�E|��V�*������SmKg�C|�_"w=���/ҚFӴ�z��4zki�FZlq��)'�.큍�;O�ǟ��,�ר0��{��ZI�g/0��&M������?
�]�����~�7O�Ww}="�V���n����l��yoI�O�Ui��y�;�U��-�*�{k�E�`d�g����C��7������H$�py�tۯs~���B��(7ގd�:"�&�&�"9�eaY�6<d[8�,iw�ݠ����cp>pP�|�I.�>�7�;�����/b�x\�,�z;����g٣D��fɿ�T���t^`�1����1U��}�����^Ӥ�}�C���,9��U9�7)����W�,*�=z������5���U·G��WM���1u����G�oAHH��v�9I��q-��*�7%D|�pA�v�ߢ7�):YWd�E�C����υ�b��I�PH�7�W�xai��&��N�upM��v����Py�b�|g�qb���o���+��J\~V;¿R_)���̊lKűgK�u{��8(b�T2w�[v+M�T,�gWi��� _`)r(�N)�&?R.�d�BM`�^�8��7[��i;\H��{[�Wѝܳ�t�Yo��^��,��i��]9f�4��`�w%̙�X�jy	��ˏ`K��
R���h��B��ϐv.��2{�D��V�C����")�&���	
=�t����Tz�g�_��$����8����fTr����B`����Ë�����x��N�@��3�9��?ix�����b�� �Y�i�E�u�2�}�<��Qэ�V# �p�[eXG�p?��U��� I��"G���.�v%H+��e4)�[4��g���}�`dZ�.?�f�V%�`�!>Bc(�v��2�d��E�k+n{�*_���S/��*9o��3M>�q�Э��*���N��\x�a��C"�����ٴ�'1�3R%�;����U4"�2�(���_ɲ�A��X�U��gf�����_�%��$�=��(e�����R�4H"�/����=7̛2��e�-����R������W=G]�D�b�@sO*u3?��H�ٽδ/ax�W�]�H���9"#��B�?�]�L�D�3�D0H����Ʃ6��Ad���5I� \���8�v:��5��Qݵj����­)����N��&�Ӫ�s�X��~������,k��Z6�q������	�v�b�N� &�u�?P���G�Ƈ�*��>����s�>�:ủ�!	��i_���~����w\�L�u/��z��g����IS=�p����B�W�j����6	���X��z�y�A���VޘX>�?_mы�M�������kĨFy�A��F��:��Y�;�����®�!1J§���:O��)nj�Av���kŨC��N�����Gi�V!X�'Ӏ�,�c�_������x;�O��nz���;�5	�V�f��~�u�.\Lv�T5o�-w�ĝ���pA]g��L�5���0�a4�y�.|�@���ڵ&S5�4T^Q�e�����S��-6�����([�/~�=p4B+~���:�R�|�ne��h*NL	�UM\P/���{;,�^a�k�G����@�l�Ȯ)��Z����>���d\8�(EL5@�;��c8�+|�v�L�X�xJ��%�"e˾ս��s���	n�v�~i� �G��U����#�O��Ѳ����t��S�&��N"�wLQ�[f�s6��,i�@�h�J#xWs>��_ ��R6J���lc��?Pe��Q`"������e��+�f�њW4�C�b�����ݳץ�$�,�P�ɉ`.�h�zv�n��[����;ܝ��t�<o���Hx���}&���A�ȹ�)�^:�O��`Q\���l����#����X    /���~�~w�*��h!����u��h�4�#٘��vlb�K�� ���F�6��XոOX�T�H#>��/Q�T6­ �Q��V�(lS��p�е>�vin�9v8��c�>��47�l�����~EB�p�Y�W�Z�]�����r/��~v�f/O��gh.J��^��->����ST����x"u�L/�2R��������_)����9�	60a׀(U��2�������f=��uU�\L$�4Zf=N�qa-~��>�IT�@��y^jy�V��4�eG(Жi|�V	��c�b��a��-�p�l�C�4��#���l�;��9��k���>܋�$�.�ąN<(\�s��6(R���g�r��p
#�E�p]{�Wq�����������U�㕗/ }��t�}Q�L�������{�`��4��$�*a��8'�,��K��l��J�z98�r���-��1V�Ew�p7�e��>��;�@���8�n�"v��C�T-�|�>�6������1�:�����l� ��Q36���]�o!!ܜ�B�j&�I�M�Q�"��]$�"\�v����s�q�B���������{!������l���\pdA'�澹���0�oɶq�Gn�.��w4�aa��$� F-h��h+M����.vj'�/8�	�ΰ\d���ZUIU�E߰���=>�z�����y@�۠-R�{
z&a��c�x 1���O-�"6�I�0�������D��?sn>�����i�;!�d���
�U��tn�r=��.��hɳ��Y�LT?pߍx����*"5��M��l�A�� �ﲣ��\�R��*��8P���-�(e`G�a@�.�.2�t��|U���4+1䥯�nVYb�4��`�© � �oZ*zs��k�o�
]��l8thIG�������/�*�}��zDÝ.uL��IerC����I!v��`њ���R�G�0*{YD�Dm����q�#�C�te������@�|0�Ӎ��x�C2ȿWW��a��3|i/�|�|m�];(�Iq�� +�?S*��-i��ͽ _@�v8d@����8��7����\8_�~��#6��s3Dژ_��Ǐ7�=�}��H,,���__���O�A;��z�vǧI%62C���v��Ɋ�K��햝�;7��?q�s����h"��?�b,�i�ߍJ���A��(��L"�
8�O��XU����S���_!� ���K��@.��F<+�?�Qx��O���C�Yg�7�v��*���]�,0�	kR:����✫��ȇ��z\�T��`�����ݭ�?
��^-���[�D��ٗ��gI��
�`q����ň��~-i�E�R�e)}�v�7FX��8��Py/��d�]`��-r���d;��/��4��������-1M/���!��)o��u����$"��ms�xh�i�n����5�|'!��H$�0�­���o��;�P�^�?��|�52$x��ef�7�/�@���_�����)e���JW��u0#�S�U��k�k_]|�J��dcH6�bY�O ��/of�)�|AV}/�"�ʵoP�ĵ/ӈD�z��J*�1VIE��m����?\��۩�:U!�9�P0ËGߨN�anu��O+h�w��@�AE�Ij�b7��tEtF�܇�A�R�+�4�!��録��1�R�'! Ҷ�>s��?9���h�KX��{�/�(�W�%�M���m�=1�>  �S��xg�*�A���֠�����ä�B&Uf2Gs��vc,&�2��d�5��qn�	��U)�k�E t+S���
��d���^�H%XcC���ϵ�C���⌻�'�t�6��|j�vMuB8�2�d�v0���niN�QD��^(>:p�_�Z�E�%D�z�؋�� &���YQ.�[8�Vh੮XK�`*������NE����I+��r ��kQ���/Rex��DC����;�{$?w]B@{^��7L0܊��Xl�8�N�Uф�0َ�]>ɞ���jCZh�%#ߧ^`�k�F�v_��ĠY4��˷�˷��'H���T7K�^8������9Wrb� s,�h���a��<��.�U�	o�%�o	���4�V��&\�g�p�n���Ȗ�ѠM��Z<���C,%p���ƻ�2ˠQת�\�[��Ei6�Kt��a���iކE�[�H���T���+��0�̃��{m�D��>���>��n��<�P�����΀����$/5���	ɯ��E��ܷqA����Dx�3�4D�B@�}a�9,�[�=��oUq�8"j�s���;�\$�p��՞vϯ88�z�����X5	H���uG�M_��*��6���DEdg�j�NmI6�fw/�	��?�ס�oH�eV�<���p�rU�bV�!r����T�{�M�ȧc�Y*$�TD+�����}��\J�Cc*KŲY@�a/�C��|�2��(�R��Ӡdӓ���W<�n,�X��4��"m��H�6���$�6�캬� DY�>��x�N�T�dHw��g����W8�&�*m����I\��4�n8%Ⱞ�ǥb�!�����N�
7��Ә��V�I|hp\���L_8'��АD)��R�D�G8ȳ�AC|Y�4��T6+�o�˷�8�0C�1ap�3WDZ���ۊR����r�����ڼ⡫T������� a/~�H��^I��,���[2�?N^�{�v�t�4	��� ��.��-R�o�����i�b#��^�	�:�ob�!�<�|��Cc����9�#-�aO�����E�^�_�<��虈�u���Hx��'Ʒ]�^I�5N=�f�^x�:�aiVD�f)��r��;�@GL{imV�hc�U
�Ib������̪�� ��nw���f^߷^�W�p-KE�] ��R����$P#�4�0n��v�&㸘�.Bi\�5�$>�L�?����#��1��>#���Y�mwE4j"8�D~��)�n��8��]zOM��HxY%F�"h������%�M��h����V��යv���F��Hek܇�>��4t0WFuFoNﮬ�ZF�*����^���zw�7��}�aV�f3��N)�@	�b�Dk�n�%�"�e���J�\w7�d� t3|#|$�H��.v2��������LW\ft�6"���W��_Q���kߙмމL"G�������>ef�	cSJڙ�M>㍹Fށ"����n%�4�;�$��F`�ep��p��`���L��f��"���$+,'˔ՒJV��3���՝q���Q-UP�a"J�'W�:���T렲�����x�t�}�W��2�T4��w��2�gM���Y��>��&���)���U���Vf��� @�Bw�H3���H<jEpɦ]*r��<�o�3�E�%s/ڗ�ա;�H��J�����ɶ�sWx���Y�8D��P�m�	��I9�{��K��YcJ"N�l�i(bn8hf�cf.?!��?%��_�9�&���Qn�cKZ2Ǽ�8{M��jxs���4i�j����qdjMs{d��y��jO�7�K����S�]���|��>���������YԻ�}b	S)�t��T��P����O�|ʙB�-�Q��6YS�'��&r�QR��#8�~&Jpx#�.�W̔�ú����cq�T�?�#=�Ш���,�����q�b:�a)z�4���i�|3�D�X��5�a�`�ק9D����GAt$�:�M�b;�4cϥVcy�y�$2h���õ���ph{�� ��'{��� ��\�Ѝ����v] �ft����~n�7#%qo�R���p��!6�G�K6��]��)���F`��;X4�X�u��.ק}y�c�$���O�=��f�'ݽ� )�۝�0�v�Ϭ��>'�����/8	Ч��M)��}8�;����\��&�Pu�gº�HD��=G�D+�N�A���^a������&&�z��$@���d`E���~�q�g���!¡R��)>ξg    ���؆�E\&"L��e�|����}�	RS�k\�̑S/��Hg�DO,��&f3N�ҺBKTIUx`�� ��x����8�M����0�ѵ]�{�3�#>���)�Wn'���_h"�#���H5�-	�	�K���g�3�l�_��f�܊���-�[��*[�R��e�^�N��_� �y�MDb�]X��!��+#��4��a�_؀P�'�k��?�Z��{�ڽ���Ѷ8��c��{g*u�@c�pp\�N��ZXv���6-�z���P���8���k�D�ا�c���릔����/!��"���ڏ�Z∉?�8���Y����gz�pSN�ws��,�Ƞ���Eo�XK�k�i�����ɾ��#��{����%��?ݛ&�<�����l}A��+��t� �w���������4�LI���3�����B�5e���?�/��H<9���G�w����%�⛰�'i�f��0	��_�n4W�a~�[E�ߎ*rm���X>nFvs���y������<H�p��ɼ	��I��~�,�h'���-䚮O,e^4<�~>,I�7$\���CqE�E�z{q2�1>5���a�}��;
{YfЦ�W��[�I�Y||�xI��z"�����3!��b�Ey��A"q�����" �:2/��� �Bc���7ɋ��\"�;R��k�7��%���P]�K�R��[C�F�f��.�-yϑۗ[
�P.�o+�ۉ�>n�i�*Λ�H�Kpo!���l�����Eh0-;.��P*�u��ݹ��ψ�O���(����8�qU�,�*�S���$tm�`/��_ �
����ا8'�OF�e��28S1NY�
�+��!���|�A�2���f�������4�-8�T�|�,�2%�M�8�O���������"�a���N�8�P��~Ҝ���jβ��کM����wƸ+�f,��,�6�{��)�m�-����bM>u{k�DZ�ĝaX����^\}"b*��A��w{A?N��R��NE�_~N�T:���L�m,�`� N.�P�UDHu��gj1�E_�Ȥl�vls��8���*�=`����G��"3Xơ�<$�8�U��V��n�70�s'��15��i�"ph��r�a��Nj�d�N���rr�`��9��_E�����"������=����ך������'`������f�|�_+¤r��>Txy���P�Gp��t.�#��`�8��2��� TlJ�o꤅AU�o�
Q-	�✲��x�u�7���ߐ�ă����7�F|E��S�{K$�ȧ�U�ԛ�M�����栓�;�@y�C��"�LE���Ce	��Nλ�c@Q����GHdS3Ki��b���#؇���v'�z�̓�O:���k*	�:P$?�}}�S�}9n�g}��"���3���}����Ķ��4��u�׫���*f���}p���JL����JL�?��F�*D�>��r5�!�}�ͣf�Q2���ļ��B�:�\�˷Q8��#M��*k'+����۪�V�F�	ߒ�>.,Qa���h�/M�Ɖ�'�8h�%���V��Ul��>[>��m0��#��k�;�O�_�s}҉��O�RGۺc�8���Y�^�퇰Ib]��D��t�xagE6��G��┢�cG|�.J$�d�*�H��E!Mٙ#L�1�_&���t�O�EjŶ�)�N�~ ��ju��ٷ�,���lc�)G�ε��|坙)�(�5p��)�)���\�iJʈ��V<�spL2Yڸ�����n���OW#�$��*JBЂ��i$V����+F_��U[SC֝I=}�J�#�J����f��hns��v\]�B>�/9��5��#�u
�N�re�$Ge���.I�N0��m��!��k�����/���T$b<�Z<��qI }P�iD5H.�ha����J�~��Ux�x���z	���}lMw����yM������9�W��06�e��wd�ȣN����VMw��^9'K�����n�oõ���<�1 �����0Mn��Z�����*��P��D��z1�����s��j(ku��3c�+{��=��\E���"	�W+�*:�h��X��߾���6�`.M���޹S.��m��Mf���_�H��mp"g��}y0�Se�#yeg�{��
l*Ţ�c���|�D�2��W?�x�jvk����GD>%s'�NC��o����I��Y9�4���0Nwla��+�@��U��n	e�h�$y�>�!��v�ճQ�α��
P�d�T������m\Uq[a�|�Z��������EFy��=G�����Q��u�L�[^+��D��Y�~�3w�jk�g��o3.�o�g�v��T.rj�����.�;�I��Mo}�H�I�4�|��0>���o�����g���H�vW��~��>o��Ϻȝ����a.v����x��:X�O"~�X��w�6�}��H�6f(��/�=|�l�暗*���	��`'���.G�z@Q�9_h_��H����c����zk0?k�a�yZ�F���/�ٽ·���Ǖ#�`����D�����������]��)g;r�|��ȣa�X�q=,^Y�ܻR�l^�c"��4�>�8�ўH�gc�OΟy���PbU&��e8����6�����{�ɗ��~ؓ��^��(�5����x��g&�v?�����v�XT�E$�1�ŗ��ho�/y�$s�@͍e���c6N�|�_o#�Ȳf��͐}�?ӽȄ���:)cv�6���� �{�k�C����=|"�V�x�%�O��a���9A��4���V����܋�1�9�!>�N�E�,M�{.8��o�R�ఋ���XQ�g77�WG��@0���~�ɚ�W��vE�f�����Ri��q�N���'������=��Wn��&А��=?�bQ"�1
X`B�an|��//!B|��n*�uٿp���
��h6�06��?.�Ss��e��穗��	�^�J���^a{ji�Q6c���*nH�,ǝn�v�[X���O_[$��+�;�A0�΅�_H�8�>�	N��?^R�e�&��]��㓉��)��"R��nWti�J�d� ً�C�	�W��~_��H���݅O�7�16��)�j�R�;�n<J�=�����WW��@|���C�f��X��������,�H��6� ރ�r�+�|[���`�!��t�-�9�lNi��L�+&�����/�'Ln��M�D8�m �<��g	�ρmjE�bA�Ɩ���W?#�S��yh�Ӱ���{�������h2*���p��(�-�f:n#��Fs�j��c�@i|�XfǮ����ĹoY�}�M��p�|��o65>'�`1N��{ǖ�>������\�m�,�����K����9|���њ�1_ע�pW\W��p���=�\@��u�]7¸�؃ϭ�=��AV���l85����?_���W�"���,ݣ)�a����|������4�dT�������&��ڢ�-�b�&N��hO�(ب��/��Ua1.~��P�]��N�i���~<M�&�(�ojRq���$����7)C�Ǥ���t��4�z��'a�J��x�Q��θ�T�.1~\�ص!�<�%�c��vT�u/��H�j6�]��[��~Kژ�����z ��n[�}Fc�*p_�V���|�m��������7���\��f����qaբ0��*;�r���Hԏ�Ϻ���֛f=�8f z����qѧ���L�Ξ�=�6ߊ�i�pJ��vc)�h�h���������<dpի��Ѵ���th��������\&,ʳ����'9��xC���
( ���w������1��Xqͅh@�ѕ�U_� ��XmD�<�1z�����$������$_!Y�-j����b[+u2bP�&���6tb�P�I�D���c�Aښ{�h�u�;���LtC�n�4��º���`���T57�Y����	��۵�p�L�!
`bVã�=�x`�>�    "eMA��0\��n5���kla;i�Z
��'@T]��Oy1�9�d�K��fP�D�5�f�b��N��5��>{x�p�"~���F !�����f`���r�v�i��f�1�e���x�e�v�K��/%��t�����6�ȡS1MN���l҃hw$�IK`"׎�����5i�V����'��~H7�ܿG2bV?���|�枴J�V�eCTp4j��hs[eB{���������u�Y��>Լ��*�N�Ć9���|t�xG�ªy`*�����e}�b�����d��E�53��΃�T~%\�7�ӽ��"]��[)��
��_������4up�V�d��<vӭ^؆��H�� �r�b���dL��火�Ϫ�y���I\F��a{�X<BÓ�e�ȯh�l����(�[���t����a�ط9��(뭢:#*`9�O��c �W��
:���Ђ�i�^�7a��"b7ow�f��AA����W�ت��'�c����[�7���
��[���4��%�w���"�
ƚ�]a <#�ҐE �>s�TIcӊE�V�:m�/���%1�89���i�=u�t��b��a�,��M���m�ӬO�D<Mp�c�n��ѩ��5/j�H��-Bv/���ۏ���N;k����̊���P�jz�)?c{��<��#�R�Z>L��c��~��-�/�����@�E/)�q��/{;�D���a7fu�^Ŭ�6����o�Վ�s��j��\����5IW�&BPE7A��֕������4ꅢ�C�љ}�PEb�X�nj����^�fI�?s1:Q]��9B-�y�T���b�=,z#ʮ����%���\�����mh�¥[}�����X�ݝ5�KL2�h<&PsXTy�a��O8		��VT�N]�7$As`����Na#�>0NL?��U����So��Y�cb�q4�Ϥ:�s
	��
f!m��/+��Z����I$�C1��-o����N��̡Q���.8���U�c�7���߮~D.3��ĥ5>�P<������9�Jq��0`9�O�`�^f���8���<k
��#>
C@����h�q�2�$?~���0p����>B\pN$gM��J�H;�=ҟ�B�PV+U�J`1k-�p�4������7����y)ڸz��?��$��C�q�g8��_5y\�&�諚���&{.�����P�����۹�a �@���S~y��W|��&��� z��ھ�g�	B,>Q�0�FńF��2T$m���8=D���"},0C��rj�Na�5�+f!�w���dk���H�r�^�c�� !2��-����)���bc�DT���jN�7�n�#UQw;��m
�i�W��/Ă�hb.D��?�Aϕ����{DZMs�� ��
˕γ, v��4�J!���:e��<���D$ZX�{��wa;Δ��< Z��5�B�1p�w�}݅�.�6��>"�*��4x� ��: 1y���w��߹�s�E�B������Y~q#܁֭����ƚ[v�w�}(��ڜ��^"���:�˷C�Ą�����"�_{хD�u3����#���5'�p�YB ���/�<R�8�$�����8�B��7������raQ%�M�ٳ���[,D�9�n��7!(la�i���8��;y��.y��$R4�g��Q�M߂L��Nh47�!<�{��K���K$)�{��V/��@7�6^�O���� ������	�"6;�m��6xC^ϫ�d��]_)�H�j�m'��0t��y$���!��v�$�!$�~��!������DZ�ρ��t�1�^�@�ۇ��k�:@V��3���4o(���Ur�w�	,8�茆wl�H���Ij�t�\��n�U�L�D�Q4�a��@9yI�<oܤV��|�W�"�¢��!h7��%������ZZa����a,sQ�C��*f5@c���2k����A���ۨ�հݍm���E���J�Y��jd�ޜ���n`�Q��[����<�`�g]�'U�����Z�A�=�ph��l)����i5�Jb�BC�]��Kh�e��(_$�2l�;
�y��"T�N�d�]XHm�����-S�`����O�]!_��� �H?��V��yK�!/������ aoC�H�xU��&��a��N��ר�n�"M����v�>��-��Z\��������Q���|�Z[R��99��gr��y{�DjT��v+MB�^r=y�˾|�HKbG��ꍓ���Jd�f�k���=�<wF�pL�[��k��Cprm�/EB�n�gt��x5��%�[C<�,����_"5`��*�����񀗧9��!�A�ٰ�ld2#�� ?��~$ZW��o�-���/�c��V�5��lmaa~/�c޳���+=�������*��Vs�[���E�]���m�)ֱ?kh\OY%<��t�a�kd��>��RY�yVǏZWuX�L����;"���JF���j����8���kE#v�~���?���
��F%Ek�[�;���f�ì2__C�%2b��n��'��9�w���{���b%	ܒ�?!'��ftU�Q��=�٢'����U�"�r�e�p\�O�*/3;w>���$�Hܵn8�(��;l�r���g���R�m�l�J���t�" ����������ݾ`ܱ��.���@����߳�w{������(�fQU�N<������`8?��TU�k�����{�T'7�~v�ĭW8F5е�r�7��:����qP�H'4�����U]L��FQ��lA���?J���g��^MD25 �
�2�v4��A���U�'�. 局���磅�$�
����NTKR*�N�SDUՙ4�|���ʨ��B%>-3���%Rd��Ә_�������|�B}���N�O�G3�M� �~k�50E�����zE�d�9�!�7rA>��=�杰+���>����8��g&��	Y�dՈgLO
�����\���`�H`��z�h�a�n�ȡA��\n����͑�:cqWZU�`�����\4��R
�1"��f"��e��U�^pؐ�q��b?zd�1@��h~9W�h&��H~4�V�����k~W�@T4����e}���0�V4�
���@Q�+!�8��OY���R�;ٮW4��i0�թ`|?Lف�Q�T_Ha���yNU\�p�>��	�e�����is�Ȯa}���ޖ���U��>���Ǥ$��f��I��	Fs�p)w���5�}5{&�c���s]��5���@G��1AFz�C�fWm?N<��� nNnc�e~����S�BpP�"$8�V��ͩhnN��Gv���Ȏb�U5��		nֶ-�'r��h��o�iԊ�K�� d\�yp����Z�<�#7�t������5ry�8�k{`c������(@tVN#55�����2��#� ��9�o���� ����v8	����݈�jf9���S�e�k�b��'6���3�A��@��y�������r��^!݆F�kM�����-/��׵���ݞ�J���C���jՋ���ω�'�T�T�K�M�R��A]�Á�p��OI$u*�#>1U\�"�?����v~@$5����?]�)
����r��y�5��}u��v ����;�%�Pٔzh�)I�^;g�̲M����ٸٺ2x��Z��S��V���2w;V>«?����!��pUW� �À�Fe��M}v���U�u�Q2��ϭ[[aAB��+�FQ4Q��x#�������*�hHV@X:O�d��p`H>��q�ΑⲢ��
g!Nvs�}J�CâR՗���(
:��mا�?�ۊ7�ĂK���ķi�$�����5��0��@�Z%<M���s�3�l��Lz[CE���u���˷�"R�P�����7��ۏ�7B��� FP�y�(���l��7��N�=K���x|*4���PEe�����3�>E"@�;�M$�o�I!���~��.G�*T�vH���*�f��UI�\�    �9��(1�K׬AH��~��n��:"�T�����G�qM}�=ۺY������^<��kU#�5�V�t�-��]:�z�s*lBy���f�>��o?x�����C�Pup���(ro���K��P�D(0��1�NE��K�!9S�ϘȐth�m_Y{�o�H�<��Х�I佃�E����zp��<4ء�6̂���֪�5,��C�@�ɰ^��I��G����)�k���Qa3M�=p����Ȏ�)EZ�.��ė|}�"�:�S�y��Ԕe��1X�\��9��ŢF��`I�� ��dP �u+N�I�A�����~E�C�Մ�y�[x�w�š�,��ؠ���uo1�#�[BtE�֚���MT��0�(�{�X4�>�4����IzAFE�%3�����t#��t�}��"�27���C�p{M0H��P��RN��l;6,U�@�F�^�"�;&Z}�"�,�o�U�XՋ5�г�d�X�XI��V�@X+?��P��׋Zu�I��v��]�5�Pmp+��a�ͳ���PV���8��aAL!<&�V �_�4E�R�U��t������`�E��λz	�t�>����	��b���]ڧ�=���54-O��r$ܞ�eR΍��T�R��5�G�}�λ��y��y`����oc?RPzF�N���RN6s5!�k�,52�Q'�ff���a������^�2��`s���[S�Q�D�)DpE��K-s'	@�-�S�C�X����l��hG�H�?��=�q�(	�He-@4��9�a���!4�	S�����2ܳ$�w�"�'A�R�C7xQc���Le�3��3����rŠQ ҰV��ì�X�E�*3�F2�U���;z� sq8\g�7W/c�^����E�ǰn�����������:J\��c�o{�
��`!�鸰yT�O���T��̼!��Iq���P���~�G��5���^n�����2����	ņP�6
�@�a2n��l�ȧ��FC�4r��b�~�����+e�v#�H��E4X�`≱���q�?��FQ��"��p��b�8��W8>�QdP#���nǅN���Y�H#�2�����/F^?�:GK�9Z��c��Ӿ0k�D�LL��0�i;�_�(n�)��g[K^�a�~�,�I���yJ����dTr�b芵`[>�h��؋l�5֬Z�k�>��0aMR-9��;"��4�-ij���`wy�t�-qP�p���11%3��Zj!�
fw��+�|��5Ƹ�m��0&�\i��1h� ��D՚�*}��I���+�ۊR�V���[�� 1E�dM�u��C��y�X��p��D�GaK�~�^��.9e�^eM�H��%�o�#���p���%�C����̺0HK��N���9wY���0��4��H��ҭtʐ�Ϯ.�i?��.�;qҏ��3���piܳvD���>�������x����qc�Tˢ����o9vʙ/�&u? ������5�`�H)^=�:���j��$ל�p�y�G^�&��QC~�{�փ�~��_k��Z�|e{v�X��4�>��J��k-sw�n�O�%}L�J�<���j�mQ��#ؽ|�}��L���"�,ph/�]���?!��B�ln*�6H�wn�Ҡ2����^�˺��@؋x�|�]��n��1�����W̓`h{ݴ��"��kY�9�� �ԁ��Y,U���~��}�����L�3�_܀pd���]uaWq�@��l��/����7�g�T!��W%��i�k��`�^��BH`�Q@5ǌ iЅ�����92X�\^���%��zG�@`{���\�w�sE�ӼƖ7�B2��/L���:q����7��������VѮ2�Д}��n�ӂj�jx����Օ��>�f`�T��WPs=�"��l2�3��+�ߥJ�5����89�����okb�FӬ�xB��p+$t �C!����ťe*f��&Do��;jۧNK@��W\��1�rT�Eb5��,���@y����D��4NI�o������qmˉ[Ӽʪ4�f=�b��9��Ŭ{��}$�H���{�V�m�]F�"��ʙψ��Y=G"Z5�v���2��b��tL�.�*�D�f��v?��r�IZ>Q������̥$e$W7�+7�)��6?�Ӣ$ii;	٫���̀TD�	��l���z��BX���N"Rl�ʹ���t�QO&�7k���	!dG����<��Ň��j����m���	sV��A>�o5�B�]���w$���9Q�~���3C�5���1ɍ�q��$D_�r�cX�ݹ�"��#ڑu�.ً���j5�z�&�S�����V��������5y�hJ޹gk,���{$b-3��&����m�x7��ސ@
��k!�j������(�F_�{=l�s���tk�]�X�n�-��=o#��ԧB�
�!�8�XB�[tP��ff�(���A�7Hf�N�G�E��s��hZڛ�W��Y{D�O6 ����6���|����n"���D7�?Ґ8���S|�d+�8�.iȎ{֦���/M�+�g���ԁK���u7셻3���N�׬mQ�E�קg���?��_�FO�'�]��(R�h���
�x��A?!�3��J�|��)�L_�w��n����舩[4�37`ҙ�F��j�+�ճ�i��w���h2��7���Q����Q���9� 0t�>�>Mubl�6�����\D�i6�������Ɣ���.�K������Ip�wt�~h.`��c�B�a��f���3k��.����!�������h6��Z���S�5<?ӣ��n��š�I����ߔ�����6�W���ԕ��n�DX>c��r��j߱.��?J��a�2Y�h�(����������Yn ��}:E��`��lO�-��f9�m'��d��ȫU�L�|׳�pKR,��)��5���خJ�|g���M�T�����o�����J�,$����D�l#�:�Z�O%>-V��G�1N�d��>S.�fM�������}�	����gN9a0�l��ЈD��[\�*�%�v]c�*��}��ޓ@�5�I:�W�kT|�f=��K�
���
�a����ϙw�����U�q'�n�Äa� ib|w�.q�iB}D,��.�S�u�98�C��>M%��s�o��}��$�_8w����?1_��f��|$�N�
_r���׃�gA�W�/Mq�9�������l��%-���Q0���	akL{��%Dn��@a��Ȫ����8?�����&FT��"��Y�6$����Kb>G;��}>�D����ݸo�ß?91�&����&Ơ�I�c#ϋ��sa��j� �.j ��n`Fv��њ��Y��ˡ�w���p�)5Z��`gP���H.?���L�z|�^(r��MԔ�"�R��;�&@TȸQ>�/r��[Ap�Nm���sGaSpE�xX@��\#�G*c��#�KV�\>�(P��y���|SLE�-sς^[4W�8�+����:�p�� H{���3Y�OԭKd5X��jdq��S���>�V���z�0�i����74��M!�I����
w��_#��kc��}��j�N��'��Ir]�#��0a��P�!z� g�NR=q�8�����(�z�,%� �k�A=��\�>a3u�kPo�[6���X5j��kTi�i���/�v���ӈ[`	����V$�2�_���?��叻���E�Aԉ�WX��(���)<��_���{���H��_R��$���(��/ϭq�c/�0j"�M!���fa>Ӿq �7R�\�F�1��__F���O�������JY�Y5���>v�{yў�3��ܞ�-8ް�p�.�����q,0��Ы���\�F�:�φ��&#n5��0���x��B�D��W�._�a���*a�R�jSz�b����x��D:�?�l]h$'W�28�e��N��j;h�4��	�D�y��eC(r�����D�`����?.>2�%��q�M@�U�=I$����.:s�>���y�����u񏡡�.G�:    X^�DZ5Cw�p�?��?ⷺ�Pp!5� K��4k!�����xO�ɟ2�e YQ-�e��PG���|��$u�Ya����=:��n}��+(/���*���v?���}7��s[es�?�܁���Sn]��OY���Y�G�X�7-�{^���N���G�]S���@�o����FꔿXu�u<��V-	�L���OC��[wGֻ�����j�.	�3I��l5���?Y�$h(����#��Tԟ��q|ē6N�i�8��4;n�I�8p��4!�B�]���e{I3�5V�b"(4Idz_��:��z!�E:�܌o&�R������k�e ���]����P)XVT�0؆�|D��=W-
w�	���&v��Yv��|�^�R�9Sk�t}3w����W(�&po1�+���[�E�)��Sta�M:|�� �&�B���X�,k6�!��b7,���t�
�>x���h��کy��~X�I٠�(ܳ�y�N�kR&�R���2��;Ϡ����aM"���Y݁|q���R��j�j��:c���u��/ R��R�D�����|��E����w�/p�8��aY�8����m�����s�L^�J��\�l\��A��� ��������>�!p�}���^�m��z�EB�<_C�{�� i*'w����
�T�6>`x�L͑�1�r;���ϰs�@��jӪl
9�A�s�XE��B�)�LY4��l�8�,f�<F�̞:�>vE�(�"5
i_�y�AA��d��J)6G�d��ux�蚪$���=���?��j$�Rt�b��ޢU�3Dj���;����W���FY�� ���2� �k�SD�=�����5os�H�U�rqO�����3��u4����`8ߏ:��H�����D�R�X]���`rW�E�T����~v;�	ǚ�ɗ�o¨��&��'ӂ��gԁ��2�5�M��G/�Aa��������߆K�(�Jc�Vu)���D~y��Q~:�Åh�}�9!]������y4B
+m�t�-�xG���������䯨�����J�Z/��n�`3*��>�b�)hlD5�r+�p80c��TW�
�� ,On�j�����4���������clw5�y�0?8���pO�o�Z��P9����Y
rt�T�U^B��8��7�'��8��$[���Յ�lyT�,�5��x��H��!o������X`��ІY� 6�%(�wz��P��զ����>|D�t��VՎ�.	�g�!�P�Z��	�%�5�U�W+�j����׳tͨ`��N���7+{q��!�0�W���U�$�`7�M.�Y�*��Չ��<��"�P�O�'O�>�@�oj5��؁���;�����.�$��;?�~��g�7>L���F�2�����������Uk��g���å�2m������d$�.���'h��:D'��M�$�sAD�'����+r�ߍ-N�io��f	��Y,B�����-�;4X$_�}=�"ݙ)�ʪL�1�ݩ#�����zىKm�n�oU�!�Y�#��v��! ��hty���$��8%K~�a@ͺ�Ga�������1pT�������Mu3G��}�휹���X�*�x\��Y��}�漸�ąxfi��$+��Q2��݅�����' ��-M:�Q:�=�$N�0X�oo�H�b��^�S��t��!7˷}-�"����n��������}�U"�|�v���s�&E��,��Q7+idWv�-fe��#����;�p��G�Q?�Z^̺wx�H�iV�1N^�@��ײ�k�)��
��ƀ3$���yE}CkCRL�p^R�<Pwx��fw��	6z2膉�^�wt�p���5	�fgoۤ��u�/ݑ��h��#5;�ո���1Dbu���r���Ql��H��:�=�{��&����G��u�U�l��exl>r���}��H�7�Ɣ��r�F��=W�ܵ��� G�}I%�͖���ݢѣT��Հ%s�[��h���綂��@ɳLpVT���j@���^�79�Yso^��[e��vҨ��Ω�3���}��"�
+�/���}զw��H��l\�����Q_��I�9C%��;�*�m��Z�O�}��/2�M��E��4p�7�	r�r�ꘚ�a�o�����e���X�H��vy��{����ma��$d�8���+��-�H��A�����sfNo�pfDRe�gh֝�a���1�"���1���5��ru=�d�<���a�P+ՐZ5��O����)q� .�'�^�.q�5��"F��_�?��U��=~�H��w�$_0;�9�#5�ri�#�Q}D��89�#�6p�������a�ǟA��q��"��E�ȿ	�k 5$ȝs֩٧lzA�DZ-���7��'�W�qxu���}լy��%��PNgl{p�mQ�:"&��@�_����_S�������eU��*��f����\�G�х�[�!S�����_��G *�迅��6;�=#"��Z�T3���۩5�����V��3�v�~(��n X��T_� />��{���i�SM��*5�ݞ��(��T�(�$� ��Ơ+�������|y��W�)[e�Þ�=ﲷ&���p�K�>��ǳ����s��G����.�q$Yb���+r92����; |� � �R�i�@F!����"3PVB$1�)���J�P��P(Va@��մ�� 0�O ���{�	��#OϘMK,f�?��G�O�_���<�����bix�'e���I�-��^$��N�����-�N����Iq�b���ֹo��NWt��t�xw�O,�r}1J^I����Ѝ��� C�<r8هIo-�����$�l��,(�]g�z�����HF��ɉX�w���	}��-�Ԓ�֛a	L�T�>��g����Ɋ�K�=�*�o�>�C���#)��T;j6ZIR�*zi:M����K�gА��
��aI� L�!/��QF5��0�%�M<��WY�Dla�l�z�kK NďI�j5u7������XPsR�]�.��0r-�f�P��o@t:0o�nx}פ �r�3j�����:6v��-H4���8Zc$�ޢ�����I��d��jY�up�-u�,���z�,�>�1GIFl�������qp�W
R��HXp��]�r�P灚���i2A?v3�S�H"a>�������4LZ=��D��٦71�"?!$Ǐc�I��Q��c���u3�qv;��
�<皒pm�3s	Ѯ�)0P���	�H�0�:z���N���$�W�1�
��&��rd���z|_b��[����͕t�>�|��:]�	�A����3��7��������H
�2ذ�0�06��`�O���d]�������l*S�y@=��6�X;;��+�ֳ��!�⚆���ʇ��2N�5�� �o� �{HA<�Ө�[���k�����zx���	�?�e�&h��l���0t��%��a��R*��~��f~}��<��+ҍ�[�<5��~-�5���b��)�	g'IL��h�vJ���8�`1~�����,�ÝF���]0O|W�d�H���Az�����1|�)a:
\B7����~bT�F��ղ�A��(����	*;��h5��6њ2�}s͏%�YGb��W�o������-�Qu�u+��>	Jl�s�=��=h[�����%ǝ���6*Izٺw�旖.��V�S4aܰ߱�b�$n���[�ʾ��>1�����u��]���Ѓp�����0&Ъ��a��� w�{x(!�VU-o��R���NYy(�N\��I��p��^�S�{���o(֍��Mmߣ�֪#���sϖ9�{g���mB��H���y��dIg5�fM�� �C��[~>ۑ��H���b����9��#:�i����7��=�~��]*���7(Ͳ׋�gC��/Ms�Oh��E݀Rr���Z�a�A�ˈ�1����v\�!G����~"����[w-{XM�'�̴�:BP���OS�y�i�s��)<�0 ��P�>�    V&}S��#�?�-��*A�PI�͢�0uU3��nA�G�{b��5�C`����;?���{ZK�[�I����3{��p����:�F���[\��)�)Isb�f�Y�Ɵd�a�� �ĸ�gј:F	��(C=Ա������Z��J�*c��=�`eH\��	��R�],�ΎB�'9o�:�H(jjy�Q���G���.�<S�	ֈ������#�Z��k�&!�N^rO�׶<eEe�k��Oy�p A�+�l��-�^k�~b6��~Bbe.�u'/	Y�M�����>F>A�1�6�BV'�6F|}[���O����	M'x�|F�`��k"��v�r9�y�DE!��l,ǉ��C%���[V��j�N �K�����>v�h�|��=, �iS�l����f�Jb6q�D���M��V�9J'����wK��L/�7�mS	�[���b���yR��W&\u�f�:Aa,��S=�SM�$$��#��q�hG�M�������lW�?�� �F��¼6Sp%6O�T�.ƄS��2]��˴?�FZ�d]'Īz����4�+J�ߏ��S�c�	�:X8�iNQE��G��&�]�/�`H9�x��B��.l���8�^��8����m</�3��������)&8�]��i�I�G��l��u��b���������=c�yO_:U�b��pbi�� �89���(5�=�>4а��:�t�� ��3�$ڎ)I�Oךm���¾^�Qe�5���h'O��'Ӊ��nQ�܁��6/�d�`#Xo� ��u>����!��8\M�Eˑ�Q�wƾ|i�B�(���b��:�bRE_� Μ'z9r]��/���P�G���0������=cr�Nc�X�M�щY�=�+�� <��@������h��u�@�O
/m�:�N�'ǫ�]G=��>?>��&|�/�G���H~n���z�ZY��^h���fx��<b�'�5�|��!�H)��'��TP��kX��IOY
*�u�Y��!�~b���e1�_��5�j�/��B�,"k<���Jx�
���>�b@�(ز�����#8�n��Г�G-ѐ��m����$�֙HG�!^݂���	���B� :d���9	����E�ͬ�!	�5J�N������k>��"S$����zz8L�G�3�ûN��PF2�D#���I�l�ڦ�S����cW���U5����^�l��)Js�1��lON5u�&�곟�8z���WL���7h�!�ۢ����0\�V��ZvR����KD��r����h����dS�'D�*���	w��~8n�&�`�5ށ��� ʆ��[8�����]�k�1_�P��n�WC=(�X�Ķ��%���ԯ��v�Jxg���q�9��$�(�'z��]�>2u>�����$:;u-�{�ҒE`��N
K�I	'n;Neǘ&�>��A�X�Θ�H�uK��!6�~��LJ��8�fF�Yķ,y��z�7��F����hC=��F���J�����TOV�a��S�-�G?ي��[�7Ij�N�k�[�\,7��۶��� �:�i��ƍ;�([q)X��ڔU��G'���S	�7ɕ����l�rZd��K��'9�_���\����6׬�/t�����>AwA���F�U�d��l����䩄*�5�/��$[�9�:��(Ʊ0'�%��Xg>�4\�����Oh;�U��I=�<�fpEQ��T<�U��h��#v$#����l⴪a��d�ɮ�m'�BA(�E�6����^׭znyĪ7���:�<p߱c6�{RL���p�ޗض��)�mw=�Q`�<�f����q����\����>^��z�L�w���(�
�Z��VU�f��.�(.;~����k�Lq��i�G�_�z<r���U'U7����0��|�ݖ���EB4�D�j���z=��K�R�=�����ڶ	X��A,�i����W�g���i����մ!-���ҟ�L�,8]�i���F
�n�j���>���ίh��5(�
��]�W�n�E�B֮�i_��=u�mDd͐q]w���wo�MM��M���e��t_Ec��HB��+���l�l�nڐ?�ݨ�� ظy�2?���;�#I��D��r�$��ATt��n+
�( �n���� �׮�.O%-
u�5�É����`����g?���;o�������P_r��@k��s��`'�6aN�������7Ei�}��-��{��i�0b�`�A�{I��D���^�#�.N�����4����N�[�'����W.I�7eM�ub���,H��t��.j�+���{�b�J���?آI�pg꯱��1�nQ�k�!�.N�~�%j��)�z�EOط;j�M!�+tL{�-2����WAuё2s��CM��+vu��0�PQ>D���d��.9��Cq�	3F�d�6��U�r�=	�C
ϰ���N�mP�D�2w��<�A5	}ZJh!�����$-=N���68Q��TE����7oK@�L�j�4O�@�k�M<�(��s&�����1��N�Ac� w�1G<Is>��!��ۃF�v�a_~��)!�<"�0^,~���go}g7&Ǭ�N�u��miי�N�z7��Q�L����$�V��L�����U@��������*CLXi��[D��MEG�c�_�tH;6r̉!�pKd��T���L�L�.D(0�4����;OM;*"�B�R!. �7MJ]l*�� +ȇR0?&�l/��]�#����É��|nx��q<b\�[��8QU�i'��pgOV���ޔe�{5�}Fn�	�D^S�h���?�<�#~����m߶3�f�Qx��;�6���|7���P)q�c2r�6a-!rbk"�?ּ4Nl���k���a��;�+���*�PnltB��uD@�
h�wSwgA�+��s�fa��!J����x���iH]��[)�M����F0�pX����
�8�Y����	[ˋ����f�!�q8U��I��`�$���,�v����&юj>��)�NԗA�O�� �|���#�ze��J�E��y����q��E��x\�ȦZ~.A�6����Oz��u�����AG=dQ6��s)t��~��T���
����X��Z��%W�y_ �,P���?re���DT���JG���mO�0~�W�v@�%WQ#S�����V�)����+����ERG.�(\#�[{L�f���cD�H�ei�\\Z��nr?��l����$Tjͩ�� vq�[h"ؖ�����X,�G?�K�|�����Б���ο�#�*����e�H�HW��L��;��٬������I��X�&w�p;�K�W�\�Q�y���Y��:�/�t�Cu�	�G�֫���t�o�����u�zۅ���lD���?�J[��:��D�zPz�/��$O9�	�x����l�&'>��� h��^���sv��۴'x�Iv2%|݉��LL[e�7�k��g'.���'���PT�; ��h���P�/�W�r����N8H���s+de~4��`�6]e�0�!��f�D2��/�:͉����1⋷��j��1�#�/N$Uu���sP�;��� ��8�������;"�:E�n�|5mі�$]P1}��EO|Mª��7���0I����A߉j�SFi�;9Q��N6�W�b�K����)�K}�<�Xx͑`�X�KhJ^������F��yP��IS��0���d��q�N�9�<鄲��k�貣n%}���N���#�:�\�e��b����~��/ܯx�SBY�:p�(+(*���7	
�ׅ��X��;�J��"��_Ox44�3o�`M=Ou<Xw3ر��ݜ�ۢ#K{30��g/F"�##��f��`;����~�;��f�J;15�\�pݭ�Q�7�����b���D�R��M}��g3��b|�|���i��Ujs���IK�ְ�h�A��t�NVi0�����    =sM49�S^���(k�ߵ�VY]�~=YŶ����H.����/!�Ơ�H*�l�Y�#�W�2d��NU��l���W%z��0쨴���G/�����N��M�;k�1�<���1?]Q��.�2����P�-��H���XJ0.����_~���ރ�K�e)��Hy�6���{�	��vC�G1��������z�a�g;�\	��YF���I(���g�D�Qs���R;Fz<�-3�9�AxH�?���6�u\����}��{�I��u�AE�k\�j,�����_p�_����7���s��u��kj�E7�D�ﱎdv!a���Z7�}��<I�Ao �&�[ �φUKv�J�}68ɚ�SZ�EN�`+�Ańen_E/�+MH48�=���RE�g���Bq%��7�U��xl^�[o����&�^�����NhGc�uC�,:���S�͠��=ŋ�iI8������4D/���ɰJ	At���/ئ�yt�<E��%�ܩ��Y���v���*M� ���S��xT�?qF�2�%��AoB7�)�E���BDw�T��ϡ�C!���;O���p��Z2��4�O�2�C��`vi�� {B��9q&�4j���;�� ����;�K�wՔm̥j�������3�I;6��<,����`1L}�D�����@E��TsQ�㵤e��8y>~l���¨��?2��"$ز�u�;�v;��=w0�4'%�s�ط���IG�ְ4N�S�q���]mlIo����_=#�&��p���Zn��p�({
������W��X6�𴗗������
nKɚ����ref�X-\8*e�Dq���F�kUB| �f�}_������\y���X����s/�<s��mD��ױ��	bM�u����/u��4yUġ$̲BN�����W��?5LS ૕&���F���릹\(rO���,0��N�bK"�Պq��@�lD��M���#G�{ǜaK���e>�~e���Iw!L����d@AO��7����j���(z�#ܒhՊz��������<W�2E����:�F)�g^��k���Ho��1��I��c�}1��Եi�\��&v<N3܉��B�GH�]+^�O�(O0�wD�C��9]�����xLy/Kr��.�gہWQ��C-�m��D�Vq�N�#����&S�O���}dEv6 n��a�bz��!q��Fۓ�j�I!�j ���B	{F�][�	+q���y��t�Ϙ�z�Q9
5�w]7�H��U���W�o�}%�?4Ꚅ�k�8��l��&;��A�;��~;QU1i"֞��wnp���x8$�,�F
,Gz�s9�����(Fp:�di�,�]Ǩ�f�ݐ�唧�3Rk�B�����Jc�'y����3v���`�x�&�d
5� ���Z�5Z&��/m��I� ;ݼ	�*Uk��h�>�Y|a��,:
e��7:v˨�BP-KvP/�r�����`�Z�FQ�#�A/<���> I��Z�b�j����m�hu��+�n'lb��ЭC�ZÎ�(u��שwݫ���p�i��4%L��Pϓ���^��eR�O̳�~�̄�
-�Z[�D�RO��z�eG��Qm�A :�6�2�T�=�l�0D��Q	��<&�QB%�[�w ������zE�+�i�ơ?Kw�A!QU��}�8��G���� ���M|��y=��!E�ͧ��Nyh�2"��+�$j1���w~�LSrdF�0��,_�2x�{����uF
.W�~��D�bO��+���;���Kj"�G�6� ����"B�R��n��beܖ�§dX�_�]z<��Tm��~z��P�o=����tO��e�5�4MH������=��!߿�ܩN�V�r��X������%Gݬ��)�\��h�n7�Ejj9��W�����t���nl��0f�\��M1��Z w�.0��ǜ]��n*�Qo�ا�;2%�#߂��Z\i�q��Wi0*4������u�1�6�7DO�Wx�ج=B�8:�K��`
��F���P���kͯp�<�/9TP���>A��Zz_�k'���
�d0E{1����܈���2�-��u�Ճq��� �[��>���dlNi�3����O������<R���D�R$�ǚnj��N������i�ڌ�R'���>�k��%��&���������o�",F��ȇ�C5��ݔV�h��(Y�]��<�I�>`!���t'��CO��[sf��z)��:$�L�ϴ����i�A�b���ė��$,�]UsI/�X��x0�VD'��>���y��oS�������MKJ�������f����ڦ�kފ��iS�_s����a��}�p�j<}t�����}ڲK��V��j�S���8��P�DFb��<��o|-�o9H�4��n�����d�s��"N&���b��n"��,�`�noNUJ���GFwS��[�j�*1��0����~}�ᑖSc�f���({lڴc^E��;OV~��Y��fk2��|n΄(R�":h�d(���x��K/Mk�W�u�hǇ��63!���q!YO�8Y��ܕ �%68��`ho����,��h��f��"�&Hrs|�_�P�C���on�Q��J�Y������̘��k����?�����?��X��^��e��*BV�>_�!�ֹ�hj��w����g���B!�a�խ`0L}���QE;h���).20����!��Y��--�j��Cc�����3r��'�c����A�W�=��y�۱+���B��l浒�TB���R����L�J���b��t&�K��t=�0�9i�����u�jQ����MG�"V�=I�9NJ�+��Q�xd�Y��+& �f����7��JN�̆�8�<�k�q��Q�Z�Ujpw)��XNV��������L��>E`�*���V�O���Ы��Ԋ<�1/KԄZ��6֍Þ��a7�R�+��%��S[��I���JDy-������(W:L^�\Ck~�)]�����N	����k�4����Wv����;��t���0�k�$$D��4̟�y<�fH[°���K7���2N�ohKt �<#|�m�����ۉϋ�I���� ��`y�,/��v,r �80	���#�6��DVW�'��>�(���:�ik�GS����[�������Nے�1�Խ��\�u"����$�6m�0��'ǣ�K4Q$Ī�Xok��뀦�\�[5��,9�ZY-&`�>Y|�	�����IU�B���x�d����P��|�T�{��+7�3	���ͫ�cM-�O�Ck0�e|,!��f���!;�!���aR�?0�BjMu7Mن7L�]�`1�iqSK=�g�F�`6"a�"58�IL�F꜄��hB�7���Of��<m�!�H^a|2��ۈ�x����n��@B�u��`���{���ɛU�n�6Kd4U�e�u���L��Ϡk|Gc}k��m��5��0�=���2�Ic�~����'n�V���o(�h&k^�4�/��1F��c��T�AߗH�/��[�B�R2>�J�i�00&�x-�(.�w�7J��oAw3�z+��_�9�i��05�P�J]����%a�Z������ge���dl�HXM��氧����ܖ�,�ny���ct�����#u"Š��[?�9�����utJI�����N����S������hkd����ڲ��i��u�r��A�NU���>��2g�����R�Cп3B��1X�0'�6���ߜ�d?j(�;��lDԂ�!��� �9]�+�R�r`Z�a?���(�ׇ���YL$��m�����ȳ��y�\��ǁ�'�a�*��z���!W��9��'��`=���s~�塱�^�X�ŉ����~�:N���`/�`7���n�˷����Z�;a7vt���_��
}4\d��`{�N-u7��X;��w�-��|[�� <,=N�t�����߀�:�ى���k�2�qcX�m�҅�UVw" �_��n��O��t9FqGrR�<� �đ    oc�3Aj��^�aЫ����c;VA�]S�=`ha��s#q�^��j���2I�U�8�OO�������:�i��$"�e��~�$��TKg?����v!0�M~I0_p���y��g>ۤr'������plK�=ߵ"��㰩9N�	@�+�\��q�����`QRK򻞓0�v��������w��gF�%j��Y��� [v?f.W�
ɃkW�=�W�n裟	�=	1������.܆x�+��%y�m�>��a9���Kq����5�m�L4�ޛ6yL$��TNXM�,^빖i~#�ց#N�-u���:�����-ѡ��B�^�G|P6r�Wctgr�D�QOV�����Ӭ\�tm�<�4�"����T�=0:�y	��n���E�N�^9&$�1H	yt���ޤ8���dL2������m��;F��3�͉"%�h�]����,|$�E-T��c��K:&q�O�Ai�8��6*�v��H��	N�C$���-]��Q��%y�s��A>$���k$���u�jYGzu-=��W6��Z_ۣ�N$X����0���>!�*'��z�������t�}»����(@��.~\���o�� _��n����O�Z���arb��Gp��;�"���5.Da��DQ%rl��g�ɩ��vj��M�bNL5��x�Ǆ�&轺���Dĉ�}w�w|�0��G���[�KC-����/^y���>aVO�ES=?�I���N����i�Q���Rto�������8.�U��ɠ�g:ѵ����|zN��˰�E�N��4[����<&���A Y<fЅ+��@�?0lk�g'슚�ҡ�۲�(�Y���'ĉ����9X���|���]�~M=L����ċ/�5ẻ ԛ`��C�=%�jg�s�I�N���r3�ty.�0�$yٕ�z��i�N��s$�$L��RO"���*�o�9��գ����z~����܏�H��:�0\�狡���a� �~��Ўn��9g�Op⨌���
��Z_�Z�K�,�����ͣbْ�������x��<O���>�^k�6'��z���U9��Ա+�/y�Նz�}]ĸX��.$6EЛj���a���s@���Ԝ^9�ѣ��뢎]F
�.��n���}���1�7`��r����Y�S¸l:�+�:��je�eeThι�|���8'x�:�����W�wr�3�a�qY�a����q��V�h9�_>�k
�AM-�/��j��M	�U�p��ɔ�f�倭�윀��xUa�Y��ܛ����������\b��ZXp�0��3�k�,'��zp��u��7��s0�H��Y{Y8u�f�ٍ�1���K�N����ap2nX8AW��`�+mL̢�5�T0'��z��D7(��ȅ���^��)�
Ϣu�o���'�"D(����K���冭���j6a�
tbh�ٵț�v���I�zS=��1�+R4c�����3�#�^o�5��zP��$��� �芠�ݎ�2�I���c.!�Ҏ��U��:�=�{�J�S��U���] \�e�p����i�,ϐ���)�p��t��5��%��I���������z|i���a�~��[p@��,L����J��Z�+MoƒK�&k}'��Z:��v��6�����	^=8���["�-5���<��cÂ$O��v�r��?)�R�@'�z����C�;͡[;_��7�`�`jE���1#���������/y��X�m�H�j�FC����Ѹ5�9ɣrKg`��=O������o�d
ԛ�1�m��$��I@5�`�ަ�����b�0.Pz��7��Ǿ1Rt�-�x��F��ӿ�c՝�L!k�U[ͥɪ7��UߗG�d:6�C�n��w�Ч6���MN��zV�V�^V0��D�`Ĺ<�������[oL��B[���pb���p��l�g&q�%�Y��gTd_�j��A
|��?�cV�|A����az��)������c��iP������o�EKȴ�T��׵H4��c��}ى����_��G���m�����й���%O�1-9�$n0;���V��X�C�`���)趛���wD��;#��u
�EE�f��5��<`��M�t�M|���?�F%:y�:��^��]�W��Z0��QW���q����#��6ؼ� �}W���̈́1�!��&�����\qPJ��6(̔,��w�h�tt�"���ƌ�5=� ��<���c��7y�^�_�dk��E��Gŭ�[g�|*�"$���EN���}����_�b�7W�^s$ֲ;'*,���k ov�Q�8�@��4�����P��`�_ṁM�H�.:�&�C�O�.D� F�r>���k�����4�f-� �@�� �Õ�H̜��jdx���Q����������F��G)�%�ච$��i\Yw����y��%���ڏi�wE>��``��E75��+u"�#Z��<.lD��r�k�M$I�����r���>�������|
Mڡ���X��}6�?�@H������ǘ�u�A�p*b�`�����/�p�Nѥ����������T�}�>�S�1M�/ɽV��k�6�n}'�G�2���7�[��`N����/�Nr������)����'����W�qA5G�#@���ߋ/�#�������Y��=�e �-�4*-8�X�ab�xɹLd��7@� ��iTڠ5�:��3[|t^R�بtp��W��Õ����\�� �YxEY������G˗��jݣ��]���Q�^R�ШV�<G�0��:H��8"�yAQP�
�������{D?ؗ�_�	�a���˹�-��a.YI��y�]�	tNt6 ��(��L��b��O��j��Qm��k:��u�`A��}�՞�-)q�6��4S*$_�MPd�h����a�KV�P}~ͬk~8���D�����z��##�3��$�%�d��pb��)v_��yhڻ�I�Z�l���L��z��'�]�j/��Ѻ�=��-0k�x��:@�֑2������6)�P�I<�}Fʸ}�_W)n�Ĵ{蔉붨�ԬmZ+����hx�s;�P(�ش�I��p�T�`���uN�e$0�Po�p��dsN���Z(������)��W�����
�?H�~�kYx�?��u������6X����x�s1\��؜:9�����?����`~?JH����Ǡ�������65{ �u�m�3Ԝԡ ��V�{	�u�3u����8��O�x�n�9��yƌ��:<>H2�8ߞ������Hc��'"��_�Z����/[�>?�
3�Dʃ��4&�{>m�8�2xr�Gy>���h��jO
/.��k` ݘn<��� �2IJH ��]�%]G�S�
d�z|�+��d0<���Q�~F���zU}9Z�|0�Ttخ"�Q�y���n�(��I�Ň�m�-�4��~��8$U�K_�@�)��L����Tjc�RcR�x�p�JsY����[ۀ�;�r��V���h�Z�d������z�����*q>0#�y!��D��EG�I����g�~;"��vG��������k��"�q��40��%|�Y����}�?3�\C�Z��uJ�,~�֭_y���2�q�{��%Iʡŏ�h���V�i4�ӳ�8^��,����JG�7���`6��N��'<���)^�9vUMfz�R�(S�)�F0e�^C!ǖ˫���z��}��{�D�FE��UQ˛�Po�w=wK�qR5$����A0t=�6i����@�V�S%�;R&�<�Y�Փ�>�^J]GX�2�j�T�VC=�$���{������.��D��Tg�c �\�u��H�}��~g�`�L��cn(|�Z���[�A=�ZZ���i�����u�i[s�=/�2E�@��4���C��Λ;�}�Xj����z�f�حGQ" �¬YJ���ؑ��<L�ނ����!���["�PJ��]k9T[��L![�Pr��fry    '�7�`$����V%K:�+�&�0�ʄ��sַVu��8#p�t��������d�����&����:I!)��1�]g�-Q�M���0>{�j9t�c9GiO�
���ul��N��s��"�n�Jpt
�m�z׹� vs�W�4X�󞉮sq�GZ��Z�����0q�`v������Sw��Y/H��A^^�K���ޱ=ǭ�����#��"��"����[c������~�9��Gt�f:���ze��[���)W��i�-s��h�n1�/�iG�:-����`���o���S���
��9��d�\% :�����|ډ��h�	�����r�����:�����=�6��L	�J�),��|B�
�����o���GJ^�*\�BJ�ǤT����L�W�����#v�,c�����Ki���J�����p���C�V�)7EN>�67��㶉�?d���nc�r	�v�<`b��y`Hj�<RG�:�n��\t�4?�MH�C�0�[#
m1{�p
��������fi.u8�'�bv*ZsU=�+Q�@n�8$�uy�x�)QN��MD��!� �Q���7��{#}�)�'�V�����	����p��=��H׌\�4�*Sc�
VHܞ�JK=J�����L9��9U��a�t)��T�-T%Zz��{�f��bl���5gl�&\ղ�R8������|���b�q����.��U�Yu������g���Ƈ��us�8����l\��4��q�S��hbϥ0���!�2�ն�w�R���j��d9�E81)�$n�f�¯@@� 9��eВW�ݗ����8��3��$"����T�'�ӧ�{v�G�>-5u@��������痦5mAYl��%.�&6^��}��P�w �52���#U�-����n�q�]Du�c>�*��E�G-O�x[zt�ӆ]����B[����{i���Y�G�GS�yID`��X��㫲�l����:MQ�y�>��x\��6�<��B-�]�os�����>c��
\%��f��ο�������Z%�;'�������H:?z�zYٲ9F��P�jO������h-v�ŝy|����5ի���Y#��F��zi���[���pՕD���]�YN4F� �^�⻗p2lm�f�tb�0�A�$B�Sk`�k�u�'��H�羐��H�w��<ի=wp��$�pj��E�a�1�$�?O�2�����&b�.Ro��������)-`�����t�0J�,p�}�Q�|�"j�(�ۓa>�c�5��� J6�A��ūa���=��(u���{�+���W����(��(��o����ъx=�;jT�$��0^�8a���ȰU����nX���ن8��*y���?GԿͽ�7fq��$ר��7\�5���6	�i�������9�ZU`"�Y�����.���)�jX���C�}G����RѴp�g��$[I���+���k��'w���혉���`]�J�~ �)�\@����l�՜ǧ��\4��(!�fE��}�,����M��8>0�݉Q)�>��(�T��Z�8�r(V��`�7��K�g��~���7k#�(D�����g9�߁DUn6խ ג~�u��ccz�7y��9A���l�(��v��3�<̱�XY����m��VZz��UH*��?�g�q��`JOV��0t��0����P�(�y���B�u��������:����	i;ܜ����XQ���[�f�L�x���%ݪ�G�cp���W�k�ԣ����1��X���f��K�V���i�l�Qq�G�j�`m�'����7ԭ8�H��`�&��}\N�-8��}�ړ�����al���)a��@��&=>F,�J����Mp�pD��ƌ�47၍���<����ol�&�[�0u���z�12}��C��$;�J�N�ݬ����^v�5�}��\�^?��%����l[�J"�SU�7u���Iu��S/�W S�:�q���A�"�?桅�qP�;��w�웚��]���A��'��c��rf�n7�r���)K"�%�
S�z:]�B����;/�]���l�@���n��{[W��$����?��k�'�`0az��U�4�l�;jv4In)��V�p��|U�O�~@�e^����Ƴ���L���x-���d���bQ̬A��NY=O��xL�0�C��p��Aú"\�G��*P$�g�j�toD}Wx�k��/�CSSw�
����cLo���bq�a.�T�.<��Z���&�j��T��E�U���	���8�].���ZHbТ�:-�}��{��%JN ���h(�J� ��#v��j{5	ǹ��o���rѵv0=a-	6}8�.?��5�I�9h��Q�x�g��ю@�j�:�d�̽Z�11y<$��k�������(t]1���D�#P-��ne�awA�v� ���?���Q��==Xw�	��`��MHt�V�R�C���]�m���GΡ�7'	��0�-
<�th��<;I�U���:ե/�m�.��-��=���4�X܊�=�p�`�}��d=M��6$"0�ă(\OJO5Xl���ɻ`5�./�&��l�Q���\�L%e��$�>~������wL��)��Ļ��R�z���G qP_}!�J�d/e�`��O�3�L�%� X�݁�#p�k s���3�~2�x
a�$V`Ls.K���������)]��y����$Nn�j�K�{��Eg��QYnm�z�& ��n%+i�$z.)���h��_Я�S��A�.g�&uQS��	�O\�:&��<1?����eq�M�����MAJ�1��O�{��}H�j6]`��F��H��HMͅ�$��!��� �ݓ Ʀ�+�5��K��h��}�lڗ�=�1����Ot3�n��!��0����A���	�݉�r>�-�4����ЏȇtJD���N�K��n��A$i��W�-Z7���׋��)�I��/J,��l��� -B�� �K�����w����p�#�"O�����|7:�M�/߆V���}^r�5|o���;=��|wp��u����EO5����1��D�@⺚�����ݼ���F��D1���>�%@�j.�!�c���Lqs����|���vm��{K��`��K[=��V����^غv�ğ�5J�Trux}�0��[�/����Y��:HGx1�N\��e�kYB\�*(��1�Q�zK�$%��IoL�����1	K�9���Ux�.Vz`Z�aĴ�u���)n:70�;���֛jY�҂�T�}�[s?���/vA�����H��٭`��$~EG"2����%~���"R�pl����¡K�����ܓ��FY�MRſG�|z��|A/膱��ŝ��	��D�7�`\��{��+���s�$�6Z%��2N;
�:�qF�պ;y��r�:u��i��y�K
�U�h��pťu�r���	˒7� ��m����q��V�>�`9����̚��b%���FwF삛G	����e��A�o]��,̇9�56�
���gi�`2�Q��?*	�i�x��L83O������=ftQb�7��T,-�}����7t8���#BZ��0AJǚ���JD����h=�-zM_��vG��f���zu��H���|��2 ����PĿ���,
�	p̈@-�v����L2s'��a�/�`#i3d
��ӼL�A��<^�A�͌�!ݽ-��*����p�8������͕<}&X���_%���A˛hx�VS�A��Vԯxu��+���٪��^���H�-�X�-:��H�7�ʇ ��ϬgavQ���uJ���jY���z��°7��O�=���homu/�C���rW���{�}���~*�˷��Hm��d����?�+���J	��܀�'�/�eQG�%� ȜP����|:��]"ZS=�,�_���yñ�w&�i�\��C	�Q-j�\�$E:0!������i��Z]�W�ҡMy��h���+���r����ᮄm��
���4v�;��h#�/D[h�� ��(*�[��?$N �
  ?��H�%nQLpG�KU�ݦ Hw��	x�06�}�	�X�}j��yg<���lFq��SV��NyQo�A`�d{�N@�\�%Úff�.�*
*��5�e�`e ��݉��`�Q+�7������8!Q�HwfQf���<�ʁ"-��-q��h��7�_#���> �tKs:��~����1�Gyk�#B}��='�C� 4��;��2�*!�	�"��޻˥|@�g-�Tg�@���!sCQ�ʞ9���@��o�T&'d���o�!���d�J�x3K���Ht��tƟ�^Z�X
b�]��N4�du$2��%��(�g��y��kã��f���Ͽ�3#���(IS��=����m��
ƭ��nP�t�Q���o���P
�!��[��v|�t���duf	�� D.�L�O���C�o�1 �IS'�:��Fv�/��2������	����{�����U��G�^���D|��7;7�|��Ś���]&�y�[`��C��-U�r�?�d�NX�|
�q�Sؤ�P��90���M�'�������O�hW��Eင��l���LF���L
	����B���k�Q��;|���8�z!��A2���?�8J��m�b�(�U&ĳ4�x��
����������s9�W�	��� -9�S>�w�h���y�lfC���˵e�����H
�@{�4����/pr�FK=�Í��N�ҧ��U��f�;�yJ1�T�POy$���
S��z��X:8�\o`v����Z-��)��۔�~��@)9͝�tߤ�ݞV�#��� Mz�87y��҃�2x��$d/g����.�V^/��FHN�O�J��iء��S2p/�2/��,�f�U��B����z��E�H�F�*�@�Ç�o+^�k��HP�&���*��%ګ�D��3-�!�M�lc�f��g��FӪ�D&HA��!yW%�$"pmuOg���*��p�	U��Ԫ,��5d�m��@a|�ą�N�'X�L�o�q�u	�vf���k�Ó��UAJ8K���οUQ_�M�S�*HJk�y���ɇ]�dS��� �dU=���N;7�*���h�5u/��UfR Ľ��>uE=!��]qW��N��5����[�W�%5o@�A���P#GfWgN��#=Nd�}yrX�z�x:���`�6؁��sA��P���y�'�	�����Jn���pE�	�f��w?#zO`�.J�^.�Q�µ^�Lb5�7�U�p��*z��$���Y�O��>�7�0�w������E{��\T�>󑨘!�D�$!RlX��`z��.�H4o@t^u�T򯹯��Nd7� n�Y���.�{���=������v�� ���� ��˞CK�afS� �g�����9����_q<�f���;j!���s�Up�s�R^��4898׃�Q�9��+,N�3���&�z�.4UQ�$��?����_����YU��)���+����4�:_��Qc�e.��T^�o��tڛ�sU	"x�a�l��^�٪*����T�45D��;Lo��w�3#M0�.z�I@o��7��F��g�����߷���U��s�u � �~@����L���V[-%�1�yb����fP���&!�WE�o�u�u}o��{L��5nס�n�YV���$���.������=�����L�{t��Â�[��,��j��M7��5��a[q����y�cB��f%�#����5��ׂ����'B�tx�j�\W�A%M�G��r�'Ӕ�Q�ۢ�7���n�`!�{���;�����? �h[�kh�� ���ݖ�k�J�5�_�in._~ ؤ�O����ᰗ���ׁS�揥�$��%�M{O��p�Z���L��Z%'��'��Z��M�W�폐�Z`��/f�$���(��K:b;8�G�eDl2��q�Y~<�
��Ư* ]��UW����m��GͦK'H�m���]뻴_D9��[�{�����NUa��������?������i�����]p���|�f�Gi��q�W4�Ȋ���t��z��d`���U�%PZ��}��{ti!�>�{���k�+9�
F�8'�dT"��y�:��a	��9v����G8#��hj�������7�s�l�vy�y@?��4�q2(͂������鏧%�e<�?L�C�R!�c|m�\R���:�6�Ca�䑜�ϯ�T��y���^�U��$i�;�eL*$v�q�K�
�J��,4�w����K}E��� �YQ����E9�c0�^�� ��C	��Z
���<��t���Y�Oh�!H2�YSsA/�H�sZ�N	sD����W�C����o$p��z:]	�̒Fz<^�hIMu��aq��#3B���(Ilj��e�\s;�$@0���w$��` �[c��{M`$P:�נ�d�y}�Q���9�j�|@�u[&m���o��z���$�+j9��	��,?��Q��|�1�Kv���Q.KάZ �02<�?1��(u�q�`W_�����������B�=��1v�@�)�t֋OE���u�a0jlD��y��D;���S��3r�Q��Ԡڦ�/�՘%_4�=eAw�a>m�����lT C��.�W�o.&�#ZÚP���?�2�=J�����(��I���{�G��"�Q��_���[J:��H���w+6Gn:_;������*.��D�gO�q��T.H�pwj �����������F      �   V  x����ne7�k�)�{AR�D�gI�	�.U�?s�M�m��}Ε�o�C�����X�X�+�>y��˦��Ҷ�t����yhk��m�1F���)v�bn?MCM��Og�R��I
����U�g۸v�Ё/�-�	�����V5�y�2]66޵8i�e�8�rv���J�爙�u�˵��;FY��c��矟u>~��!$���?��D��I����e�m�|-<��A��u��cz��s�Q��b�'j��4���2YS���n�y��Ϲ*��:���}b�A�
�R&;����žWt���q���N�ywX)��8 ��Ks�ęI�����-[k��)uB9����88e�T��{�֛�=��s~1�٭���2%���b�!���[����)�b�+��4�dN)L���̸�2�_����,��B�-kY6oB�����ӕ��u��9jV����J&��W�%v����T�Q�"t�u�����ǅ��wL�,�RwXB�o1~>�S���/f{̕5�~n���Ɯ$�Q��{S�������E
j�}��yF�7��ܣF�HsZk����q4{ս�%Y���!��<�\)��5܀;�6ݺ��&ŻP��7�����rL��}&�$�
Y��tݿe��l������~1���13M[r4��Ð���pY��%��BM]p�gD�e��Y�����$����u�q�c����y�B
aD3�sUf1�+�׾�Y�����r�&��D�����]FZ�l�q[�t@Ĩ�<�U娯��ੳ����ɛ��֋Ⱦ����7 �Q��q�bզӣ�JQ��u08���@��s� �'V�髶���� ��c�XV;�b>��^4ڱq=��d¨:ѹeQ�=[h	�ИlI���֘H4���q�5%X%qqE�_��G*B��ÂZ������ͷ�[����f�"�<"�n"î���FE���M:�hw^N�����ՕCW`�m���:�O�og�/����Cc��B������!nŰ:�����1���L�)|ڗ7LH��>�x\�)�+���0��B�b
�U�N����~!\f�>??�>,�      �      x��=�$����S�N۲  ��T�kF�I<?��^}�����z�+3���{��W�_2�i�=��~�iZR�I��9byM��2���w���6/z��fR��|d[����u[����[/כ^�!��qΚ�ͫu[������V�ͷꞢc�����%c�ؒ�=|NI����~ed+GU��0��c�R?U}��Ӫ6���W?3�_���?������ʒ�_R��#�-�Ͽ$������O*�l�\_���D~'ȴ�+��d]�ԡ�3��m)ۧ�c�,������>�'#�4ZNM�7��I��	��@Od߳��瑹n�z�e�����6��-w��w������/X��o�]��y@��rξU���1g�={q+��ǚ��^6e����^��I�|2�Kҟ�����_����d�v�����Z�]��4�:wu�����4���e�ۄ�KJ�����$ة�g�%��8�T?����޳����:���Ӝy�v�}�v i�7�%�z˚��	���[HГ5v��z��6��S��;��d�F���vr[��:��=?���HKy���o�Z@�B1�&n��Xk7��A�t�(�H�yۂ����KM��Y�:�jw��W}LPn�����Y)�X���:N�[���Y��ߛ�����n�	g�>T��TϘ5�-7����v�(ӓ�2���ҵ��J1�)�珞��޾]�@V�$�D_,�Y�Je^5{�����1Ve��ө�)y���ͫ-Ħ�.1�t��w�M��&�َ��_H�j6��;\�u�'g��	����S���l�b�]�����J��ھ��8uP��\k6;k5�~K���������`�n���{<�,g�����@��$y�S�+7��;K �/%6u�R7tv�wn�v�A����m&��2�~��im�b2�X�a� C�m�R��ԍ�.y�LSK����>EPX��=�ETis-�`�:8"��?��	Ҁ�!�u�`qG�!x�a-;�U�)��-�6�tQ��uV�A�u�>b��PK/i�@�~ �g���j�^�Y�P�k��{BWO2F�j �s1:�^���,�a�(R�k��X�C��z.��N#	�?K�OͲ�Á�~B[A`(��0��D�����0�>�M�doy��b*��)�]Յ���`qA��P:��49,#r���-*�N'��C�%���;,Kd�׿��W�8�5<Wih���@��� �j�ͺ�f�cX����MG��$�r�?�ѐb��t��J	CVs����*��G{�`�Vj+��6}�����YV�w�r�%|L
�UH֯MXƈy�޼�;�y�8}��{R�堐�X��B�>�.��x� K��M�Z^M�X��pLaM~�V�z4���ʊz�f��*��Fj�=��ͮ'��#�x��>��e�=H����m�+3�"��6v�2c�rDm�{�Eg��//{�L%#�x��qT��.<��5���N�5~���\WG��t��_����м{��|�Fa�Z�, ��L*�6���x�ϰ�,n��v�c�cL�b�-��p�KHřP:+�2q���4Z��Ψ�8����s��"��K��
x�Z�>-u���*�9�p�8Z���e�&.=�B���̮�J�G����v�fvefԿ��ge�O��1d��5�꘏�G'U�bY��p�;�[;$-�=��W5�~����me��nTQ�unOа1�ٶcG�o쳅p�o�v�&�eW'_"yb{M��Df�.��_K9"E>���ڽ���τ�����J��8�o:� ,���Gw܏ K�)Lya���ONcIj���`}h�LI��#��|F� ��@W(
�X������}*�5A5��AIj�F�A���R`��)�3s�`vʅ�$�<����蝧%�WH:O���W\� �⒐Q
�x�-|�0!���P�����Zd����I��	�������?CF����=��ȾYygY} +��7 �w��7{ K?�}2'S~LF�?�}��N��� V~�'�`X)�/���o ���ճ>��d߂L�'�@�x�1��+�H/k���hR���y�G\$?�$��=O��
s�	6�7���ޤ[��D�9s�]I���������=�<u�^��9����D�QW�|d��AF��<3���[�fd�HZ��'���jҫ-�P|:e��xD����
)`말eK~Uy�Ry���!��G���a��H�DF�s���&���B�G1�t�eUմ�a\x[��J|͏������$�&���񊾖*<�k�7CW�&ߌ������Z��ɨ3�%��A��ڨ�ဤD�T\�8���u���o��tزV��j/����g��w�x�ח�h?�}��ϫ�/��d�Y�ʍ��X2�ľ���.���/�MIڒ�c�;�t�\�5mԭ��^��"�i�,]�*3:���&h�����e�6Y�����>_q�m�n�-+˱T3`s���uj��̍f��"�Vw�[�Uz�����Z�-��*,NS��q��7�������Bg���������l���h�W�_�[�Z'�CK����V�s���O��|��,�`;�f�X7�0D����#��IQ���[ݱ�t��,�d��Бh_���6�?ǀE+�~u@n[��=^�9L< �W*��x��l�E�.+vQk��qi�F:�VmFc�d>��6�>5I:�#���y!UȾNc�Y0�f��ͷڹ� \U�����}��s�aj�v�V��x��b�h׶Z�ᲊ����s�l��wWZЭ^��&D��Mm�K�-{w��t��C"���;���V����j�b�(�c��>M.ː(���=����6��3l~b%� ��A������d��O�H�1%6'�9��0p�欼��+�*c��g��ݴ��9U�9�w$�h7I�j�5f�j�⟱�\R7Ż����4Г��o��A��s+��� Q��b��hˠ�`�ֻ��1>>3��Q	�2w�	�@%~�����Nw�h k�B�1��Y��N��^�?;%�1e�4���<�2�m�
�!	��Iބ��)��vޓ��Fk\Ț�(]���7�;�V�i���� B(�N��l��E�AHQ����]:�$�P��)��uBУ,g-������!xEp���~%)��o��2)��1�2ķt��x���>��d����wI/��Ƕ��7 ko�/I_��ز}��א1b�-������F�.k&b����Ii:h�p��8�A.Ux�P	0i_��DED���D%�i�8��;�x�ȵuĈ�Z�&86&-܇�͑�r��+.:L��j�%��8�9jᦗ�)	и� #S�7粄��`}��>1�Y���/�/+��	z�z*^�I �!M���Cù�燉 ���9,D<��$a��Q�)��|�	9���#�H�k�{.!s�`�!2��謞2��7x��a�$'�V���2]�Ge��rc���c���QX��A:��居�m'��qVH?�=̿i�2���c���� ~��Na�c���SK�=�N�+��Ą�8�����ڔK�źA�g�S����`sǘuC��7�'v�T�#Kx�cƺi}T���̽�%d��HK��焌޺�F�h�svZ֥+�3V9�2O�\%��8�g�O����g��U�S��y��X#ʿ��ed
YX>�]f���q����Glfk���zY=���*w��������c�f�ZO����.�p����4�8G[��l<Cw,yK�~r�kd��|�%�[�YT��b�](��/���M�K+���诺�Φ�MP��C���g񔆙[֟���Y�h�c݁O�Ԓa�J�j��8*�K�NDe#`�v����q\�0nH3�]z@ۘ���);P��x>��T�nu�ן��Lmڙ�2���0�I����� B6m�b��T4��vq/�`O��$i�g�]<k��<�Z��'���}?�K �xY�9����,:;��=1G+G뜬x�%�/�L{ޫSf0,���e��Z�����;	]T����M�##�)�"ꆋB�����l����U�줸�[a�1��A�}
<�0C�U�Yy�Y(j��I��ج���'��g>�NV> �  69�W?������`�W���1�0�i�t��OK�{X�A�A�'Dg$�0�qp�-�J��m
�wN����@y�i+q0�B#ō6O��1ҩ�'3q�� �*5��4�<�x29͢}̓)�+M�g�A����6���R�Fp؏ۧ�u0����3�t�h�qh.�,}�ƙ��1�c��w�Z$!N���	�g�z��Ps5�m�h�qTD�ps��BÆ��J�Jg���A/���:zցz�m��W=0��33zfHьD �Y�2N}�o��DO~Ի/�
mJ$�g>�O���4�Nָ�.9ţ�<N������n߇,˟�c35��A�����I��sm�	�'��+����Ya}hb�f�|$�`N�3�#�����@0`�l��#�L1a�ў
ĉS�q���E��t��
;C��H#~�q�mRv�=����+�X!C���[4�}s)�U	���r��>�¯ԨI�S�� �����ĥ�xȀfx˅P�1��Mjl��Xd�Be�!;*/q�9�22fwaE�ߗ_(A,i_��Bl.D||��ϱB�L�X�[o��')P�H��8�|H�����.,\F��`�M�ԉ��A�����oY��[�Ո����X�$~ܱP��ۇׁ��X�Il`ʗ���������R�Y      �     x�͐�JEQE����^�$;�neioks�ā����<��`a+$vH,M�];����|���i͸}����>�.��Č��i��a2�\kQk�����f�1d�)AR����{�LBh��t�6͘�m��JT���<\����LK6l�@ %�cQ�ӠJ��Jg-}r����V����=���o�﯏��J7�+�h�5��t������I嗦e)�%�T�5)���cq4ӂ���P��p*���¡� z&���˻��I����ʞ�?==����*��      �   F  x����JC1@׹_��4�+Ͻu�FW�Mh+���u�^A�#b7���{���VK��
Ä$���!V�S�w�zUgu�oWY2��b6V�����Xc�`��1��U0�P<
X�h��p�XL�h���<�U�ؼ5ے_�M����l�%?��_n	�z�z�0�8<>&HG��
E	&�V� n?���#ؙ . ��	�Rd�y��"�AXvu���gY�O{7�e�lxx_Nc�FLb��V8�:��XEp��B�ً�N�%��!2쨆��^�r����'��θ�;P��� �#Ev��mDk����7X�O�D�.	'��r��LUU���      �   F   x�U�1� �f��U�q\	�-���c%�=�z�1G(�5Q����1���8��L��\�Y�����N�      �      x������ � �     