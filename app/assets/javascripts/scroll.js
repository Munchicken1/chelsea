$(window).scroll(function(){
  $(".arrow").css("opacity", 1 - $(window).scrollTop() / 250);
});
