
$(document).ready(function(){

//var rootUrl = /;
var rootUrl = '/stredisko';

mapaStranek = new Object();
mapaStranek[''] = new Stranka("", "2");
mapaStranek['stredisko'] = new Stranka("", "2");
mapaStranek['severka'] = new Stranka("severka", "23");
mapaStranek['jiznikriz'] = new Stranka("jiznikriz", "27");
mapaStranek['vlocka'] = new Stranka("vlocka", "28");
mapaStranek['hiawatha'] = new Stranka("hiawatha", "29");

mapaStranek.get = function(stranka) {
	return mapaStranek[stranka];
}

nahrajObsahStranky(mapaStranek.get($('meta[name=pocatecni_stranka]').attr("content")));

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

function Stranka(adresa, id){
    this.adresa = adresa;
    this.id = id;
	this.imagesLoaded = false;
}

function nahrajStranku(stranka){
	window.history.pushState('', 'bbb', rootUrl + '/' + stranka.adresa)
	nahrajObsahStranky(stranka);
}

function nahrajObsahStranky(stranka){
    nahrajObsahInfo(stranka);
    nahrajSlider(stranka);
}

function nahrajObsahInfo(stranka){
	$("#clanek").children().css("display", "none");
	$("#" + stranka.id).css("display", "block");
}

function nahrajSlider(stranka){
	$(".nivoSlider:not(." + stranka.id + ")").each(function (index) {
		if($(this).data('nivoslider')){
			$(this).data('nivoslider').stop();
		}
		$(this).css("display", "none");
	})

//	$(".nivoSlider:not(." + stranka.id + ")").css("display", "none");

	$(".nivoSlider." + stranka.id).css("display", "block");
	if(!stranka.imagesLoaded){
		$(".nivoSlider." + stranka.id + " img").attr("src", function() {return $(this).attr('data-src')});
		stranka.imagesLoaded = true;
		$('.nivoSlider.' + stranka.id).nivoSlider({
			effect: 'fade',
			controlNav: false
		});
	}
	else {
		$(".nivoSlider." + stranka.id).data('nivoslider').start()
	}

//	$(".stredisko_slider." + stranka.id).attr("id", "slider");
//	$(".stredisko_slider." + stranka.id).addClass("nivoSlider");



//	$("#slider").css("display", "none");
//	$("#slider." + stranka.id).css("display", "block");
}




});

//$(window).load(function() {
//	$('#slider').nivoSlider({
//		effect: 'fade',
//		controlNav: false
//	});
//});