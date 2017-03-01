<%@ Page Title="" Language="VB" MasterPageFile="~/POCS2.master" EnableViewState="true"  AutoEventWireup="false" CodeFile="UnitCharting.aspx.vb" Inherits="UnitCharting" %>
<%@ MasterType virtualpath="~/POCS2.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <asp:ScriptManager runat="server">
        </asp:ScriptManager>

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
                    <asp:UpdatePanel runat="server" id="udpDept" updatemode="Conditional"> <%--  SEARCH BAR UPDATE PANEL --%>        
                   
                        <ContentTemplate>
                            <h2><b><asp:Label ID="lblGridTitle" runat="server" Text="Charting Requirements for CIC"></asp:Label></b></h2>
                            <asp:DropDownList runat="server" ID="ddlDept" onclick="ddlDept_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
                        <%--</div><%--  /SEARCH TEXTBOX,BUTTON --%>
-                        </ContentTemplate>
                        <Triggers>
                           <asp:AsyncPostBackTrigger ControlID="ddlDept" EventName="SelectedIndexChanged"/>
                           <asp:AsyncPostBackTrigger ControlID="cblOptionals" EventName="SelectedIndexChanged"/>

                        </Triggers>  
                   </asp:UpdatePanel> <%--  /SEARCH BAR UPDATE PANEL --%>
                    <div class="row">
                        <div class="col-md-10">
                        </div>
                    </div>
                    <div class="mail-box"><%--  PROCEDURES GRIDVIEW --%>
                         <asp:UpdatePanel runat="server" id="UpdatePanel1" UpdateMode="Conditional">
 
                                <ContentTemplate>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="ibox">
                                                <div class="ibox-title">
                                                    <h5><asp:Label ID="lblIO" runat="server" Text="I & O's for CIC are done at 1700"></asp:Label></h5>
                                                </div>
                                                <div class="ibox-content"><%--  Charting INterval Panels --%>
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
                                                </div><%--  /Charting INterval Panels --%>
                                            </div>
                                        </div>
                                    </div>
                                </ContentTemplate>
                                <Triggers>
<%--                                    <asp:AsyncPostBackTrigger controlid="cblCond" eventname="SelectedIndexChanged" />--%>
                                    <asp:AsyncPostBackTrigger controlid="cblOptionals" eventname="SelectedIndexChanged" />
                                    <asp:AsyncPostBackTrigger controlid="btnOptUpdate" eventname="Click" />
                                    <asp:AsyncPostBackTrigger ControlID="ddlDept" EventName="SelectedIndexChanged" />
                                </Triggers> 
                        </asp:UpdatePanel>    
                    </div>
                </div><%--  PROCEDURES GRIDVIEW --%>
            </div><%--  /MIDDLE PAGE CONTENT--%>


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

</asp:Content>



