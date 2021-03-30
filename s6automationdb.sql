PGDMP     9    :                y           automation-db    13.2    13.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16571    automation-db    DATABASE     s   CREATE DATABASE "automation-db" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE "automation-db";
                postgres    false            �            1259    16572 	   employees    TABLE     �   CREATE TABLE public.employees (
    employee_id integer NOT NULL,
    firstname name COLLATE pg_catalog."default",
    lastname text,
    phone numeric(13,0),
    email text,
    office_id integer
);
    DROP TABLE public.employees;
       public         heap    postgres    false            �            1259    16627    handreciept    TABLE     s   CREATE TABLE public.handreciept (
    reciept_id integer NOT NULL,
    item_id integer,
    employee_id integer
);
    DROP TABLE public.handreciept;
       public         heap    postgres    false            �            1259    16645 	   inventory    TABLE     �   CREATE TABLE public.inventory (
    item_id integer NOT NULL,
    serialnumber character varying(255),
    product_id integer
);
    DROP TABLE public.inventory;
       public         heap    postgres    false            �            1259    16580    office    TABLE     �   CREATE TABLE public.office (
    office_id integer NOT NULL,
    unit text,
    address text,
    city text,
    zipcode numeric(10,0)
);
    DROP TABLE public.office;
       public         heap    postgres    false            �            1259    16637    product    TABLE     �   CREATE TABLE public.product (
    product_id integer NOT NULL,
    product_name character varying(255),
    product_type character varying(255)
);
    DROP TABLE public.product;
       public         heap    postgres    false            �          0    16572 	   employees 
   TABLE DATA           ^   COPY public.employees (employee_id, firstname, lastname, phone, email, office_id) FROM stdin;
    public          postgres    false    200   z       �          0    16627    handreciept 
   TABLE DATA           G   COPY public.handreciept (reciept_id, item_id, employee_id) FROM stdin;
    public          postgres    false    202   	       �          0    16645 	   inventory 
   TABLE DATA           F   COPY public.inventory (item_id, serialnumber, product_id) FROM stdin;
    public          postgres    false    204   0       �          0    16580    office 
   TABLE DATA           I   COPY public.office (office_id, unit, address, city, zipcode) FROM stdin;
    public          postgres    false    201   e       �          0    16637    product 
   TABLE DATA           I   COPY public.product (product_id, product_name, product_type) FROM stdin;
    public          postgres    false    203   �       4           2606    16579    employees employees_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (employee_id);
 B   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_pkey;
       public            postgres    false    200            9           2606    16631    handreciept handreciept_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.handreciept
    ADD CONSTRAINT handreciept_pkey PRIMARY KEY (reciept_id);
 F   ALTER TABLE ONLY public.handreciept DROP CONSTRAINT handreciept_pkey;
       public            postgres    false    202            =           2606    16649    inventory inventory_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_pkey PRIMARY KEY (item_id);
 B   ALTER TABLE ONLY public.inventory DROP CONSTRAINT inventory_pkey;
       public            postgres    false    204            7           2606    16587    office office_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.office
    ADD CONSTRAINT office_pkey PRIMARY KEY (office_id);
 <   ALTER TABLE ONLY public.office DROP CONSTRAINT office_pkey;
       public            postgres    false    201            ;           2606    16644    product product_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (product_id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    203            5           1259    16598    fki_office_id    INDEX     H   CREATE INDEX fki_office_id ON public.employees USING btree (office_id);
 !   DROP INDEX public.fki_office_id;
       public            postgres    false    200            ?           2606    16632 (   handreciept handreciept_employee_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.handreciept
    ADD CONSTRAINT handreciept_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES public.employees(employee_id);
 R   ALTER TABLE ONLY public.handreciept DROP CONSTRAINT handreciept_employee_id_fkey;
       public          postgres    false    202    2868    200            @           2606    16650 #   inventory inventory_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(product_id);
 M   ALTER TABLE ONLY public.inventory DROP CONSTRAINT inventory_product_id_fkey;
       public          postgres    false    203    204    2875            >           2606    16615    employees office_id_to_employee    FK CONSTRAINT     �   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT office_id_to_employee FOREIGN KEY (office_id) REFERENCES public.office(office_id);
 I   ALTER TABLE ONLY public.employees DROP CONSTRAINT office_id_to_employee;
       public          postgres    false    200    2871    201            �      x�]��
�0E盏y��yI7q�����SkH�<TЯ��.:��9��+w���;�*��E�u4��%�r��C�M�'�Atz�)i�5���Gϯ��+�$�l�^��&��=3�P:�����HƘd�4�      �      x�3�4�4�2�4�1z\\\ 	      �   %   x�3�t��4��4�2��t�qrb���� h�,      �   c   x�3�t,ʭT�q�445Wp���IMOUp,K��K-Wp**�+.�L�洰40�2�4�544Q��s�432U�M��S.)JM-�t�/J)洰03����� �S�      �   R   x�3�t,(�IU�,���KU�� 1��8]Rsr��MR�8�2�JR���!�>�%�%�)�
�FF�!�I9�%1y\1z\\\ �w�     