<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin-Covid Help Center</title>
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
    background:url("images/admin_home4.jpg")no-repeat center center/cover;
   
    width:100%;
    height:100%;
    position:absolute;
    top:0px;
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
    .buttons-section{
      display:flex;
       justify-content:center;
       align-items:center;
        flex-direction:column;
    }
    .buttons-section button{
        width:300px;
    	margin:15px;
    	padding:10px;
    	border-radius:5px;
    	font-family: 'Merriweather', serif;
    	box-shadow:0px 2px 10px 2px grey;
    	outline:none;
    	transition:all 0.2s ease-in-out;
    
    }
    .buttons-section button:hover{
        transform:scale(1.1);
        background-color:#e1e1e1;
    }
    .modal-content{
	   background-color:#282828;
	   color:white;
	   border-radius:10px; 
	}
	.modal-dialog{
	   
	   max-width: 600px;
       margin: 1.75rem auto;
       
	
	}
	.m-auto {
      margin: none!important;
    }
    
    .form{
      width:100%;
      display: flex;
	    justify-content: center;
	    align-items: center;
	    flex-direction: column;
    }
	.form-group{
	  width:500px;
	}
	.buttons-set{
	  display:flex;
	  flex-direction:row;
	    margin: 10px;
       padding: 10px;
       width:100%;
	}
	.buttons-set button{
	   margin:10px;
	   padding:5px;
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
   
     	     <div class="heading" >
     	         <h1 style="font-size:40px; font-family: 'Merriweather', serif; margin-bottom:20px; font-weight:bold;text-decoration:underline;">Admin page</h1>
     	         
     	    </div>
     	   <div class="buttons-section">
     	       <button data-bs-toggle="modal" data-bs-target="#patient_detail">Add details of patients</button>
     	       <button data-bs-toggle="modal" data-bs-target="#qurantine_detail">Add quaratine details</button>
     	       <button data-bs-toggle="modal" data-bs-target="#HealthInspector_detail">Add Health inspector details</button>
     	   </div>
						
				<!--patient details Modal -->
				<div class="modal fade" id="patient_detail" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="staticBackdropLabel" style="font-family: 'Merriweather', serif;">Patient details</h5>
				        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				      </div>
				      <div class="modal-body">
				       	<form class="form col-lg-8 col-sm-12 shadow-lg  " action="" method="post">
					          <div class="form-group m-2">
					              <label for="patient_id" >Patient id:</label>
					              <input type="number" name="patient_id" placeholder="Enter patient id" class="form-control mt-1">
					          </div>
					          <div class="form-group m-2">
					              <label for="name">Name:</label>
					              <input type="text" name="name" placeholder="Enter the name of the patient" class="form-control mt-1">
					          </div>
			          	      <div class="form-group m-2">
					              <label for="age" >Age:</label>
					              <input type="number" name="age" placeholder="Enter patient age" class="form-control mt-1">
					          </div>
					          <div class="form-group m-2">
									<label for="condition">Condition:</label>
									<input list="conditions" name="condition"  class="form-control mt-1" placeholder="Enter condition of the patient">
									<datalist id="conditions">
									<option value="Under treatment"></option>
									<option value="Recovered"></option>
									</datalist>
									
								</div>
								<div class="form-group m-2">
									<label for="address">Address:</label>
									<textarea  name="address" class="form-control mt-1" placeholder="Enter patient Address"></textarea>
								</div>
								
								<div class="form-group m-2">
									<label for="phone">Phone:</label>
									<input type="phone" name="phone" class="form-control mt-1" placeholder="Enter patient phone">
								</div>
								<div class="form-group m-2">
									<label for="pincode">Pincode:</label>
									<input type="number" name="pincode" class="form-control mt-1" placeholder="Enter patient pincode">
								</div>
								
								<div class=" row justify-content-center buttons-set ">
									<button type="submit" class="col-4 btn btn-outline-success ">Enroll</button>
									<button type="close" class="col-4 btn btn-outline-danger">Close</button>
								</div>
      				 </form>
				      </div>
				     
				    </div>
				  </div>
				</div>
				
				<!--home quantine details Modal -->
				<div class="modal fade" id="qurantine_detail" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="staticBackdropLabel" style="font-family: 'Merriweather', serif;">Home quarantine patient details</h5>
				        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				      </div>
				      <div class="modal-body">
				       	<form class="form col-lg-8 col-sm-12 shadow-lg  " action="" method="post">
					          <div class="form-group m-2">
					              <label for="person_id" >Person id:</label>
					              <input type="number" name="person_id" placeholder="Enter person id" class="form-control mt-1">
					          </div>
					          <div class="form-group m-2">
					              <label for="name">Name:</label>
					              <input type="text" name="name" placeholder="Enter the name of the person" class="form-control mt-1">
					          </div>
			          	      <div class="form-group m-2">
					              <label for="age" >Age:</label>
					              <input type="number" name="age" placeholder="Enter person age" class="form-control mt-1">
					          </div>
					          <div class="form-group m-2">
									<label for="startdate">Start date:</label>
									<input type="date" name="startdate" class="form-control mt-1" >
								</div>
								<div class="form-group m-2">
									<label for="Enddate">End date:</label>
									<input type="date" name="Enddate" class="form-control mt-1" >
								</div>
								<div class="form-group m-2">
									<label for="address">Address:</label>
									<textarea  name="address" class="form-control mt-1" placeholder="Enter person Address"></textarea>
								</div>
								
								<div class="form-group m-2">
									<label for="phone">Phone:</label>
									<input type="phone" name="phone" class="form-control mt-1" placeholder="Enter person phone">
								</div>
								<div class="form-group m-2">
									<label for="pincode">Pincode:</label>
									<input type="number" name="pincode" class="form-control mt-1" placeholder="Enter person pincode">
								</div>
								
								<div class=" row justify-content-center buttons-set ">
									<button type="submit" class="col-4 btn btn-outline-success ">Enroll</button>
									<button type="close" class="col-4 btn btn-outline-danger">Close</button>
								</div>
      				 </form>
				      </div>
				     
				    </div>
				  </div>
				</div>
				
				<!--health inspector details Modal -->
				<div class="modal fade" id="HealthInspector_detail" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="staticBackdropLabel" style="font-family: 'Merriweather', serif;">Health Inspector details</h5>
				        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				      </div>
				      <div class="modal-body">
				       	<form class="form col-lg-8 col-sm-12 shadow-lg  " action="" method="post">
					          <div class="form-group m-2">
					              <label for="inspector_id" >Inspector id:</label>
					              <input type="number" name="inspector_id" placeholder="Enter Inspector id" class="form-control mt-1">
					          </div>
					          <div class="form-group m-2">
					              <label for="name">Name:</label>
					              <input type="text" name="name" placeholder="Enter the name of the Inspector" class="form-control mt-1">
					          </div>
			          	     
								<div class="form-group m-2">
									<label for="off_address">Office_address:</label>
									<textarea  name="off_address" class="form-control mt-1" placeholder="Enter office Address"></textarea>
								</div>
								
								<div class="form-group m-2">
									<label for="off_phone">Office_Phone:</label>
									<input type="phone" name="off_phone" class="form-control mt-1" placeholder="Enter office phone">
								</div>
								<div class="form-group m-2">
									<label for="pincode">Pincode:</label>
									<input type="number" name="pincode" class="form-control mt-1" placeholder="Enter Inspector area pincode">
								</div>
								
								<div class=" row justify-content-center buttons-set ">
									<button type="submit" class="col-4 btn btn-outline-success ">Enroll</button>
									<button type="close" class="col-4 btn btn-outline-danger">Close</button>
								</div>
      				 </form>
				      </div>
				     
				    </div>
				  </div>
				</div>
     	</div>
     </div>
</body>
</html>