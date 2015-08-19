// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

$(function() {
  $(".mdMTMWidgetUtil01Li").click(function() {
    var index = $('.mdMTMWidgetUtil01Li').index(this);
    $('.tab-contents div').addClass('hide');
    $('.tab-contents div').eq(index).removeClass('hide');
  });
});
