window.onload = function(stat_array) {
  var chart = new CanvasJS.Chart("chartContainer",
  {
    // Title needs to be the question text for the survey, along with the survey itself. ex: survey.name, question.text
    title:{text: stat_array(0)},
      // # this size works for our purposes, although might want to make it a bit bigger.
    legend: {
      maxWidth: 350,
      itemWidth: 120
    },

    data: [
    {
      type: "pie",
      showInLegend: true,
      legendText: "{indexLabel}",

      dataPoints: [
     // #Each hash in the array is a question. Key is the answer.id, value is the count.
      // #In this case the y: would = the value. index label is the answer.text for answer.id

        { y: 4181563, indexLabel: "PlayStation 3" },

      ]
    }
    ]
  });
  chart.render();
}
