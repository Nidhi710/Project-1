<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/views/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	
<!-- <script type="text/javascript" src="resources/js/angular.min.js"></script>
 -->	
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script>
	var myProduct = angular.module('myProduct', []);
	myProduct.controller('viewProduct', function($scope, $http, $location) {
		$scope.product = ${productdetails};
		
	});
</script> 
<style>
h3 {
    color: #c81474;
    font-family: "Goudy Old Style", Garamond, "Big Caslon", "Times New Roman", serif;
	font-size: 47px;
	font-style: italic;
	font-variant: normal;
	font-weight: 100;
	line-height: 53.2px;
}
</style>
</head>
<body ng-app="myProduct" ng-controller="viewProduct">
	<div class="container">
		<h1 class="title">Product Details</h1>
		<hr>

		<div class="row">
			
			<div class="col-lg-6">
				<img  src="{{product.img}}" />
			</div>
			 <div class="col-lg-2"> 
			
  				<h3><span class="h3 text-uppercase">{{product.name}}</span></h3>
             	<p><span class="h4 text-info">Quantity: {{product.qty}}</span></p>
				<p><span class="h4 text-danger">Price: Rs {{product.price}}</span>	</p>
				
</div>
</div>
</body>
</html>