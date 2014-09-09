$(window).load(function() {
 $('body').addClass('fire-animation'); 
 setTimeout(function(){
     $('.animate').addClass('animated');
     $('.fire-animation .animate').show();
 },1000);
});

$(document).ready(function() {
	
	/* Scroll to top then fixed */
	
	// // grab the initial top offset of the press element
	// var press = $('.press');
	// var press_initial_offset_top = press.offset().top;
	// 
	// // determine whether the element should have a "fixed" css position
	// var sticky_press = function() {
	// 	var scroll_top = $(window).scrollTop(); // our current vertical position from top
	// 	
	// 	// if we've scrolled more than the press element, change its position to fixed to stick to top,
	// 	// otherwise, change it back to relative
	// 	
	// 	if (scroll_top > press_initial_offset_top*2) {
	// 		press.addClass('fixed');
	// 	} else if (press.hasClass('fixed')) {
	// 		press.removeClass('fixed')
	// 	}
	// }
	// 
	// // run function on load
	// sticky_press();
	// 
	// // run again every time we scroll
	// $(window).scroll(function() {
	// 	sticky_press();
	// });
	
	// $(function() {
	//    var press = $("#press"), pos = fixadent.offset();
	//    $(window).scroll(function() { 
	//      if($(this).scrollTop() > (pos.top + 10) &&
	// 	fixadent.css('position') == 'relative') { fixadent.addClass('fixed'); } 
	//      else if($(this).scrollTop() <= pos.top &&
	// 	fixadent.hasClass('fixed')){ fixadent.removeClass('fixed'); }
	//    })
	// });
	
	/* Smooth scrolling to id */
	
	function filterPath(string) {
  return string
    .replace(/^\//,'')
    .replace(/(index|default).[a-zA-Z]{3,4}$/,'')
    .replace(/\/$/,'');
  }
  var locationPath = filterPath(location.pathname);
  var scrollElem = scrollableElement('html', 'body');
 
  $('a[href*=#]').each(function() {
    var thisPath = filterPath(this.pathname) || locationPath;
    if (  locationPath == thisPath
    && (location.hostname == this.hostname || !this.hostname)
    && this.hash.replace(/#/,'') ) {
      var $target = $(this.hash), target = this.hash;
      if (target) {
        var targetOffset = $target.offset().top;
        $(this).click(function(event) {
          event.preventDefault();
          $(scrollElem).animate({scrollTop: targetOffset}, 400, function() {
            location.hash = target;
          });
        });
      }
    }
  });
 
  // use the first element that is "scrollable"
  function scrollableElement(els) {
    for (var i = 0, argLength = arguments.length; i <argLength; i++) {
      var el = arguments[i],
          $scrollElement = $(el);
      if ($scrollElement.scrollTop()> 0) {
        return el;
      } else {
        $scrollElement.scrollTop(1);
        var isScrollable = $scrollElement.scrollTop()> 0;
        $scrollElement.scrollTop(0);
        if (isScrollable) {
          return el;
        }
      }
    }
    return [];
  }
  
	/* Show overlay */
	
	// $("#portfolio h2").hover(
	// 	function() {
	// 		$(this).addClass("hover");
	// 	},
	// 	function() {
	// 		$(this).removeClass("hover");
	// 	}
	// );
	
	$("#portfolio article").hover(
		function() {
			$('#portfolio').addClass("hover");
		},
		function() {
			$('#portfolio').removeClass("hover");
		}
	);
	
	/* Popup boxes */
	
	$("a.popup").fancybox({
	  helpers : {
	      overlay : {
	          opacity: 0.7,
	          css : {
	              'background-color' : 'transparent'
	          },
						closeBtn: true,
						closeClick: true
	      }
	  },		
	  padding : 0
	});
	
	$("#portfolio article").click(function(){
		if (window.matchMedia( "(max-width: 940px)" ).matches)
		{
			var link = $(".popup", this).attr("href");
			$.fancybox.open({
				href: link,
		  	helpers : {
			      overlay : {
			          opacity: 0.7,
			          css : {
			              'background-color' : 'transparent'
			          },
								closeBtn: true,
								closeClick: true
			      }
			  },
	      padding : 0,
			});
		}
	})
});