<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AppFeedback.aspx.vb" Inherits="AppFeedback" %>

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
                                <h1 class="m-t-none m-b text-navy"><b>Feedback</b></h1>
                                <h3><asp:Label ID="lblAppFeature" runat="server" Text="Feature Name is set Here" class="text-navy"></asp:Label></h3>
                            </div>
                            <div class="col-sm-9">
                                
                                <asp:Label ID="lblErr" runat="server" Text="" ForeColor="Red"  class="pull-right"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <div class="row">
                            <div class="col-sm-6 b-r">
                                    <div class="form-group"><label>Subject</label> <asp:TextBox ID="txtSubject" runat="server" placeholder="Subject" class="form-control"></asp:TextBox></div>
                                    <div class="form-group"><label class="col-sm-3 control-label">Feedback Type</label>
                                    <div class="col-sm-9">
                                        <div class="i-checks"><label> <asp:CheckBox ID="cbAppErr" class="i-checks" runat="server" /> <i></i> App Error </label></div>
                                        <div class="i-checks"><label> <asp:CheckBox ID="cbCOntErr" class="i-checks" runat="server" /> <i></i> Incorrect Info </label></div>
                                        <div class="i-checks"><label> <asp:CheckBox ID="cbSug" class="i-checks" runat="server" /> <i></i> Suggestion </label></div>
                                    </div>
                                </div>
                                    <div><br /><br /><br /><br /><br /><br /><br /><br /><br />
                                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="btn btn-sm btn-primary pull-right m-t-n-xs"/>
                                    </div>
                            </div>
                            <div class="col-sm-6">
                                <p class="text-left">
                                    <label>Details</label> <asp:TextBox ID="txtDetails" runat="server" placeholder="Feedback details" class="form-control" TextMode="MultiLine" Height="250"></asp:TextBox>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
    
    </div>
    </form>
</body>
</html>
