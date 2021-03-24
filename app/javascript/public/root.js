document.addEventListener('DOMContentLoaded', function () {

  const els = document.querySelectorAll('.todo-explain');
  const cb = function (entries, observer) {
      entries.forEach(entry => {
          if (entry.isIntersecting) {
           
             entry.target.classList.add('inview');
             entry.target.classList.remove('todo-explain');
                 observer.unobserve(entry.target);
          } else {
            
            entry.target.classList.remove('inview');
          }
      });
  };
  const options = {
      root: null,
      rootMargin: "0px 0px -300px 0px",
      threshold: 0
  };
  const io = new IntersectionObserver(cb, options);
  els.forEach(el => io.observe(el));

  
});

document.addEventListener('DOMContentLoaded', function () {

  const els = document.querySelectorAll('.diary-explain');
  const cb = function (entries, observer) {
      entries.forEach(entry => {
          if (entry.isIntersecting) {
           
             entry.target.classList.add('inview');
             entry.target.classList.remove('diary-explain');
                 observer.unobserve(entry.target);
          } else {
            
            entry.target.classList.remove('inview');
          }
      });
  };
  const options = {
      root: null,
      rootMargin: "0px 0px -300px 0px",
      threshold: 0
  };
  const io = new IntersectionObserver(cb, options);
  els.forEach(el => io.observe(el));

  
});

document.addEventListener('DOMContentLoaded', function () {

  const els = document.querySelectorAll('.calender-explain');
  const cb = function (entries, observer) {
      entries.forEach(entry => {
          if (entry.isIntersecting) {
           
             entry.target.classList.add('inview');
             entry.target.classList.remove('calender-explain');
                 observer.unobserve(entry.target);
          } else {
            
            entry.target.classList.remove('inview');
          }
      });
  };
  const options = {
      root: null,
      rootMargin: "0px 0px -300px 0px",
      threshold: 0
  };
  const io = new IntersectionObserver(cb, options);
  els.forEach(el => io.observe(el));

  
});

document.addEventListener('DOMContentLoaded', function () {

  const els = document.querySelectorAll('.weather-explain');
  const cb = function (entries, observer) {
      entries.forEach(entry => {
          if (entry.isIntersecting) {
           
             entry.target.classList.add('inview');
             entry.target.classList.remove('weather-explain');
                 observer.unobserve(entry.target);
          } else {
            
            entry.target.classList.remove('inview');
          }
      });
  };
  const options = {
      root: null,
      rootMargin: "0px 0px -300px 0px",
      threshold: 0
  };
  const io = new IntersectionObserver(cb, options);
  els.forEach(el => io.observe(el));

  
});
