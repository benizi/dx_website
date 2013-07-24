$(document).ready(function() {
  pushright.onclick = function() {
    if($('#wrapper').hasClass('side-nav-push-toleft')) {
      $('#wrapper').removeClass('side-nav-push-toleft');
      $('.side-nav').removeClass('side-nav-open');
    }
    else {
      $('#wrapper').addClass('side-nav-push-toleft');
      $('.side-nav').addClass('side-nav-open');
    }
  };
  content.onclick = function() {
    if($('#wrapper').hasClass('side-nav-push-toleft')) {
      $('#wrapper').removeClass('side-nav-push-toleft');
      $('.side-nav').removeClass('side-nav-open');
    }
  };
});