$(document).ready(function(){
  $("#ordered").hide();
  $(".tab").click(function(){
      $(".tab").removeClass( "active" );
      $(this).addClass("active");
      $(".tab-content").hide();
      $($(this).data("target")).show();
  });
});
