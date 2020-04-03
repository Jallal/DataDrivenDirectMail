<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">


    <!-- needed for the collapsable table -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
    <!-- Ajax end -->

    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="css/styleIndex.css">

    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>

    <!-- jQuery CDN - Slim version (=without AJAX) -->
    <!--script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script-->

    <!--have Ajx work -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

</head>


<body>
<div class="wrapper">

    <!-- Page Content  -->
    <div id="content">
            <div class="container-fluid text-center">
                <button class="btn btn-info" id="runRouteMining">Run Route Mining Reports</button>
            </div>
        <!--End of search section-->
        <div class="line"></div>
        <!-- Table start-->
        <!-- Table style start -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <!--table end-->
        <div class="line"></div>
        <!-- Table Graph and Pie --->
        <div class="row">
            <!-- Starting the graph-->
            <div class="col-sm-5 col-md-6">
                <div class="table-wrapper">
                    <div class="card spur-card">
                        <div class="centerBlock">
                            <!--Table style end-->
                            <div class="table-wrapper">
                                <div class="table-title">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="show-entries">
                                                <span>Show</span>
                                                <select class="listOdRecords" id="myselect">
                                                    <option>5</option>
                                                    <option>10</option>
                                                    <option>20</option>
                                                    <option>30</option>
                                                </select>
                                                <span>entries</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <table class="table table-bordered">
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Address</th>
                                        <th>Carrier Route</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                    <br/>
                                </table>
                                <div class="clearfix">
                                    <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>
                                    <ul class="pagination">
                                        <li class="page-item disabled"><a href="#">Previous</a></li>
                                        <li class="page-item active"><a href="1" class="page-link">1</a></li>
                                        <li class="page-item"><a href="2" class="page-link">2</a></li>
                                        <li class="page-item "><a href="3" class="page-link">3</a></li>
                                        <li class="page-item"><a href="4" class="page-link">4</a></li>
                                        <li class="page-item"><a href="5" class="page-link">5</a></li>
                                        <li class="page-item"><a href="next" class="page-link">Next</a></li>
                                    </ul>
                                </div>
                            </div>
                            <!--TEST TABLE-->
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-5 offset-sm-2 col-md-6 offset-md-0">
                <div class="table-wrapper">
                    <div class="card spur-card">
                        <div class="centerBlock">
                            <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
                            <div id="regions_div_graph" style="width:600px; height: 550px;"></div>
                            <script type="text/javascript" src="css/js/countryPerPublication.js"></script>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="line"></div>

    </div>
</div>

<script type="text/javascript">
  $(document).ready(function () {
    $('#sidebarCollapse').on('click', function () {
      $('#sidebar').toggleClass('active');
    });
  });
</script>
</body>


<!-- Content for Popover #1 -->
<div class="hidden" id="a1">
    <div class="popover-heading" id="title"></div>
    <div class="popover-body">
        <div class="abstract"></div>
        <div class="keywords"></div>
    </div>
</div>

</html>


<script>
  $(document).ready(function () {
    console.log("********************************");

    $("#search").submit(function (event) {

//stop submit the form, we will post it manually.
      event.preventDefault();

      fire_ajax_submit();

    });

  });

  function fire_ajax_submit(search) {

    $("#btn-search").prop("disabled", true);
    console.log("***********************************");
    console.log("Begore AJAX"+search);
    jQuery.ajax({
      type: "POST",
      contentType: "application/json",
      url: "/api/search",
      data: JSON.stringify(search),
      dataType: 'json',
      cache: false,
      timeout: 600000,
      success: function (data) {


        $('#total_records').text(data.length);
        var html = '';
        if (data.length > 0) {

          for (var count = 0; count < data.length; count++) {
            var abstractVal = count + 1;
            html += '<tr>';
            html += '<td>' + abstractVal+'</td>';
            html += '<td>' + data[count].streetName+" "+data[count].appartmnetNumber+", "+data[count].city+", "+data[count].state+", "+data[count].zipCode+'</td>';
            html += '<td>' + data[count].route + '</td>';
          }


          jQuery.getScript("css/js/countryPerPublication.js").done(function () {
            console.log("yay, we got the country per pub *");
            drawPublicationPerCountryChart(data[0].routeToAddress);
          }).fail(function () {
            console.log("boo first chart failed , fall back to something else");
          });

        } else {
          html = '<tr><td colspan="5">No Data Found</td></tr>';
        }
        $('tbody').html(html);

        //will clear all the empty DIVs with the following classes
          (function ($) {
              $(document).ready(function(){
                  console.log( 'Before: ', $('div') );
                  $('.hideKeyWords, .hideKeyWords1, .hideKeyWords2, .hideKeyWords3,.hideKeyWords4').filter(function() {
                      return $.trim($(this).text()) === '';
                  }).remove();
                  console.log( 'After: %%%%%%%%%%%%%%%%%', $('div') );
              });
          })(jQuery);

        //get the number of pages to display
        var numerOfRecords = $( "#myselect option:selected" ).text();
        //show only certain number
        $("table > tbody > tr").hide().slice(0, numerOfRecords).show();
      },
      error: function (e) {

        var json = "<h4>Ajax Response</h4><pre>"
          + e.responseText + "</pre>";
        $('#feedback').html(json);

        console.log("ERROR : ", e);
        $("#btn-search").prop("disabled", false);

      }
    });

  }

  $('#runRouteMining').click(function () {
    var search = {};
    search["search"] = $("#exampleFormControlSelect1").val();
    search["authorName"] = $('#tags').val();
    fire_ajax_submit(search);
  });

