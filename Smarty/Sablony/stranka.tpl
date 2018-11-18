<!DOCTYPE html>
{config_load file='nastaveni.conf'}

<html>
<head>
    {* Používané meta tagy *}
    <meta charset="UTF-8">
    <title>Junák - středisko Stopa Plzeň</title>
    <meta name="description" content="Junák - Český skaut, středisko Stopa Plzeň. Skautské středisko působící v 
          Boleci, v centru, na Skvrňanech i na Slovanech"/>
    <meta name="author" content="Fido"/>
    
    {* hlavní soubor stylu *}
    <link href="{$smarty.const.ADRESA_GLOBALNI_STYL}" rel='stylesheet' type='text/css'>
    
    {* JQuery *}
    <script src="{$smarty.const.ADRESA_JQUERY}"></script>
        
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.3/jquery-ui.min.js"></script>

    {* jquery.reject*}
    <script src="Knihovny/jReject/jquery.reject.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="Knihovny/jReject/jquery.reject.css" type="text/css" />

    <script src="Knihovny/jquery.color-2.1.2.min.js"></script>

    {* nivo slider *}
    <link rel="stylesheet" href="nivo-slider/nivo-slider.css" type="text/css" />
    <link rel="stylesheet" href="nivo-slider/themes/default/default.css" type="text/css" />
    <script src="nivo-slider/jquery.nivo.slider.pack.js" type="text/javascript"></script>

    <script src="Knihovny/slippry-1.2.7/dist/slippry.min.js"></script>
    <link rel="stylesheet" href="Knihovny/slippry-1.2.7/dist/slippry.css" />
    
    {* Hlavní skript *}
    <script src="{$smarty.const.ADRESA_GLOBALNI_SKRIPT}"></script>
    
    {* pro správnou počáteční stránku *}
    <meta name="pocatecni_stranka" content="{$smarty.const.POCATECNI_ADRESA}">
    
    <script>
        {literal}
            (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
            })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
    
            ga('create', 'UA-63604463-2', 'auto');
            ga('send', 'pageview');
        {/literal}
    </script>
</head>

