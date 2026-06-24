/* jbriggs.org — motion is reveal-on-enter (once) + one micro-parallax figure.
   Both are killed under prefers-reduced-motion. Content-serving, never decorative. */
(function () {
  var reduce = window.matchMedia &&
    window.matchMedia('(prefers-reduced-motion: reduce)').matches;

  // Footer year
  var y = document.getElementById('year');
  if (y) y.textContent = new Date().getFullYear();

  // Reveal on enter — fires once, short rise + fade.
  var revealables = document.querySelectorAll('.reveal');
  if (!reduce && 'IntersectionObserver' in window) {
    var io = new IntersectionObserver(function (entries) {
      entries.forEach(function (e) {
        if (e.isIntersecting) { e.target.classList.add('in'); io.unobserve(e.target); }
      });
    }, { threshold: 0.12, rootMargin: '0px 0px -8% 0px' });
    revealables.forEach(function (el) { io.observe(el); });
  } else {
    revealables.forEach(function (el) { el.classList.add('in'); });
  }

  // Micro-parallax on the one feature figure. Max ~10px; never decorative.
  var fig = document.querySelector('[data-parallax] .plate');
  var frame = document.querySelector('[data-parallax]');
  if (fig && frame && !reduce) {
    var ticking = false;
    var update = function () {
      var r = frame.getBoundingClientRect();
      var vh = window.innerHeight || document.documentElement.clientHeight;
      var center = r.top + r.height / 2;
      var p = (center - vh / 2) / (vh / 2 + r.height / 2);
      p = Math.max(-1, Math.min(1, p));
      fig.style.transform = 'translate3d(0,' + (p * 10).toFixed(2) + 'px,0) scale(1.04)';
      ticking = false;
    };
    var onScroll = function () {
      if (!ticking) { ticking = true; window.requestAnimationFrame(update); }
    };
    window.addEventListener('scroll', onScroll, { passive: true });
    window.addEventListener('resize', onScroll, { passive: true });
    update();
  }
})();
