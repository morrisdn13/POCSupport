<%@ Page Language="VB" AutoEventWireup="false" CodeFile="UnitQ4.aspx.vb" Inherits="UnitQ4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet"/>
    <link href="css/plugins/iCheck/custom.css" rel="stylesheet"/>
    <link href="css/animate.css" rel="stylesheet"/>
    <link href="css/style.css" rel="stylesheet"/>
        <style>
        .underCheck{
            margin-left: 20px;
        }

    </style>
    <script>

        function openPopup(strOpen, strTitle, w, h) {
            open(strOpen, strTitle, "status=1, width=" + w + ", height=" + h + ", top=0, left=0");
        }


    function SubmitReload() {
        document.getElementById("<%=btnSubmit.ClientID %>").click();
    }
        function updateID(div, id) {
            var sDiv = 'div' + id;
            var sSpan = 'span' + id;
            var hID = 'hid' + id;
            var className = div.getAttribute("class");
            document.getElementById(hID).value = 0;
            if (className == "fa fa-check-square") {
                div.className = "fa fa-square-o";

            }
            else {
                document.getElementById(hID).value = id;
                document.getElementById(sSpan).className = "m-l-xs text-success";
                div.className = "fa fa-check-square";

            }
            }
        function myfunc(s) {
           
            alert(document.getElementById('divUT' + s).className);

            
        }
    </script>
    
</head>
<body>
<form id="form1" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

        <div id="page-wrapper" class="gray-bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5">
                        <div class="ibox float-e-margins">
                            <div id="divQ" runat="server" class="ibox-content">

                            </div>
                            <input type="button" class="btn btn-primary btn-rounded btn-xs" value = "Update Tasks" onclick = "SubmitReload()" />

                        </div><%-- /ibox float-e-margins --%>
                    </div><%-- /col-lg-5 --%>
                    <div class="col-lg-5">
                        <div class="ibox float-e-margins">
                            <div id="divQComp" runat="server" class="ibox-content">

                            </div>

                        </div><%-- /ibox float-e-margins --%>
                    </div><%-- /col-lg-5 --%>

                </div><%-- /ROW --%>
            </div><%-- /CONTAINER --%>
        </div><%-- /PAGE WRAPPER --%>
            
    <div>
    </div>
        <asp:Button ID="btnSubmit" runat="server" style = "display:none" />
        <asp:PlaceHolder ID="hidCtlContainer" runat="server" />
        <input id="hidState" type="hidden" runat="server"/>
        <input id="hidID" type="hidden" runat="server"/>

        </ContentTemplate>
    </asp:UpdatePanel>

    </form>
        <!-- Mainly scripts -->
    <script src="js/jquery-2.1.1.js"></script>
    <script src="js/jquery-ui-1.10.4.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="js/inspinia.js"></script>
    <script src="js/plugins/pace/pace.min.js"></script>

    <!-- iCheck -->
    <script src="js/plugins/iCheck/icheck.min.js"></script>

    <!-- Jvectormap -->
    <script src="js/plugins/jvectormap/jquery-jvectormap-2.0.2.min.js"></script>
    <script src="js/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>

    <!-- Flot -->
    <script src="js/plugins/flot/jquery.flot.js"></script>
    <script src="js/plugins/flot/jquery.flot.tooltip.min.js"></script>
    <script src="js/plugins/flot/jquery.flot.resize.js"></script>

    <script>
        $(document).ready(function(){

            $('.i-checks').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green'
            });


        })
    </script>


</body>
</html>
