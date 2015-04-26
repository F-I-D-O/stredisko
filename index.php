<?php

const PREDLOZKY = '/ ([ksvzaiouKSVZAIOU]) /';
const NAHRADA_NEDELITELNOU_MEZEROU = ' \\1&nbsp;';

define('KORENOVA_CESTA', getcwd());

spl_autoload_register(function ($class) {
	if(file_exists(KORENOVA_CESTA . "/Tridy/{$class}.php")){
		require KORENOVA_CESTA . "/Tridy/{$class}.php";
	}
});

require 'cesty.php';
require CESTA_SMARTY_KNIHOVNA;



define ('POCATECNI_ADRESA',  (array_key_exists("stranka", $_GET) ? $_GET["stranka"] : ""));

$smarty = new MySmarty();

//$smarty->setTemplateDir(CESTA_SMARTY_SABLONY);
//$smarty->setCompileDir(CESTA_SMARTY_KOMPILACNI_ADRESAR);
//$smarty->setConfigDir(CESTA_SMARTY_NASTAVENI);
//$smarty->setCacheDir(CESTA_SMARTY_CACHE);

pripravObrazky(CESTA_ADRESAR_OBRAZKU_SEVERKA, JMENO_SEVERKA);
pripravObrazky(CESTA_ADRESAR_OBRAZKU_JIZNI_KRIZ, JMENO_JIZNI_KRIZ);
pripravObrazky(CESTA_ADRESAR_OBRAZKU_VLOCKA, JMENO_VLOCKA);
pripravObrazky(CESTA_ADRESAR_OBRAZKU_HIAWATHA, JMENO_HIAWATHA);

$smarty->display('stranka.tpl');




function pripravObrazky($cesta, $jmenoPromenne){
	$obrazky = glob($cesta . '/*.{jpg,jpeg,png,JPG,JPEG,PNG}', GLOB_BRACE);
	foreach ($obrazky as &$adresa){
		$adresa = cestaNaAdresu($adresa);
	}
	$GLOBALS['smarty']->assign('obrazky' . $jmenoPromenne, $obrazky);
}

function cestaNaAdresu($cesta){
	$relativni_cesta = substr($cesta, strlen(getcwd()));
	return ADRESA_KOREN_WEBU . ODDELOVAC_ADRESARU . $relativni_cesta;
}

function ceskeZalamovaniPredlozek($string) {
	return preg_replace(PREDLOZKY, NAHRADA_NEDELITELNOU_MEZEROU, $string);
}