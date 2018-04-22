// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require jquery_ujs
//= require_tree .

var id =Math.random().toString(36).substr(2, 9);
if ($('#id_recive')[0] != undefined) { $('#id_recive')[0].value = id }

var timeout;
$('textarea').keyup(function(){
	if (timeout) { clearTimeout(timeout) }

	timeout = setTimeout(function() {
	    $('form').submit();
	},500);
	
});

function redirecionar() {
	href = $('input')[0].value
	window.location = href
}
$('input').keyup(function(e){
	if (e.keyCode == 13) {
		redirecionar();
	}
});