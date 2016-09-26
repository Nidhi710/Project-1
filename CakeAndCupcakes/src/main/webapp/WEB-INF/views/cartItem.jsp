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
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap-theme.min.css" />
<script src="<u:url value="resources/js/controller.js" />" ></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.5/angular.min.js"></script>

 <script type="text/javascript" src="resources/js/angular.min.js"></script>
 <script type="text/javascript" src="resources/js/angular.min.js"></script>
 <script src="<u:url value="resources/js/controller.js" />" ></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.5/angular.min.js"></script> 
<script>
		var myApp = angular.module('myApp',[]);
		myApp.controller('getData', function($scope,$http,$location)
		 { 
			 //$scope.searchKeyword=location.search.substr(15); 
			$scope.cartItemdata = ${cartItemList};
			//alert($scope.productdata);
		 
		 });
	
</script>
<!-- <style >
th {
    
   
}


</style> -->
</head>
<body ng-app="myApp" ng-controller="getData">

<!-- <div class="jumbotron"> -->
<div class="container" >
	
	
		<c:url var="addAction" value="/cart/add"></c:url>

		<form:form class="form-horizontal" role="form" action="${addAction}"
			commandName="cart">
			
			 <%-- <h2>
 <center></>Sub Catego List</center></h2>
 <br>
  --%>     <center>
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
                        </center><br>
<div class="container" >
	<c:if test="${!empty cartItemList}">
		
        <div class="row">
        <div class="panel panel-primary filterable">
            <div class="panel-heading">
                <h3 class="panel-title">List</h3>
                <div class="pull-right">
                    
                </div>
            </div>

			<table class="table table-hover">
			<thead>
				<tr>
				     <th width="60">CartItem ID</th>
					<th width="60">Cart ID</th>
					<th width="60">Product ID</th>
					<th width="80">Product Name</th>
					<th width="60">Product Price</th>
					<th width="60">Product Quantity</th>
					<th width="60">Total</th>
				</tr>
			</thead>
					 <tr  ng-repeat="group in cartItemdata | filter:searchKeyword">
					    <td>{{group.cartid}}</td>
					    <td>{{group.cartItemId}}</td>
						<td>{{group.id}}</td>
						<td>{{group.productName}}</td>
						<td>{{group.productPrice}}</td>
						<td>{{group.quantity}}</td>
						<td>{{group.total}}</td>
						<%-- <td><a href="<c:url value='sub_category/edit/{{group.id}}' />">Edit</a></td>
						<td><a href="<c:url value='sub_category/remove/{{group.id}}' />">Delete</a></td> --%>
					</tr> 
			
			</table>
			
		</div>
	</c:if>
	<tr>
			<td><a href="proceed" class="btn btn-lg btn-success btn-block" type="submit" value="Proceed">Checkout</a></td> </tr>
</div>
 
			
			
			</form:form>
</body>
</html>