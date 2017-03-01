<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DocInterval.aspx.vb" Inherits="DocInterval"  %>

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
    <script lang="javascript">
        function openPopup(strOpen)
        {
            open(strOpen, "Procedure", "status=1, width=1000, height=800, top=0, left=0");
        }

        $(function () {
            $("[id*=chkAll]").bind("click", function () {
                if ($(this).is(":checked")) {
                    $("[id*=cblCond] input").attr("checked", "checked");
                } else {
                    $("[id*=cblCond] input").removeAttr("checked");
                }
            });
            $("[id*=cblCond] input").bind("click", function () {
                if ($("[id*=cblCond] input:checked").length == $("[id*=cblCond] input").length) {
                    $("[id*=chkAll]").attr("checked", "checked");
                } else {
                    $("[id*=chkAll]").removeAttr("checked");
                }
            });
        });    </script>

</head>
<body>
    <form id="form1" runat="server">
           <asp:ScriptManager runat="server">
        </asp:ScriptManager>

    <div id="wrapper">
         
    <nav class="navbar-default navbar-static-side" role="navigation"><%-- LEFT NAVBAR --%>
        <div class="sidebar-collapse"><%-- LEFT MENU --%>
            <ul class="nav metismenu" id="side-menu"><%-- LEFT MENU ITEMS--%>
                <li class="nav-header">
                    <div class="dropdown profile-element"> <span>
                            <img alt="image" class="img-circle" src="img/DanPhoto.JPG" />
                             </span>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">Dan Morrissey RN</strong>
                             </span> <span class="text-muted text-xs block">Solution Architect <b class="caret"></b></span> </span> </a>
                        <ul class="dropdown-menu animated fadeInRight m-t-xs">
                            <li><a href="profile.html">Profile</a></li>
                            <li><a href="contacts.html">Contacts</a></li>
                            <li><a href="mailbox.html">Mailbox</a></li>
                            <li class="divider"></li>
                            <li><a href="login.html">Logout</a></li>
                        </ul>
                    </div><%-- PROFILE TOP LEFT--%>
                    <div class="logo-element">
                        IN+
                    </div>
                </li>
                <li>
                    <a href="#Procedures.aspx"><i class="fa fa-check-square"></i> <span class="nav-label">Procedures</span> <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="Procedures.aspx">Browse All</a></li>
                        <li><a href="TeamQ.aspx">Pulomary</a></li>
                        <li><a href="Procedures.aspx?c=cv">Cardiovascular</a></li>
                        <li><a href="MedCon.aspx">Neuro</a></li>
                        <li><a href="TOC.aspx">Orthopedic</a></li>
                        <li><a href="Supplies.aspx">Renal</a></li>
                        <li><a href="TeamQ.aspx">GI</a></li>
                        <li><a href="TeamQ.aspx">Endocrine</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#Procedures.aspx"><i class="fa fa-flask"></i> <span class="nav-label">Drug Admininstration</span> <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="CritCareDrugs.aspx">Critical Care Drug Table</a></li>
                        <li><a href="DrugContras.aspx">Major Drug Contraindications</a></li>

                    </ul>
                </li>
                <li>
                    <a href="#MedCond.aspx"><i class="fa fa-plus-circle"></i> <span class="nav-label">Medical Conditions</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="Procedures.aspx">Browse All</a></li>
                        <li><a href="TeamQ.aspx">Pulomary</a></li>
                        <li><a href="Procedures.aspx?c=cv">Cardiovascular</a></li>
                        <li><a href="MedCon.aspx">Neuro</a></li>
                        <li><a href="TOC.aspx">Orthopedic</a></li>
                        <li><a href="Supplies.aspx">Renal</a></li>
                        <li><a href="TeamQ.aspx">GI</a></li>
                        <li><a href="TeamQ.aspx">Endocrine</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#DocInterval"><i class="fa fa-plus-circle"></i> <span class="nav-label">Unit Specific</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="DocInterval.aspx">Mandatory Charting</a></li>
                        <li><a href="UnitProfile.aspx">Unit Profiles</a></li>

                    </ul>
                </li>
                <li>
                    <a href="TOC.aspx"><i class="fa fa-paper-plane"></i> <span class="nav-label">Transfer of Car</span><span class="label label-warning pull-right">16/24</span></a>
                </li>
                <li class="active">
                    <a href="Supplies.aspx"><i class="fa fa-search"></i> <span class="nav-label">Supply Locator</span>  </a>
                </li>
                <li>
                    <a href="TeamQ.aspx"><i class="fa fa-flask"></i> <span class="nav-label">Team Queue</span></a>
                </li>
                <li class="special_link">
                    <a href="package.html"><i class="fa fa-database"></i> <span class="nav-label">Package</span></a>
                </li>
            </ul><%-- /LEFT MENU ITEMS--%>
        </div><%-- /LEFT MENU --%>
    </nav><%-- /LEFT NAVBAR --%>

        <%-- EVERYTHING BELOW IS MAIN PAGE--%>
        <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom">
        <nav class="navbar navbar-static-top white-bg" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header"> <%-- PROCEDURES PANE HEADER --%>
            <%-- START: THis is the place for the collapse buttun to hide the left main page nav column --%>
            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
                <div class="form-group">
                    <input type="text" placeholder="Search for something..." class="form-control" name="top-search" id="top-search"/>
                </div>

        </div><%-- /PROCEDURES PANE HEADER --%>
