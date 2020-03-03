var value = [['Country', 'Popularity'], ['Germany', 200], ['United States', 300], ['Brazil', 400], ['Canada', 500], ['France', 600], ['RU', 700]];
google.charts.load('current', {packages: ['corechart', 'bar']});
google.charts.setOnLoadCallback(drawPublicationPerCountryChart);

function drawPublicationPerCountryChart(value) {
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
      title: 'The number of publications per country',
      chartArea: {width: '50%'},
      hAxis: {
        title: 'Total Publication',
        minValue: 0
      }
    };
    var chart = new google.visualization.BarChart(document.getElementById('regions_div_graph'));
    chart.draw(data, options);
  }
}