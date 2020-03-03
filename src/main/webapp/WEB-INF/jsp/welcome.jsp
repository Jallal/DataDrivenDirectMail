<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Live Data Search using Multiple Tag in PHP with Ajax</title>
    <!-- TESTS -->
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="css/stylesWelcome.css">
    <!-- needed for the collapsable table -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
</head>
<body>
<!--Top of the page -->
<section class="search-sec2">
    <h1 class="text-light">Document search</h1>
</section>
<!--End of the top of the page --->
<br/>
<!-- Search section -->
<section class="search-sec">
    <div class="container">
        <form action="#" method="post" novalidate="novalidate">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                            <select class="form-control search-slt" id="exampleFormControlSelect1">
                                <option>Select search criteria</option>
                                <option>Name</option>
                                <option>Journal</option>
                                <option>Category</option>
                                <option>Any</option>
                            </select>
                        </div>
                        <div class="col-lg-6 col-md-3 col-sm-12 p-0">
                            <input type="text" id="tags" class="form-control search-slt" data-role="tagsinput"/>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                            <button type="button" name="search" class="btn btn-warning search-slt2" id="search">Search
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <br/>
    </div>
</section>
<!--End of search section-->

<!--TEST TABLE-->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
    body {
        color: #566787;
        background: #f5f5f5;
        font-family: 'Roboto', sans-serif;
    }

    .table-wrapper {
        background: #fff;
        padding: 20px;
        margin: 30px 0;
        box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
    }

    .table-title {
        font-size: 15px;
        padding-bottom: 10px;
        margin: 0 0 10px;
        min-height: 45px;
    }

    .table-title h2 {
        margin: 5px 0 0;
        font-size: 24px;
    }

    .table-title select {
        border-color: #ddd;
        border-width: 0 0 1px 0;
        padding: 3px 10px 3px 5px;
        margin: 0 5px;
    }

    .table-title .show-entries {
        margin-top: 7px;
    }

    table.table tr th, table.table tr td {
        border-color: #e9e9e9;
    }

    table.table th i {
        font-size: 13px;
        margin: 0 5px;
        cursor: pointer;
    }

    table.table td:last-child {
        width: 130px;
    }

    table.table td a {
        color: #a0a5b1;
        display: inline-block;
        margin: 0 5px;
    }

    table.table td a.view {
        color: #03A9F4;
    }

    table.table td a.edit {
        color: #FFC107;
    }

    table.table td a.delete {
        color: #E34724;
    }

    table.table td i {
        font-size: 19px;
    }

    .pagination {
        float: right;
        margin: 0 0 5px;
    }

    .pagination li a {
        border: none;
        font-size: 13px;
        min-width: 30px;
        min-height: 30px;
        padding: 0 10px;
        color: #999;
        margin: 0 2px;
        line-height: 30px;
        border-radius: 30px !important;
        text-align: center;
    }

    .pagination li a:hover {
        color: #666;
    }

    .pagination li.active a {
        background: #03A9F4;
    }

    .pagination li.active a:hover {
        background: #0397d6;
    }

    .pagination li.disabled i {
        color: #ccc;
    }

    .pagination li i {
        font-size: 16px;
        padding-top: 6px
    }

    .hint-text {
        float: left;
        margin-top: 10px;
        font-size: 13px;
    }
</style>
<script type="text/javascript">
  $(document).ready(function () {
    $('[data-toggle="tooltip"]').tooltip();
    // Animate select box length
    var searchInput = $(".search-box input");
    var inputGroup = $(".search-box .input-group");
    var boxWidth = inputGroup.width();
    searchInput.focus(function () {
      inputGroup.animate({
        width: "300"
      });
    }).blur(function () {
      inputGroup.animate({
        width: boxWidth
      });
    });
  });
</script>

