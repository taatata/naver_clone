// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

$(function() {
  $(".mdMTMWidgetUtil01Li").click(function() {
    var index = $('.mdMTMWidgetUtil01Li').index(this);
    $('.ExSelected').addClass('hide');
    $('.ExSelected').eq(index).removeClass('hide');
  });

  $(".mdBtn01Cancel01Btn").click(function() {
    location.reload();
  })
});
