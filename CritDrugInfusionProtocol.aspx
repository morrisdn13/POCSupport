<%@ Page Title="" Language="VB" MasterPageFile="~/POCS2.master" AutoEventWireup="false" CodeFile="CritDrugInfusionProtocol.aspx.vb" Inherits="CritDrugInfusionProtocol" EnableViewState="False" %>

<%@ MasterType virtualpath="~/POCS2.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <asp:ScriptManager runat="server">
        </asp:ScriptManager>
<%--    <link href="css/plugins/dataTables/datatables.min.css" rel="stylesheet"/>--%>
        <link href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css" rel="stylesheet"/>
        <%-- https://datatables.net/ --%>
        <%-- https://datatables.net/examples/basic_init/scroll_y.html --%>

    <asp:ScriptManagerProxy  ID="ScriptManager1" runat="server">
         <Scripts>
            <asp:ScriptReference Path="js/plugins/DataTablesJS/jquery.dataTables.min.js" />
         </Scripts>
    </asp:ScriptManagerProxy>

                    <div class="container"><%--  1 -OUTER MOST DIV OF CONTENTS PAGE --%>
                        <asp:UpdatePanel runat="server" id="UpdatePanel"><%--  LEFT PANEL FILTER PANE--%>
                            <ContentTemplate><%--  CENTER PANEL LEFT LIST SECTION--%>

                                <div class="mail-box-header"><%--  2 CONTENTS PAGE LABEL/HEADING--%>
                                 <h1><asp:Label ID="lblTitle" runat="server" Text="IV Drug Infusion Protocol"></asp:Label></h1>
                                    <button class="btn btn-white btn-xs" data-toggle="modal" data-target="#modalFeedback"><i class="fa fa-share"></i> Provide feedback</button>

                                 <asp:Label ID="lblErr" runat="server" Text=""></asp:Label>
                                </div><%-- / 2 CONTENTS PAGE LABEL/HEADING--%>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <div class="mail-box"><%--  ******  3 -CONTENTS OF PAGE INSIDE THIS DIV ****** --%>
                        <div id="CritCareDrugsDiv" runat="server">

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
            $('#Drugs').DataTable({
                scrollY: '50vh',
                scrollCollapse: true,
                paging: false
            });
        });
    </script>

</asp:Content>

