<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>Pricing and Billing</title>

    <!-- Bootstrap CSS -->    
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="css/elegant-icons-style.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <!-- Custom styles -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
      <script src="js/lte-ie7.js"></script>
    <![endif]-->
  </head>

  <body>
  <!-- container section start -->
  <section id="container" class="">
      <!--header start-->
      <header class="header dark-bg">
            <div class="toggle-nav">
                <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"></div>
            </div>

            <!--logo start-->
            <a href="http://localhost:8080/281CloudProject/AlgorithmSelection.jsp" class="logo">Mobile <span class="lite">Cloud</span></a>
            <!--logo end-->

            <div class="nav search-row" id="top_menu">
                <!--  search form start -->
                <ul class="nav top-menu">                    
                    <li>
                        <form class="navbar-form">
                            <input class="form-control" placeholder="Search" type="text">
                        </form>
                    </li>                    
                </ul>
                <!--  search form end -->                
            </div>

            <div class="top-nav notification-row">                
                <!-- notificatoin dropdown start-->
                <ul class="nav pull-right top-menu">
                    
                    <!-- task notificatoin start -->
                    <li id="task_notificatoin_bar" class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="icon-task-l"></i>
                            <span class="badge bg-important">6</span>
                        </a>
                        <ul class="dropdown-menu extended tasks-bar">
                            <div class="notify-arrow notify-arrow-blue"></div>
                            <li>
                                <p class="blue">You have 5 pending tasks</p>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="task-info">
                                        <div class="desc">Algorithm</div>
                                        <div class="percent">90%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%">
                                            <span class="sr-only">90% Complete (success)</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="task-info">
                                        <div class="desc">
                                            Project Running
                                        </div>
                                        <div class="percent">30%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 30%">
                                            <span class="sr-only">30% Complete</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="task-info">
                                        <div class="desc">Resource Allocation</div>
                                        <div class="percent">80%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                            <span class="sr-only">80% Complete</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="task-info">
                                        <div class="desc">CPU Utilization</div>
                                        <div class="percent">78%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="78" aria-valuemin="0" aria-valuemax="100" style="width: 78%">
                                            <span class="sr-only">78% Complete </span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="task-info">
                                        <div class="desc">Mobile App Running</div>
                                        <div class="percent">50%</div>
                                    </div>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar"  role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%">
                                            <span class="sr-only">50% Complete</span>
                                        </div>
                                    </div>

                                </a>
                            </li>
                            <li class="external">
                                <a href="#">See All Tasks</a>
                            </li>
                        </ul>
                    </li>
                    <!-- task notificatoin end -->
                    <!-- inbox notificatoin start-->
                    <li id="mail_notificatoin_bar" class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <i class="icon-envelope-l"></i>
                            <span class="badge bg-important"></span>
                        </a>
                        <ul class="dropdown-menu extended inbox">
                            <div class="notify-arrow notify-arrow-blue"></div>
                            <li>
                                <p class="blue">You have 5 new messages</p>
                            </li>
                            
                            <li>
                                <a href="#">See all messages</a>
                            </li>
                        </ul>
                    </li>
                    <!-- inbox notificatoin end -->
                    <!-- alert notification start-->
                    <li id="alert_notificatoin_bar" class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">

                            <i class="icon-bell-l"></i>
                            <span class="badge bg-important"></span>
                        </a>
                        <ul class="dropdown-menu extended notification">
                            <div class="notify-arrow notify-arrow-blue"></div>
                            <li>
                                <p class="blue">You have 4 new notifications</p>
                            </li>
                                                 
                            <li>
                                <a href="#">See all notifications</a>
                            </li>
                        </ul>
                    </li>
                    <!-- alert notification end-->
                    <!-- user login dropdown start-->
                    <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="profile-ava">
                                <img alt="" src="">
                            </span>
                            <span class="username"></span>
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu extended logout">
                            <div class="log-arrow-up"></div>
                            <li class="eborder-top">
                                <a href="#"><i class="icon_profile"></i> My Profile</a>
                            </li>
                            <li>
                                <a href="#"><i class="icon_mail_alt"></i> My Inbox</a>
                            </li>
                            <li>
                                <a href="#"><i class="icon_clock_alt"></i> Timeline</a>
                            </li>
                            <li>
                                <a href="#"><i class="icon_chat_alt"></i> Chats</a>
                            </li>
                            <li>
                                <a href="login.html"><i class="icon_key_alt"></i> Log Out</a>
                            </li>
                            <li>
                                <a href="documentation.html"><i class="icon_key_alt"></i> Documentation</a>
                            </li>
                            <li>
                                <a href="documentation.html"><i class="icon_key_alt"></i> Documentation</a>
                            </li>
                        </ul>
                    </li>
                    <!-- user login dropdown end -->
                </ul>
                <!-- notificatoin dropdown end-->
            </div>
      </header>      
      <!--header end-->

      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu">                
                  <li class="">
                      <a class="" href="http://localhost:8080/281CloudProject/AlgorithmSelection.jsp">
                          <i class="icon_house_alt"></i>
                          <span>Dashboard</span>
                      </a>
                  </li>
				  
                  <li>                     
                      <a class="" href="InstanceMonitoring.jsp">
                          <i class="icon_piechart"></i>
                          <span>Monitoring</span>
                          
                      </a>
                                         
                  </li>
                             
                  <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon_table"></i>
                          <span>Tables</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <ul class="sub">
                          <li><a class="active" href="http://localhost:8080/281CloudProject/BillingSummury.jsp">Billing Table</a></li>
                      </ul>
                  </li> 
                  
                  
                  
              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>

      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-table"></i> Table</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
						<li><i class="fa fa-table"></i>Table</li>
						<li><i class="fa fa-th-list"></i>Pricing and Billing</li>
					</ol>
				</div>
			</div>
              <!-- page start-->
              <div class="row">
                  <div class="col-sm-6">
                      <section class="panel">
                          
                      </section>
                  </div>
                  <div class="col-sm-6">
                      <section class="panel">
                         
                      </section>
                  </div>
              </div>
              <div class="row">
                  <div class="col-sm-6">
                      <section class="panel">
                          
                      </section>
                  </div>
                  <div class="col-sm-6">
                      <section class="panel">
                          
                      </section>
                  </div>
              </div>
              <div class="row">
                <div class="col-sm-6">
                      <section class="panel">
                          
                      </section>
                  </div>
              </div>
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              Billing History
                          </header>
                          <div class="table-responsive">
                            <table class="table">
                              <thead>
                                <tr>
                                  
                                  <th>Bill ID</th>
                                  <th>Request ID</th>
                                  <th>Region</th>
                                  <th>Mobile Operating System</th>
                                  <th>Storage</th>
                                  <th>RAM</th>
                                  <th>Cost per Hour</th>
                                  <th>Service Start Time</th>
                                  <th>Service End Time</th>
                                  <th>Amount($)</th>


                                </tr>
                              </thead>
                              <tbody>
                                <tr>
                                  <td>1</td>
                                  <td>1</td>
                                  <td>US-EAST-1</td>
                                  <td>Android 2.2 Froyo</td>
                                  <td>16</td>
                                  <td>256</td>
                                  <td>0.03</td>
                                  <td>4/9/2015 20:15:39</td>
                                  <td>4/9/2015 22:12:34</td>
                                  <td>0.09</td>

                                </tr>
                                <tr>
                                  <td>2</td>
                                  <td>2</td>
                                  <td>US-WEST-1</td>
                                  <td>Android 2.3 Gingerbread</td>
                                  <td>16</td>
                                  <td>256</td>
                                  <td>0.03</td>
                                  <td>4/8/2015 00:15:89</td>
                                  <td>4/8/2015 01:19:24</td>
                                  <td>0.06</td>
                                </tr>
                                <tr>
                                  <td>3</td>
                                  <td>3</td>
                                  <td>EU-EAST-1</td>
                                  <td>Android 5.0.1 Lollipop</td>
                                  <td>16</td>
                                  <td>512</td>
                                  <td>0.05</td>
                                  <td>4/7/2015 07:35:59</td>
                                  <td>4/7/2015 10:12:34</td>
                                  <td>0.20</td>
                                </tr>
                                 <tr>
                                  <td>4</td>
                                  <td>4</td>
                                  <td>EU-CENTRAL-1</td>
                                  <td>Android 2.3 Gingerbread</td>
                                  <td>16</td>
                                  <td>512</td>
                                  <td>0.03</td>
                                  <td>4/6/2015 15:16:55</td>
                                  <td>4/6/2015 20:12:59</td>
                                  <td>0.18</td>
                                </tr>
                                 <tr>
                                  <td>5</td>
                                  <td>5</td>
                                  <td>US-EAST-1</td>
                                  <td>Windows Phone 8.1</td>
                                  <td>32</td>
                                  <td>512</td>
                                  <td>0.04</td>
                                  <td>4/5/2015 20:15:27</td>
                                  <td>4/5/2015 22:12:43</td>
                                  <td>0.12</td>
                                </tr>
                                 <tr>
                                  <td>6</td>
                                  <td>6</td>
                                  <td>SA-EAST-1</td>
                                  <td>Android 4.0 Icecream Sandwich</td>
                                  <td>16</td>
                                  <td>1024</td>
                                  <td>0.04</td>
                                  <td>4/4/2015 10:15:39</td>
                                  <td>4/4/2015 12:12:34</td>
                                  <td>0.12</td>
                                </tr>
                                 <tr>
                                  <td>7</td>
                                  <td>7</td>
                                  <td>US-EAST-1</td>
                                  <td>Windows Phone 8.1</td>
                                  <td>16</td>
                                  <td>512</td>
                                  <td>0.04</td>
                                  <td>4/3/2015 20:15:39</td>
                                  <td>4/3/2015 21:12:34</td>
                                  <td>0.08</td>
                                </tr>
                                 <tr>
                                  <td>8</td>
                                  <td>8</td>
                                  <td>SA-EAST-1</td>
                                  <td>Android 5.0.1 Lollipop</td>
                                  <td>16</td>
                                  <td>2048</td>
                                  <td>0.1</td>
                                  <td>4/3/2015 10:25:09</td>
                                  <td>4/3/2015 12:17:04</td>
                                  <td>0.2</td>
                                </tr>
                                 

                              </tbody>
                            </table>
                          </div>

                      </section>
                  </div>
              </div>
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          
                          
                          
                      </section>
                  </div>
              </div>
              <!-- page end-->
          </section>
      </section>
      <!--main content end-->
  </section>
  <!-- container section end -->
    <!-- javascripts -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- nicescroll -->
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
    <!--custome script for all page-->
    <script src="js/scripts.js"></script>


  </body>
</html>