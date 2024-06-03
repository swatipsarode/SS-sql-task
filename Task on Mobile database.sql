PGDMP      &                |            Task    16.2    16.2 $    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24782    Task    DATABASE     �   CREATE DATABASE "Task" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "Task";
                postgres    false            �            1259    24906    company    TABLE     �   CREATE TABLE public.company (
    mob_id integer NOT NULL,
    brand_name character varying,
    mobile_models character varying,
    manufacturing_country character varying,
    ms_id integer
);
    DROP TABLE public.company;
       public         heap    postgres    false            �            1259    24905    company_mob_id_seq    SEQUENCE     �   CREATE SEQUENCE public.company_mob_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.company_mob_id_seq;
       public          postgres    false    222            �           0    0    company_mob_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.company_mob_id_seq OWNED BY public.company.mob_id;
          public          postgres    false    221            �            1259    24892    customer    TABLE     �   CREATE TABLE public.customer (
    cust_id integer NOT NULL,
    customer_name character varying,
    gender character varying,
    city character varying,
    state character varying,
    pincode integer,
    ms_id integer
);
    DROP TABLE public.customer;
       public         heap    postgres    false            �            1259    24891    customer_cust_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_cust_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.customer_cust_id_seq;
       public          postgres    false    220            �           0    0    customer_cust_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.customer_cust_id_seq OWNED BY public.customer.cust_id;
          public          postgres    false    219            �            1259    24784 	   mob_specs    TABLE     �   CREATE TABLE public.mob_specs (
    ms_id integer NOT NULL,
    mobile_models character varying(100),
    ram integer,
    size integer,
    storage integer,
    battery integer
);
    DROP TABLE public.mob_specs;
       public         heap    postgres    false            �            1259    24783    mob_specs_ms_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mob_specs_ms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.mob_specs_ms_id_seq;
       public          postgres    false    216            �           0    0    mob_specs_ms_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.mob_specs_ms_id_seq OWNED BY public.mob_specs.ms_id;
          public          postgres    false    215            �            1259    24883    mobile_specs    TABLE     )  CREATE TABLE public.mobile_specs (
    ms_id integer NOT NULL,
    mobile_models character varying(100),
    ram integer,
    display_size_inches integer,
    storage_gb integer,
    battery_mh integer,
    "price_$" integer,
    processor character varying,
    mobile_color character varying
);
     DROP TABLE public.mobile_specs;
       public         heap    postgres    false            �            1259    24882    mobile_specs_ms_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mobile_specs_ms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.mobile_specs_ms_id_seq;
       public          postgres    false    218            �           0    0    mobile_specs_ms_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.mobile_specs_ms_id_seq OWNED BY public.mobile_specs.ms_id;
          public          postgres    false    217            �            1259    24919    new_mob_specs    TABLE     �   CREATE TABLE public.new_mob_specs (
    ram integer,
    display_size_inches integer,
    storage_gb integer,
    battery_mh integer
);
 !   DROP TABLE public.new_mob_specs;
       public         heap    postgres    false            0           2604    24909    company mob_id    DEFAULT     p   ALTER TABLE ONLY public.company ALTER COLUMN mob_id SET DEFAULT nextval('public.company_mob_id_seq'::regclass);
 =   ALTER TABLE public.company ALTER COLUMN mob_id DROP DEFAULT;
       public          postgres    false    222    221    222            /           2604    24895    customer cust_id    DEFAULT     t   ALTER TABLE ONLY public.customer ALTER COLUMN cust_id SET DEFAULT nextval('public.customer_cust_id_seq'::regclass);
 ?   ALTER TABLE public.customer ALTER COLUMN cust_id DROP DEFAULT;
       public          postgres    false    220    219    220            -           2604    24787    mob_specs ms_id    DEFAULT     r   ALTER TABLE ONLY public.mob_specs ALTER COLUMN ms_id SET DEFAULT nextval('public.mob_specs_ms_id_seq'::regclass);
 >   ALTER TABLE public.mob_specs ALTER COLUMN ms_id DROP DEFAULT;
       public          postgres    false    215    216    216            .           2604    24886    mobile_specs ms_id    DEFAULT     x   ALTER TABLE ONLY public.mobile_specs ALTER COLUMN ms_id SET DEFAULT nextval('public.mobile_specs_ms_id_seq'::regclass);
 A   ALTER TABLE public.mobile_specs ALTER COLUMN ms_id DROP DEFAULT;
       public          postgres    false    217    218    218            �          0    24906    company 
   TABLE DATA           b   COPY public.company (mob_id, brand_name, mobile_models, manufacturing_country, ms_id) FROM stdin;
    public          postgres    false    222   �(       �          0    24892    customer 
   TABLE DATA           _   COPY public.customer (cust_id, customer_name, gender, city, state, pincode, ms_id) FROM stdin;
    public          postgres    false    220   �,       �          0    24784 	   mob_specs 
   TABLE DATA           V   COPY public.mob_specs (ms_id, mobile_models, ram, size, storage, battery) FROM stdin;
    public          postgres    false    216   �6       �          0    24883    mobile_specs 
   TABLE DATA           �   COPY public.mobile_specs (ms_id, mobile_models, ram, display_size_inches, storage_gb, battery_mh, "price_$", processor, mobile_color) FROM stdin;
    public          postgres    false    218   �6       �          0    24919    new_mob_specs 
   TABLE DATA           Y   COPY public.new_mob_specs (ram, display_size_inches, storage_gb, battery_mh) FROM stdin;
    public          postgres    false    223   =       �           0    0    company_mob_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.company_mob_id_seq', 13, true);
          public          postgres    false    221            �           0    0    customer_cust_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.customer_cust_id_seq', 30, true);
          public          postgres    false    219            �           0    0    mob_specs_ms_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.mob_specs_ms_id_seq', 1, false);
          public          postgres    false    215            �           0    0    mobile_specs_ms_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.mobile_specs_ms_id_seq', 13, true);
          public          postgres    false    217            8           2606    24913    company company_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.company
    ADD CONSTRAINT company_pkey PRIMARY KEY (mob_id);
 >   ALTER TABLE ONLY public.company DROP CONSTRAINT company_pkey;
       public            postgres    false    222            6           2606    24899    customer customer_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (cust_id);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public            postgres    false    220            2           2606    24789    mob_specs mob_specs_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.mob_specs
    ADD CONSTRAINT mob_specs_pkey PRIMARY KEY (ms_id);
 B   ALTER TABLE ONLY public.mob_specs DROP CONSTRAINT mob_specs_pkey;
       public            postgres    false    216            4           2606    24890    mobile_specs mobile_specs_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.mobile_specs
    ADD CONSTRAINT mobile_specs_pkey PRIMARY KEY (ms_id);
 H   ALTER TABLE ONLY public.mobile_specs DROP CONSTRAINT mobile_specs_pkey;
       public            postgres    false    218            :           2606    24914    company company_ms_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.company
    ADD CONSTRAINT company_ms_id_fkey FOREIGN KEY (ms_id) REFERENCES public.mobile_specs(ms_id);
 D   ALTER TABLE ONLY public.company DROP CONSTRAINT company_ms_id_fkey;
       public          postgres    false    4660    222    218            9           2606    24900    customer customer_ms_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_ms_id_fkey FOREIGN KEY (ms_id) REFERENCES public.mobile_specs(ms_id);
 F   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_ms_id_fkey;
       public          postgres    false    218    220    4660            �   �  x���_S�8şu>�wggw���#ei�K�� �t��iT���')��Wq"b'v&3 r�{�ӹWfd���1���X֞L���^Vu����i�県�o}���S^z�!���~��K(�We w>�%���b�H3�����Y	E���"�|������Q��F��^鄳�.�tm&zfq���q�l����D�ތ�&�JB-U�c����8�
�=q��jY�U��>����^B�ıl-�|m:��:�����~�0����V�%�ۉ�eF�u���8� G�>����~�� ���S����>6���)��`��)K8�l�Y�a��ђ��������\���
�I��O!�� In�O!�� I�A!)� I�;9D��=�<����ҷb��ES3BA�#�'4ıۣ�����v�',��)��c�фM6����G�7#ut���C^���,|9#2�d�DC�3,;�$��5~w�����E^��oj|K\rHA��ۏw��_[�ex�L}�gq��@��v!%�"7�y�4j�ѩhG(HM�U3Щn��+}�!��xۉ���_,C��˼*S���a��o	���}�۽���3��l�K�>�'�*�J�?�ks�8+���9/f�פ/D��8�赖�{F@�_P4�Z�;J���*����eHA
j��:S�R�lK�� &����;�:Ve��a��#tv�rl�����Jtw�4��A����5��箛�M��>D��$���w*�_�O����н'��F���y����>כn�L���[�s��`��/�jԑi������Ā���@���0�>�xs��0Gߥ@3��j��&����ݴtc`z����;�5f�WO��q�{������ۥ)oӖj�a�n�բm9l?m����̉����0󖓭�=���{n~�a�yo���߁�1��H۞,_�;j�'����Ŏ����O��j��A�h�v_��h��z      �   
  x��Y�r�8|��_0E�	>�v�#9�؛�l�"a-N(�E��$_��)��/����ݧ���M����F���4��?��������8�a��U���P���>��us�V�����\�HaC9MȦ�"����.��ܪ��|\�,��Д�;�կ�[YU�:�����������I�RA�T]"�E���?�]�����&LЌܩV��2���y_Vj���}���a��r$}.wf�~�w�(�^6v}�-(In���F���ֿ���W�2s�Yd�%@<�uݫ_UӺ�W���Ѧ�Bc1YT�SXw�[��A��mf�,B��Z=�*��(�_IޯI����2C�A�/ͮ-��_�����R���9e	�T�ϥ�>�v��9���Q���.IYJ<Sѵnk��ި���ٜ�Km��	rטS����}���"I�6b�2���u��e�ܫ�jN'��pK����Q}�8��n�Y��?�����C'{9�?���4ܪ��m���$9w �k��?Y} ���̢� ����-
�~8��W��H�+��, g�B���:���W�V���rmf�2����5�oӚ�ڑO_Ha��8�	����iZ(͋K�����'"c�P��k�>b�_J��gw���W� )�~%����Z�-JR��sA�oU�-�[���-��g]���/Z�΢�N�Z���ey�E�uO����wJ�.�
��6e]k��T�-"����k�=5-��B���!���]a�d��
�A}o�Q��������'����L㯻�l���a�����~h0󑈄��$�u�Li�f�d�&ouJ�Ѥ�J�KF�r���J��31K&i�u�?.�����J�Uˮi �� ��.��Yt.�o�8����g��Z�L M�@^Aӷ7���	L���:?!�3����>l]�8��p�cz��LĈ6�����f�RyJ���i�g5v .h*}S\kV���fE,O<�iѱz�.��T�:;��8�^e��rI�9n��4��43=_A{��%��"[��8|�w�)@&�Y;TC�M�@�^� /���*�$�B�u�bT^��&ǔp�Ž��$	�z�WZઠY7��4�˗�ತӘw��-F�tВ_���(�����e�f��p>Z(�$�Y����5���_U�#��6sn�Q�
+	!��;�c�u7H-�\X=�4i���Կ�{��pλ)"�����mJ�3I���	�m0��x��.�t�1����p��܀gF�A�O[���16�
�-�~e���Ȫ��`ԚL�ܮ����ӳ��7�%yW����"8�y��^W��v��MHlb�"��x�٩�!֮/�k�͔9Ϭ][r��N�Sf�!��I�պ^��-�v>k��YV��hc�����f�\��-�l���s����ޘ�M�mB:]{o�s0�I*�N����-b'�9��'iL��7U����XF�;�Z�,g�rZ�7�o�����YZѵ�?��e�r$a�"P�L�q�Γ�k��sGBR\���Q� :����9�;a��$�(�C7J�pK��N�=]�JAn�����,��c���Ǆcј�x��6���`b񰃍�ד������#z�YgZÓ��"�q�s���0h����c�o�a1��~\,��!ɂF����s�������U�f�۩Ň;��|������m�7��K�煼��N0�T`9�=�����`�
���r����BC�ɤ���=�d��#��$�򠏬��)�d��\�!��l�9	?���@�~b�5&AXd<E&{���<����XXn]��u��N9�5�-���:��cper90
�t��2�N���?�m�Ֆ��Lb�w�ɴ֐rL��V_y��,��{g�*��h� %�7�`�Q���W��n��2�F��y���c꟱�0�� �$�:˦iZ=K "!�Dv�7�I2�2)�O7��>�V0��Pd/�݌�@84�2��d8d)��v��p�R7;�OAcFr-����z&�xlb��33�{d�C�.8_m�d��:�l��,Ӡ�L�S��(樖$�8S7� C��C�����58`��K�G�P�#v�E&��2`�!�MO#���)dt�s,01���	���W�b��)��s������K��1#�>E�xhA^�3��@B!��߮�י�*�V93/ 'W��o��$cF
�*K;����K�<{��Q��6߳�k.�O<�L��9�!�i�]yF�4�\ٽL2#�㾘g��d�*s_x���]^�ã)bȱǓ�e��!�R~��6��F�X�I�O��nDrf�T��8/�2w�kp��?�� ���#��.�z��0tK�1/�����
�b�1Y�S�q�X�y��Yf��A���Rn�~-=vxH2��y��ǘ f1ɾƜ�/��u�X��GPd�l�.<���H�P���NAt(}C���r�����3�5!DX���9�49���Y$��CV�5x~�
�u��������S�v��Baq�i����	������R�k      �      x������ � �      �   %  x��XMs�6=C��v:� �Gű7��D�����H��1M�G��K � ;ɅC},w��۷�*���ߖM]�����(��&B���o��AU8�2��,6���W�+�����J��G�qĵ�X�d�M�3��rXp�f����$�o���}��F�x�eQ�OxE��*ѮH�ο�*u����宨���*E3�L��n.����`*�&�v�0���R��R��.J�v�I�x�����F�F�O'kQ-|���7��gQ���Ă�#ߜStQ����ӌ�R�	��E-L�Օ�M�z�g��� B�ų�x�DxY���M7�������K[|Q�C3#1�p��x��;Y}t�N]�Ać6��� �q���Z��.X��j��ф ltr�W��M�u�@���GR/6�L�k�:�1�I�G�׽�5���Ilg$ �#@6tٯ� ]A㜽��!zC�D�f���)m^���܀A_bÏ��5FЗ�#0���y0�x�)3x�5:}3�� �ؐ�'�i�]�GL���؀L'�]�[��u��'���}z���Nvq?⸫�n.���F}����eF���V�����B=I���Z5�Ey$U��s���cf�x4�2�H�ˇAp�}Z�s��x�U�k�Nr�<��N��,��٪&DK���P�x�۶�	���~+�n�ғ!	e���捨�~/Nm����q[a�I^�Hy7��L���l����X[xD"��8�������##��,v
�-�'��/�C��|+ ���xJ
M�$��	僈���F#J~w��L��"�p���6q92͌ϲzxm�@�c�@�Îϲ�~m�qw1���M@leшG��݆dEOڄCG&I 6hŵ���=�,��'h`ٜl�k�������CKQ�^6�%�f�W0���{��
��\W��Ҥ'L��}�R��,눕Yʏ�MgW�WY��]Y>(h��9w�������o<
��ܠ!1uY�eQ�E��E<,켣�&��' �V�~���9�M�Bs�;�r[ɇ����)�N\]9_5���m>�����v��6Bv�jтƂC�Q��".ŗ/��G|ʰ���ǰ��8(��=�p�j�w���`NRw�ry*i�c�M��5�h��.rP��S��O�Y�aca~��TK����'g�ym��MQ(S�=�TO�p_���f�O��M�M�����Xꤞ��[V:��ٮ�7
Z��0s�� u�eՈ�,jS�t{�5�G{�J}��aI V��$��[�\� ����ɕ��}�)�k����Qg��"�0嘙(�D)z{<<β�2���3�-;���f�f���cR��C�������cT:�%���N��X��8F���e!�jC�,�&:�!/�����1�^�P��kiymw|��G�3kH?�]
s��r�Kg��.�4f[ĝ�w,,���V~�>�k��R��a���VΎ���g��$7݋���gqOln�n+yP+W����4�G�#���Fw��}�)X��N`\u�ŀ��-I9<UW�߿f���a&V      �     x��T�C!<k1E ���_G�� =�7�����!C�R� �"���LO
{!˳]Xg!rƈ�axuV�	`���U��G�w �EҤY!���66�	��]�L�8YmjM�M�j˘�)[V� ET��V��B�"+�@�)G����[�2B���t?@*,]u���~�K <<v�?�վ�mό�ۦ��d݄�ec
琁��.�&n��\�jMpҦ��(�]bpN��ƫn�Y��WR�x����I�.�E�W��K�     