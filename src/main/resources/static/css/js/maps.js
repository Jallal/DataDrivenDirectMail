var value = [['Country', 'Popularity'], ['Germany', 200], ['United States', 300], ['Brazil', 400], ['Canada', 500], ['France', 600], ['RU', 700]];
google.charts.load('current', {
  'packages': ['geochart'],
  // Note: you will need to get a mapsApiKey for your project.
  // See: https://developers.google.com/chart/interactive/docs/basic_load_libs#load-settings
  'mapsApiKey': 'AIzaSyD-9tSrke72PouQMnMX-a7eZSW0jkFMBWY'
});
google.charts.setOnLoadCallback(drawRegionsMap);

function drawRegionsMap(value) {
  if (value.length > 0) {

    console.log("*****************************I'm the MAP and I WAS CALLED*********************************");
    console.log(value);
    console.log("**************************************************************");
    for (var i = 1; i < value.length; i++) {
      value[i][1]= parseInt(value[i][1], 10);
    }
    var data = google.visualization.arrayToDataTable(value);
    var options = {
    };

    var chart = new google.visualization.GeoChart(document.getElementById('regions_div'));

    chart.draw(data, options);
  }
}