<!--Group pickers start -->
<!-- Search section -->
<section class="search-sec">
    <div class="container">
        <form action="#" method="post" novalidate="novalidate">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                            <select class="form-control search-slt" id="exampleFormControlSelect1">
                                <option>Select search criteria</option>
                                <option>Name</option>
                                <option>Journal</option>
                                <option>Category</option>
                                <option>Any</option>
                            </select>
                        </div>

                        <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                            <select class="form-control search-slt" id="exampleFormControlSelect1">
                                <option>Select search criteria</option>
                                <option>Name</option>
                                <option>Journal</option>
                                <option>Category</option>
                                <option>Any</option>
                            </select>
                        </div>

                        <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                            <select class="form-control search-slt" id="exampleFormControlSelect1">
                                <option>Select search criteria</option>
                                <option>Name</option>
                                <option>Journal</option>
                                <option>Category</option>
                                <option>Any</option>
                            </select>
                        </div>

                        <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                            <select class="form-control search-slt" id="exampleFormControlSelect1">
                                <option>Select search criteria</option>
                                <option>Name</option>
                                <option>Journal</option>
                                <option>Category</option>
                                <option>Any</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <br/>
    </div>
</section>
<!-- Group pickers end-->







<!-- TESTING COLLAPSABLE-->
<!--section-- class="search-sec">
<div class="container">
<div class="row">
    <div class="collapse-group">
        <div class="col-lg-5">
            <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingOne">
                    <h4 class="panel-title">
                        <a role="button" data-toggle="collapse" href="#collapseOne" aria-expanded="true"
                           aria-controls="collapseOne" class="trigger collapsed">
                            Category #1
                        </a>
                    </h4>
                </div>
                <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                    <div class="panel-body">
                        <button type="button" value="Categoriess" role="button"
                                class="list-group-item list-group-item-action" id="category">Category
                        </button>
                        <button type="button" role="button" class="list-group-item list-group-item-action">Morbi leo
                            risus
                        </button>
                        <button type="button" role="button" class="list-group-item list-group-item-action">Porta ac
                            consectetur ac
                        </button>
                        <button type="button" role="button" class="list-group-item list-group-item-action disabled">
                            Vestibulum at eros
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-5">
            <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingTwo">
                    <h4 class="panel-title">
                        <a role="button" data-toggle="collapse" href="#collapseTwo" aria-expanded="true"
                           aria-controls="collapseTwo" class="trigger collapsed">
                            Category #2
                        </a>
                    </h4>
                </div>
                <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                    <div class="panel-body">
                        Sunt quia aperiam, officiis tempora quis quasi fugit ab ipsa quo expedita reiciendis quod iusto!
                        Enim delectus unde voluptatem officiis molestiae repudiandae.
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-5">
            <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingOne">
                    <h4 class="panel-title">
                        <a role="button" data-toggle="collapse" href="#collapseOne" aria-expanded="true"
                           aria-controls="collapseOne" class="trigger collapsed">
                            Category #3
                        </a>
                    </h4>
                </div>
                <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                    <div class="panel-body">

                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-5">
            <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingTwo">
                    <h4 class="panel-title">
                        <a role="button" data-toggle="collapse" href="#collapseTwo" aria-expanded="true"
                           aria-controls="collapseTwo" class="trigger collapsed">
                            Category #4
                        </a>
                    </h4>
                </div>
                <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                    <div class="panel-body">
                        Sunt quia aperiam, officiis tempora quis quasi fugit ab ipsa quo expedita reiciendis quod iusto!
                        Enim delectus unde voluptatem officiis molestiae repudiandae.
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</div>
</section-->
<!-- END TESTING COLLAPSABLE-->



