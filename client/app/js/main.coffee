domready = require "domready"
require "./menu"

domready ->
  $ = require "jquery"
  require "jquery-waypoints"
  require "jquery-fittext"
  
  #TODO de-duplicate. get these vars directly from less file.
  light = '#F5F4BE'
  dark = '#261F27'
  work = '#93C6A2'
  play = '#FFE184'

  $("#intro").animate
    "padding-left": "50px"
    opacity: "show"
  , 1500

  $(".title").fitText 1, minFontSize: "40px"

  $("#navigation").delay(1500).fadeIn 1000


  # setup click events for navigation buttons

  scrollOnClick = (section) ->
    $("#navigation a."+section+"-nav").click ->
      $("html,body").animate
        scrollTop: $("#"+section).offset().top
      , 'slow'
      return
  scrollOnClick("work")
  scrollOnClick("play")


  # adjust navigation styling depending on position

  $("#work").waypoint (direction) ->
    if direction is "down"
      $ "#navigation"
        .removeClass "landing play"
        .addClass "work"
    else
      $ "#navigation"
        .removeClass "work play"
        .addClass "landing"
  , offset: "30"

  $("#play").waypoint (direction) ->
    if direction is "down"
      $ "#navigation"
        .removeClass "landing work"
        .addClass "play"
    else
      $ "#navigation"
        .removeClass "play landing"
        .addClass "work"
  , offset: "30"

  return
