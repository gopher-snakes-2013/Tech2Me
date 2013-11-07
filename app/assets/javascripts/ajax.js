// this is not a great name for the file.
$(document).ready(function(){
  $('#new_question_btn a').on('click', function(e){
    e.preventDefault();
    $('#question_pop_up').removeClass('hidden');
  })

  $('form').on('ajax:success', function(e, data){
    $('#question_area').append(data);
    $('#question_pop_up').addClass('hidden');
  })

})
