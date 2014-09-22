<?php



const JMENO_SEVERKA = 'Severka';
const JMENO_JIZNI_KRIZ = 'JizniKriz';
const JMENO_VLOCKA = 'Vlocka';
const JMENO_HIAWATHA = 'Hiawatha';

const KOREN_WEBU = 'stredisko';
//const KOREN_WEBU = '';

const ODDELOVAC_ADRESARU = '/';

const ADRESAR_KNIHOVNY = 'Knihovny';
const ADRESAR_OBRAZKY = 'Obrazky';

const ADRESAR_SEVERKA = 'Severka';
const ADRESAR_JIZNI_KRIZ = 'Jizni_kriz';
const ADRESAR_VLOCKA = 'Vlocka';
const ADRESAR_HIAWATHA = 'Hiawatha';

const HLAVNI_TRIDA_SMARTY = 'Smarty-3.1.16/libs/Smarty.class.php';

const SOUBOR_STYLU = 'hlavni.css';
const SOUBOR_SKRIPTU = 'hlavni.js';

const ADRESA_JQUERY = '//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js';


/* Smarty */
const ADRESAR_SMARTY = 'Smarty';
const ADRESAR_SMARTY_SABLONY = 'Sablony';
const ADRESAR_SMARTY_KOMPILACNI = 'Kompilacni Adresar';
const ADRESAR_SMARTY_NASTAVENI = 'Nastaveni';
const ADRESAR_SMARTY_CACHE = 'Cache';

// Fotky
const FOTKA_VLOCKA = 'Vlocka.JPG';
const FOTKA_HIAWATHA = 'Hiawatha.jpg';
const FOTKA_JIZNI_KRIZ = 'Jizni_Kriz.jpg';
const FOTKA_SEVERKA = 'Severka.jpg';

define('TIMESTAMP', '?' . date(DATE_ATOM, time()));

// cesty
define('CESTA_ADRESAR_OBRAZKU', getcwd() . ODDELOVAC_ADRESARU . ADRESAR_OBRAZKY);

define('CESTA_ADRESAR_OBRAZKU_SEVERKA', CESTA_ADRESAR_OBRAZKU . ODDELOVAC_ADRESARU . ADRESAR_SEVERKA);
define('CESTA_ADRESAR_OBRAZKU_JIZNI_KRIZ', CESTA_ADRESAR_OBRAZKU . ODDELOVAC_ADRESARU . ADRESAR_JIZNI_KRIZ);
define('CESTA_ADRESAR_OBRAZKU_VLOCKA', CESTA_ADRESAR_OBRAZKU . ODDELOVAC_ADRESARU . ADRESAR_VLOCKA);
define('CESTA_ADRESAR_OBRAZKU_HIAWATHA', CESTA_ADRESAR_OBRAZKU . ODDELOVAC_ADRESARU . ADRESAR_HIAWATHA);

/* Smatry */
define('CESTA_SMARTY_KNIHOVNA', getcwd() . ODDELOVAC_ADRESARU . ADRESAR_KNIHOVNY . ODDELOVAC_ADRESARU .
    HLAVNI_TRIDA_SMARTY);

define('CESTA_SMARTY_SOUBORY', getcwd() . ODDELOVAC_ADRESARU . ADRESAR_SMARTY);
define('CESTA_SMARTY_SABLONY', CESTA_SMARTY_SOUBORY . ODDELOVAC_ADRESARU . ADRESAR_SMARTY_SABLONY . ODDELOVAC_ADRESARU);
define('CESTA_SMARTY_KOMPILACNI_ADRESAR', CESTA_SMARTY_SOUBORY . ODDELOVAC_ADRESARU . ADRESAR_SMARTY_KOMPILACNI .
    ODDELOVAC_ADRESARU);
define('CESTA_SMARTY_NASTAVENI', CESTA_SMARTY_SOUBORY . ODDELOVAC_ADRESARU . ADRESAR_SMARTY_NASTAVENI .
    ODDELOVAC_ADRESARU);
define('CESTA_SMARTY_CACHE', CESTA_SMARTY_SOUBORY . ODDELOVAC_ADRESARU . ADRESAR_SMARTY_CACHE . ODDELOVAC_ADRESARU);


// Adresy
define('ADRESA_KOREN_WEBU', 'http://' . $_SERVER["SERVER_NAME"] . ODDELOVAC_ADRESARU . KOREN_WEBU);

define('ADRESA_GLOBALNI_STYL', ADRESA_KOREN_WEBU . ODDELOVAC_ADRESARU . SOUBOR_STYLU . TIMESTAMP);
define('ADRESA_GLOBALNI_SKRIPT', ADRESA_KOREN_WEBU . ODDELOVAC_ADRESARU . SOUBOR_SKRIPTU);

define('ADRESA_ADRESARE_OBRAZKU', ADRESA_KOREN_WEBU . ODDELOVAC_ADRESARU . ADRESAR_OBRAZKY);

// Adresy fotky
define('ADRESA_FOTKA_VLOCKA', ADRESA_ADRESARE_OBRAZKU . ODDELOVAC_ADRESARU . FOTKA_VLOCKA);
define('ADRESA_FOTKA_HIAWATHA', ADRESA_ADRESARE_OBRAZKU . ODDELOVAC_ADRESARU . FOTKA_HIAWATHA);
define('ADRESA_FOTKA_JIZNI_KRIZ', ADRESA_ADRESARE_OBRAZKU . ODDELOVAC_ADRESARU . FOTKA_JIZNI_KRIZ);
define('ADRESA_FOTKA_SEVERKA', ADRESA_ADRESARE_OBRAZKU . ODDELOVAC_ADRESARU . FOTKA_SEVERKA);

