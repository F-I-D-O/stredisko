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
	<link rel="stylesheet" href="Knihovny/slippry-1.2.1/dist/slippry.css" />

    {* Hlavní skript *}
    <script src="{$smarty.const.ADRESA_GLOBALNI_SKRIPT}"></script>

	{* pro správnou počáteční stránku *}
	<meta name="pocatecni_stranka" content="{$smarty.const.POCATECNI_ADRESA}">
</head>

<body 
	data-2='{literal}{{/literal}"barva": "{#barvaStredisko#}"{literal}}{/literal}'
	data-23='{literal}{{/literal}"barva": "{#barvaSeverka#}"{literal}}{/literal}'
	data-27='{literal}{{/literal}"barva": "{#barvaJizniKriz#}"{literal}}{/literal}'
	data-28='{literal}{{/literal}"barva": "{#barvaVlocka#}"{literal}}{/literal}'
	data-29='{literal}{{/literal}"barva": "{#barvaHiawatha#}"{literal}}{/literal}'
	data-20='{literal}{{/literal}"barva": "{#barvaOstatni#}"{literal}}{/literal}'>

    <div id="hlavni">
        {*<div id="nadpis">
            <h1>Středisko Stopa Plzeň</h1>
        </div>*}
        <div id="menu" class="titulka">
            <a id='menu-2' class="odkaz_stredisko">
                <div class="sestiuhelnik-obal-vnejsi">
                    <div class="sestiuhelnik-obal-vnitrni">
                        <div class="sestiuhelnik-obsah" style="background-color: {#barvaStredisko#}">
                            Středisko
                        </div>
                    </div>
                </div>
            </a>
            <a id='menu-23' class="odkaz_severka">
                <div class="sestiuhelnik-obal-vnejsi">
                    <div class="sestiuhelnik-obal-vnitrni">
                        <div class="sestiuhelnik-obsah" style="background-color: {#barvaSeverka#}">
                            {#nadpisSeverka#}
                        </div>
                    </div>
                </div>
            </a>
            <a id='menu-27' class="odkaz_jizni_kriz">
                <div class="sestiuhelnik-obal-vnejsi">
                    <div class="sestiuhelnik-obal-vnitrni">
                        <div class="sestiuhelnik-obsah" style="background-color: {#barvaJizniKriz#}">
                            {#nadpisJizniKriz#}
                        </div>
                    </div>
                </div>
            </a>
            <a id='menu-28' class="odkaz_vlocka">
                <div class="sestiuhelnik-obal-vnejsi">
                    <div class="sestiuhelnik-obal-vnitrni">
                        <div class="sestiuhelnik-obsah" style="background-color: {#barvaVlocka#}">
                            {#nadpisVlocka#}
                        </div>
                    </div>
                </div>
            </a>
            <a id='menu-29' class="odkaz_hiawatha">
                <div class="sestiuhelnik-obal-vnejsi">
                    <div class="sestiuhelnik-obal-vnitrni">
                        <div class="sestiuhelnik-obsah" style="background-color: {#barvaHiawatha#}">
                            {#nadpisHiawatha#}
                        </div>
                    </div>
                </div>
            </a>

            <a id='menu-20' class="odkaz_dalsi">
                <div class="sestiuhelnik-obal-vnejsi">
                    <div class="sestiuhelnik-obal-vnitrni">
                        <div class="sestiuhelnik-obsah" style="background-color: {#barvaOstatni#}">
                            Akce střediska
                        </div>
                    </div>
                </div>
            </a>			
        </div>
			
        <div id="podstrana">
            <div id="first-design-rrectangle" class="design-rectangle"></div>
            <div id="second-design-rrectangle" class="design-rectangle"></div>
            <div id="third-design-rrectangle" class="design-rectangle"></div>
			<a class='domu'>
                <div class="sestiuhelnik-obal-vnejsi">
                    <div class="sestiuhelnik-obal-vnitrni">
                        <div class="sestiuhelnik-obsah">
                            <div class="text">Domů</div>
                        </div>
                    </div>
                </div>
            </a>
			<div id="slider-obal">
                <div class="sestiuhelnik-obal-vnejsi">
                    <div class="sestiuhelnik-obal-vnitrni">
                        <div class="sestiuhelnik-obsah">
                            <div id="hlavni-slider-obal">
								<ul class="hlavniSlider 2">
									<li><a class="odkaz_severka"><img src="{$smarty.const.ADRESA_FOTKA_SEVERKA}" title="{#nadpisSeverka#}"></a></li>
									<li><a class="odkaz_jizni_kriz"><img src="{$smarty.const.ADRESA_FOTKA_JIZNI_KRIZ}" title="{#nadpisJizniKriz#}"></a></li>
									<li><a class="odkaz_vlocka"><img src="{$smarty.const.ADRESA_FOTKA_VLOCKA}" title="{#nadpisVlocka#}"></a></li>
									<li><a class="odkaz_hiawatha"><img src="{$smarty.const.ADRESA_FOTKA_HIAWATHA}" title="{#nadpisHiawatha#}"></a></li>
								</ul>
								<ul class="hlavniSlider 23">
									{foreach $obrazkySeverka as $index => $adresa}
										<li><a href="#slide{$index}"><img title="{#nadpisSeverka#}" data-src="{$adresa}"></a></li>
									{/foreach}
								</ul>
								<ul class="hlavniSlider 27">
									{foreach $obrazkyJizniKriz as $index => $adresa}
										<li><a href="#slide{$index}"><img title="{#nadpisJizniKriz#}" data-src="{$adresa}"></a></li>
									{/foreach}
								</ul>
								<ul class="hlavniSlider 28">
									{foreach $obrazkyVlocka as $index => $adresa}
										<li><a href="#slide{$index}"><img title="{#nadpisVlocka#}" data-src="{$adresa}"></a></li>
									{/foreach}
								</ul>
								<ul class="hlavniSlider 29">
									{foreach $obrazkyHiawatha as $index => $adresa}
										<li><a href="#slide{$index}"><img title="{#nadpisHiawatha#}" data-src="{$adresa}"></a></li>
									{/foreach}
								</ul>
							</div>
                        </div>
                    </div>
                </div>
            </div>
			
			<a	id='odkaz-ven'
				target="_blank"
				data-23='{literal}{{/literal}"link": "{#odkazVenSeverka#}", "text": "{#textOdkazVenSeverka#}"{literal}}{/literal}'
				data-27='{literal}{{/literal}"link": "{#odkazVenJizniKriz#}", "text": "{#textOdkazVenJizniKriz#}"{literal}}{/literal}'
				data-28='{literal}{{/literal}"link": "{#odkazVenVlocka#}", "text": "{#textOdkazVenVlocka#}"{literal}}{/literal}'
				data-29='{literal}{{/literal}"link": "{#odkazVenHiawatha#}", "text": "{#textOdkazVenHiawatha#}"{literal}}{/literal}'>
                <div class="sestiuhelnik-obal-vnejsi">
                    <div class="sestiuhelnik-obal-vnitrni">
                        <div class="sestiuhelnik-obsah">
                            <div class="text"></div>
                        </div>
                    </div>
                </div>
            </a>					
								
			<div id="clanek">
				<div id="2" class="info" style="color: {#barvaStredisko#}">
					<h1>{#nadpisStredisko#}</h1>
					{#textStredisko#}
				</div>
				<div id="23" class="info" style="color: {#barvaSeverka#}">
					<h1>{#nadpisSeverka#}</h1>
					{#textSeverka#}
				</div>
				<div id="27" class="info" style="color: {#barvaJizniKriz#}">
					<h1>{#nadpisJizniKriz#}</h1>
					{#textJizniKriz#}
				</div>
				<div id="28" class="info" style="color: {#barvaVlocka#}">
					<h1>{#nadpisVlocka#}</h1>
					{#textVlocka#}
				</div>
				<div id="29" class="info" style="color: {#barvaHiawatha#}">
					<h1>{#nadpisHiawatha#}</h1>
					{#textHiawatha#}
				</div>
			</div>
        </div>
		
		
		{*<div id="obal-patka">
			<footer>

			</footer>
		</div>*}
    </div>
</body>
</html>

