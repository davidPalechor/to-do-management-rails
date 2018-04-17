$ ->
  $('form.js-form-login').validate({
    rules: {
      'session[email]': {
        required: true,
        email: true
      },
      'session[password]': 'required'
    }
  })