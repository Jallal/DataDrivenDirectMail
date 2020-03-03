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
    <!-- Sidebar  -->
    <nav id="sidebar">
        <div class="sidebar-header">
            <h3>Search Categories</h3>
        </div>
        <ul class="list-unstyled components">
            <!--p>Dummy Heading</p-->
            <li class="active">
                <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Target of Refactoring</a>
                <ul class="collapse list-unstyled" id="homeSubmenu">
                    <li>
                        <a href="code" class="homeSubmenu0" >Code</a>
                    </li>
                    <li>
                        <a href="Architecture" class="homeSubmenu0" >Architecture</a>
                    </li>
                    <li>
                        <a href="UI"  class="homeSubmenu0" >UI</a>
                    </li>
                    <li>
                        <a href="Model"  class="homeSubmenu0" >Model</a>
                    </li>
                    <li>
                        <a href="Database"  class="homeSubmenu0" >Database</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="#pageSubmenu1" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Refactoring Life Cycle</a>
                <ul class="collapse list-unstyled" id="pageSubmenu1">
                    <li>
                        <a href="Recommendation" class="homeSubmenu0" >Recommendation</a>
                    </li>
                    <li>
                        <a href="Detection" class="homeSubmenu0" >Detection</a>
                    </li>
                    <li>
                        <a href="Testing"  class="homeSubmenu0" >Testing</a>
                    </li>
                    <li>
                        <a href="Automation"  class="homeSubmenu0" >Automation</a>
                    </li>
                    <li>
                        <a href="Prioritization"  class="homeSubmenu0" >Prioritization</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="#pageSubmenu2" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Programming Languages</a>
                <ul class="collapse list-unstyled" id="pageSubmenu2">
                    <li>
                        <a href="Java" class="homeSubmenu0" >Java</a>
                    </li>
                    <li>
                        <a href="C/C++" class="homeSubmenu0" >C/C++</a>
                    </li>
                    <li>
                        <a href="C#"  class="homeSubmenu0" >C#</a>
                    </li>
                    <li>
                        <a href="Python"  class="homeSubmenu0" >Python</a>
                    </li>
                    <li>
                        <a href="PHP"  class="homeSubmenu0" >PHP</a>
                    </li>
                    <li>
                        <a href="COBOL"  class="homeSubmenu0" >COBOL</a>
                    </li>
                    <li>
                        <a href="CSS"  class="homeSubmenu0" >CSS</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="#pageSubmenu3" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Refactoring Objectives</a>
                <ul class="collapse list-unstyled" id="pageSubmenu3">
                    <li>
                        <a href="External Quality" class="homeSubmenu0" >External Quality</a>
                    </li>
                    <li>
                        <a href="Internal Quality" class="homeSubmenu0" >Internal Quality</a>
                    </li>
                    <li>
                        <a href="Performance/Parallelism"  class="homeSubmenu0" >Performance/Parallelism</a>
                    </li>
                    <li>
                        <a href="Migration"  class="homeSubmenu0" >Migration</a>
                    </li>
                    <li>
                        <a href="Security"  class="homeSubmenu0" >Security</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="#pageSubmenu4" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Refactoring Evaluation</a>
                <ul class="collapse list-unstyled" id="pageSubmenu4">
                    <li>
                        <a href="Industrial" class="homeSubmenu0" >Industrial</a>
                    </li>
                    <li>
                        <a href="Open Source" class="homeSubmenu0" >Open Source</a>
                    </li>
                </ul>
            </li>

            <li>
                <a href="#pageSubmenu5" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Fields</a>
                <ul class="collapse list-unstyled" id="pageSubmenu5">
                    <li>
                        <a href="Data mining" class="homeSubmenu0" >Data mining</a>
                    </li>
                    <li>
                        <a href="Search base<" class="homeSubmenu0" >Search base</a>
                    </li>
                    <li>
                        <a href="Formal methods" class="homeSubmenu0" >Formal methods</a>
                    </li>
                    <li>
                        <a href="Fuzzy logic" class="homeSubmenu0" >Fuzzy logic</a>
                    </li>
                </ul>
            </li>


            <li>
                <a href="#pageSubmenu6" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Applied Paradigm</a>
                <ul class="collapse list-unstyled" id="pageSubmenu6">
                    <li>
                        <a href="OO Design" class="homeSubmenu0" >OO Design</a>
                    </li>
                    <li>
                        <a href="Web service/Cloud" class="homeSubmenu0" >Web service/Cloud</a>
                    </li>
                    <li>
                        <a href="Mobile Aps" class="homeSubmenu0" >Mobile Aps</a>
                    </li>
                    <li>
                        <a href="Model Driven" class="homeSubmenu0" >Model Driven</a>
                    </li>
                    <li>
                        <a href="Aspect Oriented" class="homeSubmenu0" >Aspect Oriented</a>
                    </li>
                    <li>
                        <a href="Software Documentation" class="homeSubmenu0" >Software Documentation</a>
                    </li>
                </ul>
            </li>

        </ul>
    </nav>

    <!-- Page Content  -->
    <div id="content">

        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">

                <button type="button" id="sidebarCollapse" class="btn btn-info">
                    <i class="fas fa-align-left"></i>
                    <span>Categories filter</span>
                </button>
                <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fas fa-align-justify"></i>
                </button>
            </div>
        </nav>

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
                                        <option>Title</option>
                                    </select>
                                </div>
                                <div class="col-lg-6 col-md-3 col-sm-12 p-0">
                                    <input type="text" id="tags" class="form-control search-slt" data-role="tagsinput"/>
                                </div>
                                <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                                    <button type="button" name="search" class="btn btn-warning search-slt2" id="search">Search</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
                <br/>
            </div>
        </section>
        <!--End of search section-->
        <div class="line"></div>
        <!-- Table start-->
        <!-- Table style start -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
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
                    <div class="col-sm-4">
                        <h2 class="text-center">Publication Details</h2>
                    </div>
                </div>
            </div>
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Authors Name </th>
                    <th>Article Title</th>
                    <th>Publication year</th>
                    <th>Tags</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>Thomas Hardy</td>
                    <td>89 Chiaroscuro Rd.</td>
                    <td>Portland</td>
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
                            <div id="piechart" style="width: 600px; height: 500px;"></div>
                            <script type="text/javascript" src="css/js/tagPie.js"></script>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="line"></div>

        <!-- Table Graph country per publication and Map --->
        <div class="row">
            <!-- Starting the graph-->
            <div class="col-sm-5 col-md-6">
                <div class="table-wrapper">
                    <div class="card spur-card">
                        <div class="centerBlock">
                            <!--graph for publications-->
                            <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
                            <!--div id="chart_div" style="width: 900px; height: 500px;"></div-->
                            <div id="regions_div_graph" style="width:600px; height: 500px;"></div>
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
                            <div id="regions_div" style="width: 600px; height: 500px;"></div>
                            <script type="text/javascript" src="css/js/maps.js"></script>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END GRAPH AND MAP-->
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
            var RefactoringLifeCycle = "";
            var TargetOfRefactoring = "";
            var ProgrammingLanguages = "";
            var RefactoringEvaluation = "";
            var RefactoringObjectives = "";
            var Fields="";
            var AppliedParadigm="";

            var tags = JSON.stringify(data[count].listOfTages);
            var obj = JSON.parse(tags);
            var refLife1 = obj.RefactoringLifeCycle;
            var refLife2 = refLife1.join(",");
            if (refLife2) {
              RefactoringLifeCycle = "Refactoring Life Cycle ::: " + refLife2;
            }

            var targetRef1 = obj.TargetOfRefactoring;
            var targetRef2 = targetRef1.join(",");
            if (targetRef2) {
              TargetOfRefactoring = "Target Of Refactoring ::: " + targetRef2;
            }

            var progLang1 = obj.ProgrammingLanguages;
            var progLang2 = progLang1.join(",");
            if (progLang2) {
              ProgrammingLanguages = "Programming Languages ::: " + progLang2;
            }

            var progEvolu1 = obj.RefactoringEvaluation;
            var progEvolu2 = progEvolu1.join(",");
            if (progEvolu2) {
                RefactoringEvaluation = "RefactoringEvaluation ::: " + progEvolu2;
            }
            var progobject1 = obj.RefactoringObjectives;
            var progobject2 = progobject1.join(",");
            if (progobject2) {
                RefactoringObjectives = "RefactoringObjectives ::: " + progobject2;
            }

            var fields1 = obj.Fields;
            var fields2 = fields1.join(",");
            if (fields2) {
              Fields = "Fields ::: " + fields2;
            }

            var appliedpa1 = obj.AppliedParadigm;
            var appliedpa2 = appliedpa1.join(",");
            if (appliedpa2) {
              AppliedParadigm = "AppliedParadigm ::: " + appliedpa2;
            }


            var abstractVal = count + 1;
            html += '<tr>';
            // html += '<td><button class="btn btn-danger btn-xs" id="SaveChangesBtn" type="button" data-toggle="popover" data-title="Custom Title" data-trigger="manual" data-content="&lt;div&gt;This is your div content&lt;/div&gt;"><span class="glyphicon glyphicon-floppy-save" aria-hidden="true"></span>'+abstractVal+'</button></td>';
            html += '<td>' + '<a href="' + data[count].bbstract + '" data-title="' + data[count].title + '"  id="' + refLife2 + " " + targetRef2 + " " + progEvolu2 + " " + progobject2 + " "+progLang2+" "+fields2+ " "+appliedpa2+'"  lang="'+data[count].authors+'" type="button" class="popoverButton btn btn-info" data-toggle="popover" data-trigger="focus" data-popover-content="#a1" data-placement="right"><span class="popoverNumber">' + abstractVal + '<span></a></td>';
            html += '<td>' + data[count].authors + '</td>';
            html += '<td>' + data[count].title + '</td>';
            html += '<td>' + data[count].year + '</td>';
            html += '<td id="a" >' +
            '<span class="hideKeyWords text-nowrap text-info text-nowrap">' + refLife2 + '&nbsp;<br></span>' +
              '<span class="hideKeyWords1 text-nowrap text-warning text-nowrap">' + targetRef2 + '&nbsp;<br></span>' +
              '<span class="hideKeyWords2 text-nowrap text-primary text-nowrap">'+progEvolu2+'&nbsp;<br></span>' +
              '<span class="hideKeyWords3 text-nowrap text-success text-nowrap">'+progobject2+'&nbsp;<br></span>' +
              '<span class="hideKeyWords4 text-nowrap text-danger text-nowrap">' + progLang2 + '&nbsp;<br></span>' +
              '<span class="hideKeyWords4 text-nowrap text-secondary text-nowrap">' + fields2 + '&nbsp;<br></span>' +
              '<span class="hideKeyWords4 text-nowrap text-dark text-nowrap">' + appliedpa2 + '&nbsp;</span>' +
              '</td></tr>';

          }

          jQuery.getScript("css/js/pubPerYearGraph.js").done(function () {
            console.log("yay, all good, do something *");
            drawBarChart(data[0].publicationsPerYear);
          }).fail(function () {
            console.log("boo first chart failed , fall back to something else");
          });

          jQuery.getScript("css/js/tagPie.js").done(function () {
            console.log("yay, all good, do something *");
            drawPieChart(data[0].publicationsPerCategory);
          }).fail(function () {
            console.log("boo first chart failed , fall back to something else");
          });

          jQuery.getScript("css/js/maps.js").done(function () {
            console.log("yay, we got the map *");
            drawRegionsMap(data[0].publicationsMaps);
          }).fail(function () {
            console.log("boo first chart failed , fall back to something else");
          });

          jQuery.getScript("css/js/countryPerPublication.js").done(function () {
            console.log("yay, we got the country per pub *");
            drawPublicationPerCountryChart(data[0].publicationsMaps);
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

  $('#search').click(function () {
    var search = {};
    search["search"] = $("#exampleFormControlSelect1").val();
    search["authorName"] = $('#tags').val();
    fire_ajax_submit(search);
  });

//test

  $(document).on("click", '.popoverButton', function(evt){

        evt.preventDefault();
  /*
  * <div class="hidden" id="a1">
    <div class="popover-heading" id="title">
        This is the heading for #1
    </div>

    <div class="popover-body">
        <div id="abstract">This is the body for #1</div>
        <div class="text-danger" id="keywords">This is the heading for #2</div>
    </div>
</div>
  * */
  //.empty()alert("Hello");

    //var clicked_button = $(this);
    //var abstract = clicked_button.attr("href");
    //var title = clicked_button.attr("data-title");
//'<button class="btn btn-success cancel pull-right">Close</button>'
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


