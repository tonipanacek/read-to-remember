// carousel
const initFlickity = () => {
  const carousel = document.querySelector('.carousel');
  const flkty = new Flickity( carousel, {
    // you can flick forever, man.
    freeScroll: false,
    contain: true,
    // disable previous & next buttons and dots
    prevNextButtons: false,
    pageDots: false,
    hash: true
  });
  const cards = carousel.querySelectorAll('.carousel-cell');
  // get transform property
  const docStyle = document.documentElement.style;
  const transformProp = typeof docStyle.transform == 'string' ?
    'transform' : 'WebkitTransform';
  flkty.on('scroll', function() {
    const currentId = flkty.selectedElement.dataset.cardId;
    window.location.hash = '#' + currentId;
    flkty.slides.forEach( function( slide, i ) {
      const card = cards[i];
      const x = ( slide.target + flkty.x ) * -2/3;
      card.style[ transformProp ] = 'translateX(' - x  + 'vw)';
    });
  });
}



export { initFlickity };

