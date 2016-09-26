<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false"%>
 <%@ include file="/WEB-INF/views/header.jsp" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PRODUCT LIST</title>
<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap-theme.min.css" />

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.5/angular.min.js"></script> 
 <script>
		var myApp = angular.module('myApp',[]);
		myApp.controller('getData', function($scope,$http,$location)
		 { 
			$scope.searchKeyword=location.search.substr(8);
			$scope.productdata= ${productList};
			//alert($scope.productdata);
		 
		 });
	
</script>
  
</head>

  <body ng-app="myApp" ng-controller="getData">  
<!-- <div class="jumbotron"> -->
<div class="container" >
	
	<center>
		

			
			
			
			





<!-- </div> -->
 <h3>Product List</h3>
 <br>
 
<div class="container" >
	<c:if test="${!empty productList}">
	<div id="custom-search-input">
                            <div class="input-group col-sm-4">
                                <input type="text"ng-model="searchKeyword" placeholder="Search" />
                                <span class="input-group-btn">
                                    <button class="btn btn-danger" type="button">
                                        <span class=" glyphicon glyphicon-search"></span>
                                    </button>
                                </span>
                            </div>
                        </div>
	<br>
		<div class="row">
        <div class="panel panel-primary filterable">
            <div class="panel-heading">
                <h3 class="panel-title">Product List</h3>
                <div class="pull-right">
                    
                </div>
            </div>

			<table class="table table-hover">
			  <thead>
				<tr>
				     <!-- <th width="80">Product ID</th>
					<th width="80">Sub_Category ID</th>
					<th width="80">Supplier ID</th> -->
					<th width="120">Product Name</th>
					<th width="120">Product Description</th>
					<th width="120">Quantity</th>
					<th width="120">Price</th>
					<th width="120">Image</th>
					<th width="120">View</th>
					<th width="60"><sec:authorize access="hasRole('ROLE_ADMIN')">Edit</sec:authorize></th>
					<th width="60"><sec:authorize access="hasRole('ROLE_ADMIN')">Delete</sec:authorize></th>
				</tr>
			</thead>
					 <tr  ng-repeat="group in productdata | filter:searchKeyword">
					    <!-- <td>{{group.id}}</td>
					    <td>{{group.subcat_id}}</td>
					    <td>{{group.sup_id}}</td> -->
						<td>{{group.name}}</td>
						<td>{{group.desc}}</td>
						<td>{{group.qty}}</td>
						<td>{{group.price}}</td>
						<td><img style="width:30px;height:30px" src="{{group.img}}" /> </td>
						<td><a href="<c:url value='/productview{{group.id}}' />">View</a></td>
						<td><a href="<c:url value='product/edit/{{group.id}}' />">Edit</a></td>
						<td><a href="<c:url value='product/remove/{{group.id}}' />">Delete</a></td>
					</tr> 
			</table>
		</div>
	</c:if>
</div>
 

</body>
</html>  