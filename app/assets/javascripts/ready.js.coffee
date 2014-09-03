ready = ->
  # metisMenu
  $('#side-menu').metisMenu()
  # Bootstrap field with errors
  $('.field-with-error').parent('.form-group').addClass 'has-error'
  # Selectizable
  $('.selectizable').selectize()
  # Datepicker
  datepickers = $('.datepicker-b3')
  datepickers.datetimepicker({
    format: 'YYYY-MM-DD',
    pickTime: false,
    language: 'es'
  })
  datepickers.each ->
    $(this).data('DateTimePicker').setDate new Date
    return
  return

$(document).ready(ready)
$(document).on('page:load', ready)
