/*
// google map
var map = '';
var center;

function initialize() {
    var mapOptions = {
      zoom: 18,
      center: new google.maps.LatLng(42.209170,-88.078955),
      scrollwheel: false
    };

    map = new google.maps.Map(document.getElementById('map-canvas'),  mapOptions);

    google.maps.event.addDomListener(map, 'idle', function() {
        calculateCenter();
    });

    google.maps.event.addDomListener(window, 'resize', function() {
        map.setCenter(center);
    });
}

function calculateCenter() {
  center = map.getCenter();
}
//API: key=AIzaSyDY38H8iOF9OI46C-QMvnh9DADCzKbik8k
function loadGoogleMap(){
    var script = document.createElement('script');
    script.type = 'text/javascript';
    script.src = 'https://maps.googleapis.com/maps/api/js?key=AIzaSyDY38H8iOF9OI46C-QMvnh9DADCzKbik8k&' + 'callback=initialize';
    document.body.appendChild(script);
}
*/
// Flexslider
$(function(){
  /* FlexSlider */
  $('.flexslider').flexslider({
      animation: "fade",
      directionNav: false
  });

  new WOW().init();

  loadGoogleMap();
});

// isotope
jQuery(document).ready(function($){

  if ( $('.iso-box-wrapper').length > 0 ) {

      var $container  = $('.iso-box-wrapper'),
        $imgs     = $('.iso-box img');

      $container.imagesLoaded(function () {

        $container.isotope({
        layoutMode: 'fitRows',
        itemSelector: '.iso-box'
        });

        $imgs.load(function(){
          $container.isotope('reLayout');
        })

      });

      //filter items on button click
      $('.filter-wrapper li a').click(function(){

          var $this = $(this), filterValue = $this.attr('data-filter');

      $container.isotope({
        filter: filterValue,
        animationOptions: {
            duration: 750,
            easing: 'linear',
            queue: false,
        }
      });

      // don't proceed if already selected
      if ( $this.hasClass('selected') ) {
        return false;
      }

      var filter_wrapper = $this.closest('.filter-wrapper');
      filter_wrapper.find('.selected').removeClass('selected');
      $this.addClass('selected');

        return false;
      });

  }

});

// Hide mobile menu after clicking on a link
    $('.navbar-collapse a').click(function(){
        $(".navbar-collapse").collapse('hide');
    });

//jQuery for page scrolling feature - requires jQuery Easing plugin
    $(function() {
        $('.navbar-default a, a,').bind('click', function(event) {
            var $anchor = $(this);
            $('html, body').stop().animate({
                scrollTop: $($anchor.attr('href')).offset().top - 68
            }, 1000);
            event.preventDefault();
        });
    });
