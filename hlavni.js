
$(document).ready(function(){

var rootUrl = '';
var rootUrl = $('body').data('koren-webu');

window.sliders = [];

var sheet = (function() {
	// Create the <style> tag
	var style = document.createElement("style");

	// Add a media (and/or media query) here if you'd like!
	// style.setAttribute("media", "screen")
	// style.setAttribute("media", "only screen and (max-width : 1024px)")

	// WebKit hack :(
	style.appendChild(document.createTextNode(""));

	// Add the <style> element to the page
	document.head.appendChild(style);

	return style.sheet;
})();

addCSSRule("#nothing0", "background-color: #000000", 0);

$.reject({
	reject: {
//		all: true,
		msie5: true,
		msie6: true,
		msie7: true,
		msie8: true,
		msie9: true,
		chrome1: true,
		chrome2: true,
		chrome3: true,
		chrome4: true,
		firefox1: true,
		firefox2: true,
		firefox3: true,
		safari1: true,
		safari2: true,
		safari3: true,
		safari4: true,
//		safari5: true,
		opera7: true,
		opera8: true,
		opera9: true,
		opera10: true,
		opera11: true
	},
	display: ['msie', 'firefox', 'chrome', 'opera', 'safari'],
	browserInfo: {
		firefox: {
			text: 'Firefox',
			url: 'http://www.mozilla.com/firefox/'
		},
		safari: {
			text: 'Safari',
			url: 'http://www.apple.com/safari/download/'
		},
		opera: {
			text: 'Opera',
			url: 'http://www.opera.com/download/'
		},
		chrome: {
			text: 'Chrome',
			url: 'http://www.google.com/chrome/'
		},
		msie: {
			text: 'Internet Explorer',
			url: 'http://www.microsoft.com/windows/Internet-explorer/'
		}
	},
	header: 'Váš prohlížeč je zastaralý!',
	paragraph1: 'Váš prohlížeč je zastaralý, tyto stánky v něm nebudou správně fungovat. Pro prohlížení našich ' +
		'stránek si stáhněte nejnovější verzi vašeho oblíbeného prohlížeče. Seznam těch nejpoužívanějších s odkazy' +
		'najdete níže',
	paragraph2: 'Kliknutím na ikonu prohlížeče se dostanete na stránku, kde je ke stažení nejnovější verze.',
	closeMessage: 'Upozorňujeme že zážitek z prohlížení našich stránek ve starých prohlížečích je minimální. ' +
		'Nejnižší verze prohlížečů, ve kterých stránky fungují správně, jsou: ' +
		'Internet Explorer 10, firefox 4.0, Chrome 5, Opera 11.50, Safari 5.0',
	closeLink: 'Zavřít',
	closeESC: false,
	imagePath: rootUrl + '/Obrazky/Prohlizece/'
});



var mapaStranek = new Object();
mapaStranek[''] = new Stranka("", 0);
mapaStranek['stredisko'] = new Stranka("", 2);
mapaStranek['severka'] = new Stranka("severka", 23);
mapaStranek['jiznikriz'] = new Stranka("jiznikriz", 27);
mapaStranek['vlocka'] = new Stranka("vlocka", 28);
mapaStranek['hiawatha'] = new Stranka("hiawatha", 29);
mapaStranek['projekty'] = new Stranka("projekty", 20);


mapaStranek.get = function(stranka) {
	return mapaStranek[stranka];
};

nahrajObsahStranky(mapaStranek.get($('meta[name=pocatecni_stranka]').attr("content")));

$(window).on("popstate", function() {
   nahrajObsahStranky(mapaStranek.get(strankaZUrl()));
});

$(".odkaz_stredisko").click(function(){
    nahrajStranku(mapaStranek.get('stredisko'));
});

$(".odkaz_severka").click(function(){
	nahrajStranku(mapaStranek.get('severka'));
});

$(".odkaz_jizni_kriz").click(function(){
	nahrajStranku(mapaStranek.get('jiznikriz'));
});

$(".odkaz_vlocka").click(function(){
	nahrajStranku(mapaStranek.get('vlocka'));
});

$(".odkaz_hiawatha").click(function(){
	nahrajStranku(mapaStranek.get('hiawatha'));
});

$(".domu").click(function(){
	nahrajStranku(mapaStranek.get(''));
});

function strankaZUrl(){
    var url = document.URL;
    var urlParts = url.split('/');
//    alert(urlParts[4]);
    return urlParts[4];
}

function Stranka(adresa, id){
    this.adresa = adresa;
    this.id = id;
	this.imagesLoaded = false;
}

function nahrajStranku(stranka){
	window.history.pushState('', 'bbb', rootUrl + '/' + stranka.adresa);
	nahrajObsahStranky(stranka);
}

function nahrajObsahStranky(stranka){
    prepniTitulku(stranka);
}

function prepniTitulku(stranka){
    if(stranka.id === 0){
        $('#menu').addClass('titulka');
        $('#menu').removeClass('podstrana');
        $('#podstrana').hide();
		$('#menu > a').show();
		$('#odkaz-ven').hide();
    }
    else{
        $('#menu').removeClass('titulka');
        $('#menu').addClass('podstrana');
        $('#podstrana').show();
		nahrajBarvuPozadi(stranka);
        nahrajObsahInfo(stranka);
		nahrajMenu(stranka);
        nahrajSlider(stranka);
		nahrajOdkazVen(stranka);
    }
}

function nahrajObsahInfo(stranka){
	$("#clanek").children('.info').css("display", "none");
	$("#" + stranka.id).css("display", "block");
}

function nahrajMenu(stranka){
	$('#menu > a').show();
	$('#menu > a#menu-'  + stranka.id).hide();
}

function nahrajSlider(stranka){
	$(".hlavniSlider:not(." + stranka.id + ")").each(function () {
		if($(this).data('loaded')){
			var id = $(this).data('id');
			window.sliders[id].stopAuto();
			$(this).parents('.sy-box').css("display", "none");
		}
		else{
			$(this).css("display", "none");
		}
	});
	var activeSlider = $(".hlavniSlider." + stranka.id);
	$(activeSlider).css("display", "block");

	if(!stranka.imagesLoaded){
		$(".hlavniSlider." + stranka.id + " img").attr("src", function() {return $(this).attr('data-src')});
		stranka.imagesLoaded = true;
		window.sliders[stranka.id] = $(activeSlider).slippry({
			adaptiveHeight: false,
			transition: 'fade',
			useCSS: true,
			speed: 2000,
			pause: 6000,
			captions: false
		});
		$(activeSlider).data('loaded', 'true');
		$(activeSlider).data('id', stranka.id);
	}
	else {
		$(activeSlider).parents('.sy-box').css("display", "block");
		window.sliders[stranka.id].startAuto();
	}
	
	deleteCSSRule(0);
	addCSSRule("#slider-obal .sy-pager li.sy-active a", 
		"background-color: " + $('body').data(stranka.id.toString()).barva, 0);
}

function nahrajOdkazVen(stranka){
	if(stranka.id !== 2){
		var data = $('#odkaz-ven').data(stranka.id.toString());
		$('#odkaz-ven').attr('href', data.link);
		$('#odkaz-ven .text').html(data.text);
		$('#odkaz-ven').show();
	}
}

function nahrajBarvuPozadi(stranka){
	var barva = $('body').data(stranka.id.toString()).barva;
//	var barvaSvetlejsi = zmenSvetlostBarvy(barva, 0.99);
	var barvaSvetlejsi = $('body').data(stranka.id.toString()).barvaSvetlejsi;
	$('.design-rectangle').css('background-color', barva);
	$('.domu .sestiuhelnik-obsah').css('background-color', barvaSvetlejsi);
	$('#slider-obal .sestiuhelnik-obsah').css('background-color', barvaSvetlejsi);
	$('#odkaz-ven .sestiuhelnik-obsah').css('background-color', barvaSvetlejsi);
	$('#podstrana').css('background-color', barvaSvetlejsi);
}

function zmenSvetlostBarvy(barva, svetlo) {
	barva = String(barva).replace(/[^0-9a-f]/gi, '');
	if (barva.length < 6) {
		barva = barva[0]+barva[0]+barva[1]+barva[1]+barva[2]+barva[2];
	}
	svetlo = svetlo || 0;

	var rgb = "#", c, counter;
	for (counter = 0; counter < 3; counter++) {
		c = parseInt(barva.substr(counter * 2,2), 16);
		c = Math.round(Math.min(Math.max(0, c + (c * svetlo)), 255)).toString(16);
		rgb += ("00" + c).substr(c.length);
	}

	return rgb;
}





function addCSSRule(selector, rules, index) {
	if("insertRule" in sheet) {
		sheet.insertRule(selector + "{" + rules + "}", index);
	}
	else if("addRule" in sheet) {
		sheet.addRule(selector, rules, index);
	}
}

function deleteCSSRule(index) {
	sheet.deleteRule(0);
}



});
