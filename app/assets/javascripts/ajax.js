$(document).ready(function(){
  $('#new_question_btn a').on('click', function(e){
    e.preventDefault();
    $('#question_pop_up').removeClass('hidden');
  })
})