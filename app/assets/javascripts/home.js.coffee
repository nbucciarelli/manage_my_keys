# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  $('.sign_out').click ->
    console.log "sup"

  setTimeout("$('#flash_messages').fadeIn('slow').delay(1500).fadeOut('slow')", 1000) if $('.notifications')
