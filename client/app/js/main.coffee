domready = require "domready"
require "./menu"

domready ->
  $ = require "jquery"
  require "jquery-waypoints"
  require "jquery-fittext"
  
  #TODO de-duplicate. get these vars directly from less file.
  dark = "#2C3E50"
  blue = "#6DBCDB"
  red = "#FC4349"
  light = "#FFFFFF"
  navCSS = (bg, font) ->
    css = transition: "linear 0.2s"
    css["background-color"] = bg  if bg
    css["color"] = font  if font
    $("#navigation").css css
    return

  $("#intro").animate
    "padding-left": "50px"
    opacity: "show"
  , 1500

  $(".title").fitText 1, minFontSize: "40px"

  $("#navigation").delay(1500).fadeIn 1000

  $("#work").waypoint (direction) ->
    if direction is "down"
      navCSS blue, null
    else navCSS dark, null  if direction is "up"
    return
  , offset: "30"

  $("#play").waypoint (direction) ->
    if direction is "down"
      navCSS red, null
    else navCSS blue, null  if direction is "up"
    return
  , offset: "30"

  return
