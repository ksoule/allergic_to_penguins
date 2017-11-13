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

  promise.done(function(stats){
    var $dynamicDiv = $(".dynamic-div");

    $dynamicDiv.find("h2").remove()
    $dynamicDiv.find("h3").remove()
    $dynamicDiv.find("form").remove()
    $dynamicDiv.find("div").remove()

    for(var i = 0; i < stats.length; i++) {
        $dynamicDiv.append(`<div id="question${i}">
                              <h3>${stats[i].shift()}</h3>
                              <canvas id="chart${i}"></canvas>
                            </div>`);
        createChart(stats[i], i);
      }

    //loop with a counter
      // for each question in the stats append
      // div with a unique id to the dynamic div

      // call a method that takes the counter and
      // the stats for one question and makes a chart
    //end loop
  }).always(function(){
    console.log("Survey completed!")
  })
};


function createChart(questionStats, number) {

  var labels = Object.keys(questionStats[0]);
  var dataPoints = Object.values(questionStats[0]);
  var ctx = document.getElementById("chart" + number).getContext('2d');

  var data = {
    datasets: [{
        data: dataPoints,
        backgroundColor: getColors(dataPoints.length),
        borderColor: "black",
        borderWidth: 2
    }],
    labels: labels
  };

  var chartOptions = {
    circumference: Math.PI*2,
    legend: {
      position: 'left'
    },
    animation: {
      animateRotate: true,
      animateScale: true
    }
  };

  var mypieChart = new Chart(ctx, {
    type: 'pie',
    data: data,
    options: chartOptions
  });
}

function getRandomColor() {
  return '#'+Math.floor(Math.random()*16777215).toString(16);
}

function getColors(number) {
  var colors = [];

  for(var i = 0; i < number; i++) {
    colors.push(getRandomColor());
  }

  return colors;
}
