<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DrugCalc.aspx.vb" Inherits="DrugCalc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet"/>
    <link href="css/plugins/iCheck/custom.css" rel="stylesheet"/>
    <link href="css/animate.css" rel="stylesheet"/>
    <link href="css/style.css" rel="stylesheet"/>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">

        <div class="ibox">
            <div class="ibox-title text-success">
                <h3>Quick Infusion Rate Calculator</h3>
            </div>
            
            <div class="ibox-content">
                <table>
                <tr>

                     <td colspan="3">
                         <h4>Drug Ordered</h4>
                    </td>

                </tr>

                <tr>
                     <td>
                         <p class="text-right"></p>
                    </td>
                     <td>
                        <p class="text-left">Ordered Dose</p>
                    </td>
                    <td>
                        <p class="text-left"> 
                            <asp:TextBox ID="txtDoseAmt" runat="server" Width="50px"></asp:TextBox>
                            <asp:DropDownList ID="ddlOrderedAmtUOM" runat="server">
                            <asp:ListItem>mcg</asp:ListItem>
                            <asp:ListItem>mg</asp:ListItem>
                            <asp:ListItem>gm</asp:ListItem>
                            <asp:ListItem>units</asp:ListItem>
                            </asp:DropDownList>
                        </p>
                    </td>
                </tr>
                <tr>
                     <td>&nbsp;&nbsp;&nbsp;
                    </td>
                     <td>
                         <p class="text-left">
                             <asp:CheckBox ID="chkWtBased" runat="server" Text="per kg" />
                         </p>
                    </td>
                    <td>
                         <div id="WBD">
                             <p class="text-left"><asp:TextBox ID="txtPtWt" runat="server" Width="50px"></asp:TextBox>(Pt's Wt kg)</p>
                        </div>
                    </td>
                </tr>
                <tr>
                     <td>&nbsp;&nbsp;&nbsp;
                    </td>
                     <td>
                         <p class="text-left">Per time unit:</p>
                    </td>
                     <td>
                         <p class="text-left">
                            <asp:DropDownList ID="ddlTimeUOM" runat="server">
                                <asp:ListItem>min</asp:ListItem>
                                <asp:ListItem>hr</asp:ListItem>
                            </asp:DropDownList>
                         </p>
                    </td>
                </tr>

                <tr>
                     <td colspan="3">
                         <h4>Drug Available</h4>
                    </td>
                </tr>

                <tr>
                     <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                     <td>
                         <p class="text-left">Total drug amount:</p>
                    </td>
                     <td>
                         <p class="text-left">
                            <asp:TextBox ID="txtTotalDrugAmt" runat="server" Width="50px"></asp:TextBox>
                            <asp:DropDownList ID="ddlTotalDrugUOM" runat="server">
                                <asp:ListItem>mcg</asp:ListItem>
                                <asp:ListItem>mg</asp:ListItem>
                                <asp:ListItem>gm</asp:ListItem>
                                <asp:ListItem>units</asp:ListItem>
                            </asp:DropDownList>
                         </p>
                    </td>
                </tr>
                <tr>
                     <td>
                         <p class="text-right"></p>
                    </td>
                     <td>
                         <p class="text-left">Available volume:</p>
                    </td>
                     <td>
                         <p class="text-left">
                            <asp:TextBox ID="txtTotalVolAmt" runat="server" Width="50px"></asp:TextBox>
                            <asp:DropDownList ID="ddlTotalVolUOM" runat="server">
                                <asp:ListItem>ml</asp:ListItem>
                                <asp:ListItem>L</asp:ListItem>
                            </asp:DropDownList>
                         </p>
                    </td>
                </tr>
                <tr>
                     <td>
                    </td>
                     <td colspan="2">
                         <p class="text-left text-success"><i><asp:Label ID="lblConc" runat="server" Text="Concentraion:"></asp:Label></i></p>
                    </td>

                </tr>
                <tr>
                     <td>
                    </td>
                    <td>
                            <asp:Button ID="Button1" runat="server" Text="Calculate" />
                    </td>
                     <td>
                    </td>
                </tr>
             <tr>
                    <td>
                    </td>
                     <td colspan="2">
                        <div runat="server" class="panel panel-info">
                            <div class="panel-heading">Infusion rate displays below: 
                            </div>
                            <div id="Panel3DivList" class="panel-body text-danger">
                                <b><asp:Label ID="lblResult" runat="server" Text=""></asp:Label></b>
                            </div>
                        </div>

                    </td>
                </tr>

            </table>
        </div>

     </div>
         
    </form>
    <script >
        var form = $('#form1'),
            checkbox = $('#chkWtBased'),
            chShipBlock = $('#WBD');

        chShipBlock.hide();

        checkbox.on('click', function () {
            if ($(this).is(':checked')) {
                chShipBlock.show();
                chShipBlock.find('input').attr('required', true);
            } else {
                chShipBlock.hide();
                chShipBlock.find('input').attr('required', false);
            }
        })

        $(document).ready(function () {
            if ((checkbox).is(':checked')) {
                chShipBlock.show();
              //  chShipBlock.find('input').attr('required', true);
            } else {
                chShipBlock.hide();
               // chShipBlock.find('input').attr('required', false);
            }
        });
    </script>
</body>
</html>
