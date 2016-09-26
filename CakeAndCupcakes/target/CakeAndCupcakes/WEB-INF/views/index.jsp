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
 
.navbar-inverse{
/* background-color:#ffe6ea;
      margin-bottom: 0;
      border-radius: 0;
      color: #c81474; */
}
h5{
color:#cc0066;
/* font-style: bold; */
font-size: 20px;
	font-style: bold
}
h4{
color:grey;
}
 h3 {
    color: #FF9900;
    font-family: "Goudy Old Style", Garamond, "Big Caslon", "Times New Roman", serif;
	font-size: 47px;
	font-style: italic;
	font-variant: normal;
	font-weight: 100;
	line-height: 53.2px;
}
h2{
color:red;
font-family: "Goudy Old Style", Garamond, "Big Caslon", "Times New Roman", serif;
font-size: 47px;
	font-style: italic;
	}
p{
 color: #B2801A;
 font-family: Arial;
	font-size: 14px;
	font-style: normal;
	font-variant: normal;
	font-weight: 400;
	line-height: 20px;
 }
 div {
    
    text-align: justify;
}
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
    <a class="navbar-brand" href="/CakeAndCupcakes/">Cupcake Caffe</a>
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
		<h4>Welcome ${pageContext.request.userPrincipal.name}</h4>
		
</c:if>
         
         <sec:authorize access="isAnonymous()">
        <li><a href="login"><span class="glyphicon glyphicon-login"  data-toggle="collapse"  aria-expanded="false" aria-controls="nav-collapse2"></span> Login</a></li>
        <li><a href="users"><span class="glyphicon glyphicon-sign-up"></span> Sign Up</a></li>
        </sec:authorize>
        <sec:authorize access="isAuthenticated()">
         <li><a href="<c:url value="/logout" />">Logout</a></li>
         </sec:authorize>
      </ul>
     <!-- <ul class="nav pull-right scroll-top">
  <li><a href="#" title="Scroll to top"><i class="glyphicon glyphicon-chevron-up"></i></a></li>
</ul> -->
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
 
<br>
<div class="container">
    <!-- Indicators -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="resources/images/Cupcakes-blog-1176x356 (1).jpg" alt="Chania">
                
            </div>
            <div class="item">
                <img src="resources/images/Blog-2.jpg" alt="Chania">
                
            </div>
            <div class="item">
                <img src="resources/images/parties-2.jpg" alt="Flower">
                
            </div>
            <div class="item">
                <img src="resources/images/IMG_9973---1280x387 (1).jpg" alt="Flower">
                
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
  <h3>Welcome</h3><br>
  <p>Gorgeous, handmade and stylishly decorated with a swirl of buttercream frosting and delightful toppings. we lovingly make every single cupcake by hand with the greatest care from the finest fresh and natural ingredients, including free range eggs, fresh milk and real butter - just as you would do at home, only with bigger mixing bowls! The proof is in the eating and our cakes taste as good as they look!</p>
  <p>Our products can be personalised to add your own message in piped icing on top of lashings of tantalising buttercream frosting, and presented in luxury gift boxes with wide ribbons. They make an ideal gift and delicious treat, perfect for weddings, anniversaries, birthdays and celebratory events. Take a look, indulge your senses and try one of our deliciously moreish cupcakes.</p>
  <p>We deliver on the date of your choice subject to availability our integrated delivery calendar displays dates for delivery when you check out, so you can relax and look forward to the arrival of your order. We usually require a minimum of 24 hours after receiving your online order for your order to be delivered.-- see Delivery for more information.</p>
  <p>For corporate clients, we offer clients customised branding and packaging to suit your particular requirements. We can supply large volumes for events as well as promotional campaigns for corporate clients. We have an outstanding reputation for our customer service and the quality of our products.</p>
 </div>
 </div>
 <br>
 
  <div class="alert alert-warning"><center><h2>Beautiful handmade cupcakes</h2></center><br></div>
  <div class="container text-center">
  <div class="row">
    <div class="col-sm-6">
      <img src="resources/images/5.jpg" class="img-responsive" style="width:100%" alt="Image">
       <h5>Seasonal</h5>
      <p>Designed with flair and created with loving attention to details, our seasonal range for all those special times of year is not to be missed!</p>
    </div>
    
     
       
    <div class="col-sm-6">
      <img src="resources/images/6.jpg" class="img-responsive" style="width:100%" alt="Image">
      <h5>Parties</h5>
      <p>Make an order with a fabulous selection of cupcakes, freshly roasted almond cupcakes.
      </div>
    
  </div>
