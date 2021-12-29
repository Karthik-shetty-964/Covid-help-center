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
		color:white;
	}
 	 body::before{
    content:"";
    background:url("images/.jpg")no-repeat center center/cover;
    background-color: #1f4b70;
   
    width:100%;
    min-height:590px;;
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
       
        background-color:#24242466;
    }
    .user_profile img:hover{
    	transform:scale(1.2);
    }
    .Our_mission{
       /* background-color:rgba(255,255,255,0.6);*/
        font-family: 'Merriweather', serif;
        width:100%;
        color:white;
        
        display:flex;
        flex-direction:column;
        justify-content:center;
        align-items:center;
        margin:17px auto;
        padding:10px;
       
        
    }
    .Our_mission p{
       font-family: 'Merriweather', serif;
       font-size:22px;
       text-align:center;
    }
       .box{
        margin: auto;
        width: 100%;
        display:flex;
        background:url("images/about2.jpg")no-repeat center center/cover;
        
        align-items:center; 
        padding:20px;
        color:white;
    }
    
    .box p{
        font-family: 'Merriweather', serif;
       font-size:22px;
       text-align:center;
       
    }
     .box img{
        width:300px;
        height:300px;
        border-radius:100%;
        margin-left:30px;

    }
 
    .box .para{
       width:50%;
       display:flex;
       flex-direction:column;
       justify-content:center;
       align-items:center;
       margin-left:40px;
       
    }
    .get_to_know::before{
        	
    content:"";
    background:url("images/.jpg")no-repeat center center/cover;
    background-color: #365d7f;
   
    width:100%;
    height:100%;
    position:absolute;
    top:10;
    left:0;
    z-index:-1;
    
    }
    .get_to_know h1{
	     text-align: center;
	    font-size: 40px;
	    color: white;
	    
	    font-family: 'Merriweather';
	    text-decoration: underline;
	    padding: 35px 10px 10px 10px;
    }
    .boxes{
      width:80%;
       margin:auto;
        display: flex;
        justify-content: center;
         align-items: center;
         display:grid;
         gap:1rem;
         grid-template-columns:repeat(3,1fr);
        
       
    }
    .boxes .box1{
        display: flex;
        background: rgba(250,250,250,0.4);
        border-radius:20px;
        flex-direction:column;
        justify-content: center;
          align-items: center;
           padding:20px;
           
    }
    .boxes .box1 img{
      width: 130px;
      height: 130px;
    }
    .boxes .box1 p{
      font-size: 21px;
       font-family: inherit;
       width:90%;
       text-align:center;
       color:black;
       font-weight:bold;
    }
    .contact_us{
      display:flex;
          margin-top: 36px;
    }
    .contact_us img{
        width: 30px;
        height: 30px;
        
    }
    .contact_us h1{
	    color: black;
	    margin-left: 103px;
	    font-family: emoji;
	    padding: 14px 0px 2px 0px;
	    text-decoration: underline;
    }
    .contact_us .icons{
        display:flex;
        flex-direction:column;
           margin: 20px;
       line-height: 2;
        
    }.contact_us .icons2{
        display:flex;
        justify-content:center;
        margin-left: 103px;
        
    }
    .contact_us::before{
        content:"";
  		 background:url("images/bottom-about.jpg")no-repeat center center/cover;
   		 width:100%;
   		height:300px;
    	position:absolute;
    	top:10;
    	left:0;
   	    z-index:-1;
    }
    .contact_us .icons .icon{
        display:flex;
         
    }
    .contact_us .icons2 .icon{
        display:flex;
         transition:all 0.2s ease-in-out;
    }
     .contact_us .icons2 .icon:hover{
          transform:scale(1.2);
     }
