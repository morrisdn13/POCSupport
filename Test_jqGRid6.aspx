<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Test_jqGRid6.aspx.vb" Inherits="Test_jqGRid6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet"/>
    <link href="css/animate.css" rel="stylesheet"/>
    <link href="css/plugins/jQueryUI/jquery-ui-1.10.4.custom.min.css" rel="stylesheet"/>
    <link href="css/plugins/jqGrid/ui.jqgrid.css" rel="stylesheet"/>
    <link href="css/style.css" rel="stylesheet"/>

</head>
<body>
    <form id="form1" runat="server">
        <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom">
        <div class="wrapper wrapper-content  animated fadeInRight">
            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox ">
                        <div class="ibox-title">
                            <h5>jQuery Grid Plugin – jqGrid</h5>
                        </div>
                        <div class="ibox-content">
                            <p>
                                <strong>jqGrid</strong> is an Ajax-enabled JavaScript control that provides solutions for representing and manipulating tabular data on the web. Since the grid is a client-side solution loading data dynamically through Ajax callbacks, it can be integrated with any server-side technology, including PHP, ASP, Java Servlets, JSP, ColdFusion, and Perl.
                                jqGrid uses a jQuery Java Script Library and is written as plugin for that package. For more information on jQuery Grid, please refer to the <a target="_blank" href="http://www.trirand.com/blog/"> jqGrid web site.</a>
                            </p>

                            <h4>Basic example</h4>

                            <div class="jqGrid_wrapper">
                                <table id="table_list_1"></table>
                                <div id="pager_list_1"></div>
                           </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
            </div>
        </div>
    </form>
    <!-- Mainly scripts -->
    <script src="js/jquery-2.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Peity -->
    <script src="js/plugins/peity/jquery.peity.min.js"></script>

    <!-- jqGrid -->
    <script src="js/plugins/jqGrid/i18n/grid.locale-en.js"></script>
    <script src="js/plugins/jqGrid/jquery.jqGrid.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="js/inspinia.js"></script>
    <script src="js/plugins/pace/pace.min.js"></script>

    <script src="js/plugins/jquery-ui/jquery-ui.min.js"></script>

    <script>
             $(document).ready(function () {

                 $("#table_list_1").jqGrid({
                url: "POCS.asmx/GetCritCareMeds2",
                datatype: "json",
                height: 250,
                autowidth: true,
                shrinkToFit: true,
                rowNum: 14,
                rowList: [10, 20, 30],
                data: {},
                mtype: 'POST',
                colNames: ['Drug Name', 'Onset', 'Duration', 'Concentraion', 'Unit of Measure', 'Class', 'Titration'],
                colModel: [
                    { name: 'DrugName', index: 'DrugName', width: 100 },
                    { name: 'Onset', index: 'Onset', width: 100 },
                    { name: 'Duration', index: 'Duration', width: 100 },
                    { name: 'Concentratiton', index: 'Concentration', width: 200, align: "right" },
                    { name: 'UOM', index: 'UOM', width: 200, sortable: false },
                    { name: 'DrugClass', index: 'DrugClass', width: 100 },
                    { name: 'Titration', index: 'Titration', width: 200 }
                ],
                ajaxGridOptions: { contentType: 'application/json; charset=utf-8' },
                contentType: "application/json; charset=utf-8",
                serializeGridData: function (postData) {
                    // extend the parameter which will be send to the server
                    postData.formVars = $("#searchForm").serializeArray();
                    // serialize the parameters as JSON string
                    return JSON.stringify(postData);
                },
                viewrecords: true,
                height: 500,
                autowidth: true,
                shrinkToFit: true,
                gridview: true,
                autoencode: true,
                caption: "Critcal Care Drugs",
                hidegrid: false,
                jsonReader: {
                    root: "d.rows", //array containing actual data
                    page: "d.page", //current page
                    total: "d.total", //total pages for the query
                    records: "d.records", //total number of records
                    repeatitems: false,
                    id: "d.Prop1" //index of the column with the PK in it         

                }
                 });
                 // Add responsive to jqGrid
                 $(window).bind('resize', function () {
                     var width = $('.jqGrid_wrapper').width();
                     $('#table_list_1').setGridWidth(width);
                 });


                 setTimeout(function () {
                     $('.wrapper-content').removeClass('animated fadeInRight');
                 }, 700);

             });
    </script>


</body>
</html>
