$(document).ready(function(){

    $('#intro').animate({'padding-left': '50px', opacity: 'show'}, 1500);

    $('.title').fitText(1, { minFontSize: '40px' });

    $('#navigation').delay(1500).fadeIn(1000);

    $('#landing').waypoint(function(direction) {
          $('#navigation').css({
            'background-color': '#CE513E'
          });
    });

    $('#work').waypoint(function(direction) {
          $('#navigation').css({
            'background-color': '#93C6A2'
          });
    }, {offset: '30'});

    $('#play').waypoint(function(direction) {
          $('#navigation').css({
            'background-color': '#E9B13D'
          });
    }, {offset: '30'});

     $('#landingwaypoint').waypoint(function(direction) {
          $('#navigation').css({
            'background-color': '#CE513E',
            'transition': 'linear 0.2s'
          });
    });

    $('#workwaypoint').waypoint(function(direction) {
          $('#navigation').css({
            'background-color': '#93C6A2'
          });
    });

});
