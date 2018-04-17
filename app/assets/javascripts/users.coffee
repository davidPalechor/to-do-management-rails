$ ->
  $('form.new_user').validate({
    rules: {
      'user[name]': 'required',
      'user[email]': {
        required: true,
        email: true
      },
      'user[password]': {
        required: true,
        minlength: 6
      },
      'user[password_confirmation]': {
        required: true,
        equalTo: '#user_password'
      }
    },
    messages: {
      'user[name]': 'Please enter a valid name',
      'user[email]': 'Please enter a valid email',
      'user[password]': {
        required: 'Please enter a password'
        minlength: 'Password must contain at least 6 characters'
      },
      'user[password_confirmation]': {
        required: 'Please confirm password',
        equalTo: 'Confirmation does not match password'
      }
    }
  })
