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
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery
//= require jquery_ujs
//= require jquery.turbolinks
//= require bootstrap
//= require_tree .


// Cleanup + enable Bootstrap tooltips on jQuery's ready event as well as
// Turbolinks's page change event.
$(document).on("ready page:change", function() {
    $("[data-toggle='tooltip']")
    .tooltip("destroy")
    .tooltip();
});

$( document ).ready(function() {
    console.log( "ready!" );

    let warnings = $('#warnings');
    if (warnings.text == "") {
        warnings.css({"display": "none"})
    }

    $('.navbar .dropdown').hover(function() {
        $(this).find('.dropdown-menu').first().stop(true, true).delay(100).slideDown("fast");
    }, function() {
        $(this).find('.dropdown-menu').first().stop(true, true).delay(100).slideUp("fast")
    });

});
