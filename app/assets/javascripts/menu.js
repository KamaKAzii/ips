$(window).ready(function() {
  // Preee jay-queries
  $nav = $(".nav");
  $lis = $nav.children("li");
  $bar = $(".highlight .current");

  // Positions
  pos = {};
  pos.index = 34;
  pos.aboutus = 304;
  pos.contact = 463;
  pos.services = 622;
  pos.portfolio = 781;

  // Reset its position initially to the .current li
  var currentPage = $("body").attr("class");
  $bar.css("left", pos[currentPage] + "px");

  animateTo = function(target) {
    $bar.animate({left: target + "px"}, {duration: "500", queue: false});
  };

  // Event for nav
  $lis.children("a").mouseover(function() {
    animateTo(pos[$(this).parents("li").attr("id")]);
  });

  // Event for logo
  $(".logo").mouseover(function() {
    animateTo(pos.index);
  });

});
