<%@ Page Language="VB"  MasterPageFile="~/POCS2.master" AutoEventWireup="false" CodeFile="Procedures.aspx.vb" Inherits="Procedures" %>
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
                                        <div class="panel-heading text-success">Body System
                                        </div>
                                        <div class="panel-body">
                                            <asp:Button runat="server" id="UpdateButton1" onclick="UpdateButton_Click" text="Update" />        
                                            <asp:CheckBoxList ID="cblBodySys" runat="server"></asp:CheckBoxList>
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
                   <asp:UpdatePanel runat="server" id="UpdatePanel2" updatemode="Conditional"> <%--  SEARCH BAR UPDATE PANEL --%>        
                    <Triggers>
                        <asp:AsyncPostBackTrigger controlid="cmdProcSearch" eventname="Click" />
                    </Triggers>                     
                    <ContentTemplate>
                          <h2><asp:Label ID="lblGridTitle" runat="server" Text="Procedures (20)"></asp:Label></h2>
                        <div class="input-group"><%--  SEARCH TEXTBOX,BUTTON --%>
                            <asp:Button ID="cmdProcSearch" runat="server" Text="Update" class="btn btn-sm btn-primary"/>
                            <asp:TextBox ID="txtSearchProc" runat="server" Width="272px" class="form-control input-sm" placeholder="Enter any part of procedure name"></asp:TextBox>
                            <div class="input-group-btn">
                            </div>
                        </div><%--  /SEARCH TEXTBOX,BUTTON --%>
                        </ContentTemplate>
                   </asp:UpdatePanel> <%--  /SEARCH BAR UPDATE PANEL --%> 
                <div class="row">
                    <div class="col-md-10">
                    </div>
                </div>
                    <div class="mail-box"><%--  PROCEDURES GRIDVIEW --%>
                         <asp:UpdatePanel runat="server" id="UpdatePanel1">
                          <ContentTemplate>
                            <asp:GridView ID="dgGrid" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered bs-table">
                                <HeaderStyle BackColor="#337ab7" Font-Bold="True" ForeColor="White" />
                                <emptydatatemplate>
                                    No matching procedures found  
                                </emptydatatemplate>
                                <Columns>
                                    <asp:BoundField DataField="ProcID" ReadOnly="True" ShowHeader="False" Visible="False" />
                                    <asp:TemplateField HeaderText="ProcedureName">
                                        <ItemTemplate>
                                            <a href="javascript:openPopup('PROC/<%# Eval("ProcCode") %>/<%# Eval("ProcCode") %>.aspx?id=<%# Eval("ProcID") %>')">  <%# Eval("Procname") %></a>
                                        </ItemTemplate>
                                    </asp:TemplateField>                               
                                    <asp:BoundField DataField="BodySystem" HeaderText="Body System" />
                                    <asp:BoundField DataField="Abrev" ReadOnly="True" ShowHeader="False" Visible="False" />
                                </Columns>
                            </asp:GridView>
                                </ContentTemplate>
                            </asp:UpdatePanel>    

                    </div><%--  PROCEDURES GRIDVIEW --%>
                </div> <%--  /SEARCH BAR AND GRID--%>
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
