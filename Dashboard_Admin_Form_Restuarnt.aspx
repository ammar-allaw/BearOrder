﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard_Admin_Form_Restuarnt.aspx.cs" Inherits="WebApplication7.WebForm8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link rel="stylesheet" href="assets/materialize/css/materialize.min.css" media="screen,projection" />
    <!-- Bootstrap Styles-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="assets/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="assets/js/Lightweight-Chart/cssCharts.css"> 
    <style>
        .b1{
            width:100%;
            text-align:center;
        }
        .label1{
             width:100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
          <div id="wrapper">
        <nav class="navbar navbar-default top-navbar" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand waves-effect waves-dark" href="index.html"><i class="large material-icons">track_changes</i> <strong>target</strong></a>
				
		<div id="sideNav" href=""><i class="material-icons dp48">toc</i></div>
            </div>

            <ul class="nav navbar-top-links navbar-right"> 
				<li><a class="dropdown-button waves-effect waves-dark" href="#!" data-activates="dropdown4"><i class="fa fa-envelope fa-fw"></i> <i class="material-icons right">arrow_drop_down</i></a></li>				
				<li><a class="dropdown-button waves-effect waves-dark" href="#!" data-activates="dropdown3"><i class="fa fa-tasks fa-fw"></i> <i class="material-icons right">arrow_drop_down</i></a></li>
				<li><a class="dropdown-button waves-effect waves-dark" href="#!" data-activates="dropdown2"><i class="fa fa-bell fa-fw"></i> <i class="material-icons right">arrow_drop_down</i></a></li>
				  <li><a class="dropdown-button waves-effect waves-dark" href="#!" data-activates="dropdown1"><i class="fa fa-user fa-fw"></i> <b>John Doe</b> <i class="material-icons right">arrow_drop_down</i></a></li>
            </ul>
        </nav>
		<!-- Dropdown Structure -->
<ul id="dropdown1" class="dropdown-content">
<li><a href="#"><i class="fa fa-user fa-fw"></i> My Profile</a>
</li>
<li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
</li> 
<li><a href="#"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
</li>
</ul>
<ul id="dropdown2" class="dropdown-content w250">
  <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-comment fa-fw"></i> New Comment
                                    <span class="pull-right text-muted small">4 min</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                    <span class="pull-right text-muted small">12 min</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-envelope fa-fw"></i> Message Sent
                                    <span class="pull-right text-muted small">4 min</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-tasks fa-fw"></i> New Task
                                    <span class="pull-right text-muted small">4 min</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                    <span class="pull-right text-muted small">4 min</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Alerts</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
</ul>
<ul id="dropdown3" class="dropdown-content dropdown-tasks w250">
<li>
		<a href="#">
			<div>
				<p>
					<strong>Task 1</strong>
					<span class="pull-right text-muted">60% Complete</span>
				</p>
				<div class="progress progress-striped active">
					<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
						<span class="sr-only">60% Complete (success)</span>
					</div>
				</div>
			</div>
		</a>
	</li>
	<li class="divider"></li>
	<li>
		<a href="#">
			<div>
				<p>
					<strong>Task 2</strong>
					<span class="pull-right text-muted">28% Complete</span>
				</p>
				<div class="progress progress-striped active">
					<div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="28" aria-valuemin="0" aria-valuemax="100" style="width: 28%">
						<span class="sr-only">28% Complete</span>
					</div>
				</div>
			</div>
		</a>
	</li>
	<li class="divider"></li>
	<li>
		<a href="#">
			<div>
				<p>
					<strong>Task 3</strong>
					<span class="pull-right text-muted">60% Complete</span>
				</p>
				<div class="progress progress-striped active">
					<div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
						<span class="sr-only">60% Complete (warning)</span>
					</div>
				</div>
			</div>
		</a>
	</li>
	<li class="divider"></li>
	<li>
		<a href="#">
			<div>
				<p>
					<strong>Task 4</strong>
					<span class="pull-right text-muted">85% Complete</span>
				</p>
				<div class="progress progress-striped active">
					<div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 85%">
						<span class="sr-only">85% Complete (danger)</span>
					</div>
				</div>
			</div>
		</a>
	</li>
	<li class="divider"></li>
	<li>
</ul>   
<ul id="dropdown4" class="dropdown-content dropdown-tasks w250 taskList">
  <li>
                                <div>
                                    <strong>John Doe</strong>
                                    <span class="pull-right text-muted">
                                        <em>Today</em>
                                    </span>
                                </div>
                                <p>Lorem Ipsum has been the industry's standard dummy text ever since the 1500s...</p>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <p>Lorem Ipsum has been the industry's standard dummy text ever since an kwilnw...</p>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <p>Lorem Ipsum has been the industry's standard dummy text ever since the...</p>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>Read All Messages</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
</ul>  
	   <!--/. NAV TOP  -->
        <!--/. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">

                 	<li>
                        <a href="Dashboard_Admin_Form_Restuarnt.aspx" class="waves-effect waves-dark"><i class="fa fa-edit"></i> Add Resturant</a>
                    </li>
                    <li>
                        <a href="Dashboard_Admin_Form.aspx" class="active-menu waves-effect waves-dark"><i class="fa fa-edit"></i> Add Admin </a>
                    </li>


                    <li>
                        <a href="#" class="waves-effect waves-dark"><i class="fa fa-sitemap"></i> Multi-Level Dropdown<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="#">Second Level Link</a>
                            </li>
                            <li>
                                <a href="#">Second Level Link</a>
                            </li>
                            <li>
                                <a href="#" class="waves-effect waves-dark">Second Level Link<span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="#">Third Level Link</a>
                                    </li>
                                    <li>
                                        <a href="#">Third Level Link</a>
                                    </li>
                                    <li>
                                        <a href="#">Third Level Link</a>
                                    </li>

                                </ul>

                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="empty.html" class="waves-effect waves-dark"><i class="fa fa-fw fa-file"></i> Empty Page</a>
                    </li>
                </ul>

            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
		  <div class="header"> 
                        <h1 class="page-header">
                             Form Inputs Page
                        </h1>
						<ol class="breadcrumb">
					  <li><a href="#">Home</a></li>
					  <li><a href="#">Forms</a></li>
					  <li class="active">Data</li>
					</ol> 
									
		</div>
		
            <div id="page-inner"> 
			 <div class="row">
			 <div class="col-lg-12">
			 <div class="card">
                        <div class="card-action">
                            Basic Form Elements
                        </div>
                        <div class="card-content">
    <form class="col s12">
        <asp:Label ID="Label1" class="label1" runat="server" Text="Label"></asp:Label>
      <div class="row">
        <div class="input-field col s6">
<%--          <input placeholder="Placeholder" id="first_name" type="text" class="validate">--%>
           <%-- <input placeholder="Placeholder" id="first_name" type="text" class="validate">--%>
           <asp:TextBox ID="TextBox1"    runat="server" placeholder=""  type="text" class="validate" ></asp:TextBox>

          <label for="first_name"> Resturant Name</label>
        </div>
        <div class="input-field col s6">
<%--          <input id="last_name" type="text" class="validate">--%>
              <asp:TextBox ID="TextBox2"    runat="server" placeholder=""  type="text" class="validate" ></asp:TextBox>
          <label for="Address">Address</label>
        </div>
      </div>
   <%--   <div class="row">
        <div class="input-field col s12">
          <input disabled value="I am not editable" id="disabled" type="text" class="validate">
          <label for="disabled">Disabled</label>
        </div>
      </div>--%>
          <div class="row">
        <div class="input-field col s12">
          <%--<input id="password" type="password" class="validate">--%>
          <asp:TextBox ID="TextBox3"    runat="server" placeholder=""  type="email" class="validate" ></asp:TextBox>
          <label for="Email">Email</label>
        </div>
      </div>
  

      <div class="row">
        <div class="input-field col s12">
          <%--<input id="password" type="password" class="validate">--%>
          <asp:TextBox ID="TextBox4"    runat="server" placeholder=""  type="password" class="validate" ></asp:TextBox>
          <label for="password">Password</label>
        </div>
      </div>
  <%--    <div class="row">
        <div class="input-field col s12">
          <input id="email" type="email" class="validate">
              <asp:TextBox ID="TextBox5"    runat="server" placeholder=""  type="password" class="validate" ></asp:TextBox>
          <label for="email">Email</label>
        </div>
      </div>--%>
      

               <div class="row">
        <div class="input-field col s12">
          <%--<input id="password" type="password" class="validate">--%>
          <asp:TextBox ID="TextBox6"    runat="server" placeholder=""  type="text" class="validate" ></asp:TextBox>
          <label for="password">Type Resturant</label>
        </div>
      </div>
            <div class="row">
        <div class="input-field col s12">
          <%--<input id="password" type="password" class="validate">--%>
<%--          <asp:TextBox ID="TextBox6"    runat="server" placeholder=""  type="email" class="validate" ></asp:TextBox>--%>
            <label for="">Photo</label>
            <br />
            <asp:FileUpload ID="FileUpload1" runat="server" class="validate" />
          
        </div>
      </div>

       <div class="row">
        <div class="input-field col s12">
          <%--<input id="password" type="password" class="validate">--%>
            <asp:Button  ID="Button1" class="validate  btn btn-danger b1"  runat="server" Text="Button" OnClick="Button1_Click"   />
            <%--class="Button1 btn btn-outline-warning"--%>
<%--          <asp:TextBox ID="TextBox6"   runat="server" placeholder=""  type="number" class="validate" ></asp:TextBox>--%>
          <%--<label for="password">Age</label>--%>
        </div>
      </div>
 <%--     <div class="row">
        <div class="col s12">
          This is an inline input field:
          <div class="input-field inline">
            <input id="email" type="email" class="validate">
            <label for="email" data-error="wrong" data-success="right">Email</label>
          </div>
        </div>
      </div>--%>
    </form>
	<div class="clearBoth"></div>
  </div>
    </div>
 </div>	
	 </div>		
              <div class="row">
                <div class="col-lg-6">
                    <div class="card">
                        <div class="card-action">
                            Basic Form Elements
                        </div>
                        <div class="card-content">
                         	<form class="col s12">
								  <div class="row">
									<div class="input-field col s6">
									  <i class="material-icons prefix">account_circle</i>
									  <input id="icon_prefix" type="text" class="validate">
									  <label for="icon_prefix">First Name</label>
									</div>
									<div class="input-field col s6">
									  <i class="material-icons prefix">phone</i>
									  <input id="icon_telephone" type="tel" class="validate">
									  <label for="icon_telephone">Telephone</label>
									</div>
								  </div>
								</form>
								
								<form class="col s12">
								  <div class="row">
									<div class="input-field col s12">
									  <input id="email" type="email" class="validate">
									  <label for="email" data-error="wrong" data-success="right">Email</label>
									</div>
								  </div>
								</form>
								
								  <form class="col s12">
							  <div class="row">
								<div class="input-field col s12">
								  <textarea id="textarea1" class="materialize-textarea"></textarea>
								  <label for="textarea1">Textarea</label>
								</div>
							  </div>
							</form>
							  </form>
 
   <!-- Switch -->
  <div class="switch">
    <label>
      Off
      <input type="checkbox">
      <span class="lever"></span>
      On
    </label>
  </div>

  <!-- Disabled Switch -->
  <div class="switch">
    <label>
      Off
      <input disabled type="checkbox">
      <span class="lever"></span>
      On
    </label>
  </div>
							<div class="clearBoth"></div>
</div>
</div>
</div>
							 <div class="col-lg-6">
                    <div class="card">
                        <div class="card-action">
                            Basic Form Elements
                        </div>
                        <div class="card-content">
						
								  <form action="#">
    <p>
      <input name="group1" type="radio" id="test1" />
      <label for="test1">Red</label>
    </p>
    <p>
      <input name="group1" type="radio" id="test2" />
      <label for="test2">Yellow</label>
    </p>
    <p>
      <input class="with-gap" name="group1" type="radio" id="test3"  />
      <label for="test3">Green</label>
    </p>
      <p>
        <input name="group1" type="radio" id="test4" disabled="disabled" />
        <label for="test4">Brown</label>
    </p>
  </form>
         <form action="#">
    <p>
      <input type="checkbox" id="test5" />
      <label for="test5">Red</label>
    </p>
    <p>
      <input type="checkbox" id="test6" checked="checked" />
      <label for="test6">Yellow</label>
    </p>
    <p>
      <input type="checkbox" class="filled-in" id="filled-in-box" checked="checked" />
      <label for="filled-in-box">Filled in</label>
    </p>
    <p>
      <input type="checkbox" id="indeterminate-checkbox" />
      <label for="indeterminate-checkbox">Indeterminate Style</label>
    </p>
    <p>
      <input type="checkbox" id="test7" checked="checked" disabled="disabled" />
      <label for="test7">Green</label>
    </p>
      <p>
        <input type="checkbox" id="test8" disabled="disabled" />
        <label for="test8">Brown</label>
    </p>

        
                                </div>
                               
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div> 
                <!-- /.col-lg-12 --> 
			<footer><p>All right reserved. Template by: <a href="https://webthemez.com/admin-template/">WebThemez.com</a></p></footer>
			</div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
     <!-- /. WRAPPER  -->
    <!-- JS Scripts-->
    <!-- jQuery Js -->
    <script src="assets/js/jquery-1.10.2.js"></script>
	
	<!-- Bootstrap Js -->
    <script src="assets/js/bootstrap.min.js"></script>
	
	<script src="assets/materialize/js/materialize.min.js"></script>
	
    <!-- Metis Menu Js -->
    <script src="assets/js/jquery.metisMenu.js"></script>
    <!-- Morris Chart Js -->
    <script src="assets/js/morris/raphael-2.1.0.min.js"></script>
    <script src="assets/js/morris/morris.js"></script>
	
	
	<script src="assets/js/easypiechart.js"></script>
	<script src="assets/js/easypiechart-data.js"></script>
	
	 <script src="assets/js/Lightweight-Chart/jquery.chart.js"></script>
	
    <!-- Custom Js -->
    <script src="assets/js/custom-scripts.js"></script>
    </form>
</body>
</html>