<body 
	data-koren-webu="{$smarty.const.KOREN_WEBU}"
	data-2='{literal}{{/literal}"barva": "{#barvaStredisko#}", "barvaSvetlejsi": "{#barvaStrediskoSvetlejsi#}"{literal}}{/literal}'
	data-21='{literal}{{/literal}"barva": "{#barvaStenovice#}", "barvaSvetlejsi": "{#barvaStenoviceSvetlejsi#}"{literal}}{/literal}'
	data-23='{literal}{{/literal}"barva": "{#barvaSeverka#}", "barvaSvetlejsi": "{#barvaSeverkaSvetlejsi#}"{literal}}{/literal}'
	data-27='{literal}{{/literal}"barva": "{#barvaJizniKriz#}", "barvaSvetlejsi": "{#barvaJizniKrizSvetlejsi#}"{literal}}{/literal}'
	data-28='{literal}{{/literal}"barva": "{#barvaVlocka#}", "barvaSvetlejsi": "{#barvaVlockaSvetlejsi#}"{literal}}{/literal}'
	data-29='{literal}{{/literal}"barva": "{#barvaHiawatha#}", "barvaSvetlejsi": "{#barvaHiawathaSvetlejsi#}"{literal}}{/literal}'
	data-20='{literal}{{/literal}"barva": "{#barvaOstatni#}", "barvaSvetlejsi": "{#barvaOstatniSvetlejsi#}"{literal}}{/literal}'>

    <div id="hlavni">
        {*<div id="nadpis">
            <h1>Středisko Stopa Plzeň</h1>
        </div>*}
        <div id="slider-obal">
            <ul class="hlavniSlider 0">
                {foreach $obrazkyStredisko as $index => $adresa}
                    <li><img title="{#nadpisStredisko#}" alt="{#nadpisStredisko#}" data-src="{$adresa}"></li>
                {/foreach}
            </ul>
        </div>
        <div id="logo"></div>
        <a href="http://www.skaut.cz/" target="_blank" id="logo-junak"></a>
        <div id="menu" class="titulka">
                    <a id='menu-2' class="sestiuhelnik-obal-vnejsi odkaz_stredisko">
                        <div class="sestiuhelnik-obal-vnitrni">
                            <div class="sestiuhelnik-obsah" style="background-color: {#barvaStredisko#}">
                                <p>{#nadpisStredisko#}</p>                           
                            </div>
                        </div>
                    </a>
					<a id='menu-21' class="odkaz_stenovice sestiuhelnik-obal-vnejsi">
                        <div class="sestiuhelnik-obal-vnitrni">
                            <div class="sestiuhelnik-obsah" style="background-color: {#barvaStenovice#}">
                                <p>{#nadpisStenovice#}</p>
                            </div>
                        </div>
                    </a>
                    <a id='menu-23' class="odkaz_severka sestiuhelnik-obal-vnejsi">
                        <div class="sestiuhelnik-obal-vnitrni">
                            <div class="sestiuhelnik-obsah" style="background-color: {#barvaSeverka#}">
                                <p>{#nadpisSeverka#}</p>
                            </div>
                        </div>
                    </a>
                    <a id='menu-27' class="odkaz_jizni_kriz sestiuhelnik-obal-vnejsi">
                        <div class="sestiuhelnik-obal-vnitrni">
                            <div class="sestiuhelnik-obsah" style="background-color: {#barvaJizniKriz#}">
                                <p>{#nadpisJizniKriz#}</p>
                            </div>
                        </div>
                    </a>
                    <a id='menu-28' class="odkaz_vlocka sestiuhelnik-obal-vnejsi">
                        <div class="sestiuhelnik-obal-vnitrni">
                            <div class="sestiuhelnik-obsah" style="background-color: {#barvaVlocka#}">
                                <p>{#nadpisVlocka#}</p>
                            </div>
                        </div>
                    </a>
                    <a id='menu-29' class="odkaz_hiawatha sestiuhelnik-obal-vnejsi">
                        <div class="sestiuhelnik-obal-vnitrni">
                            <div class="sestiuhelnik-obsah" style="background-color: {#barvaHiawatha#}">
                                <p>{#nadpisHiawatha#}</p>
                            </div>
                        </div>
                    </a>
                    <a id='menu-20' class="odkaz_dalsi sestiuhelnik-obal-vnejsi">
                        <div class="sestiuhelnik-obal-vnitrni">
                            <div class="sestiuhelnik-obsah" style="background-color: {#barvaOstatni#}">
                                <p>{#nadpisDalsi#}</p>
                            </div>
                        </div>
                    </a>
           
                                
                    <a    id='odkaz-ven'
                        target="_blank"
						data-21='{literal}{{/literal}"link": "{#odkazVenStenovice#}", "text": "{#textOdkazVenStenovice#}"{literal}}{/literal}'
                        data-23='{literal}{{/literal}"link": "{#odkazVenSeverka#}", "text": "{#textOdkazVenSeverka#}"{literal}}{/literal}'
                        data-27='{literal}{{/literal}"link": "{#odkazVenJizniKriz#}", "text": "{#textOdkazVenJizniKriz#}"{literal}}{/literal}'
                        data-28='{literal}{{/literal}"link": "{#odkazVenVlocka#}", "text": "{#textOdkazVenVlocka#}"{literal}}{/literal}'
                        data-29='{literal}{{/literal}"link": "{#odkazVenHiawatha#}", "text": "{#textOdkazVenHiawatha#}"{literal}}{/literal}'>
                <div class="sestiuhelnik-obal-vnejsi">
                    <div class="sestiuhelnik-obal-vnitrni">
                        <div class="sestiuhelnik-obsah">
                            <p class="text"></p>
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
            <div id="akce-strediska">
                <h1>Naše základna, akce a projekty střediska</h1>
                {foreach #nadpisAkce# as $nadpis}
                    <div class="akce-obal {cycle values="licha,suda"}">
                        {if !empty({#odkazAkce#[$nadpis@index]})}
                            <a class="akce-odkaz" target="_blank" href="{#odkazAkce#[$nadpis@index]}">
                        {else}
                            <div class="akce-odkaz">
                        {/if}
                        
                            <div class="sestiuhelnik-obal-vnejsi">
                                <div class="sestiuhelnik-obal-vnitrni">
                                    <div class="sestiuhelnik-obsah no-over">
                                        <h2>{$nadpis}</h2>
                                    </div>
                                    <div class="sestiuhelnik-obsah hover">
                                        <h2>Odkaz na web</h2>
                                    </div>
                                </div>
                            </div>
                        {if !empty({#odkazAkce#[$nadpis@index]})}
                            </a>
                        {else}
                            </div>
                        {/if}
                        <div class="akce-text">{#textAkce#[$nadpis@index]}</div>
                    </div>    
                {/foreach}
            </div>
            <div id="slider-obal">
                {*<ul class="hlavniSlider 2">
                    <li><a class="odkaz_severka"><img src="{$smarty.const.ADRESA_FOTKA_SEVERKA}" title="{#nadpisSeverka#}"></a></li>
                    <li><a class="odkaz_jizni_kriz"><img src="{$smarty.const.ADRESA_FOTKA_JIZNI_KRIZ}" title="{#nadpisJizniKriz#}"></a></li>
                    <li><a class="odkaz_vlocka"><img src="{$smarty.const.ADRESA_FOTKA_VLOCKA}" title="{#nadpisVlocka#}"></a></li>
                    <li><a class="odkaz_hiawatha"><img src="{$smarty.const.ADRESA_FOTKA_HIAWATHA}" title="{#nadpisHiawatha#}"></a></li>
                </ul>*}
                <ul class="hlavniSlider 2">
                    {foreach $obrazkyStredisko as $index => $adresa}
                        <li><img title="{#nadpisStredisko#}" alt="{#nadpisStredisko#}" data-src="{$adresa}"></li>
                    {/foreach}
                </ul>
				 <ul class="hlavniSlider 21">
                    {foreach $obrazkySeverka as $index => $adresa}
                        <li><img title="{#nadpisStenovice#}" alt="{#nadpisStenovice#}" data-src="{$adresa}"></li>
                    {/foreach}
                </ul>
                <ul class="hlavniSlider 23">
                    {foreach $obrazkySeverka as $index => $adresa}
                        <li><img title="{#nadpisSeverka#}" alt="{#nadpisSeverka#}" data-src="{$adresa}"></li>
                    {/foreach}
                </ul>
                <ul class="hlavniSlider 27">
                    {foreach $obrazkyJizniKriz as $index => $adresa}
                        <li><img title="{#nadpisJizniKriz#}" alt="{#nadpisJizniKriz#}" data-src="{$adresa}"></li>
                    {/foreach}
                </ul>
                <ul class="hlavniSlider 28">
                    {foreach $obrazkyVlocka as $index => $adresa}
                        <li><img title="{#nadpisVlocka#}" alt="{#nadpisVlocka#}" data-src="{$adresa}"></li>
                    {/foreach}
                </ul>
                <ul class="hlavniSlider 29">
                    {foreach $obrazkyHiawatha as $index => $adresa}
                        <li><img title="{#nadpisHiawatha#}" alt="{#nadpisHiawatha#}" data-src="{$adresa}"></li>
                    {/foreach}
                </ul>
            </div>								
			<div id="clanek-obal">				
				<div id="clanek">
	{*				<div id="clanek-pozadi-slider"></div>*}
					<div id="2" class="info" style="color: {#barvaStredisko#}">
						<h1>{#nadpisStredisko#}</h1>
						{#textStredisko#|ceskeZalamovaniPredlozek}
                        <h2>Partneři</h2>
                        <div id='loga'>
                            {foreach $obrazkyLoga as $index => $adresa}
                                <img title="logo" alt="logo" src="{$adresa}">
                            {/foreach}
                        </div>
					</div>
					<div id="21" class="info" style="color: {#barvaStenovice#}">
						<h1>{#nadpisStenovice#}</h1>
						{#textStenovice#|ceskeZalamovaniPredlozek}
					</div>
					<div id="23" class="info" style="color: {#barvaSeverka#}">
						<h1>{#nadpisSeverka#}</h1>
						{#textSeverka#|ceskeZalamovaniPredlozek}
					</div>
					<div id="27" class="info" style="color: {#barvaJizniKriz#}">
						<h1>{#nadpisJizniKriz#}</h1>
						{#textJizniKriz#|ceskeZalamovaniPredlozek}
					</div>
					<div id="28" class="info" style="color: {#barvaVlocka#}">
						<h1>{#nadpisVlocka#}</h1>
						{#textVlocka#|ceskeZalamovaniPredlozek}
					</div>
					<div id="29" class="info" style="color: {#barvaHiawatha#}">
						<h1>{#nadpisHiawatha#}</h1>
						{#textHiawatha#|ceskeZalamovaniPredlozek}
					</div>
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

