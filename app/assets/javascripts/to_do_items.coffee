completeTask = (id) ->
  console.log(id)
  
$ ->
  $('.js-add-task').on 'click', ->
    $.ajax({
      type: 'POST',
      url: '/complete-task'
    })
