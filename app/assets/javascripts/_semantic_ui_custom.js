$(document).on('ready turbolinks:load', function() {
  $('.ui.dropdown').dropdown();
});

$(document).ready(function() {
$('.message .close')
  .on('click', function() {
    $(this)
      .closest('.message')
      .transition('fade')
    ;
  })
;});


$(document).on('ready turbolinks:load', function() {
  $('#login_button, #register_button').on('click', function() {

  $('.ui.basic.modal')
    .modal('show');
    console.log('modal fired');
  })
;});

// ui search
$(document).on('ready turbolinks:load', function() {
$('.ui.search')
  .search({
    apiSettings: {
      url: '//api.github.com/search/repositories?q={query}'
    },
    fields: {
      results : 'items',
      title   : 'name',
      url     : 'html_url'
    },
    minCharacters : 3
  })
  ;});
