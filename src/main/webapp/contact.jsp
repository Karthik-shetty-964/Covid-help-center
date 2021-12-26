<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact-Covid help center</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Merriweather&family=Roboto+Slab&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Merriweather&family=Roboto+Slab&family=Vujahday+Script&display=swap" rel="stylesheet">
<style>
     *{
		margin:0px;
		padding:0px;
		box-sizing:border-box;
	}
 	 body::before{
    content:"";
    background:url("images/contact.jpg")no-repeat center center/cover;
   
    width:100%;
    height:100%;
    position:absolute;
    top:10;
    left:0;
    z-index:-1;
    opacity:0.9;
    }
    .navbar img {
       border-radius:100%;
    }
    .navbar ul li a{
       color:white;
       font-size:17px;
       border-radius:20px;
      
    }
    .navbar ul li a:hover{
    	background-color:white;
    	color:black;
    }
    .box{
       height: 500px;
       margin-top: 60px;
       
    }
    .left{
        width:50%;
        position:absolute;
        float:left;
    }
    .form{
    	background:rgba(0,0,0,0.2);
    	border-radius:20px;	
    	
    }
    
</style>
</head>
<body>
	<div class="container-fluid">
       <div class="row nav-bar">
     	   <nav class="navbar navbar-expand-lg   sticky-top">
			 <div class="container-fluid ">
     	       <a href="#" class="navbar-brand"><img src="images/logo.jpg" alt="logo" class="col-lg-3 col-sm-6 " style="width:100px; height:100px;" ></a>
			    <a class="navbar-brand m-1" style="font-family: 'Merriweather', serif; font-weight:bold; font-size:22px; color:white;" href="#">Covid Help Center</a>
			    <button class="navbar-toggler " type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
			      <span class="navbar-toggler-icon"></span>
			    </button>
			    <div class="collapse navbar-collapse " id="navbarNav">
			      <ul class="navbar-nav ms-auto ">
			        <li class="nav-item mx-4">
			          <a class="nav-link  btn btn-outline-light badge-pill px-4" aria-current="page" href="home.jsp">Home</a>
			        </li>
			        <li class="nav-item mx-4">
			          <a class="nav-link  btn btn-outline-light badge-pill px-4" href="about.jsp">About us</a>
			        </li>
			        <li class="nav-item mx-4">
			          <a class="nav-link active btn btn-outline-light badge-pill px-4" href="contact.jsp">Contact us</a>
			        </li>
			         <li class="nav-item  mx-4">
			          <a class="nav-link btn btn-outline-light badge-pill px-4" href="index.jsp">Logout</a>
			        </li>
			         
			      </ul>
			    </div>
			  </div>
			</nav>
     	</div>
     	<hr style="color:white; margin:0px;">
     	<div class="box">
	     	<div class="left">
	     	
		     	<form class="form col-lg-10 col-sm-12 shadow-lg rounded m-auto text-light" action="#" method="post">
		          <h1 style="text-align:center; font-family:merithwater; font-size:40px;">Contact us</h1>
		          <div class="form-group m-3">
		              <label for="name">Name:</label>
		              <input type="text" name="name" placeholder="Enter your name" class="form-control mt-1">
		          </div>
		          <div class="form-group m-3">
								<label for="email">Email:</label>
								<input type="email" name="email" class="form-control mt-1" placeholder="Enter your Email-id">
							</div>
							<div class="form-group m-3">
								<label for="contact">Contact:</label>
								<input type="tel" name="contact" class="form-control mt-1" placeholder="Contact Number">
							</div>
							<div class="form-group m-3">
								<label for="text">Message:</label>
								<textarea  name="text" class="form-control mt-1" placeholder="Enter your message..."></textarea>
							</div>
		
							<div class="mt-4 row justify-content-center   m-3">
								<button type="submit" class="col-4 btn btn-outline-info m-3">Submit</button>
								<button type="reset" class="col-4 btn btn-outline-light m-3">Clear</button>
							</div>
		         </form>
	     	</div>
	     	<div class="right">
	     	
	     	</div>
     	</div>
     </div>
</body>
</html>