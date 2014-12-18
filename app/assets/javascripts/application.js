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
//= require jquery-ui
//= require_tree .

$(function(){

  var labels = []
    , data   = [];

  for (var prop in window.barchartData){
    if(window.barchartData.hasOwnProperty(prop)){
      labels.push(prop);
      data.push(window.barchartData[prop].length)
    }
  }

  var labels2 = []
    , data2   = [];

  for (var prop in window.barchartDataClick){
    if(window.barchartDataClick.hasOwnProperty(prop)){
      labels2.push(prop);
      data2.push(window.barchartDataClick[prop].length)
    }
  }

  var labels3 = [window.specifiedDate]
    , data3   = [window.dateData.length];

  var ctx = $("#myChart").get(0).getContext("2d");

  var myNewChart = new Chart(ctx);
  new Chart(ctx).Bar({
    labels: labels,
    datasets: [
        {
            label: "My First dataset",
            fillColor: "rgba(220,220,220,0.5)",
            strokeColor: "rgba(220,220,220,0.8)",
            highlightFill: "rgba(220,220,220,0.75)",
            highlightStroke: "rgba(220,220,220,1)",
            data: data
        },
    ]
  }, {});

  var cC = $("#clickChart").get(0).getContext("2d");

  var clickChartNew = new Chart(cC);
  new Chart(cC).Bar({
    labels: labels2,
    datasets: [
        {
            label: "My First dataset",
            fillColor: "rgba(220,220,220,0.5)",
            strokeColor: "rgba(220,220,220,0.8)",
            highlightFill: "rgba(220,220,220,0.75)",
            highlightStroke: "rgba(220,220,220,1)",
            data: data2
        },
    ]
  }, {});


  var cD = $("#dayChart").get(0).getContext("2d");

  var dayChartNew = new Chart(cD);
  new Chart(cD).Bar({
    labels: labels3,
    datasets: [
        {
            label: "My First dataset",
            fillColor: "rgba(220,220,220,0.5)",
            strokeColor: "rgba(220,220,220,0.8)",
            highlightFill: "rgba(220,220,220,0.75)",
            highlightStroke: "rgba(220,220,220,1)",
            data: data3
        },
    ]
  }, {});

});


$(function() {
    $( "#datepicker" ).datepicker({dateFormat:"yy-mm-dd"});
});

