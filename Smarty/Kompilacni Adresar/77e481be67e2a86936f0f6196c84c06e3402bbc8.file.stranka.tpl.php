<?php /* Smarty version Smarty-3.1.16, created on 2014-09-21 21:06:38
         compiled from "C:\xampp\htdocs\stredisko\Smarty\Sablony\stranka.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2241452dc133f204438-05851695%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '77e481be67e2a86936f0f6196c84c06e3402bbc8' => 
    array (
      0 => 'C:\\xampp\\htdocs\\stredisko\\Smarty\\Sablony\\stranka.tpl',
      1 => 1411326322,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2241452dc133f204438-05851695',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.16',
  'unifunc' => 'content_52dc133f270840_65605470',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52dc133f270840_65605470')) {function content_52dc133f270840_65605470($_smarty_tpl) {?><!DOCTYPE html>
<?php  $_config = new Smarty_Internal_Config('nastaveni.conf', $_smarty_tpl->smarty, $_smarty_tpl);$_config->loadConfigVars(null, 'local'); ?>

<html>
<head>
    
    <meta charset="UTF-8">

    
    <link href="<?php echo @constant('ADRESA_GLOBALNI_STYL');?>
" rel='stylesheet' type='text/css'>

    
    <script src="<?php echo @constant('ADRESA_JQUERY');?>
"></script>

	
	<script src="Knihovny/jReject/jquery.reject.min.js" type="text/javascript"></script>
	<link rel="stylesheet" href="Knihovny/jReject/jquery.reject.css" type="text/css" />

	
	<link rel="stylesheet" href="nivo-slider/nivo-slider.css" type="text/css" />
	<link rel="stylesheet" href="nivo-slider/themes/default/default.css" type="text/css" />
	<script src="nivo-slider/jquery.nivo.slider.pack.js" type="text/javascript"></script>

    
    <script src="<?php echo @constant('ADRESA_GLOBALNI_SKRIPT');?>
"></script>

	
	<meta name="pocatecni_stranka" content="<?php echo @constant('POCATECNI_ADRESA');?>
">
</head>

<body>
    <div id="hlavni">
		
			
				
				<div id="menu">
					<a class="odkaz_stredisko">
						<div class="sestiuhelnik-obal-vnejsi">
							<div class="sestiuhelnik-obal-vnitrni">
								<div class="sestiuhelnik-obsah">
									<div class="pokus">Domů</div>
								</div>
							</div>
						</div>
					</a>
					<a class="odkaz_severka">
						<div class="sestiuhelnik-obal-vnejsi">
							<div class="sestiuhelnik-obal-vnitrni">
								<div class="sestiuhelnik-obsah">
									<?php echo $_smarty_tpl->getConfigVariable('nadpisSeverka');?>

								</div>
							</div>
						</div>
					</a>
					<a class="odkaz_jizni_kriz">
						<div class="sestiuhelnik-obal-vnejsi">
							<div class="sestiuhelnik-obal-vnitrni">
								<div class="sestiuhelnik-obsah">
									<?php echo $_smarty_tpl->getConfigVariable('nadpisJizniKriz');?>

								</div>
							</div>
						</div>
					</a>
					<a class="odkaz_vlocka">
						<div class="sestiuhelnik-obal-vnejsi">
							<div class="sestiuhelnik-obal-vnitrni">
								<div class="sestiuhelnik-obsah">
									<?php echo $_smarty_tpl->getConfigVariable('nadpisVlocka');?>

								</div>
							</div>
						</div>
					</a>
					<a class="odkaz_hiawatha">
						<div class="sestiuhelnik-obal-vnejsi">
							<div class="sestiuhelnik-obal-vnitrni">
								<div class="sestiuhelnik-obsah">
									<?php echo $_smarty_tpl->getConfigVariable('nadpisHiawatha');?>

								</div>
							</div>
						</div>
					</a>
								
					<a class="odkaz_dalsi">
						<div class="sestiuhelnik-obal-vnejsi">
							<div class="sestiuhelnik-obal-vnitrni">
								<div class="sestiuhelnik-obsah">
									<?php echo $_smarty_tpl->getConfigVariable('nadpisHiawatha');?>

								</div>
							</div>
						</div>
					</a>			
				</div>
			
		
		
    </div>
</body>
</html>

<?php }} ?>
