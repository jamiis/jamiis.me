$(document).ready(function() {

	$('.link').magnificPopup({
		type:'image',
		closeOnContentClick: true,
		closeOnBgClick: true,
		gallery:{
		  enabled:true
		}
	});

});

$(window).load(function() {
	$('.grid').masonry({
		columnWidth: 300,
		itemSelector: '.item',
		'gutter': 10,
		'isFitWidth': true
	});
});