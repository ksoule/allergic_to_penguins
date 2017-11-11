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
    $(".dynamic-div").children().remove()
    $(".dynamic-div").append(response)
  }).always(function(){
    console.log("Survey loaded!")
  })
};

var submitSurveyHandler = function(event){
  event.preventDefault()
  // console.log("blah")
  var $survey = $(this);

  var promise = $.ajax ({
    url: $survey.attr("action"),
    method: $survey.attr("method"),
    data: $survey.serialize()
  })

  promise.done(function(response){
    $(".dynamic-div").children().remove()
    $(".dynamic-div").append(response)
  }).always(function(){
    console.log("Survey completed!")
  })
};