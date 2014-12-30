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
});