$ ->

  $('#special-banner').bind 'click', ->
    console.log $('#form').offset().top


    $('body').animate({scrollTop: "#{$('#form').offset().top}px"}, {easing: 'swing', duration: 800})

  $('#submit-order').bind 'click', ->

    if $('input[name=username]').val() == ''
      $('.error.name-error').show('bounce')
      return false

    if $('input[name=userphone]').val() == ''
      $('.error.phone-error').show('bounce')
      return false


    $.post(
      '/orders',
      {
        'order[username]': $('input[name=username]').val()
        'order[email]': $('input[name=email]').val()
        'order[phone]': $('input[name=phone').val()
      },
      (data) =>
        if data.status == 'ok'
          sayThankYou()
    )




window.sayThankYou = ->
  $('#thank-you').css 'height', $('#form').height()
  $('#thank-you').show('slide', 'left')
  $('#form').hide('slide', 'left')