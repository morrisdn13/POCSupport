<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Test_DataTablejs1.aspx.vb" Inherits="Test_DataTablejs1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
        <link href="css/plugins/dataTables/datatables.min" rel="stylesheet"/>
        <link href="font-awesome/css/font-awesome.css" rel="stylesheet"/>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>

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
                                <table id="CritMeds"></table>
                           </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
            </div>
        </div>
    </form>
    <script src="js/jquery-2.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- Peity -->
    <script src="js/plugins/DataTablesJS/jquery.dataTables.min"></script>

    <!-- jqGrid -->

    <script>
        $(document).ready(function () {
            $('#CritMeds').DataTable({
                scrollY: '50vh',
                scrollCollapse: true,
                paging: false
            });
        });
    </script>
</body>
</html>
