<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Index.aspx.vb" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet"/>
    <link href="css/animate.css" rel="stylesheet"/>
    <link href="css/style.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
       
    <div id="wrapper">
         <%-- START LEFT NAVBAR --%>
    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
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
                    </div>
                    <div class="logo-element">
                        IN+
                    </div>
                </li>
                <li>
                    <a href="Procedures.aspx"><i class="fa fa-check-square"></i> <span class="nav-label">Procedures</span> <span class="fa arrow"></span></a>
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
                    <a href="DrugAdmin.aspx"><i class="fa fa-flask"></i> <span class="nav-label">Drug Admininstration</span></a>
                </li>
                <li>
                    <a href="MedCond.aspx"><i class="fa fa-plus-circle"></i> <span class="nav-label">Medical Conditions</span><span class="fa arrow"></span></a>
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
                    <a href="TOC.aspx"><i class="fa fa-paper-plane"></i> <span class="nav-label">Transfer of Car</span><span class="label label-warning pull-right">16/24</span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="mailbox.html">Inbox</a></li>
                        <li><a href="mail_detail.html">Email view</a></li>
                        <li><a href="mail_compose.html">Compose email</a></li>
                        <li><a href="email_template.html">Email templates</a></li>
                    </ul>
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
            </ul>

        </div>
        <%-- END OF LEFT NAV MENU --%>
    </nav>

        <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom">
            <h1><strong>Point of Care Support</strong></h1>
        <nav class="navbar navbar-static-top white-bg" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
            
            <form role="search" class="navbar-form-custom" action="search_results.html">
                <div class="form-group">
                    <input type="text" placeholder="Search for something..." class="form-control" name="top-search" id="top-search">
                    
                </div>
            </form>
        </div>
            <ul class="nav navbar-top-links navbar-right">
                <li>
                    <span class="m-r-sm text-muted welcome-message">Point of Care Suppport</span>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                        <i class="fa fa-envelope"></i>  <span class="label label-warning">16</span>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <div class="dropdown-messages-box">
                                <a href="profile.html" class="pull-left">
                                    <img alt="image" class="img-circle" src="img/a7.jpg">
                                </a>
                                <div>
                                    <small class="pull-right">46h ago</small>
                                    <strong>Mike Loreipsum</strong> started following <strong>Monica Smith</strong>. <br>
                                    <small class="text-muted">3 days ago at 7:58 pm - 10.06.2014</small>
                                </div>
                            </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="dropdown-messages-box">
                                <a href="profile.html" class="pull-left">
                                    <img alt="image" class="img-circle" src="img/a4.jpg">
                                </a>
                                <div>
                                    <small class="pull-right text-navy">5h ago</small>
                                    <strong>Chris Johnatan Overtunk</strong> started following <strong>Monica Smith</strong>. <br>
                                    <small class="text-muted">Yesterday 1:21 pm - 11.06.2014</small>
                                </div>
                            </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="dropdown-messages-box">
                                <a href="profile.html" class="pull-left">
                                    <img alt="image" class="img-circle" src="img/profile.jpg">
                                </a>
                                <div>
                                    <small class="pull-right">23h ago</small>
                                    <strong>Monica Smith</strong> love <strong>Kim Smith</strong>. <br>
                                    <small class="text-muted">2 days ago at 2:30 am - 11.06.2014</small>
                                </div>
                            </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="text-center link-block">
                                <a href="mailbox.html">
                                    <i class="fa fa-envelope"></i> <strong>Read All Messages</strong>
                                </a>
                            </div>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                        <i class="fa fa-bell"></i>  <span class="label label-primary">8</span>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts">
                        <li>
                            <a href="mailbox.html">
                                <div>
                                    <i class="fa fa-envelope fa-fw"></i> You have 16 messages
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="profile.html">
                                <div>
                                    <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                    <span class="pull-right text-muted small">12 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="grid_options.html">
                                <div>
                                    <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="text-center link-block">
                                <a href="notifications.html">
                                    <strong>See All Alerts</strong>
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </div>
                        </li>
                    </ul>
                </li>


                <li>
                    <a href="login.html">
                        <i class="fa fa-sign-out"></i> Log out
                    </a>
                </li>
            </ul>

        </nav>
        </div>
            <div class="wrapper wrapper-content animated fadeInRight">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="ibox">
                            <div class="ibox-content">
                                <h1 class="m-b-md">Procedure Guides</h1>
                                <h2 class="text-navy">
                                     Quick implementation guides 
                                </h2>
                                <small>Designed to assist nurses with efficiently and quickly performing procedures</small>
                                
                                <ul>
                                    <li><h3>Implementation</h3></li>
                                    <li><h3>Monitoring</h3></li>
                                    <li><h3>DC'ing</h3></li>
                                    <li><h3>Troubleshooting</h3></li>
                                    <li><h3>Documenting</h3></li>
                                </ul>
                                    
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3">
                        <div class="ibox">
                            <div class="ibox-content">
                                <h1 class="m-b-md">Drug Administration Guides</h1>
                                <h2 class="text-navy">
                                     Critical factors 
                                </h2>
                                <small>Guides for drugs that require special attention, procedures, or equipment</small>
                                
                                <ul>
                                    <li><h3>High risk medications</h3></li>
                                    <li><h3>Drips</h3></li>
                                    <li><h3>Contraindications</h3></li>
                                    <li><h3>Major compatibility issues</h3></li>
                                    <li><h3>Special equipment</h3></li>
                                </ul>
                                    
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3">
                        <div class="ibox">
                            <div class="ibox-content">
                                <h1 class="m-b-md">Medical Condition Guides</h1>
                                <h2 class="text-navy">
                                     Special precautions & considerations 
                                </h2>
                                <small>Guides special medical conditions that require elevated levels of care or attention</small>
                                
                                <ul>
                                    <li><h3>Key monitoring points</h3></li>
                                    <li><h3>Special drug precautions</h3></li>
                                    <li><h3>Special documententation</h3></li>
                                    <li><h3>Policy specific requirements</h3></li>
                                    <li><h3>Special equipment</h3></li>
                                </ul>
                                    
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3">
                        <div class="ibox">
                            <div class="ibox-content">
                                <h5 class="m-b-md">Server status Q43</h5>
                                <h2 class="text-danger">
                                    <i class="fa fa-play fa-rotate-90"></i> Down
                                </h2>
                                <small>Server down since 4:32 pm.</small>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-lg-3">
                        <div class="ibox">
                            <div class="ibox-content">
                                <h5>Visits in last 24h</h5>
                                <h2>198 009</h2>
                                <div id="sparkline1"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="ibox">
                            <div class="ibox-content">
                                <h5>Visits week</h5>
                                <h2>65 000</h2>
                                <div id="sparkline2"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="ibox">
                            <div class="ibox-content">
                                <h5>Last month</h5>
                                <h2>680 900</h2>
                                <div id="sparkline3"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="ibox">
                            <div class="ibox-content">
                                <h5>Avarage time</h5>
                                <h2>00:06:40</h2>
                                <div id="sparkline4"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3">
                        <div class="ibox">
                            <div class="ibox-content">
                                <h5>Usage</h5>
                                <h2>65%</h2>
                                <div class="progress progress-mini">
                                    <div style="width: 68%;" class="progress-bar"></div>
                                </div>

                                <div class="m-t-sm small">Server down since 4:32 pm.</div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3">
                        <div class="ibox">
                            <div class="ibox-content">
                                <h5>Usage</h5>
                                <h2>50%</h2>
                                <div class="progress progress-mini">
                                    <div style="width: 78%;" class="progress-bar"></div>
                                </div>

                                <div class="m-t-sm small">Server down since 4:32 pm.</div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3">
                        <div class="ibox">
                            <div class="ibox-content">
                                <h5>Usage</h5>
                                <h2>14%</h2>
                                <div class="progress progress-mini">
                                    <div style="width: 38%;" class="progress-bar progress-bar-danger"></div>
                                </div>

                                <div class="m-t-sm small">Server down since 4:32 pm.</div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3">
                        <div class="ibox">
                            <div class="ibox-content">
                                <h5>Usage</h5>
                                <h2>20%</h2>
                                <div class="progress progress-mini">
                                    <div style="width: 28%;" class="progress-bar progress-bar-danger"></div>
                                </div>

                                <div class="m-t-sm small">Server down since 4:32 pm.</div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-3">
                        <div class="ibox">
                            <div class="ibox-content">
                                <h5>Percentage distribution</h5>
                                <h2>42/20</h2>
                                <div class="text-center">
                                    <div id="sparkline5"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="ibox">
                            <div class="ibox-content">
                                <h5>Percentage division</h5>
                                <h2>100/54</h2>
                                <div class="text-center">
                                    <div id="sparkline6"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="ibox">
                            <div class="ibox-content">
                                <h5>Percentage distribution</h5>
                                <h2>685/211</h2>
                                <div class="text-center">
                                    <div id="sparkline7"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="ibox">
                            <div class="ibox-content">
                                <h5>Percentage division</h5>
                                <h2>240/32</h2>
                                <div class="text-center">
                                    <div id="sparkline8"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3">
                        <div class="ibox">
                            <div class="ibox-content">
                                <h5>Income</h5>
                                <h1 class="no-margins">886,200</h1>
                                <div class="stat-percent font-bold text-navy">98% <i class="fa fa-bolt"></i></div>
                                <small>Total income</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="ibox">
                            <div class="ibox-content">
                                <h5>Income last month</h5>
                                <h1 class="no-margins">1 738,200</h1>
                                <div class="stat-percent font-bold text-navy">98% <i class="fa fa-bolt"></i></div>
                                <small>Total income</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="ibox">
                            <div class="ibox-content">
                                <h5>Income last day</h5>
                                <h1 class="no-margins">-200,100</h1>
                                <div class="stat-percent font-bold text-danger">12% <i class="fa fa-level-down"></i></div>
                                <small>Total income</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="ibox">
                            <div class="ibox-content">
                                <h5>Income all</h5>
                                <h1 class="no-margins">54,200</h1>
                                <div class="stat-percent font-bold text-danger">24% <i class="fa fa-level-down"></i></div>
                                <small>Total income</small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3">
                        <div class="ibox">
                            <div class="ibox-content">
                                <h5>All new alerts</h5>
                                <table class="table table-stripped small m-t-md">
                                    <tbody>
                                    <tr>
                                        <td class="no-borders">
                                            <i class="fa fa-circle text-navy"></i>
                                        </td>
                                        <td  class="no-borders">
                                            Example element 1
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <i class="fa fa-circle text-navy"></i>
                                        </td>
                                        <td>
                                            Example element 2
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <i class="fa fa-circle text-navy"></i>
                                        </td>
                                        <td>
                                            Example element 3
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="ibox">
                            <div class="ibox-content">
                                <h5>Alerts</h5>
                                <table class="table table-stripped small m-t-md">
                                    <tbody>
                                    <tr>
                                        <td class="no-borders">
                                            <i class="fa fa-circle text-navy"></i>
                                        </td>
                                        <td  class="no-borders">
                                            Example element 1
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <i class="fa fa-circle text-navy"></i>
                                        </td>
                                        <td>
                                            Example element 2
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <i class="fa fa-circle text-navy"></i>
                                        </td>
                                        <td>
                                            Example element 3
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="ibox">
                            <div class="ibox-content">
                                <h5>All messages</h5>
                                <table class="table table-stripped small m-t-md">
                                    <tbody>
                                    <tr>
                                        <td class="no-borders">
                                            <i class="fa fa-circle text-danger"></i>
                                        </td>
                                        <td  class="no-borders">
                                            Example element 1
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <i class="fa fa-circle text-danger"></i>
                                        </td>
                                        <td>
                                            Example element 2
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <i class="fa fa-circle text-danger"></i>
                                        </td>
                                        <td>
                                            Example element 3
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="ibox">
                            <div class="ibox-content">
                                <h5>Last notification</h5>
                                <table class="table table-stripped small m-t-md">
                                    <tbody>
                                    <tr>
                                        <td class="no-borders">
                                            <i class="fa fa-circle text-danger"></i>
                                        </td>
                                        <td  class="no-borders">
                                            Example element 1
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <i class="fa fa-circle text-danger"></i>
                                        </td>
                                        <td>
                                            Example element 2
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <i class="fa fa-circle text-danger"></i>
                                        </td>
                                        <td>
                                            Example element 3
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>



            </div>
        <div class="footer">
            <div class="pull-right">
                10GB of <strong>250GB</strong> Free.
            </div>
            <div>
                <strong>Copyright</strong> Example Company &copy; 2014-2017
            </div>
        </div>
        </div>

    </div>

    <!-- Mainly scripts -->
    <script src="js/jquery-2.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Sparkline -->
    <script src="js/plugins/sparkline/jquery.sparkline.min.js"></script>

    <!-- Peity -->
    <script src="js/plugins/peity/jquery.peity.min.js"></script>
    <script src="js/demo/peity-demo.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="js/inspinia.js"></script>
    <script src="js/plugins/pace/pace.min.js"></script>

    <script>
        $(document).ready(function() {

            var sparklineCharts = function(){
                 $("#sparkline1").sparkline([34, 43, 43, 35, 44, 32, 44, 52], {
                     type: 'line',
                     width: '100%',
                     height: '60',
                     lineColor: '#1ab394',
                     fillColor: "#ffffff"
                 });

                 $("#sparkline2").sparkline([24, 43, 43, 55, 44, 62, 44, 72], {
                     type: 'line',
                     width: '100%',
                     height: '60',
                     lineColor: '#1ab394',
                     fillColor: "#ffffff"
                 });

                 $("#sparkline3").sparkline([74, 43, 23, 55, 54, 32, 24, 12], {
                     type: 'line',
                     width: '100%',
                     height: '60',
                     lineColor: '#ed5565',
                     fillColor: "#ffffff"
                 });

                 $("#sparkline4").sparkline([24, 43, 33, 55, 64, 72, 44, 22], {
                     type: 'line',
                     width: '100%',
                     height: '60',
                     lineColor: '#ed5565',
                     fillColor: "#ffffff"
                 });

                 $("#sparkline5").sparkline([1, 4], {
                     type: 'pie',
                     height: '140',
                     sliceColors: ['#1ab394', '#F5F5F5']
                 });

                 $("#sparkline6").sparkline([5, 3], {
                     type: 'pie',
                     height: '140',
                     sliceColors: ['#1ab394', '#F5F5F5']
                 });

                 $("#sparkline7").sparkline([2, 2], {
                     type: 'pie',
                     height: '140',
                     sliceColors: ['#ed5565', '#F5F5F5']
                 });

                 $("#sparkline8").sparkline([2, 3], {
                     type: 'pie',
                     height: '140',
                     sliceColors: ['#ed5565', '#F5F5F5']
                 });
            };

            var sparkResize;

            $(window).resize(function(e) {
                clearTimeout(sparkResize);
                sparkResize = setTimeout(sparklineCharts, 500);
            });

            sparklineCharts();


        });
    </script>
    </form>
</body>
</html>
