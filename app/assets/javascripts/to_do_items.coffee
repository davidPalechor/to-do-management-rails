$ ->
  $('.js-check-task').on 'click', ->
    that = $(this)
    id = that.attr('id').split('_')[1]
    data = {id: id}
    
    if that.is ':checked'
      data['completed'] = true
    else
      data['completed'] = false
      
    $.ajax({
      type: 'POST',
      url: '/complete-task',
      data: data
    })
    
  $('.js-add-task').on 'click', ->
    console.log("hola")
