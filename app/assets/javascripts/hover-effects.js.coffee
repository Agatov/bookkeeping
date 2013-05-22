$ ->

  $(".animated-background").hover(
    ->
      $(@).animate({backgroundColor: '#2c3e50'}, 250)

    ->
      $(@).animate({backgroundColor: '#ee9285'}, 250)
  )