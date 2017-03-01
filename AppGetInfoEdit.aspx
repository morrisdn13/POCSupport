<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AppGetInfoEdit.aspx.vb" Inherits="AppGetInfoEdit" %>

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
                                <h1 class="m-t-none m-b text-navy"><b>Needed Information</b></h1>
                            </div>
                            <div class="col-sm-6">
                                
                                <asp:Label ID="lblErr" runat="server" Text="" ForeColor="Red" ></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <div class="row">
                            <div class="col-sm-4 b-r">
                                    <div class="form-group"><label>Subject</label> 
                                        <asp:Label ID="lblSubject" runat="server" Text="" class="form-control"></asp:Label>
                                    </div>
                                    <div class="form-group">&nbsp;<div class="col-sm-6">
                                <p class="text-left">
                                    <label>Details</label> 
                                        <asp:Label ID="lblDetails" runat="server" Text="" class="form-control"></asp:Label>
                                </p>
                                <asp:Button ID="btnSubmit" runat="server" Text="Update" class="btn btn-sm btn-primary m-t-n-xs"/>

                                    </div>
                                </div>

                            </div>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtInfo" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
    
    </div>
        <input id="hidID" type="hidden" runat="server"/>
    </form>
</body>
</html>
