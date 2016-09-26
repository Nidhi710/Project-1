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
	myProduct.controller('productDisplay', function($scope, $http, $location) {
		$scope.product = ${productdisplay};
		
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
<body ng-app="myProduct" ng-controller="productDisplay" >
	<div class="container">
    <div class="row">
        <div class="col-md-12">
			<div class="col-xs-12 col-sm-3 col-md-12">
				<div  class="col-lg-4" ng-repeat="group in product" >
				<img  src="{{group.img}}" />
				<div> <td>{{group.name}}</td>
				      <td>{{group.desc}}</td>
				      <td>{{group.price}}</td>
				      <td></td>
					<div class="caption">
						<div class="row">
							
							<div class="col-md-8 col-sm-8 col-xs-8">
								<a href="#" class="btn btn-success btn-product"><span class="glyphicon glyphicon-shopping-cart"></span> Add 2 Cart</a>
    						     <a href="<c:url value='/productview{{group.id}}' />">View</a>
    						     <a href="cartItem/add?id={{product.id}}" class="btn btn-success btn-product"><input class="glyphicon glyphicon-shopping-cart" type="submit" value="Add to Cart"/></a></td>
    						</div>
						</div>

						<p> </p>
					</div>
				</div>
			</div>
			
			</div>
			 
</div>
</body>
</html>