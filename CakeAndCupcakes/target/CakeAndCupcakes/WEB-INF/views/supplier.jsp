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
<title>SUPPLIERS</title>
<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap-theme.min.css" />

<script type="text/javascript" src="resources/js/controller.js"></script>
<script type="text/javascript" src="resources/js/angular.min.js"></script>
 <script>
		var myApp = angular.module('myApp',[]);
		myApp.controller('getData', function($scope,$http,$location)
		 { 
			 //$scope.searchKeyword=location.search.substr(15); 
			$scope.supplierdata = ${supplierList};
			//alert($scope.productdata);
		 
		 });
	
</script>
 
 
 
</head>
<body ng-app="myApp" ng-controller="getData">

<!-- <div class="jumbotron"> -->
<div class="container" >
	<h2>
		<center>Add Supplier</center>
	</h2>
	<center>
		<c:url var="addAction" value="/supplier/add"></c:url>

		<form:form class="form-horizontal" role="form" action="${addAction}"
			commandName="supplier">

			<table>
				<%-- <tr>
					<div class="form-group">
						<td><form:label class="control-label col-sm-2" path="id">
								<spring:message text="ID" />
							</form:label></td>
						<div class="col-sm-10">
							<c:choose>
								<c:when test="${!empty supplier.id}">
									<td><form:input class="form-control" path="id"
											disabled="true" readonly="true" /></td>
								</c:when>

								<c:otherwise>
									<td><form:input class="form-control" path="id"
											pattern=".{4,7}" 
											 /></td>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</tr> --%> 
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
					<td><form:label class="control-label col-sm-2" path="address">
							<spring:message text="Address" />
						</form:label></td>
					<td><form:input class="form-control" path="address"/>
							
							<form:errors path="address" cssClass="error"  colour="red"/></td>
				</tr>
				<tr>
					<td colspan="2"><c:if test="${!empty supplier.name}">
							<input class="btn btn-danger" type="submit"
								value="<spring:message text="Edit Supplier"/>" />
						</c:if> <br>
						<center><c:if test="${empty supplier.name}">
							<input class="btn btn-primary" type="submit"
								value="<spring:message text="Add "/>" />
						</c:if>
						</center></td>
				</tr>
			</table>
</div>
</form:form>
</center>
</div>
<!-- </div> -->
<br>
<div class="container" >
	
	<c:if test="${!empty supplierList}">
	<div id="custom-search-input">
                            <div class="input-group col-md-3">
                                <input type="text" placeholder="Search" ng-model="searchKeyword" />
                                <span class="input-group-btn">
                                    <button class="btn btn-danger" type="button">
                                        <span class=" glyphicon glyphicon-search"></span>
                                    </button>
                                </span>
                            </div>
                        </div><br>
		<div class="row">
        <div class="panel panel-primary filterable">
            <div class="panel-heading">
                <h3 class="panel-title">Supplier List</h3>
                <div class="pull-right">
                    
                </div>
            </div>
            <table class="table table-hover">
                <thead>
                    
				<tr>
					<th width="80">Supplier ID</th>
					<th width="120">Supplier Name</th>
					<th width="120">Supplier Address</th>
					<th width="60">Edit</th>
					<th width="60">Delete</th>
				</tr>
                </thead>
                <tbody>
				
					<tr ng-repeat="group in supplierdata | filter:searchKeyword">
						<td>{{group.id}}</td>
						<td>{{group.name}}</td>
						<td>{{group.address}}</td>
						<td><a href="<c:url value='supplier/edit/{{group.id}}' />">Edit</a></td>
						<td><a
							href="<c:url value='supplier/remove/{{group.id}}' />">Delete</a></td>
					</tr>
				
			</table>
		</div>
	</c:if>
</div>

</body>
</html>