<br/>
<!--end of table-->
<div class="row">
    <!-- Table start-->
    <div
    class="col-sm-5 col-md-6">
    <div class="table-wrapper">
        <div class="table-title">
            <div class="row">
                <div class="col-sm-4">
                    <div class="show-entries">
                        <span>Show</span>
                        <select>
                            <option>5</option>
                            <option>10</option>
                            <option>15</option>
                            <option>20</option>
                        </select>
                        <span>entries</span>
                    </div>
                </div>
                <div class="col-sm-4">
                    <h2 class="text-center">Publication Details</h2>
                </div>
            </div>
        </div>
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>#</th>
                <th>Name <i class="fa fa-sort"></i></th>
                <th>Address</th>
                <th>City <i class="fa fa-sort"></i></th>
                <th>Pin Code</th>
                <th>Country <i class="fa fa-sort"></i></th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>1</td>
                <td>Thomas Hardy</td>
                <td>89 Chiaroscuro Rd.</td>
                <td>Portland</td>
                <td>97219</td>
                <td>USA</td>
                <td>
                    <a href="#" class="view" title="View" data-toggle="tooltip"><i class="material-icons">&#xE417;</i></a>
                    <a href="#" class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
                    <a href="#" class="delete" title="Delete" data-toggle="tooltip"><i
                            class="material-icons">&#xE872;</i></a>
                </td>
            </tr>
            <tr>
                <td>2</td>
                <td>Maria Anders</td>
                <td>Obere Str. 57</td>
                <td>Berlin</td>
                <td>12209</td>
                <td>Germany</td>
                <td>
                    <a href="#" class="view" title="View" data-toggle="tooltip"><i class="material-icons">&#xE417;</i></a>
                    <a href="#" class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
                    <a href="#" class="delete" title="Delete" data-toggle="tooltip"><i
                            class="material-icons">&#xE872;</i></a>
                </td>
            </tr>
            <tr>
                <td>3</td>
                <td>Fran Wilson</td>
                <td>C/ Araquil, 67</td>
                <td>Madrid</td>
                <td>28023</td>
                <td>Spain</td>
                <td>
                    <a href="#" class="view" title="View" data-toggle="tooltip"><i class="material-icons">&#xE417;</i></a>
                    <a href="#" class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
                    <a href="#" class="delete" title="Delete" data-toggle="tooltip"><i
                            class="material-icons">&#xE872;</i></a>
                </td>
            </tr>
            <tr>
                <td>4</td>
                <td>Dominique Perrier</td>
                <td>25, rue Lauriston</td>
                <td>Paris</td>
                <td>75016</td>
                <td>France</td>
                <td>
                    <a href="#" class="view" title="View" data-toggle="tooltip"><i class="material-icons">&#xE417;</i></a>
                    <a href="#" class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
                    <a href="#" class="delete" title="Delete" data-toggle="tooltip"><i
                            class="material-icons">&#xE872;</i></a>
                </td>
            </tr>
            <tr>
                <td>4</td>
                <td>Dominique Perrier</td>
                <td>25, rue Lauriston</td>
                <td>Paris</td>
                <td>75016</td>
                <td>France</td>
                <td>
                    <a href="#" class="view" title="View" data-toggle="tooltip"><i class="material-icons">&#xE417;</i></a>
                    <a href="#" class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
                    <a href="#" class="delete" title="Delete" data-toggle="tooltip"><i
                            class="material-icons">&#xE872;</i></a>
                </td>
            </tr>
            <tr>
                <td>4</td>
                <td>Dominique Perrier</td>
                <td>25, rue Lauriston</td>
                <td>Paris</td>
                <td>75016</td>
                <td>France</td>
                <td>
                    <a href="#" class="view" title="View" data-toggle="tooltip"><i class="material-icons">&#xE417;</i></a>
                    <a href="#" class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
                    <a href="#" class="delete" title="Delete" data-toggle="tooltip"><i
                            class="material-icons">&#xE872;</i></a>
                </td>
            </tr>
            <tr>
                <td>4</td>
                <td>Dominique Perrier</td>
                <td>25, rue Lauriston</td>
                <td>Paris</td>
                <td>75016</td>
                <td>France</td>
                <td>
                    <a href="#" class="view" title="View" data-toggle="tooltip"><i class="material-icons">&#xE417;</i></a>
                    <a href="#" class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
                    <a href="#" class="delete" title="Delete" data-toggle="tooltip"><i
                            class="material-icons">&#xE872;</i></a>
                </td>
            </tr>
            <tr>
                <td>4</td>
                <td>Dominique Perrier</td>
                <td>25, rue Lauriston</td>
                <td>Paris</td>
                <td>75016</td>
                <td>France</td>
                <td>
                    <a href="#" class="view" title="View" data-toggle="tooltip"><i class="material-icons">&#xE417;</i></a>
                    <a href="#" class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
                    <a href="#" class="delete" title="Delete" data-toggle="tooltip"><i
                            class="material-icons">&#xE872;</i></a>
                </td>
            </tr>
            </tbody>
            <br/>
        </table>
        <div class="clearfix">
            <div class="hint-text">Showing <b>7</b> out of <b>25</b> entries</div>
            <ul class="pagination">
                <li class="page-item disabled"><a href="#">Previous</a></li>
                <li class="page-item"><a href="#" class="page-link">1</a></li>
                <li class="page-item"><a href="#" class="page-link">2</a></li>
                <li class="page-item active"><a href="#" class="page-link">3</a></li>
                <li class="page-item"><a href="#" class="page-link">4</a></li>
                <li class="page-item"><a href="#" class="page-link">5</a></li>
                <li class="page-item"><a href="#" class="page-link">Next</a></li>
            </ul>
        </div>
    </div>
    </div>
    <!--table end-->
    <!-- Starting the graph-->
    <div class="col-sm-5 col-md-6">
        <div class="table-wrapper">
            <div class="card spur-card">
                <div class="centerBlock">
                    <!--graph for publications-->
                    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
                    <!--div id="chart_div" style="width: 900px; height: 500px;"></div-->
                    <div id="columnchart_material" style="width:600px; height: 500px;"></div>
                    <script type="text/javascript" src="css/js/pubPerYearGraph.js"></script>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-5 offset-sm-2 col-md-6 offset-md-0">
        <div class="table-wrapper">
            <div class="card spur-card">
                <div class="centerBlock">
                    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
                    <div id="piechart_1" style="width: 600px; height: 500px;"></div>
                    <script type="text/javascript" src="css/js/tagPie.js"></script>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-5 offset-sm-2 col-md-6 offset-md-0">
        <div class="table-wrapper">
            <div class="card spur-card">
                <div class="centerBlock">
                    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
                    <div id="piechart" style="width: 600px; height: 500px;"></div>
                    <script type="text/javascript" src="css/js/tagPie.js"></script>
                </div>
            </div>
        </div>
    </div>
