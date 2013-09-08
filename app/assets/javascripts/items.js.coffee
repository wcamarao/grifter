$ ->
  $('body').on 'change', '#item_picture', (e) ->
    $(this).closest('form').submit()