<%-- THis was the place for the TOP Procedures Body page Header alerts with drop down menus for email and alerts pluss the "log out" link --%>
        </nav>
        </div>

        <div class="wrapper wrapper-content"><%-- SEARCH PANE BODY OUTER WRAPPER --%>
        <div class="row">
            <div class="col-lg-3"><%--  /LEFT SEARCH PANE PANEL CONTENT--%>
                <div class="ibox float-e-margins">
                    <div class="ibox-content mailbox-content">
                        <div class="file-manager">
                            <asp:UpdatePanel runat="server" id="UpdatePanel" updatemode="Conditional"><%--  LEFT PANEL FILTER PANE--%>
                             <ContentTemplate><%--  CENTER PANEL LEFT LIST SECTION--%>
                                    <asp:Label ID="lblErr" runat="server" Text=""></asp:Label>
                                    <div class="panel panel-default">
                                        <div class="panel-heading text-success">Conditional Charting
                                        </div>
                                        <div class="panel-body">
                                            <asp:Button runat="server" id="btnOptUpdate" onclick="btnOptUpdate_Click" text="Clear" class="btn btn-sm btn-primary" /> 
                                    <asp:CheckBoxList ID="cblOptionals" runat="server" onclick="cblOptionals_SelectedIndexChange" AutoPostBack="True">
                                    </asp:CheckBoxList>
                                    </div>                                         
                                   </div>     
   
                                </ContentTemplate><%--  LEFT PANEL BODY SYS CHECKBOX--%>
                            </asp:UpdatePanel><%--  /LEFT PANEL FILTER PANE--%>
                        </div>
                    </div>
                </div>
            </div><%--  /LEFT SEARCH PANE PANEL CONTENT--%>

            <div class="col-lg-9 animated fadeInRight"><%--  MIDDLE PAGE CONTENT--%>
                <div class="mail-box-header"><%--  SEARCH BAR AND GRID--%>
<%--                   <asp:UpdatePanel runat="server" id="udpDept" updatemode="Conditional"> <%--  SEARCH BAR UPDATE PANEL --%>        
<%--                    <Triggers>
                        
                    </Triggers>                     
                    <ContentTemplate>--%>
                          <h2><asp:Label ID="lblGridTitle" runat="server" Text="Charting Requirements for CIC"></asp:Label></h2>
                        <asp:DropDownList runat="server" ID="ddlDept" AutoPostBack="True"></asp:DropDownList>
                        </div><%--  /SEARCH TEXTBOX,BUTTON --%>
<%--                        </ContentTemplate>
                   </asp:UpdatePanel> <%--  /SEARCH BAR UPDATE PANEL --%>
                <div class="row">
                    <div class="col-md-10">
                    </div>
                </div>
                    <div class="mail-box"><%--  PROCEDURES GRIDVIEW --%>
                         <asp:UpdatePanel runat="server" id="UpdatePanel1" UpdateMode="Always">
                                <Triggers>
