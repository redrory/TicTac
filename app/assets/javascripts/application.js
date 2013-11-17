// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
$(function() {
  var faye = new Faye.Client('http://localhost:9292/faye');
  faye.subscribe("/games/index", function(data) {
    //eval(data);
    alert(data);
  });
});

$(function() {
    // Add click event binding to `Save search` link
    $("#name_save").on("click", function(event) {


        // get the value inside the text field
        var name = $("#player_name").val();
        alert(name);


        $.post('/games', { name: name }, function(data) {
            // log the result from the server, or whatever...
            console.log(data);
        });
    });
});