</style>
</head>
<body>
   <%
     String name=(String)session.getAttribute("username");
     if(session.getAttribute("username")!=null){
   
   %>
    <%
      // String sessionName=(String)session.getAttribute("username");
       //out.print("<h1>"+sessionName+"</h1>");
    %>
     <div class="containers">
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
			          <a class="nav-link  btn btn-outline-light badge-pill px-4" aria-current="page" href="home.jsp">Home</a>
			        </li>
			        <li class="nav-item mx-4">
			          <a class="nav-link active btn btn-outline-light badge-pill px-4" href="about.jsp">About us</a>
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
     	 <div class="Our_mission">
     	 
     	 
     	   <h1>Our Mission</h1>
	       <p style="font-family: 'Vujahday Script', cursive; font-size:30px;">"Since covid started, our mission has been to help others to be aware of covid infected patients."</p>
     	 </div>
     	 <div class=" box">
     	     <img alt="img1" src="images/about3.png">
     	     <div class="para">
     	     <h1 style="font-family: 'Merriweather', serif;"> Covid help center</h1>
	     	  <p style="font-size:20px;">Surviving through pandemic is not easy,there is a sudden rise of covid cases in India because of people coming in contact with covid patients unknowingly.Our company make sure that we help people by providing the details of covid affected patients near by and we make sure that they are safe and protected.</p>
	     	  </div>
	      </div>
	      
	      <div class="get_to_know">
	     	<h1>Get to know us</h1>
	     	
	     	<div class="boxes shadow-lg">
	     	
	     	 <div class="box1 shadow-lg">
	     	  <img alt="career" src="images/goal.png">
	     	  <h5 style="text-decoration:underline;">Career</h5>
	     	  <p>We take great pride in our company leadership position, thanks to the hardwork of our increditable talent.</p>
	     	 </div>
	     	 <div class="box1 shadow-lg">
	     	  <img alt="career" src="images/management.png">
	     	  <h5 style="text-decoration:underline;">Management</h5>
	     	  <p>A key to achieving success is to assemble strong and stable management team, and we have the top one.</p>
	     	 </div>
	     	 <div class="box1 shadow-lg">
	     	  <img alt="career" src="images/press-release.png">
	     	  <h5 style="text-decoration:underline;">Press release</h5>
	     	  <p>The key to sucess of any press release lies with contents ability to grab the readers attention each and every time.</p>
	     	 </div>
	     	</div>
	     	</div>
	     	
	     <div class="contact_us">
	     	<div class="left" style="border-right:2px solid black;">
	     	
	     	  <div>
	     	    <h1 >Reach us</h1>
	     	  </div>
	     	  <div class="icons" >
	     	    <div class="icon">
	     	      <img alt="location" src="images/phone-call.png"><p style="margin-left: 13px; color:black;">1-800-123-4567</p>
	     	    </div>
	     	    <div class="icon">
	     	      <img alt="mail" src="images/mail.png"><p style="margin-left: 13px; color:black;">covidhelpcenter@gmail.com</p>
	     	    </div>
	     	    <div class="icon">
	     	      <img alt="location" src="images/location.png"><p style="margin-left: 13px; color:black;">Mangalore institute of technology and engineering,Moodbidri</p>
	     	    </div>
	     	  </div>
	     	</div>
	     	  <div class="right">
	     	  
	     	   <div>
	     	    <h1 style="color: black;
	                       margin-left:100px;
	                       font-family: emoji;
	                      
	                       text-decoration: underline;">Connect with us</h1>
	     	  
	     	  </div>
	     	    <div class="icons2">
	     	    <div class="icon">
	     	      <a href="https://www.instagram.com/shetty_apekshaa/" target="_black"><img alt="location" src="images/instagram.png" style="margin:5px 10px;"></a>
	     	    </div>
	     	    <div class="icon">
	     	      <a href=" https://www.linkedin.com/in/karthik-shetty-7980b1223/" target="_black"><img alt="mail" src="images/linkedin-logo.png" style="margin:5px 10px;"></a>
	     	    </div>
	     	    <div class="icon">
	     	      <a href=" https://twitter.com/Karthik_shtty" target="_black"><img alt="location" src="images/twitter.png" style="margin:5px 10px;"></a>
	     	    </div>
	     	    <div class="icon">
	     	      <a href="https://www.google.com" target="_black"><img alt="location" src="images/google-brands.svg" style="margin:5px 10px;"></a>
	     	    </div>
	     	    <div class="icon">
	     	      <a href="https://www.facebook.com/karthik.sshetty.5030" target="_black"><img alt="location" src="images/facebook-brands.svg" style="margin:5px 10px;"></a>
	     	    </div>
	     	  </div>
	     	  </div> 
	     </div> 
	     	  
	     </div>
     </div>
     <%
     }else{
    	 response.sendRedirect("index.jsp");
     }
      %>
</body>
</html>