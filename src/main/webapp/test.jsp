<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.Our_mission{
       /* background-color:rgba(255,255,255,0.6);*/
        font-family: 'Merriweather', serif;
        width:80%;
        color:black;
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
        background-color:rgba(0,0,0,0.6);
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
</body>
</html>