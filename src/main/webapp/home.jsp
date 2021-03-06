<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Covid help center</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Merriweather&family=Roboto+Slab&display=swap" rel="stylesheet">
<style>
	*{
		margin:0px;
		padding:0px;
		box-sizing:border-box;
	}
 	 body::before{
    content:"";
    background:url("images/home3.jpg")no-repeat center center/cover;
   
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
    .main{
       width:100%;
       /*min-height:80vh;*/
       height:350px;
       display:flex;
       justify-content:center;
       align-items:center;
       flex-direction:column;
       color:white;
    }
    section button{
    	margin:15px;
    	padding:10px;
    	border-radius:5px;
    	font-family: 'Merriweather', serif;
    	box-shadow:0px 2px 10px 2px grey;
    	outline:none;
    	transition:all 0.2s ease-in-out;
    
    }
    section button a{
    	text-decoration:none;
    	color:black;
    
    }
    
    section button:hover{
        transform:scale(1.1);
        background-color:#e1e1e1;
    }
    
    .user_profile{
         color: white;
    display: flex;
    justify-content: center;
    align-items: center;
    position: absolute;
    margin: 18px 10px 10px 10px;
    background:rgba(0,0,0,0.4);
    border-radius:20px;
         
    }
    .user_profile img{
     	 width:50px;
     	 height:50px;
     	 border:2px solid black;
     	 border-radius:100%;
     	 transition:all 0.2s ease-in-out;
     	 
    }
    .user_profile .name{
         margin: 3px;
        font-family: merithwater;
        /* font-weight: bold; */
         font-size: 20px;
         padding:5px 10px;
       
    }
    .user_profile:hover{
       
        background-color:#6a6a6a66;
    }
    .user_profile img:hover{
    	transform:scale(1.2);
    }
    
</style>
</head>
<body>
    <%    
         String name=(String)session.getAttribute("user");
         if(name!=null&&name.length()!=0){{
        	 session.setAttribute("username",name);
         }
    %>
	<div class="container-fluid">
	    <div class="row nav-bar">
     	   <nav class="navbar navbar-expand-lg   sticky-top">
			 <div class="container-fluid ">
     	       <a href="#" class="navbar-brand"><img src="images/about3.png" alt="logo" class="col-lg-3 col-sm-6 " style="width:100px; height:100px;" ></a>
			    <a class="navbar-brand m-1" style="font-family: 'Merriweather', serif; font-weight:bold; font-size:22px; color:white;" href="#">Covid Help Center</a>
			    <button class="navbar-toggler " type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
			      <span class="navbar-toggler-icon"></span>
			    </button>
			    <div class="collapse navbar-collapse " id="navbarNav">
			      <ul class="navbar-nav ms-auto ">
			        <li class="nav-item mx-4">
			          <a class="nav-link active btn btn-outline-light badge-pill px-4" aria-current="page" href="home.jsp">Home</a>
			        </li>
			        <li class="nav-item mx-4">
			          <a class="nav-link btn btn-outline-light badge-pill px-4" href="about.jsp">About us</a>
			        </li>
			        <li class="nav-item mx-4">
			          <a class="nav-link btn btn-outline-light badge-pill px-4" href="contact.jsp">Contact us</a>
			        </li>
			         <li class="nav-item  mx-4">
			          <a class="nav-link btn btn-outline-light badge-pill px-4" href="logout.jsp">Logout</a>
			        </li>
			         
			      </ul>
			    </div>
			  </div>
			</nav>
     	</div>
     	<hr style="color:white; margin:0px;">
     	 <div class="user_profile">
     	     <div class="logo">
     	        
     	        <img alt="user" src="images/user2.png" >
     	     </div>
     	     <div class="name">
     	         <%=name %>
     	     </div>
     	 </div>
     	<section class="main" >
     	     <div class="heading" >
     	         <h1 style="font-size:70px; font-family: 'Merriweather', serif; margin-bottom:20px; font-weight:bold;">Covid cases near me</h1>
     	    </div>
     	   <div class="buttons-section">
     	       <button><a href="patient_details.jsp">Patient details</a></button>
     	       <button><a href="quarantine_details.jsp">Home quarantine  details</a></button>
     	       <button><a href="health_inspector_details.jsp">Health inspector details</a></button>
     	   </div>
     	</section>
	</div>
	<%
         }else{
        	 response.sendRedirect("index.jsp");
         }
	%>
</body>
</html>