</div><br>
 
   <marquee style="  scrollamount="6" scrolldelay="90" direction="left" onmouseover="this.stop()" onmouseout="this.start()">
<%-- <a href="productlist?search=${sub_category.id}">${sub_category.name}</a> --%>
<ul class="list-inline list-unstyled r">

<li class="productbox">
    <img src="resources/images/summer-mr-whippy-close-up.jpg" class="img-responsive">
    <div class="producttitle"> Summer Mr Whippy</div> 
</li> 
<li class="productbox">
    <img src="resources/images/red-velvet-close-up.jpg" class="img-responsive">
    <div class="producttitle"> Red Velvet</div> 
</li>
<li class="productbox">
    <img src="resources/images/cookies-and-cream-close-up.jpg" class="img-responsive">
    <div class="producttitle"> Cookies And Cream</div> 
</li>
<li class="productbox">
    <img src="resources/images/blueberry-close-up.jpg" class="img-responsive">
    <div class="producttitle"> Blueberry</div> 
</li>
<li class="productbox">
    <img src="resources/images/blues-close-up.jpg" class="img-responsive">
    <div class="producttitle"> Blues</div> 
</li>
<li class=" productbox">
    <img src="resources/images/easter-2016-close-up.jpg" class="img-responsive">
    <div class="producttitle">Easter</div> 
</li>
<li class="productbox">
    <img src="resources/images/rocky-mountain-close-up.jpg" class="img-responsive">
    <div class="producttitle"> Rocky Mountain</div> 
</li>
<li class="productbox">
    <img src="resources/images/salted-caramel-close-up.jpg" class="img-responsive">
    <div class="producttitle"> Salted Caramel</div> 
</li>
<li class="productbox">
    <img src="resources/images/sex-and-the-city-chocolate-close-up.jpg" class="img-responsive">
    <div class="producttitle"> Sex And The City Chocolate</div> 
</li>
<li class="productbox">
    <img src="resources/images/raspberry-close-up_1 (1).jpg" class="img-responsive">
    <div class="producttitle"> Raspberry</div> 
</li>
<li class="productbox">
    <img src="resources/images/lemon-close-up.jpg" class="img-responsive">
    <div class="producttitle">Lemon </div> 
</li>
 
</ul></a><br>
</marquee>

<div class="container text-center">    
<div class="row">
<div class="col-sm-8">
     
      <h2>Coporate</h2>
      <p>We have a leading reputation for promotional products decorated with logos and company colours. Exceptional quality and service is assured with our branded cupcakes. The yummy and extremely tasty cupcakes. We use only the freshest ingredients and offer a wide, ever growing range of flavours  - you can even create your own cupcake! .</p>
      </div>

<section id="wrapper">
	
		<div class="col-md-4">
   			<div id="private_label" class="panel panel-default"  class="carousel slide" data-ride="carousel">
				<div class="alert alert-warning"><h4>Order Logo Cupcakes!</h4></div>	
	           
              <div class="panel-body" style="padding: 0px;">
				
						<div class="carousel-inner">
				
					
							<ol class="carousel-indicators">
								<li data-target="#private_label" data-slide-to="0" class="active"></li>
								<li data-target="#private_label" data-slide-to="1"></li>
								<li data-target="#private_label" data-slide-to="2"></li>
								<!-- <li data-target="#private_label" data-slide-to="3"></li>
								<li data-target="#private_label" data-slide-to="4"></li>
								<li data-target="#private_label" data-slide-to="5"></li>
								<li data-target="#private_label" data-slide-to="6"></li>
								<li data-target="#private_label" data-slide-to="7"></li> -->
							</ol>
					
						

							<div class="item active">
								<img src="resources/images/corporate-cupcakes-1.jpg" alt="1 slide">
							</div>
							
							<div class="item">
								<img src="resources/images/corporate-cupcakes-2.jpg" alt="2 slide">
							</div>
							
							<div class="item">
								<img src="resources/images/corporate-cupcakes-3.jpg" alt="3 slide">
							</div>	
												
						</div>	
										
				     </div>
				</div>
			</div>				
		</div>
					
 </section>
 
  </div>
  
    

  
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
<div id="footer">
  <div class="container">
  </div>
</div>

 <ul class="nav pull-right scroll-top">
  <li><a href="#" title="Scroll to top"><i class="glyphicon glyphicon-chevron-up"></i></a></li>
</ul> 


</body>
</html>
</html>