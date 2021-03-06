﻿<%@ Page Title="" Language="VB" MasterPageFile="~/POCS2.master" AutoEventWireup="false" EnableViewState="false"  CodeFile="LabTubes.aspx.vb" Inherits="LabTubes" %>
<%@ MasterType virtualpath="~/POCS2.master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                   <asp:ScriptManager runat="server">
        </asp:ScriptManager>
<%--    <link href="css/plugins/dataTables/datatables.min.css" rel="stylesheet"/>--%>
        <link href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css" rel="stylesheet"/>
        <%-- https://datatables.net/ --%>
        <%-- https://datatables.net/examples/basic_init/scroll_y.html --%>
    <style>
        .full-circle-red {
            background-color:red;
            height: 10px;
            -moz-border-radius: 75px;
            -webkit-border-radius: 75px;
            width: 10px;
        }
        .full-circle-blue {
            background-color: royalblue;
            height: 10px;
            -moz-border-radius: 75px;
            -webkit-border-radius: 75px;
            width: 10px;
        }
        .full-circle-green {
            background-color: green;
            height: 10px;
            -moz-border-radius: 75px;
            -webkit-border-radius: 75px;
            width: 10px;
        }
        .full-circle-pink {
            background-color: pink;
            height: 10px;
            -moz-border-radius: 75px;
            -webkit-border-radius: 75px;
            width: 10px;
        }
        .full-circle-gray {
            background-color: gray;
            height: 10px;
            -moz-border-radius: 75px;
            -webkit-border-radius: 75px;
            width: 10px;
        }
        .full-circle-lavender {
            background-color: purple;
            height: 10px;
            -moz-border-radius: 75px;
            -webkit-border-radius: 75px;
            width: 10px;
        }
        .full-circle-gold {
            background-color: gold;
            height: 10px;
            -moz-border-radius: 75px;
            -webkit-border-radius: 75px;
            width: 10px;
        }
    </style>
    <asp:ScriptManagerProxy  ID="ScriptManager1" runat="server">
         <Scripts>
            <asp:ScriptReference Path="js/plugins/DataTablesJS/jquery.dataTables.min.js" />
         </Scripts>
    </asp:ScriptManagerProxy>
                <div class="container"><%--  1 -OUTER MOST DIV OF CONTENTS PAGE --%>

                <div class="mail-box-header"><%--  2 CONTENTS PAGE LABEL/HEADING--%>
                     <h2><asp:Label ID="lblGridTitle" runat="server" Text="Lab Test Tubes"></asp:Label></h2>
                     <asp:Label ID="lblErr" runat="server" Text=""></asp:Label>
                 </div><%-- / 2 CONTENTS PAGE LABEL/HEADING--%>

                <div class="mail-box"><%--  ******  3 -CONTENTS OF PAGE INSIDE THIS DIV ****** --%>
                            <div id="LabTableDiv" runat="server">

                            </div>
                </div><%--  ****** / 3 - CONTENTS OF PAGE INSIDE THIS DIV ****** --%>
           </div><%--  /1 - OUTER MOST DIV OF CONTENTS PAGE--%>

    <script src="js/jquery-2.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Flot -->
    <script src="js/plugins/flot/jquery.flot.js"></script>
    <script src="js/plugins/flot/jquery.flot.tooltip.min.js"></script>
    <script src="js/plugins/flot/jquery.flot.spline.js"></script>
    <script src="js/plugins/flot/jquery.flot.resize.js"></script>
    <script src="js/plugins/flot/jquery.flot.pie.js"></script>

    <!-- Peity -->
    <script src="js/plugins/peity/jquery.peity.min.js"></script>
    <script src="js/demo/peity-demo.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="js/inspinia.js"></script>
    <script src="js/plugins/pace/pace.min.js"></script>

    <!-- jQuery UI -->
    <script src="js/plugins/jquery-ui/jquery-ui.min.js"></script>

    <!-- GITTER -->
    <script src="js/plugins/gritter/jquery.gritter.min.js"></script>

    <!-- Sparkline -->
    <script src="js/plugins/sparkline/jquery.sparkline.min.js"></script>

    <!-- Sparkline demo data  -->
    <script src="js/demo/sparkline-demo.js"></script>

    <!-- ChartJS-->
    <script src="js/plugins/chartJs/Chart.min.js"></script>

    <!-- Toastr -->
    <script src="js/plugins/toastr/toastr.min.js"></script>

    <!-- dataTables -->
    <script src="js/plugins/DataTablesJS/jquery.dataTables.min.js"></script>
    <%-- https://datatables.net/examples/basic_init/scroll_y.html --%>
        <script>

        $(document).ready(function () {
            $('#Labs').DataTable({
                scrollY: '60vh',
                scrollCollapse: true,
                paging: false
            });
        });
    </script>

</asp:Content>

