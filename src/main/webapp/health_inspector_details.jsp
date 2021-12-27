<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Health inspector-Covid Help Center</title>
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
    background:url("images/img1.jpg")no-repeat center center/cover;
   
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
    .row1{
      	display:flex;
      	flex-direction:column;
      	justify-content:center;
      	align-items:center;
      	min-height:150px;
    }
    .row1 .box{
        min-height:150px;
        
      	width:350px;
        background:rgba(0,0,0,0.5);
        color:white;
        border-radius:20px;
    }
    .row1 .box form{
        display:flex;
      	flex-direction:column;
      	justify-content:center;
      	align-items:center;
    }
    .box p{
    	text-align:center;
    	 font-family:merithwater; 
    	 font-size:25px;  
    	 color:white;
    	 text-decoration:underline;
    	 margin: 0px;
    }
    .box input{
         width:70%;
         border:2px solid grey;
         margin:23px 10px 0px 10px;
         padding:5px 11px;
         border-radius:10px;
         outline:none;
         
    }
    .box button{
    	margin:10px;
    	padding:6px 18px;
    	background-color:#565656;;
    	color:white;
    	border-radius:10px;
    	outline:none;
    	font-size:15px;
    	
    }
    .box button:hover{
        background-color:#b7b7b7;
        color:black;
    }
    thead th{
        color:#89ffff;
    }
    tbody td{
        color:white;
    }
     tbody :hover{
        color:white;
        background-color:black;
    }
    .box1{
    	display:flex;
      	flex-direction:column;
      	justify-content:center;
      	align-items:center;
      	
      	margin-top:20px;
    }
    .box1 .row{
        width:80%;
        background:rgba(0,0,0,0.5);
        border-radius:20px;
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
</style>
</head>

<body>
<%
     String name=(String)session.getAttribute("username");
     if(session.getAttribute("username")!=null){
   
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
			          <a class="nav-link  btn btn-outline-light badge-pill px-4" aria-current="page" href="home.jsp">Home</a>
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
     	 <h1 style="text-align:center; font-family:merithwater; font-weight:35px; color:white;">Health Inspector details</h1>
     	<div class="row1">
     	   <div class="box">
     	   
     		  <p>Search here</p>
     		  <form action="health_inspector_details.jsp" method="post">
     		  
	     	      <input type="text" name="search" placeholder="Enter pincode"> 
	     	      <button type="submit">search</button>
     		  </form>
     	   </div>
     	</div>
     	
     	<div class="box1">
          <div class="row justify-content-center">
		     <div class="table-responsive-lg">
			    <table class="col-lg-8 col-10 col-sm-12 table  p-3 shadow-lg">
				  <thead class="thead">
					 <tr>
						<th >Inspector id</th><th>Inspector Name</th>
						<th>Office address</th><th>Office phone</th><th>Pincode</th>
						 
					 </tr>
				  </thead>
				  <tbody class="tbody" >
				  <%
     	  				 String pin=request.getParameter("search");
     	  				// System.out.println(pin);
     	  				 
     	  				
     	  				 Statement st=null;
     	  				 ResultSet rs=null;
     	  				
     	  				if(pin!=null){
     	  				 try{
     	  					Class.forName("com.mysql.cj.jdbc.Driver");
     	  					Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/chc","root","root123");
     	  					st=con.createStatement();
     	  					
     	  					 String qry="select * from health_inspector where pincode="+pin+"";
     	  					 rs=st.executeQuery(qry);
     	  					 
     	  			      if(rs.next()==false){
     	       	   %>
     	       	  		          <tr><p style="color:white; text-align:center">No records currently available for the pincode <%=pin %></p></tr>
     	       	  	<%
     	       	  		   }else{
     	       	  			 do{
     	  			 %>
     	  					<tr>
     							<td><%=rs.getInt(1) %></td><<td><%=rs.getString(2) %></td>
     							<td><%=rs.getString(3) %></td><td><%=rs.getString(4) %></td>
     							<td><%=rs.getInt(5) %></td>
     						</tr>
     				<%
     	       	  				}while(rs.next());
     	     	  		     }
     	  				  }catch(Exception ex){}
     	  				}
     				%>
     				
     			    
     	  			</tbody>
     	  	</table>
				  
				       
					
					
				
					
				
			
			
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