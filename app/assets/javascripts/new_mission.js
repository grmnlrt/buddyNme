$(document).ready(function(){
  $('#new_mission span.radio label').click(function(){
    $('#new_mission span.radio label').removeClass('selected-mission');
    $(this).addClass('selected-mission');
  });
});
