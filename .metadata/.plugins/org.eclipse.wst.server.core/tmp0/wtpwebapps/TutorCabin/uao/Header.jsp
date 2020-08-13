<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <link rel="stylesheet" type="text/css" href="bootstrap-4.4.1-dist/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="bootstrap-4.4.1-dist/css/bootstrap-grid.css">
  	<link rel="stylesheet" type="text/css" href="bootstrap-4.4.1-dist/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="bootstrap-4.4.1-dist/css/Style.css">
	<script type="text/javascript" src="bootstrap-4.4.1-dist/js/bootstrap.js"></script>
	<script type="text/javascript" src="bootstrap-4.4.1-dist/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="bootstrap-4.4.1-dist/js/bootstrap.bundle.js"></script>
	<script type="text/javascript" src="bootstrap-4.4.1-dist/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript" src="bootstrap-4.4.1-dist/js/croppie.min.js"></script>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/croppie/2.6.4/croppie.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/croppie/2.6.4/croppie.min.js"></script>
	
	
	<title>TutorCabin - Get Best Home Tutors in Indore</title>
 <script type="text/javascript">  
        /* Function to Generat Captcha */  
        function GenerateCaptcha() {  
            var chr1 = Math.ceil(Math.random() * 10) + '';  
            var chr2 = Math.ceil(Math.random() * 10) + '';  
            var chr3 = Math.ceil(Math.random() * 10) + '';  
  
            var str = new Array(4).join().replace(/(.|$)/g, function () { return ((Math.random() * 36) | 0).toString(36)[Math.random() < .5 ? "toString" : "toUpperCase"](); });  
            var captchaCode = str + chr1 + ' ' + chr2 + ' ' + chr3;  
            document.getElementById("txtCaptcha").innerHTML= captchaCode ;
        }  
        
        /* Function to Check Password and Re-password */
        function Validate() {
            var password = document.getElementById("txtPassword").value;
            var confirmPassword = document.getElementById("txtConfirmPassword").value;
            if (password != confirmPassword) {
                alert("Passwords do not match.");
                return false;
            }
            return true;
        }
        
        
        
        
        
        /* this script is for checking pre register email and mobile numher  */
        /* we are using ajax in this script  */
        
        function showdata(a,b)
        {
          xmlhttp = new XMLHttpRequest();
          xmlhttp.onreadystatechange=function()
          {
        	  if(b==1)
        		  {
        		  document.getElementById("res").innerHTML = xmlhttp.responseText;  
        		  }
        	  else
        		  {
        		  document.getElementById("res1").innerHTML = xmlhttp.responseText;  
        		  }
          }          
          xmlhttp.open("GET","checkmobile.html?q="+a+"&q1="+b,true);
          xmlhttp.send();
        	
        }



    </script>  
    
<style type="text/css">

/* Dropdown Button */


/* The container <div> - needed to position the dropdown content */
.dropdown {
  position: relative;
  display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {background-color: #ddd;}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {display: block;}

/* Change the background color of the dropdown button when the dropdown content is shown */
/*.dropdown:hover .dropbtn {background-color: #11bba4d6;}
*/
</style>

    
  
</head>
<body onload=" GenerateCaptcha()">






  <!-- header -->
	<header style="height: 116px; 	background-color: #0da8d6;">
<img data-placeholder="no" src="images/TutorCabin.jpg" alt="TutorCabin" style="padding: 35px 26px 43px 111px;">

	</header>
  <!-- nav start -->
<nav class="navbar navbar-expand-sm bg-light navbar-light ">
  
  
  <ul class="navbar-nav navbar-nav mr-auto">

    
<%if(session.getAttribute("tutorEmail")!=null) {%>

	<li class="nav-item">
      <a class="nav-link" href="Dashboard.html">Home&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp|</a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="Blogs.html">Blogs&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp|</a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="Contact.html">Contact&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp|</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Solved_Materials.html">Solved Materials</a>
    </li>
   </ul> 
<%} else if(session.getAttribute("uemail")!=null) {%>
    
    <li class="nav-item">
      <a class="nav-link" href="Dashboard.html">Home&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp|</a>
    </li>
    
      <li class="nav-item">
      <a class="nav-link" href="Find_Tutor.html">Find Tutors&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp|</a>
    </li>
     <li class="nav-item">
      <a class="nav-link" href="Blogs.html">Blogs&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp|</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Contact.html">Contact&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp|</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Solved_Materials.html">Solved Materials</a>
    </li>
   
  </ul>
<%}
else{
%>
    <li class="nav-item">
      <a class="nav-link" href="Dashboard.html">Home&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp|</a>
    </li>
    
    <li class="nav-item">
      <a class="nav-link" href="About.html" >About&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp|</a>
    </li>
        <li class="nav-item">
      <a class="nav-link" href="Join_As_A_Tutor.html">Join As a Tutor&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp|</a>
    </li>
        <li class="nav-item">
      <a class="nav-link" href="Contact.html">Contact&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp|</a>
    </li>
        <li class="nav-item">
      <a class="nav-link" href="Blogs.html">Blogs&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp|</a>
    </li>
    </ul>
<%} %>
<%
if(session.getAttribute("uemail")!=null)
{
%>
<span class="navbar-text" style="padding-left: 150px; color: #a85486;">
    
   <h5><a style="text-decoration: none;" href="logout.html"> |&nbsp  Logout &nbsp |</a></h5>
  </span>
  

  
</nav>
<%
}
else if(session.getAttribute("tutorEmail")!=null) {
	%>
	
<div class="dropdown" style="margin-right: 10px;margin-top: -15px;">
<img src="images/<%= session.getAttribute("tphoto") %>" alt="ram" class="dropbtn" style="border-radius:50px;margin-top:14px;"width="30" height="25">
  <div class="dropdown-content">
    <a href="teacherProfile.html">View Profile</a>
    <a href="ChangePic.html">Change Profile</a>
    <a href="logout.html">Logout</a>
  </div>
</div>
<p style="margin-bottom: 5px;"> <%= session.getAttribute("tutorName") %> </p>
</nav>
	
<%
}
else
{
%>
<span class="navbar-text" style="padding-left:150px; color: #a85486; float:right; ">
   <h5><a style="text-decoration: none;" href="Login.html"> |&nbsp  Login &nbsp |</a></h5>
  </span>
</nav>

<%
} 
%>


  <!-- nav End -->
