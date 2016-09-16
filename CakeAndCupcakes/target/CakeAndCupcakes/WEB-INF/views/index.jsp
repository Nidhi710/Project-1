<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page isELIgnored="false"%>

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
 body 
 
  {
position: absolute;
	top: 0px;
	left: 0px;
	right: 0px;
	bottom: 0px;
	width: auto;
	height: auto;
	background-image:  url("resources/images/download.jpg");
	background-size: cover;
     
     
}
 .navbar:hover:{
      background-color: white;
  border-color: #ad4497;
  border-radius: 0;
  hover-color:#ad4497;
    } *
 h3 {
    color: #c81474;
    font-family: "Goudy Old Style", Garamond, "Big Caslon", "Times New Roman", serif;
	font-size: 47px;
	font-style: italic;
	font-variant: normal;
	font-weight: 100;
	line-height: 53.2px;
}
  h4{
  color: #c81474;
    font-family: "Goudy Old Style", Garamond, "Big Caslon", "Times New Roman", serif;
	font-size: 20px;
	font-style: italic;
  
  }
 h2  {
     color: #ee87c8;
     font-family: "Goudy Old Style", Garamond, "Big Caslon", "Times New Roman", serif;
	 font-size: 30px;
 }
 h5  {
     color: grey;
     font-family: "Goudy Old Style", Garamond, "Big Caslon", "Times New Roman", serif;
	 font-size: 20px;
 }
 p {
    font-family: Arial;
	font-size: 14px;
	font-style: normal;
	font-variant: normal;
	font-weight: 400;
	line-height: 20px;
	
}
hr{
color:#c2298f

}
 div {
    
    text-align: justify;
}
 
    /* Remove the navbar's default margin-bottom and rounded borders */
    /* .navbar {
    background-color:#c2298f
      margin-bottom: 0;
      border-radius: 0;
    } */
  li{
    font-family: Arial;
	font-size: 14px;
	font-style: normal;
	font-variant: normal;
	font-weight: 400;
	line-height: 20px;
    
  }
  
  
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
      ul {list-style-type: square;}
      
    }
    i{
    font-family: Arial;
	font-size: 14px;
	font-style: normal;
	font-variant: normal;
	font-weight: 400;
	line-height: 20px;
  }
    
  .carousel-inner img {
      width: 100%; /* Set width to 100% */
      margin: auto;
      min-height:200px;
  }

  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none;
    }
  }
  </style>
</head>
<body>


 <nav class="navbar navbar-inverse">
    <div class="navbar-header">
    	<button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".js-navbar-collapse">
			<span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
   
    </div>
    <div class="collapse navbar-collapse js-navbar-collapse">
		<ul class="nav navbar-nav">
         <c:forEach items="${categoryList}" var="category">
       <li class="dropdown mega-dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">${category.name}<span class="caret"></span></a>
        <ul class="dropdown-menu mega-dropdown-menu">
        <li class="col-sm-3">
						
              <c:forEach items="${category.sub_category}" var="sub_category">
            <li><a href="productlist?search=${sub_category.id}">${sub_category.name}</a></li>          
            </c:forEach>
          </ul>
          
          </c:forEach>
          
          </ul>
           
     
     
      <ul class="nav navbar-nav navbar-right">
        <c:if test="${pageContext.request.userPrincipal.name!= null}">
		<h5>
			  ${pageContext.request.userPrincipal.name}
		</h5>
</c:if>
         
         <sec:authorize access="isAnonymous()">
        <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        <li><a href="users"><span class="glyphicon glyphicon-sign-up"></span> Sign Up</a></li>
        </sec:authorize>
        <sec:authorize access="isAuthenticated()">
         <li><a href="<c:url value="/logout" />">Logout</a></li>
         </sec:authorize>
      </ul>
     
    </div> 
</nav>

  <sec:authorize access="hasRole('ROLE_ADMIN')">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"></a>
    </div>
   
    <ul class="nav navbar-nav">
      <li class="active">
      <li><a href="#"></a></li>
      <li><a href="#"></a></li>
      <li><a href="#"></a></li>
      <li><a href="#"></a></li>
     
      <li><a href="categories">Category</a></li>
      <li><a href="suppliers">Supplier</a></li>
      <li><a href="sub_categories">Sub Category</a></li>
      <li><a href="products">Product</a></li>
     
    </ul>
   
    </div>
</nav>
 </sec:authorize> 


