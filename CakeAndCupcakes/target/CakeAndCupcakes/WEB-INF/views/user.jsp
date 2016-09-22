<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false"%>
<%-- <%@ include file="/WEB-INF/views/header.jsp" %> --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>USERS</title>
<link rel="stylesheet" type="text/css" href="resources/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"href="resources/css/bootstrap-theme.min.css" />
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/js/controller.js"></script>
<style>

body {
position: absolute;
	top: 10px;
	left: 0px;
	right: 10px;
	bottom: 0px;
	width: auto;
	height: auto;
	background-image:  url("resources/images/May10015.jpg");
	background-size: cover;
     
     
}
</style>
</head>
<body>
 <!-- <body ng-app="myApp" ng-controller="getData"> --> 
<!-- <div class="jumbotron"> -->
<div class="container">
	<div class="row-md-4 row-md-vertical-offset-40">
        <div class="col-md-4 col-md-offset-4">
         
        <div class="panel-heading"> 
	<center>
	
		
        <form:form class="form-horizontal" role="form"  commandName="user">
            <!-- <table> --><%-- <a href="${flowExecutionUrl}&_eventId_index">Home</a> --%>
               <tr>
                    <td  align="center"><h2>Register</h2></td>
                </tr> 
                  <tr>
                    
                    <td>
                     
                    <form:input  class="form-control"  placeholder="First Name"  type="text" path="fname" /></td>
                </tr><br>
                <tr>
                    
                    <td><form:input class="form-control"  placeholder="Last Name"  type="text" path="lname" /></td>
                </tr><br>
                <tr>
                   
                    <td><form:input class="form-control"  placeholder="Address"  type="text" path="address"  /></td>
                </tr><br>
               
               <tr>
                   
                    <td><form:input class="form-control"  placeholder="Gender"  type="text" path="gender" /></td>
                </tr><br>
                <tr>
                    
                    <td><form:input class="form-control"  placeholder="City"  type="text" path="city"  /></td>
                </tr><br>
                <tr>
                   
                    <td><form:input class="form-control"  placeholder="State"  type="text" path="state"  /></td>
                </tr><br>
                <tr>
                    
                    <td><form:input class="form-control"  placeholder="Country"  type="text" path="country"  /></td>
                </tr><br>
                 <tr>
                   
                    <td><form:input class="form-control"  placeholder="Mobile No"  type="text" path="mobileno"  /></td>
                </tr><br>
                 <tr>
                    
                    <td><form:input class="form-control"  placeholder="E-mail"  type="text" path="email" /></td>
                </tr><br>
                 <tr>
                    
                    <td><form:input class="form-control"  placeholder="Username"  type="text" path="username" /></td>
                </tr><br>
                   <tr>
                    
                    <td><form:password class="form-control"  placeholder="Password"   path="password" /></td><br>
                </tr> <br>
                <tr>
                   <td colspan="2" align="center"><input  name="_eventId_submit" class="btn btn-success" type="submit" value="Register"/></td>
                </tr>
           
        </form:form>
        </center>
        </div>
        </div>
        
        </div>
    </div>

</body>