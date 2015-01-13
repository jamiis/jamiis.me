$(document).ready(function(){

    //TODO de-duplicate. get these vars directly from less file.
    var dark = '#2C3E50';
    var blue = '#6DBCDB';
    var red  = '#FC4349';
    var light = '#FFFFFF';

    var navCSS = function(bg, font) {
        css = { 'transition': 'linear 0.2s' }
        if (bg)   css['background-color'] = bg;
        if (font) css['color'] = font;
        $('#navigation').css(css);
    }

    $('#intro').animate({'padding-left': '50px', opacity: 'show'}, 1500);

    $('.title').fitText(1, { minFontSize: '40px' });

    $('#navigation').delay(1500).fadeIn(1000);

    $('#work').waypoint(function(direction) {
        console.log('#work ', direction);
        if (direction == 'down') {
            navCSS(blue, null);
        } else if (direction == 'up') {
            navCSS(dark, null);
        }
    }, {offset: '30'});

    $('#play').waypoint(function(direction) {
        console.log('#play ', direction);
        if (direction == 'down') {
            navCSS(red, null);
        } else if (direction == 'up') {
            navCSS(blue, null);
        }
    }, {offset: '30'});
});
