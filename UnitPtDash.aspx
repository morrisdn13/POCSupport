<%@ Page Title="" Language="VB" MasterPageFile="~/POCS2.master" AutoEventWireup="false" CodeFile="UnitPtDash.aspx.vb" Inherits="UnitPtDash" %>
<%@ MasterType virtualpath="~/POCS2.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="css/plugins/iCheck/custom.css" rel="stylesheet"/>

        <asp:ScriptManager runat="server">
        </asp:ScriptManager>

    <asp:ScriptManagerProxy  ID="ScriptManager1" runat="server">
         <Scripts>
<%--            <asp:ScriptReference Path="js/plugins/DataTablesJS/jquery.dataTables.min.js" />--%>
         </Scripts>
    </asp:ScriptManagerProxy>

        <div class="wrapper wrapper-content animated fadeInDown">

            <div class="row"><%-- TOP ROW --%>
                <div class="col-lg-6"><%-- DASH TITLE --%>
                    <div class="jumbotron">
                         <h1><span class="text-navy"><strong>CIC</strong></span></h1>
                        <h1>Unit Dashboard</h1>
                        <p>Key Patient Care & Management Metrics</p>
                    </div>
                </div><%-- /DASH TITLE --%>
                <div class="col-lg-5"><%-- HAI Table --%>
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5><span class="text-navy">Infection related metrics</span></h5><small>&nbsp;&nbsp;Top Aggragate Risk Pts</small>
                            <br /><span><i>P(A ∪ B) = P(A) + P(B) - P(A ∩ B)</i></span>
                        </div>
                        <div >
                            <table class="table table-bordered white-bg">
                                <thead>
                                    <tr>
                                        <th>Bed</th>
                                        <th>RISK</th>
                                        <th>Cent Line<br /><small>(72h)</small></th>
                                        <th>Foley<br /><small>(72h)</small></th>
                                        <th>PIV<br /><small>(14d)</small></th>
                                        <th>WBC<br />trend</th>

                                    </tr>
                                </thead>
                                <tbody>

                                    <tr>
                                        <td>
                                            210A
                                        </td>
                                        <td>
                                            <span class="pie">5/5</span>
                                        </td>
                                        <td>
                                            <span class="pie">5/5</span>
                                        </td>
                                        <td>
                                            <span class="pie">2/5</span>
                                        </td>
                                        <td>
                                            <span class="pie">4/5</span>
                                        </td>

                                        <td class="text-danger"> <i class="fa fa-level-up"></i> 4502/4499 </td>

                                    </tr>
                                    <tr>
                                        <td>
                                            209A
                                        </td>
                                        <td>
                                            <span class="pie">4/5</span>
                                        </td>
                                        <td>
                                            <span class="pie">0/5</span>
                                        </td>
                                        <td>
                                            <span class="pie">5/5</span>
                                        </td>
                                        <td>
                                            <span class="pie">3/5</span>
                                        </td>

                                        <td class="text-danger"> <i class="fa fa-level-up"></i> 1017/1008 </td>

                                    </tr>
                                    <tr>
                                        <td>
                                            204A
                                        </td>

                                        <td>
                                            <span class="pie">4/6</span>
                                        </td>
                                        <td>
                                            <span class="pie">4/5</span>
                                        </td>
                                        <td>
                                            <span class="pie">4/5</span>
                                        </td>
                                        <td>
                                            <span class="pie">3/5</span>
                                        </td>
                                        <td class="text-navy"> <i class="fa fa-level-down"></i> 682/1065 </td>

                                    </tr>

                                    <tr>
                                        <td>
                                            214A
                                        </td>
                                        <td>
                                            <span class="pie">3/5</span>
                                        </td>
                                        <td>
                                            <span class="pie">3/5</span>
                                        </td>
                                        <td>
                                            <span class="pie">0/5</span>
                                        </td>
                                        <td>
                                            <span class="pie">3/5</span>
                                        </td>

                                        <td class="text-danger"> <i class="fa fa-level-up"></i> 3274/32688 </td>

                                    </tr>
                                    <tr>

                                    <tr>
                                        <td>
                                            255A
                                        </td>
                                        <td>
                                            <span class="pie">3/5</span>
                                        </td>
                                        <td>
                                            <span class="pie">4/5</span>
                                        </td>
                                        <td>
                                            <span class="pie">2/5</span>
                                        </td>
                                        <td>
                                            <span class="pie">0/5</span>
                                        </td>

                                        <td class="text-danger"> <i class="fa fa-level-up"></i> 1184/936 </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            200A
                                        </td>
                                        <td>
                                            <span class="pie">2/5</span>
                                        </td>

                                        <td>
                                            <span class="pie">1/5</span>
                                        </td>
                                        <td>
                                            <span class="pie">0/5</span>
                                        </td>
                                        <td>
                                            <span class="pie">3/5</span>
                                        </td>


                                        <td class="text-danger"> <i class="fa fa-level-up"></i> 1448/1392 </td>

                                    </tr>

                                        <td>
                                            220A
                                        </td>
                                        <td>
                                            <span class="pie">1/5</span>
                                        </td>
                                        <td>
                                            <span class="pie">0/5</span>
                                        </td>
                                        <td>
                                            <span class="pie">3/5</span>
                                        </td>
                                        <td>
                                            <span class="pie">3/5</span>
                                        </td>

                                        <td class="text-navy"> <i class="fa fa-level-down"></i> 2104/2238 </td>

                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div><%-- /HAI Table --%>
            </div><%-- /TOP ROW --%>

            <div class="row"><%-- 2nd ROW --%>
                <div class="col-lg-4"><%-- LOS TABLE 1 --%>
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5><span class="text-navy">LOS factors</span></h5><small>&nbsp;&nbsp;LOS impactful factors</small>
                        </div>
                        <div >
                            <table class="table table-bordered white-bg">
                                <thead>
                                    <tr>
                                        <th>Room<br /></th>
                                        <th>LOS</th>
                                        <th>LOS Factors</th>
                                        <th>Details</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            201
                                        </td>
                                        <td>
                                            23 days
                                            <div class="progress progress-small">
                                                 <div style="width: 100%;" class="progress-bar progress-bar-danger"></div>
                                            </div>   
                                     
                                        </td>
                                        <td>
                                            <ul>
                                                <li>
                                                    SNF Placment, insurance
                                                </li>
                                                <li>
                                                    Family involvement in care
                                                </li>
                                            </ul>
                                        </td>
                                        <td>
                                            <a>Unweanable from vent...</a>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            200
                                        </td>
                                        <td>
                                            15 days
                                            <div class="progress progress-small">
                                                 <div style="width: 80%;" class="progress-bar progress-bar-danger"></div>
                                            </div> 

                                           
                                    
                                        </td>
                                        <td>
                                            <ul>
                                                <li>
                                                    Case management
                                                </li>
                                                <li>
                                                    IV antibiotic therapy
                                                </li>
                                            </ul>
                                        </td>
                                        <td>
                                            <a>Pending insurance approval...</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            204
                                        </td>
                                        <td>
                                            7 days
                                            <div class="progress progress-small">
                                                <div style="width: 75%;" class="progress-bar"></div>
                                            </div>   
                                    
                                        </td>
                                        <td>
                                            <ul>
                                                <li>
                                                    Electrolyte stabilization
                                                </li>
                                                <li>
                                                    Renal function stabilization
                                                </li>
                                            </ul>
                                        </td>
                                        <td>
                                            <a>Electrolyte replacement, fluid balance...</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            203
                                        </td>
                                        <td>
                                            4 days
                                            <div class="progress progress-small">
                                                <div style="width: 60%;" class="progress-bar"></div>
                                            </div>   
                                        </td>
                                        <td>
                                            <ul>
                                                <li>
                                                    Cardiac stabilization
                                                </li>
                                                <li>
                                                    Transition to oral antiarrythmic
                                                </li>
                                            </ul>
                                        </td>
                                        <td>
                                            <a>Stabiliation of HR 7 BP...</a>
                                        </td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div><%-- /LOS TABLE 1 --%>

                <div class="col-lg-8"><%-- PRCEDURES TABLE --%>
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5><span class="text-navy">Planned Procedures</span></h5>

                            <div class="ibox-tools">
                                <a class="collapse-link">
                                    <i class="fa fa-chevron-up"></i>
                                </a>
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                    <i class="fa fa-wrench"></i>
                                </a>
                                <ul class="dropdown-menu dropdown-user">
                                    <li><a href="#">Config option 1</a>
                                    </li>
                                    <li><a href="#">Config option 2</a>
                                    </li>
                                </ul>
                                <a class="close-link">
                                    <i class="fa fa-times"></i>
                                </a>
                            </div>
                        </div>
                        <div class="ibox-content">

                            <table class="footable table table-stripped toggle-arrow-tiny">
                                <thead>
                                <tr>

                                    <th data-toggle="true">Room</th>
                                    <th>Procedure</th>
                                    <th>Date</th>
                                    <th>Consents Signed</th>
                                    <th data-hide="all">Performed by</th>
                                    <th data-hide="all">Time</th>
                                    <th data-hide="all">Beside</th>
                                    <th data-hide="all">Details</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>200</td>
                                    <td>Card Cath</td>
                                    <td>Today</td>
                                    <td><i class="fa fa-check text-navy"></i></td>
                                    <td>Dr White</td>
                                    <td>1400</td>
                                    <td></td>
                                    <td>Pt NPO since midnight last night</td>
                                </tr>
                                <tr>
                                    <td>204</td>
                                    <td>Thoracentisis</td>
                                    <td>Today</td>
                                    <td><i class="fa fa-check text-navy"></i></td>
                                    <td>Dr Black</td>
                                    <td>Afternoon</td>
                                    <td><i class="fa fa-check text-navy"></i></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>210</td>
                                    <td>Pacemaker</td>
                                    <td>Tuesday</td>
                                    <td></td>
                                    <td>Dr Green</td>
                                    <td>Early morning</td>
                                    <td></td>
                                    <td></td>
                                </tr>

                                </tbody>
                                <tfoot>
                                <tr>
                                    <td colspan="5">
                                        <ul class="pagination pull-right"></ul>
                                    </td>
                                </tr>
                                </tfoot>
                            </table>

                        </div>
                    </div>


                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>Consults</h5>

                            <div class="ibox-tools">
                                <a class="collapse-link">
                                    <i class="fa fa-chevron-up"></i>
                                </a>
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                    <i class="fa fa-wrench"></i>
                                </a>
                                <ul class="dropdown-menu dropdown-user">
                                    <li><a href="#">Config option 1</a>
                                    </li>
                                    <li><a href="#">Config option 2</a>
                                    </li>
                                </ul>
                                <a class="close-link">
                                    <i class="fa fa-times"></i>
                                </a>
                            </div>
                        </div>
                        <div class="ibox-content">

                            <table class="footable table table-stripped toggle-arrow-tiny">
                                <thead>
                                <tr>

                                    <th data-toggle="true">Room</th>
                                    <th>Procedure</th>
                                    <th>Date</th>
                                    <th>Consents Signed</th>
                                    <th data-hide="all">Performed by</th>
                                    <th data-hide="all">Time</th>
                                    <th data-hide="all">Beside</th>
                                    <th data-hide="all">Details</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>200</td>
                                    <td>Card Cath</td>
                                    <td>Today</td>
                                    <td><i class="fa fa-check text-navy"></i></td>
                                    <td>Dr White</td>
                                    <td>1400</td>
                                    <td></td>
                                    <td>Pt NPO since midnight last night</td>
                                </tr>
                                <tr>
                                    <td>204</td>
                                    <td>Thoracentisis</td>
                                    <td>Today</td>
                                    <td><i class="fa fa-check text-navy"></i></td>
                                    <td>Dr Black</td>
                                    <td>Afternoon</td>
                                    <td><i class="fa fa-check text-navy"></i></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>210</td>
                                    <td>Pacemaker</td>
                                    <td>Tuesday</td>
                                    <td></td>
                                    <td>Dr Green</td>
                                    <td>Early morning</td>
                                    <td></td>
                                    <td></td>
                                </tr>

                                </tbody>
                                <tfoot>
                                <tr>
                                    <td colspan="5">
                                        <ul class="pagination pull-right"></ul>
                                    </td>
                                </tr>
                                </tfoot>
                            </table>

                        </div>
                    </div>
                </div><%-- /PRCEDURES TABLE --%>

            </div><%-- /2nd ROW --%>
            

            <div class="row"><%-- 3rd ROW --%>
                <div class="col-lg-12"><%-- BOTTOM EXAMPLE GRAPH TABLE --%>
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>Line and Bars Charts</h5>
                            <div class="ibox-tools">
                                <a class="close-link">
                                    <i class="fa fa-times"></i>
                                </a>
                            </div>
                        </div>
                        <div >
                            <table class="table table-bordered white-bg">
                                <thead>
                                <tr>
                                    <th>Graph</th>
                                    <th>Code</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>
                                        <span data-diameter="40" class="updating-chart">5,3,9,6,5,9,7,3,5,2,5,3,9,6,5,9,7,3,5,2</span>
                                    </td>
                                    <td>
                                        <code>&lt;span class="line"&gt;5,3,9,6,5,9,7,3,5,2&lt;/span&gt;</code>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="line">5,3,9,6,5,9,7,3,5,2</span>
                                    </td>
                                    <td>
                                        <code>&lt;span class="line"&gt;5,3,9,6,5,9,7,3,5,2&lt;/span&gt;</code>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="line">5,3,2,-1,-3,-2,2,3,5,2</span>
                                    </td>
                                    <td>
                                        <code>&lt;span class="line"&gt;5,3,2,-1,-3,-2,2,3,5,2&lt;/span&gt;</code>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="line">0,-3,-6,-4,-5,-4,-7,-3,-5,-2</span>
                                    </td>
                                    <td>
                                        <code>&lt;span class="line"&gt;0,-3,-6,-4,-5,-4,-7,-3,-5,-2&lt;/span&gt;</code>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="bar">5,3,9,6,5,9,7,3,5,2</span>
                                    </td>
                                    <td>
                                        <code>&lt;span class="bar"&gt;5,3,9,6,5,9,7,3,5,2&lt;/span&gt;</code>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="bar">5,3,2,-1,-3,-2,2,3,5,2</span>
                                    </td>
                                    <td>
                                        <code>&lt;span class="bar"&gt;5,3,2,-1,-3,-2,2,3,5,2&lt;/span&gt;</code>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div><%-- /BOTTOM EXAMPLE GRAPH TABLE --%>

            </div><%-- /2nd ROW --%>
        </div>
    <!-- Mainly scripts -->
    <script src="js/jquery-2.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- FooTable -->
    <script src="js/plugins/footable/footable.all.min.js"></script>

    <!-- Peity -->
    <script src="js/plugins/peity/jquery.peity.min.js"></script>
    <script src="js/demo/peity-demo.js"></script>


    <!-- Custom and plugin javascript -->
    <script src="js/inspinia.js"></script>
    <script src="js/plugins/pace/pace.min.js"></script>

    <!-- Page-Level Scripts -->
    <script>
        $(document).ready(function() {

            $('.footable').footable();
            $('.footable2').footable();

        });

    </script>



</asp:Content>
