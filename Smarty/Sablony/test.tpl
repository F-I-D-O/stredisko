<!DOCTYPE html>
{config_load file='nastaveni.conf'}

<html>
<head>
    {* Používané meta tagy *}
    <meta charset="UTF-8">

    {* hlavní soubor stylu *}
    <link href="{$smarty.const.ADRESA_GLOBALNI_STYL}" rel='stylesheet' type='text/css'>

    {* JQuery *}
    <script src="{$smarty.const.ADRESA_JQUERY}"></script>

	{* jquery.reject*}
	<script src="Knihovny/jReject/jquery.reject.min.js" type="text/javascript"></script>
	<link rel="stylesheet" href="Knihovny/jReject/jquery.reject.css" type="text/css" />

	{* nivo slider *}
	<link rel="stylesheet" href="nivo-slider/nivo-slider.css" type="text/css" />
	<link rel="stylesheet" href="nivo-slider/themes/default/default.css" type="text/css" />
	<script src="nivo-slider/jquery.nivo.slider.pack.js" type="text/javascript"></script>
	
	<script src="Knihovny/slippry-1.2.1/dist/slippry.min.js"></script>
	<link rel="stylesheet" href="Knihovny/slippry-1.2.7/dist/slippry.css" />

    {* Hlavní skript *}
    <script src="{$smarty.const.ADRESA_GLOBALNI_SKRIPT}"></script>

	{* pro správnou počáteční stránku *}
	<meta name="pocatecni_stranka" content="{$smarty.const.POCATECNI_ADRESA}">
</head>

<body 
	data-2='{literal}{{/literal}"barva": "{#barvaStredisko#}", "barvaSvetlejsi": "{#barvaStrediskoSvetlejsi#}"{literal}}{/literal}'
	data-23='{literal}{{/literal}"barva": "{#barvaSeverka#}", "barvaSvetlejsi": "{#barvaSeverkaSvetlejsi#}"{literal}}{/literal}'
	data-27='{literal}{{/literal}"barva": "{#barvaJizniKriz#}", "barvaSvetlejsi": "{#barvaJizniKrizSvetlejsi#}"{literal}}{/literal}'
	data-28='{literal}{{/literal}"barva": "{#barvaVlocka#}", "barvaSvetlejsi": "{#barvaVlockaSvetlejsi#}"{literal}}{/literal}'
	data-29='{literal}{{/literal}"barva": "{#barvaHiawatha#}", "barvaSvetlejsi": "{#barvaHiawathaSvetlejsi#}"{literal}}{/literal}'
	data-20='{literal}{{/literal}"barva": "{#barvaOstatni#}", "barvaSvetlejsi": "{#barvaOstatniSvetlejsi#}"{literal}}{/literal}'>

	<div id="slider-obal">
{*				<div id="hlavni-slider-obal">*}
			<ul class="hlavniSlider 2">
				<li><a class="odkaz_severka"><img src="{$smarty.const.ADRESA_FOTKA_SEVERKA}" title="{#nadpisSeverka#}"></a></li>
				<li><a class="odkaz_jizni_kriz"><img src="{$smarty.const.ADRESA_FOTKA_JIZNI_KRIZ}" title="{#nadpisJizniKriz#}"></a></li>
				<li><a class="odkaz_vlocka"><img src="{$smarty.const.ADRESA_FOTKA_VLOCKA}" title="{#nadpisVlocka#}"></a></li>
				<li><a class="odkaz_hiawatha"><img src="{$smarty.const.ADRESA_FOTKA_HIAWATHA}" title="{#nadpisHiawatha#}"></a></li>
			</ul>
{*				</div>*}
	</div>											
</body>
</html>

