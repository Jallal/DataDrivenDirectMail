var value = [['Year', 'Publication'], ['2014', 1000], ['2015', 1170], ['2016', 660], ['2017', 1030]];
google.charts.load('current', {'packages':['bar']});
google.charts.setOnLoadCallback(drawBarChart);

function drawBarChart(value) {
  if(value.length > 0){
    // loop the outer array

    console.log("*****************************I'm the GRAPH and I WAS CALLED*********************************");
    console.log(value);
    console.log("**************************************************************");


    for (var i = 1; i < value.length; i++) {
      value[i][1]= parseInt(value[i][1], 10);
    }
    var data = google.visualization.arrayToDataTable(value);
    var options = {
      chart: {
        title: 'Publication per year'
      }
    };

    var chart = new google.charts.Bar(document.getElementById('columnchart_material'));

    chart.draw(data, google.charts.Bar.convertOptions(options));
  }
}