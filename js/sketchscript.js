$(document).ready(function() {

	$('#navigation').fadeIn(1500);

	$('#grid').masonry({
		columnWidth: 300,
		itemSelector: '.item',
		'gutter': 10,
		'isFitWidth': true
	});

	$('.link').magnificPopup({
		type:'image',
		closeOnContentClick: true,
		closeOnBgClick: true,
		gallery:{
		  enabled:true
		}
	});

	$('#m').click(function(){
		$('#menu').fadeIn(500);
	});

	$('#menu').click(function() {
		if($('#menu').is(':visible')) {
		    $('#menu').fadeOut(500);
		}
	});

});