/*wiper.js の初期化処理*/
window.addEventListener('load', function() {
  var swiper = new Swiper('.swiper-container', {
    loop: true,
    slidesPerView: 'auto',
    spaceBetween: 2,
    speed: 200,
    // autoplay: 2000
  });
}, false);