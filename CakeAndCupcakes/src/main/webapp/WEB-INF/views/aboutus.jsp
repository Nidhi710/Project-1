<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page isELIgnored="false"%>
    <%@ include file="/WEB-INF/views/header.jsp" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<style>
body
h2 {
    color: #cc0066;
    font-family: "Goudy Old Style", Garamond, "Big Caslon", "Times New Roman", serif;
	font-size: 47px;
	font-style: italic;
	font-variant: normal;
	font-weight: 100;
	line-height: 53.2px;
}
p{
 color: ;
 font-family: Arial;
	font-size: 14px;
	font-style: normal;
	font-variant: normal;
	font-weight: 400;
	line-height: 20px;
 }

</style>
</head>
<body>
<div class="container">
    <!-- Indicators -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="resources/images/Cupcakes-blog-1176x356 (1).jpg" alt="Chania">
                
            </div>
            <div class="item">
                <img src="resources/images/about-us-1.jpg" alt="Chania">
                
            </div>
            <div class="item">
                <img src="resources/images/about-us-3.jpg" alt="Flower">
                
            </div>
            <div class="item">
                <img src="resources/images/Blog3.jpg" alt="Flower">
                
            </div>
        </div>
        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="fa fa-angle-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="fa fa-angle-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
        </ol>
    </div>
</div>
<div class="container text">
    <div class="pull-middle">
   <h2>Welcome</h2><br>
  <p>Gorgeous, handmade and stylishly decorated with a swirl of buttercream frosting and delightful toppings. we lovingly make every single cupcake by hand with the greatest care from the finest fresh and natural ingredients, including free range eggs, fresh milk and real butter - just as you would do at home, only with bigger mixing bowls! The proof is in the eating and our cakes taste as good as they look!</p>
  <p>Our products can be personalised to add your own message in piped icing on top of lashings of tantalising buttercream frosting, and presented in luxury gift boxes with wide ribbons. They make an ideal gift and delicious treat, perfect for weddings, anniversaries, birthdays and celebratory events. Take a look, indulge your senses and try one of our deliciously moreish cupcakes.</p>
  <p>We deliver on the date of your choice subject to availability our integrated delivery calendar displays dates for delivery when you check out, so you can relax and look forward to the arrival of your order. We usually require a minimum of 24 hours after receiving your online order for your order to be delivered.-- see Delivery for more information.</p>
  <p>For corporate clients, we offer clients customised branding and packaging to suit your particular requirements. We can supply large volumes for events as well as promotional campaigns for corporate clients. We have an outstanding reputation for our customer service and the quality of our products.</p>
 </div>
 </div>
  <%@ include file="/WEB-INF/views/footer.jsp" %> 
</body>
</html>