</div>
<!--END TEST2-->


</body>
<!--script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<!--script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script-->
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

    $.ajax({
      type: "POST",
      contentType: "application/json",
      url: "/api/search",
      data: JSON.stringify(search),
      dataType: 'json',
      cache: false,
      timeout: 600000,
      success: function (data) {
        console.log("***********************************");
        console.log("I GOT A RESPONSE ");
        console.log(data);
        console.log("***********************************");
        $('#total_records').text(data.length);
        var html = '';
        if (data.length > 0) {
          for (var count = 0; count < data.length; count++) {
            html += '<tr>';
            html += '<td>' + data[count].customerName + '</td>';
            html += '<td>' + data[count].gender + '</td>';
            html += '<td>' + data[count].address + '</td>';
            html += '<td>' + data[count].city + '</td>';
            html += '<td>' + data[count].postalCode + '</td>';
            html += '<td>' + data[count].country + '</td></tr>';

            jQuery.getScript("css/js/tagPie.js").done(function () {
              console.log("yay, all good, do something *");
              drawPieChart(data[0].publicationsPerCategory);
            }).fail(function () {
              console.log("boo first chart failed , fall back to something else");
            });
          }


          jQuery.getScript("css/js/pubPerYearGraph.js").done(function () {
            console.log("yay, all good, do something *");
            drawChart(data[0].publicationsPerYear);
          }).fail(function () {
            console.log("boo first chart failed , fall back to something else");
          });
        }
        else {
          html = '<tr><td colspan="5">No Data Found</td></tr>';
        }
        $('tbody').html(html);
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

  $('#search').click(function () {
    //var query = $('#tags').val();
    var search = {};
    search["search"] = $("#exampleFormControlSelect1").val();
    search["authorName"] = $('#tags').val();
    fire_ajax_submit(search);
  });

  $('#category').click(function () {
    // var query = $('#tags').val();
    var search = {};
    //search["category"] = $(this).val();
    search["category"] = $(this).val();
    fire_ajax_submit(search);
  });
</script>
