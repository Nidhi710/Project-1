<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page isELIgnored="false"%>
<%-- <%@ include file="/WEB-INF/views/header.jsp" %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cupcake Caffe</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>
 
 
    /* Remove the navbar's default margin-bottom and rounded borders */
    .navbar {
      /* background-color: #f7b7f3;
  border-color: #ad4497; */
    }
    
   }
  </style>
</head>

<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Cupcake Caffe</a>
    </div>
    <sec:authorize access="hasRole('ROLE_ADMIN')">
    <ul class="nav navbar-nav">
      <li class="active"><a href="/CakeAndCupcakes/">Home</a></li>
       
       <li><a href="categories">Category</a></li>
      <li><a href="suppliers">Supplier</a></li>
      <li><a href="sub_categories">Sub_Category</a></li>
      <li><a href="products">Product</a></li>
     
    </ul>
    </sec:authorize>
  </div>
</nav>
 


</body>
</html>