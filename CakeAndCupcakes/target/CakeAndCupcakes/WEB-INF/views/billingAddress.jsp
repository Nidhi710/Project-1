<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ include file="/WEB-INF/views/header.jsp" %> 	
<!-- Css -->
<spring:url value="/resources/css" var="css" />
<spring:url value="/resources/images" var="images" />
<!-- JavaScript -->
<spring:url value="/resources/js" var="js" />
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="http://mymaplist.com/js/vendor/TweenLite.min.js"></script>
  <style>

body {
position: absolute;
	top: 10px;
	left: 0px;
	right: 0px;
	bottom: 0px;
	width: auto;
	height: auto;
	/* background-image:  url("resources/images/cupcake-pp6.jpg");
	background-size: cover; */
     
     
}
</style>
</head>
<body>
	<div class="container-fluid">
		<%-- <%@include file="../shared/menubar.jsp"%> --%>
		<div class="content">
			<div class="panel panel-">
				<div class="panel-heading"></div>
				<h3>Billing Address</h3>
				<div class="panel-body">
					<form:form class="form-horizontal" commandName="billingAddress">
						<div class="form-group">
							<label for="" class="control-label col-sm-2">Line 1</label>
							<div class="col-sm-10">
							<form:errors path="line1" class="error"/>
							<form:input class="form-control" path="line1" autofocus="true" placeholder="Line1" name="line1" type="text" required="true" />
								<%-- <form:input path="line1" type="text" autofocus="true" class="form-control" required="true"/> --%>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="control-label col-sm-2">Line 2</label>
							<div class="col-sm-10">
							<form:errors path="line2" class="error"/>
								<form:input path="line2" type="text" class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label for="" class="control-label col-sm-2">City</label>
							<div class="col-sm-10">
							<form:errors path="city" class="error"/>
								<form:input path="city" type="text" class="form-control" required="true"/>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="control-label col-sm-2">State</label>
							<div class="col-sm-10">
							<form:errors path="state" class="error"/>
								<form:input path="state" type="text" class="form-control" required="true"/>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="control-label col-sm-2">Country</label>
							<div class="col-sm-10">
							<form:errors path="country" class="error"/>
								<form:input path="country" type="text" class="form-control" required="true"/>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="control-label col-sm-2">Zip code</label>
							<div class="col-sm-10">
							<form:errors path="zipCode" class="error"/>
								<form:input path="zipCode" type="text" pattern="^[1-9][0-9]{5}$" title="Enter a 6 digit pincode" required="true" class="form-control" />
							</div>
						</div>
						<div class="col-md-offset-3">
						<input type="submit" name="_eventId_submitBillingAddress"
							class="btn btn-md btn-success" value="Save">
						<input type="submit" name="_eventId_cancel"
							class="btn btn-md btn-danger" value="Cancel"></div>
					</form:form>
				</div>
			</div>
		</div>
		<%-- <%@include file="../shared/footer.jsp"%> --%>
	</div>
</body>
</html>