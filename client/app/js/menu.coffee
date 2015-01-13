$(document).ready ->
  $("#m").click ->
    $("#menu").fadeIn 500
    return

  $("#menu").click ->
    $("#menu").fadeOut 500  if $("#menu").is(":visible")
    return

  return
