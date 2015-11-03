<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>Registration</title>

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
            <a href="index.html" class="logo">Mobile<span class="lite">Cloud</span></a>
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
                                <p class="blue">You have 6 pending tasks</p>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="task-info">
                                        <div class="desc">ALgorithm </div>
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
                                            <span class="sr-only">30% Complete </span>
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
                                        <div class="desc">Mobile App running</div>
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
                                <a href="#">
                                    <span class="label label-primary"><i class="icon_profile"></i></span> 
                                    Friend Request
                                    <span class="small italic pull-right">5 mins</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="label label-warning"><i class="icon_pin"></i></span>  
                                    location.
                                    <span class="small italic pull-right">50 mins</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="label label-danger"><i class="icon_book_alt"></i></span> 
                                    Project 3 Completed.
                                    <span class="small italic pull-right">1 hr</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="label label-success"><i class="icon_like"></i></span> 
                                    Mick appreciated your work.
                                    <span class="small italic pull-right"> Today</span>
                                </a>
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
                  <li class="active">
                      <a class="" href="index.html">
                          <i class="icon_house_alt"></i>
                          <span>Dashboard</span>
                      </a>
                  </li>
				  <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon_document_alt"></i>
                          <span>Register</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <ul class="sub">
                                                   
                          <li><a class="" href="form_validation.html">Form Registration</a></li>
                      </ul>
                  </li>       
                  <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon_desktop"></i>
                          <span>Features</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <ul class="sub">
                          <li><a class="" href="general.html">Resource Allocation</a></li>
                          <li><a class="" href="buttons.html">Regions</a></li>
                      
                      </ul>
                  
                  <li>                     
                      <a class="" href="InstanceMonitoring.jsp">
                          <i class="icon_piechart"></i>
                          <span>Monitoring</span>
                          
                      </a>
                                         
                  </li>
                             
                  <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon_table"></i>
                          <span> Tables</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <ul class="sub">
                          <li><a class="" href="basic_table.html">Billing Table</a></li>
                      </ul>
                  </li>
                  
              
                  </li> 
                  
              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->

      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-files-o"></i> Instance Creation</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
						<li><i class="icon_document_alt"></i>Instances</li>
						<li><i class="fa fa-files-o"></i>Instance Creation </li>
					</ol>
				</div>
			</div>
			<%@ page import="java.sql.*" %>
			<%ResultSet resultset =null;
			ResultSet resultset1 =null;
			ResultSet resultset2 =null;
			%>
			<%
			Connection connection = null;
	        Statement stmt = null;
	        Statement stmt1 = null;
	        Statement stmt2 = null;
	        
	        try
	        {
	            Class.forName("com.mysql.jdbc.Driver");
	            
	         System.out.println("1");
	            connection = DriverManager
	                .getConnection("jdbc:mysql://localhost:3306/test", "root", "9691");
	            System.out.println("2");
	            stmt = connection.createStatement();
	            resultset =stmt.executeQuery("select * from Region_Master") ;
	            System.out.println("4");
	            
	        }
	        catch (Exception e) {
	            e.printStackTrace();
	        }
	    	finally {
	    	            
	    	        }     
	            
	            
	       
	        %>
	        
	        
              <!-- Form Registration -->              
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                              Instance Creation
                          </header>
                          <div class="panel-body">
                              <div class="form">
                                  <form method="post" action="LauncInstance.jsp">
                                       <div class="form-group ">
                                          <label for="cname" class="control-label col-lg-2">Regions <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <!--<input class="form-control" id="cname" name="fullname" minlength="5" type="text" required />-->
											  <select class="form-control" name="region" >
											  
											  <%  while(resultset.next()){ %>
											  <option><%= resultset.getString(2)%></option><% } %>
	
		
		
		
		
		<!-- <option id="1" value="us-east-1">us-east-1</option>
		<option id="2" value="us-west-2">us-west-2</option>
		<option id="3" value="us-west-1">us-west-1 </option>
		<option id="4" value="eu-west-1">eu-west-1</option>
		<option id="5" value="eu-central-1">eu-central-1</option>
		<option id="6" value="ap-souteast-1">ap-souteast-1</option>
		<option id="7" value="ap-souteast-2">ap-souteast-2</option>
		<option id="8" value="ap-northeast-1">ap-northeast-1</option>-->
		
		
		
		</select>
                                          </div>
                                      </div>
                                      
                                      
                                 <%     
                                 try
                                 {
                                 stmt1 = connection.createStatement();
	            				resultset1 =stmt1.executeQuery("select * from OS_Master") ;
                                 }
                                 catch(Exception e)
                                 {
                                	e.printStackTrace(); 
                                 }
	            				
	            				%> 
									  <div class="form-group ">
                                          <label for="cname" class="control-label col-lg-2">Mobile Operating System <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <!--<input class="form-control" id="cname" name="fullname" minlength="5" type="text" required />-->
											  <select class="form-control" name="os" >
												
												<%  while(resultset1.next()){ %>
											  <option><%= resultset1.getString(2)%></option><% } %>
		
												<!-- <option  value="Android Version 2.2 Froyo">Android Version 2.2 Froyo</option>
		
												<option  value="Android Version 2.3 Gingerbread">Android Version 2.3 Gingerbread</option>
												<option  value="Android Version 4.0 IcecreamSandwich">Android Version 4.0 IcecreamSandwich </option>
												<option value="Android Version 5.0.1 LolliPop">Android Version 5.0.1 LolliPop</option>
												<option  value="Windows Phone 8.1">Windows Phone 8.1</option> -->
		
		
		</select>
                                          </div>
                                      </div>
                                      
                                      <%     
                                 try
                                 {
                                 stmt2 = connection.createStatement();
	            				resultset2 =stmt2.executeQuery("select * from RAM_Master") ;
                                 }
                                 catch(Exception e)
                                 {
                                	e.printStackTrace(); 
                                 }
	            				
	            				%> 
                                      <div class="form-group ">
                                          <label for="cemail" class="control-label col-lg-2">RAM (MB) <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <!--<input class="form-control " id="ram" type="text" name="ram" required />-->
											  <select class="form-control" name="ram" >
		
		<%  while(resultset2.next()){ %>
											  <option><%= resultset2.getString(2)%></option><% } %>
		
		
		<!-- <option id="1" value="1">256</option>
		<option id="2" value="2">512</option>
		<option id="3" value="4">1024 </option>
		<option id="4" value="8">2048</option> -->
		
		</select>
                                          </div>
                                      </div>
                                      <% 
	try {
        stmt.close();
        stmt1.close();
        stmt2.close();
        connection.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
    
		
			%>
                                      <div class="form-group ">
                                          <label for="curl" class="control-label col-lg-2">Bit</label>
                                          <div class="col-lg-10">
                                              <!--<input class="form-control " id="curl" type="url" name="url" />-->
											  <input height = "1em"   type="radio" name="bit" value="32">32
											  <br></br>
											  <input height = "1em"   type="radio" name="bit" value="64">64
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="cname" class="control-label col-lg-2">No. of Instances <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <!--<input class="form-control" id="subject" name="subject" minlength="5" type="text" required />-->
											  <input class="form-control" type="text" name="instance" >
											  
                                          </div>
                                      </div>                                      
                                      <div class="form-group ">
                                         <label for="ccomment" class="control-label col-lg-2">Storage</label>
                                          <div class="col-lg-10">
                                              <!--<textarea class="form-control " id="ccomment" name="comment" required></textarea>-->
											  <input class="form-control" type="text" name="cpumemory" id="cpumemory" >
                                          </div>
                                      </div>
                                      <div class="form-group">
                                          <div class="col-lg-offset-2 col-lg-10">
                                              <!--<button class="btn btn-primary" type="submit">Save</button>-->
											  <input class="btn btn-primary" type="submit" value="Create Instance">
                                              <!--<button class="btn btn-default" type="button">Cancel</button>-->
                                          </div>
                                      </div>
                                  </form>
                              </div>

                          </div>
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
    <!-- nice scroll -->
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
    <!-- jquery validate js -->
    <script type="text/javascript" src="js/jquery.validate.min.js"></script>

    <!-- custom form validation script for this page-->
    <script src="js/form-validation-script.js"></script>
    <!--custome script for all page-->
    <script src="js/scripts.js"></script>    


  </body>
</html>