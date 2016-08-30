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
<title>CATEGORIES</title>
<link rel="stylesheet" type="text/css" href="resources/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"href="resources/css/bootstrap-theme.min.css" />
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/js/controller.js"></script>
<script type="text/javascript" src="resources/js/angular.min.js"></script>
 <script>
		var myApp = angular.module('myApp',[]);
		myApp.controller('getData', function($scope,$http,$location)
		 { 
			 //$scope.searchKeyword=location.search.substr(15); 
			$scope.categorydata = ${categoryList};
			//alert($scope.productdata);
		 
		 });
	
</script>

</head>
<body ng-app="myApp" ng-controller="getData">

<!-- <div class="jumbotron"> -->
<div class="container" >
	<h2>
		<center>Add Category</center>
	</h2>
	<center>
		<c:url var="addAction" value="/category/add"></c:url>

		<form:form class="form-horizontal" role="form" action="${addAction}"
			commandName="category">
<div id="custom-search-input">
                            <div class="input-group col-md-3">
                                <input type="text" ng-model="searchKeyword" />
                                <span class="input-group-btn">
                                    <button class="btn btn-danger" type="button">
                                        <span class=" glyphicon glyphicon-search"></span>
                                    </button>
                                </span>
                            </div>
                        </div>
			<table>
				<tr>
					<div class="form-group">
						<td><form:label class="control-label col-sm-2" path="id">
								<spring:message text="ID" />
							</form:label></td>
						<div class="col-sm-10">
							<c:choose>
								<c:when test="${!empty category.id}">
									<td><form:input class="form-control" path="id"
											disabled="true" readonly="true" /></td>
								</c:when>

								<c:otherwise>
									<td><form:input class="form-control" path="id"
										
											 /></td>
											 
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</tr>
				<tr>
					<div class="form-group">
					
						<form:input path="id" hidden="true" />
						<td><form:label class="control-label col-sm-2" path="name">
								<spring:message text="Name" />
							</form:label></td>
						<td><form:input class="form-control" path="name" />
								
								<form:errors path="name" cssClass="error"  colour="red"/></td>
					</div>
				</tr>
				<tr>
					<td><form:label class="control-label col-sm-2" path="desc">
							<spring:message text="Description" />
						</form:label></td>
					<td><form:input class="form-control" path="desc" />
							
							<form:errors path="desc" cssClass="error" /></td>
				</tr>
				<tr>
					<td colspan="2"><c:if test="${!empty category.name}">
							<input class="btn btn-primary" type="submit"
								value="<spring:message text="Edit Category"/>" />
						</c:if> <c:if test="${empty category.name}">
							<input class="btn btn-success" type="submit"
								value="<spring:message text="Add Category"/>" />
						</c:if></td>
				</tr>
			</table>
</div>
</form:form>
</center>
</div>
<!-- </div> -->
<br>

<div class="container" style="background-color: lightgrey;">
<h3>Category List</h3>	
	<c:if test="${!empty categoryList}">
		<div class="table-responsive" style="border-left: 6px solid red;">
         
			<table class="table table-hover">
				<tr>
					<th width="80">Category ID</th>
					<th width="120">Category Name</th>
					<th width="120">Category Description</th>
					<th width="60">Edit</th>
					<th width="60">Delete</th>
				</tr>
				
					<tr ng-repeat="group in categorydata | filter:searchKeyword">
						<td>{{group.id}}</td>
						<td>{{group.name}}</td>
						<td>{{group.desc}}</td>
						<td><a href="<c:url value='category/edit/{{group.id}}' />">Edit</a></td>
						<td><a
							href="<c:url value='category/remove/{{group.id}}' />">Delete</a></td>
					</tr>
				
			</table>
		</div>
	</c:if>
</div>

</body>
</html>