//test

  $(document).on("click", '.popoverButton', function(evt){

        evt.preventDefault();
    $('div.popover-heading').empty();
    $('div.abstract').empty();
    $('div.keywords').empty();
    $('div.popover-heading').append('<span class="close pull-right" data-dismiss="popover-x">&times;</span>');
    $('div.popover-heading').append('<h6> <span class="popoverBox">Title : </span>'+$(this).attr("data-title")+"<h6>");
    $('div.abstract').append('<span class="popoverBox">Abstract : </span>'+$(this).attr("href"));

     //add space
      $('div.abstract').append("</p>");
    //authors
      var authors = $(this).attr("lang");
      $('div.abstract').append('<span class="popoverBox">Authors : </span>'+authors);

    //keywords
    var keywords = $(this).attr("id");
    $('div.keywords').append('<span class="popoverBox">keywords : </span>'+keywords+"<br>");
    $("[data-toggle=popover]").popover({
      html: true,
      content: function() {
        var content = $(this).attr("data-popover-content");
       return $(content).children(".popover-body").html();
      },
      title: function() {
        var title = $(this).attr("data-popover-content");
        return $(title).children(".popover-heading").html();
      }

    }).on('shown.bs.popover', function () {
          $popup.popover('hide');
      });

      if ($(this).prop('popShown') == undefined) {
          $(this).prop('popShown', true).popover('show');
      }
      $("#a1").hide();
  });


  $(function() {
    $(".homeSubmenu0").on("click", function(evt) {
      evt.preventDefault();
      var search = {};
      var clicked_button = $(this);
      search["category"] = clicked_button.attr("href");
      fire_ajax_submit(search);
    });
  });
  $(function() {
    $(".pageSubmenu1").on("click", function(evt) {
      evt.preventDefault();
      var search = {};
      var clicked_button = $(this);
      search["category"] = clicked_button.attr("href");
      fire_ajax_submit(search);
    });
  });
  $(function() {
    $(".pageSubmenu2").on("click", function(evt) {
      evt.preventDefault();
      var search = {};
      var clicked_button = $(this);
      search["category"] = clicked_button.attr("href");
      fire_ajax_submit(search);
    });
  });
  $(function() {
    $(".pageSubmenu3").on("click", function(evt) {
      evt.preventDefault();
      var search = {};
      var clicked_button = $(this);
      search["category"] = clicked_button.attr("href");
      fire_ajax_submit(search);
    });
  });

  $(function() {
    $(".page-link").on("click", function(evt) {
      evt.preventDefault();

      //get the number of pages to display
      var numerOfRecords= $( "#myselect option:selected" ).text();

      var index = $(this);
      var index_value=index.attr("href");
      var upper_limit=index_value*numerOfRecords;
      var lower_limit=upper_limit-numerOfRecords;
      $("table > tbody > tr").hide().slice(lower_limit, upper_limit).show();
      //update the active
      $('li > a').click(function() {
        $('li').removeClass();
        $(this).parent().addClass('page-item active');
      });
    });
  });
  $(document).ready(function(){
    $("select.listOdRecords").change(function(){
      var selectedCountry = $(this).children("option:selected").val();
      $("table > tbody > tr").hide().slice(0, selectedCountry).show();
    });
  });
</script>


