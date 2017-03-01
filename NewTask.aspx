<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewTask.aspx.vb" Inherits="NewTask" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet"/>
    <link href="css/plugins/iCheck/custom.css" rel="stylesheet"/>
    <link href="css/animate.css" rel="stylesheet"/>
    <link href="css/style.css" rel="stylesheet"/>
        <link href="css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet"/>

</head>
<body>
    <form id="form1" runat="server">
    <div>
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <div class="row">
                            <div class="col-sm-6">
                                <h1 class="m-t-none m-b text-navy"><b>New Task</b></h1>
                            </div>
                            <div class="col-sm-6">
                                <asp:Label ID="lblErr" runat="server" Text="" ForeColor="Red" ></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <div class="row">
                            <div class="col-sm-4 b-r">
                                 <p class="text-left">
                                    <label>Room Number</label><br /> 
                                     <asp:TextBox ID="txtRm" runat="server" width="100" placeholder="Room" class="form-control" MaxLength="4"></asp:TextBox>
                                 </p>
                                 <p class="text-left">
                                    <label>Task</label><br />
                                    <asp:TextBox ID="txtTask" runat="server" width="300" placeholder="Task" class="form-control" TextMode="MultiLine" Height="250"></asp:TextBox>
                                </p>
                                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClientClick="window.opener.document.getElementById('btnSubmit').click();" class="btn btn-sm btn-primary m-t-n-xs"/>

                             </div>
                         </div>

                    </div>
                         <div class="col-sm-6">

                            </div>
                </div>
    </div>
    <input id="hidState" type="hidden" runat="server"/>

    </form>
</body>
</html>
