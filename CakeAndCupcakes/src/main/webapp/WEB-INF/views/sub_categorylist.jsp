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
<title>SUB CATEGORIES LIST</title>
<link rel="stylesheet" type="text/css" href="resources/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"href="resources/css/bootstrap-theme.min.css" />
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/js/controller.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.5/angular.min.js"></script>

 <script type="text/javascript" src="resources/js/angular.min.js"></script>
 <script>
		var myApp = angular.module('myApp',[]);
		myApp.controller('getData', function($scope,$http,$location)
		 { 
			//$scope.searchKeyword=location.search.substr(15);
			$scope.sub_categorydata= ${sub_categoryList};
			//alert($scope.productdata);
		 
		 });
	
</script>
  
</head>

  <body ng-app="myApp" ng-controller="getData">  
<!-- <div class="jumbotron"> -->
<div class="container" >
	
	<center>
		

			
			
			






<!-- </div> -->
 <h2>
 <center></>Sub Category List</center></h2>
 <br>
 
			<div id="custom-search-input">
                            <div class="input-group col-sm-4">
                                <input type="text"ng-model="searchKeyword" placeholder="Search" />
                                <span class="input-group-btn">
                                    <button class="btn btn-danger" type="button">
                                        <span class=" glyphicon glyphicon-search"></span>
                                    </button>
                                </span>
                            </div>
                        </div><br>
<div class="container" >
	<c:if test="${!empty sub_categoryList}">
		<div class="row">
        <div class="panel panel-primary filterable">
            <div class="panel-heading">
                <h3 class="panel-title">Sub Category List</h3>
                <div class="pull-right">
                    
                </div>
            </div>

			<table class="table table-hover">
			  <thead>
				<tr>
				     <th width="80">Sub_Category ID</th>
					<th width="80">Category ID</th>
					<th width="120">Sub_Category Name</th>
					<th width="120">Sub_Category Description</th>
					<th width="60">Edit</th>
					<th width="60">Delete</th>
				</tr>
			</thead>
                <tbody>
			
					 <tr  ng-repeat="group in sub_categorydata | filter:searchKeyword">
					    <td>{{group.id}}</td>
					    <td>{{group.cat_id}}</td>
						<td>{{group.name}}</td>
						<td>{{group.desc}}</td>
						<td><a href="<c:url value='sub_category/edit/{{group.id}}' />">Edit</a></td>
						<td><a href="<c:url value='sub_category/remove/{{group.id}}' />">Delete</a></td>
					</tr> 
			
			</table>
		</div>
	</c:if>
</div>
 

</body>
</html>  