// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .


// function hamburger() {
//   document.getElementById('line1').classList.toggle('line_1');
//   document.getElementById('line2').classList.toggle('line_2');
//   document.getElementById('line3').classList.toggle('line_3');
//   document.getElementById('nav').classList.toggle('in');
// }
// document.getElementById('hamburger').addEventListener('click' , function () {
//   hamburger();
// } );


// $(function() {
//   $('.menu-trigger').on('click', function(event) {
//     $(this).toggleClass('active');
//     $('#sp-menu').fadeToggle();
//     event.preventDefault();
//   });
// });


'use strict';

// {
//   const open = document.getElementById('open');
//   const overlay = document.querySelector('.overlay');

//   open.addEventListener('click', () => {
//     overlay.classList.add('show');
//     open.classList.add('hide');
//   });
// }


// {
//   const open = document.getElementById('open');
//   const overlay = document.querySelector('.overlay');
//   const close = document.getElementById('close');

//   open.addEventListener("turbolinks:load", 'click', () => {
//     overlay.classList.add('show');
//     open.classList.add('hide');
//   });

//   close.addEventListener("turbolinks:load", 'click', () => {
//     overlay.classList.remove('show');
//     open.classList.remove('hide');
//   });
// }


document.addEventListener("turbolinks:load", function () {
  $(function() {
    $('.menu-trigger').on('click', function(event) {
      $(this).toggleClass('active');
      $('#sp-menu').fadeToggle();
      event.preventDefault();
    });
  });
})
