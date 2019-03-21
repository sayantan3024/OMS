
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lab Service Provider</title>
<meta name=viewport content="initial-scale=1.0 maximum-scale=1.0">
<link href="assets/css/bootstrap.min.css" rel="stylesheet"/>
<link href="assets/css/font-awesome.min.css" rel="stylesheet"/>
<link href="assets/css/Index.css" rel="stylesheet"/>
<script type="text/javascript" src="assets/js/jquery.min.js"></script>
<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/angular.min.js"></script>
</head>
<body>
	<div class="wrapper">
	 	<div class="left-side-panel">
	 		<ul class="nav">
	 			<li class="active"><span class="fa fa-lock icn"></span><a href="#">Login</a></li>
	 			<li><span class="fa fa-unlock icn"></span><a href="forgotPassword.jsp">Forgot Password</a></li>
	 			<li><span class="fa fa-question-circle-o icn"></span><a href="#">Help</a></li>
	 		</ul>
	 	</div>
	 	<div class="right-side-content">
	 		<div class="layout">
	 			<div class="login">
	 				<h4>Login Here</h4>
	 				<form action="LabController" method="post" ng-app="" name="loginFrom">
					 	<div class="form-group"  > 
						   <label><b>Username</b></label>
						    <input class="form-control" type="number" placeholder="Enter Username" name="labId" ng-model="labid" ng-pattern="/^[0-9]{1,6}/" required >
  				   			<p class="text-danger" ng-show="loginFrom.labId.$touched && loginFrom.labId.$invalid">Valid user id is required!</p>
          			    </div>
		  				<div  class="form-group" ng-class="{'has-error':!loginFrom.userPassword.$valid && !loginFrom.userPassword.$pristine,'has-success':loginFrom.userPassword.$valid && !loginFrom.userPassword.$pristine}"> 
		  			         <label><b>Password</b></label>
		  			         <input class="form-control"  placeholder="Enter Password"  type="password" ng-model="userPassword" name="userPassword" ng-pattern="/^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/"  required >
  			         		 <p class="text-danger" ng-show="loginFrom.userPassword.$touched && loginFrom.userPassword.$invalid">Password should be atleast 8 characters long and should contain one number,one character and one special character.</p>
		  			   </div>        
		  			  	<div  class="form-group">
		  			  		<input type="hidden" name="source" value="login">
		  			        <input class="btn btn-success" type="submit" value="Login" ng-disabled=" loginFrom.userPassword.$untouched || loginFrom.userPassword.$invalid || loginFrom.labid.$untouched || loginFrom.labid.$invalid">
  					    </div>
		  			   <% if(request.getAttribute("Error")!=null){ %> 
		  			   
		  			   <div class="text-danger"><%=request.getAttribute("Error")%></div>
		  			   
		  			   <% } %>
					</form>
	 			</div>
	 		</div>
	 	</div>
	</div>
</body>
</html>