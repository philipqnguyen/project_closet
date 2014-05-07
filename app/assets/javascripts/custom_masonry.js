$(document).ready(function() {
	$('#masonry-container').masonry({
    itemSelector: '.box',
    gutterWidth: 0,
    isAnimated: !Modernizr.csstransitions,
    isFitWidth: true
  });
})

