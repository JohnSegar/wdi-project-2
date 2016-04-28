// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation

//= require_tree .
//= require masonry.pkgd.min.js

$(function(){ 

  $(document).foundation(); 

  // require turbolinks
  // init Masonry

/*
  var $grid = $('.grid');
  $grid.imagesLoaded(function() {
    $grid.masonry({
      columnWidth: 200,
      itemSelector: '.grid-item'
    });
  });
*/


  var $grid = $('.grid')

  $grid.imagesLoaded()
    .done(function() {
      $grid.masonry({
        columnWidth: 0,
        itemSelector: '.grid-item'
      });
      $(window).resize(function() {
        $grid.masonry({
          // columnWidth: 200,
          // itemSelector: '.grid-item'
        });
      });
    })
  




  // var $container = $('.grid');
  //   $container.imagesLoaded( function() {
  //     $boxes.fadeIn();
  // layout Masonry after each image loads
  // $grid.imagesLoaded().progress( function() {
  //   $grid.masonry('layout');
  // });
});