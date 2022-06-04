<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login-Covid help center</title>
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
    body{
    height:754px;
    }
    
    body::before{
    content:"";
    background:url("images/heartbeat.jpg")center;
    width:100%;
    height:100%;
    position:absolute;
    top:10;
    left:0;
    z-index:-1;
    opacity:0.92;
    }
    marquee h2{
     color:white;
     font-family: 'Merriweather', serif;
     font-size:20px;
    }
    .box{
     display:flex;
     justify-content:center;
     align-items:center;
     flex-direction:column;
     height:100%;
     color:white;
     font-family: 'Merriweather', serif;
     
    }
    .box1 h1{
      font-size:50px;
      font-weight:bold;
      margin-bottom :20px;
      position:relative;
      bottom:20px;
      
    } 
    .button-clicks{
     display:flex;
     justify-content:center;
    }
    
    .button-clicks a{
     text-decoration:none;
      color:white;      
    }
    
    .login-button{
      border:2px solid red;
      padding:5px;
      background-color:black;
      padding:10px;
      border-radius:10px;
      margin-bottom:40px;
      box-shadow:0px 10px 10px 1px red;
      transition:all 0.2s ease-in-out;
    }
    .login-button a:hover{
    color: red;
    }
    
    .login-button:hover{  
       transform:scale(1.1);
    }
    .box2{
    position:relative;
      top:10px;
      
    }
    
    .signup-button{
      border:2px solid red;
      padding:4px 7px 4px 7px;
      background-color:black;
     
      border-radius:10px;
      margin-left:10px;
      background-color:red;
      box-shadow:0px 5px 10px 1px red;
     
    }
    .box2 a{
     text-decoration:none;
      color:white; 
    }
    .box2 a:hover{
      color:black; 
    }
	.modal-content{
	   background-color:#282828;
	   color:white;
	   border-radius:10px; 
	}
	.alert{
	    position:absolute;
	    width:100%;
	}
	
	
</style>
</head>
<body>
		 
		</head> 
		<body > 
		
		 <marquee behavior="alternate" scrollamount="10"><h2>"Better to wear a mask than a ventilator."</h2></marquee>
		 
		 <!-- User log in -->
		 <%String mess0=(String)request.getAttribute("mess0"); %>
		 
		 <%if(mess0!=null){ %>
		      <div class="alert alert-danger alert-dismissible fade show" role="alert">
                  <%=mess0 %>
                 <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
             </div>
		 <%} %>
		 
		  <!-- Admin sign in -->
		 <%String mess=(String)request.getAttribute("mess"); %>
		 
		 <%if(mess!=null){ %>
		      <div class="alert alert-danger alert-dismissible fade show" role="alert">
                  <%=mess %>
                 <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
             </div>
		 <%} %>
		 
		  <!-- user sign up --> 
        <%String mess1=(String)request.getAttribute("mess1"); %>
		 
		 <%if(mess1!=null){ %>
		      <div class="alert alert-danger alert-dismissible fade show" role="alert">
                  <%=mess1 %>
                 <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
             </div>
		 <%} %>
		 
		 
		 
		<div class = "box"> 
		<div class = "box1">  
		<h1>COVID HELP CENTER</h1> 
		<div class="button-clicks"> 
		<button class="login-button " class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#userLogin" style="margin-right:90px;"><a href="#">User Login</a> 
		</button> 
		<button class="login-button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#adminLogin" ><a href="#">Admin Login</a> 
		</button> 
		</div> 
		 
		</div> 
		<div class = "box2"> 
		<p>Don't have an account ?<button class="signup-button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#signUp"><a href="#">Sign Up</a></button></p> 
		</div> 
		</div>
		
		
		
		
		
		<!--UserLogin Modal -->
		<div class="modal fade" id="userLogin" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content" style="font-family: 'Merriweather', serif;">
		      <div class="modal-header">
		        <h5 class="modal-title" id="staticBackdropLabel" >User login</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		      <form class="form" action="UserLogin" method="post">
		      
		        <div class="form-group m-2">
		        <label for="email">Email id:</label>
		         <input type="email" name="email" placeholder="Enter your email" class="form-control" style="font-size:14px; padding:8px;">
		      </div>
		        <div class ="form-group m-2">
		        <label for="pass">Password:</label>
		        <input type="password" name="pass" placeholder="Enter your password" class="form-control" style="font-size:14px; padding:8px;">
		        </div>
		       
		      </div>
		      <div class="modal-footer">
		        <button type="submit" class="btn btn-danger">Login</button>
		        <button type="reset" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
		      </div>
		      </form>
		    </div>
		  </div>
		</div>
		
		<!--Admin Login Modal -->
		<div class="modal fade" id="adminLogin" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content" style="font-family: 'Merriweather', serif;">
		      <div class="modal-header">
		        <h5 class="modal-title" id="staticBackdropLabel" >Admin login</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		      <form class="form" action="adminlogin" method="post">
		      
		        <div class="form-group m-2">
		        <label for="email">Email id:</label>
		         <input type="email" name="email" placeholder="Enter admin email" class="form-control" style="font-size:14px; padding:8px;">
		      </div>
		        <div class ="form-group m-2">
		        <label for="pass">Password:</label>
		        <input type="password" name="pass" placeholder="Enter admin password" class="form-control" style="font-size:14px; padding:8px;">
		        </div>
		        
		      </div>
		      <div class="modal-footer">
		        <button type="submit" class="btn btn-danger">Login</button>
		        <button type="reset" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
		      </div>
		      </form>
		    </div>
		  </div>
		</div>
		
		
		<!--Signup Modal -->
		<div class="modal fade" id="signUp" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content" style="font-family: 'Merriweather', serif;">
		      <div class="modal-header">
		        <h5 class="modal-title" id="staticBackdropLabel" >Sign Up</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		      <form class="form" action="UsersSignUp" method="post">
		        <div class="form-group m-2">
		        <label for="username">Username:</label>
		         <input type="text" name="username" placeholder="Choose your username" class="form-control" style="font-size:14px; padding:8px;">
		      </div>
		        <div class="form-group m-2">
		        <label for="email">Email id:</label>
		         <input type="email" name="email" placeholder="Enter your email" class="form-control" style="font-size:14px; padding:8px;">
		      </div>
		        <div class ="form-group m-2">
		        <label for="pass">Password:</label>
		        <input type="password" name="pass" placeholder="Enter your password" class="form-control" style="font-size:14px; padding:8px;">
		        </div>
		        <div class ="form-group m-2">
		        <label for="conpass">Confirm Password:</label>
		        <input type="password" name="conpass" placeholder="Confirm your password" class="form-control" style="font-size:14px; padding:8px;">
		        </div>
		        
		      </div>
		      <div class="modal-footer">
		        <button type="submit" class="btn btn-danger">Sign Up</button>
		        <button type="reset" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
		      </div>
		      </form>
		    </div>
		  </div>
		</div>
</body>
</html>