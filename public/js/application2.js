$(document).ready(function() {
  $(".js--survey").on("click", viewSurveyHandler)
  $(".dynamic-div").on("submit", ".current-survey", submitSurveyHandler)
});

var viewSurveyHandler = function(event){
  event.preventDefault()
  var $link = $(this);

  var promise = $.ajax ({
    url: $link.attr("href")
  })

  promise.done(function(response){
    $(".dynamic-div").find("h2").remove()
    $(".dynamic-div").find("form").remove()
    $(".dynamic-div").find("div").remove()
    $(".dynamic-div").append(response)
    $("body").css("background-image", 'url("../images/background.jpg")')


  }).always(function(){
    console.log("Survey loaded!")
  })
};

var submitSurveyHandler = function(event){
  event.preventDefault()
  var $survey = $(this).find("form");

  var promise = $.ajax ({
    url: $survey.attr("action"),
    method: $survey.attr("method"),
    data: $survey.serialize()
  })

  promise.done(function(response){
    $(".dynamic-div").find("h2").remove()
    $(".dynamic-div").find("h3").remove()
    $(".dynamic-div").find("form").remove()
    $(".dynamic-div").find("div").remove()
    $(".dynamic-div").append(response)
  }).always(function(){
    console.log("Survey completed!")
  })
};