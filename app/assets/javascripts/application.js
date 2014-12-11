// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require Chart
//= require_tree .

$(function(){
  $.ajax({
    type: "POST",
    url: "api/v1/pageviews",
    data: { pageview: {url: document.URL, useragent:navigator.userAgent}}
  })
})

$(function(){
  $('html').on('click', function(e){
    $.ajax({
      type: "POST",
      url: "api/v1/clicks",
      data: { click: {url: document.URL, element:e.target.nodeName}}
    }) 
  })
})
$(function(){
  var ctx = $("#myChart").get(0).getContext("2d");

  var myNewChart = new Chart(ctx);
  new Chart(ctx).Bar({
    labels: ["January", "February", "March", "April", "May", "June", "July"],
    datasets: [
        {
            label: "My First dataset",
            fillColor: "rgba(220,220,220,0.5)",
            strokeColor: "rgba(220,220,220,0.8)",
            highlightFill: "rgba(220,220,220,0.75)",
            highlightStroke: "rgba(220,220,220,1)",
            data: [65, 59, 80, 81, 56, 55, 40]
        },
    ]
  }, {});
})