<div class="container">
<div class="row">
  <div class="col-sm-8">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
      </ol>

      <!-- Wrapper for slides -->
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img src="resources/images/71.jpg" alt="Image">
          <div class="carousel-caption">
            <!-- <h3 class="italic">CUPCAKES DELIVERED NEXT DAY</h3> -->
           
          </div>
        </div>

        <div class="item">
          <img src="resources/images/2.jpg" class="img-responsive" alt="Image">
          <div class="carousel-caption">
           <!--  <h3>TONS OF FLAVOUR </h3> -->
            
          </div>
        </div>
        
         <div class="item">
          <img src="resources/images/maxresdefault1.jpg" class="img-responsive" alt="Image">
          <div class="carousel-caption">
            <!-- <h3>TONS OF FLAVOUR </h3> -->
            
          </div>
        </div>
         
      </div>

      <!-- Left and right controls -->
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
  </div>
  
     <div class="container">
    <div class="row">
  <div class="col-sm-4">
  
      <h2></h2>
      
  <h2><center>Flavour of the Month!</center></h2>
  
  <center><img src="resources/images/6045001599_eb0d30553a.jpg" class="img-circle" alt="Cinque Terre" width="304" height="236"></center>
<center><h4>Blueberry Cupcake</h4></center>
      
     <center> <p>Great celebrations this month... Have you ordered your cupcakes ? Every party should have some yummy cakes! .</p>
      <!-- </div>
      <div class="well">
      <div class="col-sm-4"> -->
       <p>It's that time of year again! Combine with some of our blueberry cupcakes for that lazy summer's day feeling... .</p>
     </center> </div>
     
    </div>
  </div>
</div>
</div>
<hr>

  
<div class="container text-center">
  <h3>Beautiful handmade cupcakes</h3><br>
  <div class="row">
    <div class="col-sm-4">
      <img src="resources/images/5.jpg" class="img-responsive" style="width:100%" alt="Image">
       <h2>Seasonal</h2>
      <p>Designed with flair and created with loving attention to details, our seasonal range for all those special times of year is not to be missed!</p>
    </div>
    
    <div class="col-sm-4">
      <img src="resources/images/Nut1.jpg" class="img-responsive" style="width:100%" alt="Image">
      <h2>Coporate</h2>
      <p>We have a leading reputation for promotional products decorated with logos and company colours. Exceptional quality and service is assured with our branded cupcakes. </p>
      </div>
      
    <div class="col-sm-4">
      <img src="resources/images/6.jpg" class="img-responsive" style="width:100%" alt="Image">
      <h2>Parties</h2>
      <p>Make an order with a fabulous selection of cupcakes, freshly roasted almond cupcakes.
      </div>
    
  </div>
</div><br>
<div class="container text">
  <h3>Welcome</h3><br>
  <p>Gorgeous, handmade and stylishly decorated with a swirl of buttercream frosting and delightful toppings. we lovingly make every single cupcake by hand with the greatest care from the finest fresh and natural ingredients, including free range eggs, fresh milk and real butter - just as you would do at home, only with bigger mixing bowls! The proof is in the eating and our cakes taste as good as they look!</p>
  <p>Our products can be personalised to add your own message in piped icing on top of lashings of tantalising buttercream frosting, and presented in luxury gift boxes with wide ribbons. They make an ideal gift and delicious treat, perfect for weddings, anniversaries, birthdays and celebratory events. Take a look, indulge your senses and try one of our deliciously moreish cupcakes.</p>
  <p>We deliver on the date of your choice subject to availability our integrated delivery calendar displays dates for delivery when you check out, so you can relax and look forward to the arrival of your order. We usually require a minimum of 24 hours after receiving your online order for your order to be delivered.-- see Delivery for more information.</p>
  <p>For corporate clients, we offer clients customised branding and packaging to suit your particular requirements. We can supply large volumes for events as well as promotional campaigns for corporate clients. We have an outstanding reputation for our customer service and the quality of our products.</p>
  

<footer class="container-fluid text">
   
    <div class="row">
    <div class="col-sm-4">
    
   <h4>Our Philosophy</h4>
  <p>We produce cupcakes and other baked goods from the finest carefully sourced ingredients. We don't outsource our baking or decorating everything is done by our fantastic production team.</p>
  <p>Our philosophy is to create beautiful handmade cupcakes that taste as good as they look. Try one and see for yourself!</p><br>
   <i class="fa fa-facebook-square" style="font-size:35px"></i>
	<i class="fa  fa-google-plus-square" style="font-size:35px"></i>
	<i class="fa fa-twitter-square" style="font-size:35px"></i>
	<i class="fa  fa-linkedin-square" style="font-size:35px"></i> 
   </div>
   
    <div class="col-sm-4">
    <h4>Key Featurs</h4>
    <ul class>
    <li>Perfect for gifts and parties</li>
    <li>Bespoke options for corporate events</li>
    <li>Add a gift message to your order</li>
</ul>
</div>

	<div class="col-sm-4">
    <h4>Contact Us</h4>
    <i class="fa    fa-phone" style="font-size:24px;"></i>       Call us on:<br>
    <i class="fa   fa-envelope" style="font-size:24px;"></i>     Email us on:<br> 
    <i class="fa   fa-facebook" style="font-size:24px;"></i>   Visit us on Facebook<br>
    <i class="fa   fa-twitter" style="font-size:24px;"></i>    Join us on Twitter <br>
    </div>
    
</div> 
</footer> 
</body>
</html>
</html>