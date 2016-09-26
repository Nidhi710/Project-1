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
 <link href="css/heroic-features.css" rel="stylesheet">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="js/jquery.js"></script>  
 <script src="js/bootstrap.min.js"></script>
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
   
   <div class="container">

        <!-- Jumbotron Header -->
        <header class="jumbotron hero-spacer">
            <h1>A Warm Welcome!</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa, ipsam, eligendi, in quo sunt possimus non incidunt odit vero aliquid similique quaerat nam nobis illo aspernatur vitae fugiat numquam repellat.</p>
            <p><a href="aboutus" class="btn btn-primary btn-large">Call to action!</a>
            </p>
        </header>

        <hr>

        <!-- Title -->
        <div class="row">
            <div class="col-lg-12">
                <h3>Latest Features</h3>
            </div>
        </div>
        <!-- /.row -->

        <!-- Page Features -->
        <div class="row text-center">

            <div class="col-md-3 col-sm-6 hero-feature">
                <div class="thumbnail">
                     <img style="width:350px;height:222px" src="resources/img/${product.id}.jpg" class="img-responsive"  alt="">
                    <div class="caption">
                    
                        <h3>Feature Label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                        <p>
                            <a href="#" class="btn btn-primary">Buy Now!</a> <a href="#" class="btn btn-default">More Info</a>
                        </p>
                    </div>
                </div>
            </div>

            <div class="col-md-3 col-sm-6 hero-feature">
                <div class="thumbnail">
                    <img src="http://placehold.it/800x500" alt="">
                    <div class="caption">
                        <h3>Feature Label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                        <p>
                            <a href="#" class="btn btn-primary">Buy Now!</a> <a href="#" class="btn btn-default">More Info</a>
                        </p>
                    </div>
                </div>
            </div>

            <div class="col-md-3 col-sm-6 hero-feature">
                <div class="thumbnail">
                    <img src="http://placehold.it/800x500" alt="">
                    <div class="caption">
                        <h3>Feature Label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                        <p>
                            <a href="#" class="btn btn-primary">Buy Now!</a> <a href="#" class="btn btn-default">More Info</a>
                        </p>
                    </div>
                </div>
            </div>

            <div class="col-md-3 col-sm-6 hero-feature">
                <div class="thumbnail">
                    <img src="http://placehold.it/800x500" alt="">
                    <div class="caption">
                        <h3>Feature Label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                        <p>
                            <a href="#" class="btn btn-primary">Buy Now!</a> <a href="#" class="btn btn-default">More Info</a>
                        </p>
                    </div>
                </div>
            </div>

        </div>
        <!-- /.row -->

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Your Website 2014</p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->

   

</body>

</html>
