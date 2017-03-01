<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DrugProfile.aspx.vb" Inherits="DRUGS_DrugProfile" EnableViewState="False" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/MyBootstrapAddOns.css" rel="stylesheet" />
    <script src="http://ajax.microsoft.com/ajax/jquery/jquery-3.1.1.min.js" type="text/javascript"></script>

    <style>



        .wrapper-outer{
        padding-left: 50px;
        padding-right: 50px;
        }

        .table-borderless>thead>tr>th
        .table-borderless>thead>tr>td
        .table-borderless>tbody>tr>th
        .table-borderless>tbody>tr>td
        .table-borderless>tfoot>tr>th
        .table-borderless>tfoot>tr>td {
            border: none;
        }



.divTitle {
    border: 2px solid;
    border-radius: 25px;
}
        .td-moa {
            vertical-align: top;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapper" class="wrapper-outer">
        <asp:Label ID="lblErr" runat="server" Text="" ForeColor="Red"></asp:Label>
        <div class="divTitle">
            <table style="width: 100%;">
                <tbody>
                    <tr>
                        <td class="td-moa align-top text-center col-sm-1">
                             <asp:Label ID="lblDrugGen" runat="server" Text="Drug Gen" ForeColor="#000099"></asp:Label>
                             <asp:Label ID="lblDrugBrand" runat="server" Text="Drug Brand" ForeColor="#000099"></asp:Label>

<%--                            <h1>Amiodarone</h1>
                            <h3>(Cardarone)</h3>--%>

                        </td>
                        <td class="td-moa align-middle col-sm-1">
                             <asp:Label ID="lblConc" runat="server" Text="Conc"></asp:Label>
<%--                            <h3>250mg/500ml</h3>--%>
                        </td>
                        <td class="td-moa col-md-10 pull-left">
                             <asp:Label ID="lblClass" runat="server" Text="CLass"></asp:Label>
                             

                        </td>

                    </tr>

                </tbody>
            </table>
        </div>
        <table class='table table-borderless'>
            <thead>
                <tr>
                    <th class="col-sm-1">Uses and<br />Precautions</th>
                    <th class="col-sm-2">Dosing</th>
                    <th class="col-sm-2">Details</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <h4>Uses</h4>
                        <asp:Label ID="lblUses" runat="server" Text=""></asp:Label>
                        <br /><br />
                        <h4>Effects</h4>
                        <asp:Label ID="lblEffect" runat="server" Text="Effect"></asp:Label>
                        <br /><br />
                        <h4>Contraindications</h4>
                         <asp:Label ID="lblContras" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </td>
                    <td>
                         <asp:Label ID="lblDosing" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblDetails" runat="server" Text=""></asp:Label>

                    </td>

                </tr>
            </tbody>
</table>
</div>

    </form>
    <!-- Mainly scripts -->
    <script src="js/jquery-2.1.1.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="js/inspinia.js"></script>
    <script src="js/plugins/pace/pace.min.js"></script>

    <!-- Sparkline -->
    <script src="js/plugins/sparkline/jquery.sparkline.min.js"></script>


</body>
</html>
