pushright.onclick = function(e) {
    if($('#wrapper').hasClass('side-nav-push-toleft')) {
      $('#wrapper').removeClass('side-nav-push-toleft');
      $('.side-nav').removeClass('side-nav-open');
    }
    else {
      $('#wrapper').addClass('side-nav-push-toleft');
      $('.side-nav').addClass('side-nav-open');
    }
e.stopPropagation();
  };

content.onclick = function(e) {
    $('#wrapper').toggleClass('side-nav-push-toleft');
    $('.side-nav').toggleClass('side-nav-open');
    
    if($('#wrapper').hasClass('side-nav-push-toleft')) {
      $('#wrapper').removeClass('side-nav-push-toleft');
      $('.side-nav').removeClass('side-nav-open');
    }
e.stopPropagation();
  };
