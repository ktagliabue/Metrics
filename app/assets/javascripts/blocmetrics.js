//= require jquery

var userid = $('.blocmetrics').data('userid')

$(function(){
  $.ajax({
    type: "POST",
    url: "http://localhost:3000/api/v1/users/"+userid+"/pageviews",
    data: { pageview: {url: document.URL, useragent:navigator.userAgent, user_id: window.userId }}
  })
})

$(function(){
  $('body').on('click', function(e){
    $.ajax({
      type: "POST",
      url: "http://localhost:3000/api/v1/users/"+userid+"/clicks",
      data: { click: {url: document.URL, element:e.target.nodeName, user_id: window.userId}}
    }) 
  })
})