<%--                                    <asp:AsyncPostBackTrigger controlid="cblCond" eventname="SelectedIndexChanged" />--%>
                                    <asp:AsyncPostBackTrigger controlid="cblOptionals" eventname="SelectedIndexChanged" />
                                    <asp:AsyncPostBackTrigger controlid="btnOptUpdate" eventname="Click" />
                                    <asp:AsyncPostBackTrigger ControlID="ddlDept" EventName="SelectedIndexChanged" />
                                </Triggers>  

                          <ContentTemplate>
                            <asp:GridView ID="dgGrid" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered bs-table">
                                <HeaderStyle BackColor="#337ab7" Font-Bold="True" ForeColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="IntHrsLabel" HeaderText="Charting Interval" ItemStyle-CssClass="faq-question" />                               
                                    <asp:BoundField DataField="DocItem" HeaderText="Intervention" ItemStyle-ForeColor="#0033CC" />
                                    <asp:BoundField DataField="Cond" HeaderText="Criteria" />
                                    <asp:BoundField DataField="CondDetails" HeaderText="Details" />
                                </Columns>
                            </asp:GridView>
                    <div class="row">
                        <div class="col-lg-12">
                        <div class="ibox">
                            <div class="ibox-title">
                                <h5><asp:Label ID="lblIO" runat="server" Text="I & O's for CIC are done at 1700"></asp:Label></h5>
                            </div>
                            <div class="ibox-content">
                                <div class="row">
                                    <asp:Panel ID="Panel1" runat="server" CssClass="col-lg-4" visible="false">
                                        <div id="Panel1Div" runat="server">
                                            <div class="panel-heading">
                                                    <asp:label ID="lblPanel1Label" runat="server" Text="Danger Panel">
                                                    </asp:label>
                                            </div>
                                            <div id="Panel1DivList" runat="server" class="panel-body">
                                            </div>
                                        </div>
                                    </asp:Panel>

                                    <asp:Panel ID="Panel2" runat="server" CssClass="col-lg-4" visible="false">
                                                    <div id="Panel2Div" runat="server" class="panel panel-warning">
                                                        <div class="panel-heading">
                                                                <asp:label ID="lblPanel2Label" runat="server" Text="Warning Panel">
                                                                </asp:label>
                                                        </div>
                                                        <div id="Panel2DivList" runat="server" class="panel-body">
                                                        </div>
                                                    </div>
                                    </asp:Panel>
                                    <asp:Panel ID="Panel3" runat="server" CssClass="col-lg-4" visible="false">
                                                    <div id="Panel3Div" runat="server" class="panel panel-info">
                                                        <div class="panel-heading">
                                                                <asp:label ID="lblPanel3Label" runat="server" Text="Info Panel">
                                                                </asp:label>
                                                        </div>
                                                        <div id="Panel3DivList" runat="server" class="panel-body">
                                                        </div>
                                                    </div>
                                    </asp:Panel>
                                </div>
                                    <div class="row">
                                     <asp:Panel id="Panel4" runat="server" class="col-lg-4" visible="false">
                                        <div id="Panel4Div" runat="server" class="panel panel-success">
                                            <div class="panel-heading">
                                                    <asp:label ID="lblPanel4Label" runat="server" Text="Danger Panel">
                                                    </asp:label>
                                            </div>
                                            <div id="Panel4DivList" runat="server" class="panel-body">
                                            </div>
                                        </div>
                                    </asp:Panel>

                                    <asp:Panel ID="Panel5" runat="server" CssClass="col-lg-4" visible="false">
                                        <div id="Panel5Div" runat="server" class="panel panel-success">
                                            <div class="panel-heading">
                                                    <asp:label ID="lblPanel5Label" runat="server" Text="Danger Panel">
                                                    </asp:label>
                                            </div>
                                            <div id="Panel5DivList" runat="server" class="panel-body">
                                            </div>
                                        </div>
                                    </asp:Panel>
                                    <asp:Panel ID="Panel6" runat="server" CssClass="col-lg-4" visible="false">
                                        <div id="Panel6Div" runat="server" class="panel panel-success" visible="false">
                                            <div class="panel-heading">
                                                    <asp:label ID="lblPanel6Label" runat="server" Text="Danger Panel">
                                                    </asp:label>
                                            </div>
                                            <div id="Panel6DivList" runat="server" class="panel-body">
                                            </div>
                                        </div>
                                    </asp:Panel>
                                </div>
                            </div>
                            </div>
                    </div>

                                </ContentTemplate>
                            </asp:UpdatePanel>    

                    </div><%--  PROCEDURES GRIDVIEW --%>

 <%--  /SEARCH BAR AND GRID--%>
            </div><%--  /MIDDLE PAGE CONTENT--%>


        </div>
            
        <div class="footer"><%-- SEARCH PAGE FOOTER --%>
            <div class="pull-right">
                10GB of <strong>250GB</strong> Free.
            </div>
            <div>
                <strong>Copyright</strong> Example Company &copy; 2014-2017
            </div>
        </div><%-- SEARCH PAGE FOOTER --%>
        </div><%-- SEARCH PANE BODY OUTER WRAPPER --%>
        </div>
</div>
    <!-- Mainly scripts -->
    <script src="js/jquery-2.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="js/inspinia.js"></script>
    <script src="js/plugins/pace/pace.min.js"></script>

    <!-- iCheck -->
    <script src="js/plugins/iCheck/icheck.min.js"></script>
    <script>
        $(document).ready(function(){
            $('.i-checks').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green',
            });
        });
    </script>
    </form>
</body>
</html>
