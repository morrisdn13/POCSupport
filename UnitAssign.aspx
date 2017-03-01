<%@ Page Language="VB" AutoEventWireup="true" CodeFile="UnitAssign.aspx.vb" Inherits="UnitAssign" EnableViewState="True" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet"/>

        <style>



        .wrapper-outer{
        padding-left: 100px;
        }

        .table-borderless>thead>tr>th
        .table-borderless>thead>tr>td
        .table-borderless>tbody>tr>th
        .table-borderless>tbody>tr>td
        .table-borderless>tfoot>tr>th
        .table-borderless>tfoot>tr>td {
            border: none;
        }

                .checkbox
        {
            padding-left: 20px;
        }
        .checkbox label
        {
            display: inline-block;
            vertical-align: middle;
            position: relative;
            padding-left: 5px;
        }
        .checkbox label::before
        {
            content: "";
            display: inline-block;
            position: absolute;
            width: 17px;
            height: 17px;
            left: 0;
            margin-left: -20px;
            border: 1px solid #cccccc;
            border-radius: 3px;
            background-color: #fff;
            -webkit-transition: border 0.15s ease-in-out, color 0.15s ease-in-out;
            -o-transition: border 0.15s ease-in-out, color 0.15s ease-in-out;
            transition: border 0.15s ease-in-out, color 0.15s ease-in-out;
        }
        .checkbox label::after
        {
            display: inline-block;
            position: absolute;
            width: 16px;
            height: 16px;
            left: 0;
            top: 0;
            margin-left: -20px;
            padding-left: 3px;
            padding-top: 1px;
            font-size: 11px;
            color: #555555;
        }
        .checkbox input[type="checkbox"]
        {
            opacity: 0;
            z-index: 1;
        }
        .checkbox input[type="checkbox"]:checked + label::after
        {
            font-family: "FontAwesome";
            content: "\f00c";
        }
         
        .checkbox-primary input[type="checkbox"]:checked + label::before
        {
            background-color: #337ab7;
            border-color: #337ab7;
        }
        .checkbox-primary input[type="checkbox"]:checked + label::after
        {
            color: #fff;
        }


        
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblErr" runat="server" Text="false" ForeColor="Red"></asp:Label>
        <table class='table table-borderless'>
            <thead>
                <tr>
                    <th class="col-sm-1">Room</th>
                    <th class="col-sm-2">Nurse</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td id="divRoom" runat="server">
                        <div class="checkbox checkbox-primary">
                            <asp:CheckBoxList runat="server" ID="cblRM" CssClass="styled">
                            </asp:CheckBoxList>
                        </div>
                    </td>
                    <td id="divRN" runat="server">
                        <div class="radio radiobuttonlist col-sm-5">
                            <asp:RadioButtonList ID="rblRN" runat="server" EnableViewState="true"></asp:RadioButtonList>
                        <asp:Button ID="btnAssign" runat="server" Text="Assign" />
                        <asp:Button ID="btnUnassign" runat="server" Text="Clear Selected" />
                        </div>

                    </td>
                </tr>
            </tbody>
</table>
    
    </div>
    </form>
</body>
</html>
