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
      transition:all 0.5s ease-in-out;
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
	 
</style>
</head>
<body>
		 
		</head> 
		<body link="#000" alink="#017bf5" vlink="#000"> 
		 <marquee behavior="alternate" scrollamount="10"><h2>"Better to wear a mask than a ventilator."</h2></marquee> 
		<div class = "box"> 
		<div class = "box1">  
		<h1>COVID HELP CENTER</h1> 
		<div class="button-clicks"> 
		<button class="login-button " style="margin-right:80px;"><a href="#">User Login</a> 
		</button> 
		<button class="login-button"><a href="#">Admin Login</a> 
		</button> 
		</div> 
		 
		</div> 
		<div class = "box2"> 
		<p>Don't have an account ?<button class="signup-button"><a href="#">Sign Up</a></button></p> 
		</div> 
		</div>
</body>
</html>