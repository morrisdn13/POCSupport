<%@ Page Title="" Language="VB" MasterPageFile="~/POCS.master" AutoEventWireup="false" CodeFile="TestMasterPageBody.aspx.vb" Inherits="TestMasterPageBody" %>
<%@ MasterType virtualpath="~/POCS.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

            <div class="col-lg-12"><%--  MIDDLE PAGE CONTENT--%>
                <div class="ibox">
                    <div class="ibox-title"><h5>Critcal Care Drugs</h5>
                        <div class="ibox-content">
                            <div id="CritCareDrugsDiv" runat="server">

                            </div>
                        </div>
                    </div>
                 </div>
            </div><%--  /MIDDLE PAGE CONTENT--%>
<%--        <script src="js/plugins/DataTablesJS/jquery.dataTables.min.js"></script>--%>
<%--    <script src="js/jquery-2.1.1.js"></script>--%>
<%--    <script src="js/bootstrap.min.js"></script>--%>
    <script src="js/jquery-2.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- Peity -->
    <script src="js/plugins/DataTablesJS/jquery.dataTables.min.js"></script>

        <script>

        $(document).ready(function () {
            $('#CritCareDrugs').DataTable({
                scrollY: '50vh',
                scrollCollapse: true,
                paging: false
            });
        });
    </script>
</asp:Content>

