<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About-Covid help center</title>
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
    background:url("images/about2.jpg")no-repeat center center/cover;
   
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
    
    .Our_mission{
       /* background-color:rgba(255,255,255,0.6);*/
        font-family: 'Merriweather', serif;
        width:80%;
        color:white;
        display:flex;
        flex-direction:column;
        justify-content:center;
        align-items:center;
        margin:10px;
        padding:10px;
        border-top-right-radius:20px;
        border-bottom-left-radius:20px;
        
    }
    .Our_mission p{
       font-family: 'Merriweather', serif;
       font-size:22px;
       text-align:center;
    }
    .Our_mission .box{
        display:flex;
        justify-content:center;
        align-items:center;
        background-color:rgba(255,255,255,0.6);
        border-top-right-radius:20px;
        border-bottom-left-radius:20px;
        padding:2px;
    }
    .Our_mission .box img{
        width:300px;
        height:300px;
        border-radius:100%;
        
        
        
    }
    .main{
        display:flex;
        flex-direction:column;
        justify-content:center;
        align-items:center;
    }
    .boxes{
       display:grid;
       width:80%;
       grid-template-columns:repeat(3,1fr);
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
			          <a class="nav-link active btn btn-outline-light badge-pill px-4" href="about.jsp">About us</a>
			        </li>
			        <li class="nav-item mx-4">
			          <a class="nav-link btn btn-outline-light badge-pill px-4" href="contact.jsp">Contact us</a>
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
     	<div class="main">     	
	     	<div class="Our_mission">
	     	    
	     	     <h1>Our Mission</h1>
	     	     <p style="font-family: 'Vujahday Script', cursive; font-size:30px;">"Since covid started, our mission has been to help others to be aware of covid infected patients."</p>
	     	     <div class="box" >
	     	     <img alt="img1" src="images/about1.jpg">
	     	     <p >Surviving through pandemic is not easy,there is a sudden rise of covid cases in India because of people coming in contact with covid patients unknowingly.Our company make sure that we help people by providing the details of covid affected patients near by and we make sure that they are safe and protected.</p>
	     	     </div>
	     	</div>
	     	<div class="get_to_know">
	     	<h1>Get to know us</h1>
	     	<hr size="10" style="color:white; margin:0px;"> 
	     	<div class="boxes">
	     	
	     	 <div class="box1">
	     	  <img alt="career" src="images/goal.png">
	     	  <p>We take great pride in our company leadership position, thanks to the hardwork of our increditable talent.</p>
	     	 </div>
	     	 <div class="box2">
	     	  <img alt="career" src="images/goal.png">
	     	  <p>We take great pride in our company leadership position, thanks to the hardwork of our increditable talent.</p>
	     	 </div>
	     	 <div class="box3">
	     	  <img alt="career" src="images/goal.png">
	     	  <p>We take great pride in our company leadership position, thanks to the hardwork of our increditable talent.</p>
	     	 </div>
	     	</div>
	     	</div>
	     	
     	</div>
     	
     </div>
</body>
</html>