<html>
<head>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import= "org.hibernate.*" %>  
<%@page import= "org.hibernate.cfg.*" %>   
<%@page import="java.util.*" %>
<%@page import="template.*" %>
<%@page import="dao.*" %>


	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  	<link rel="stylesheet" type="text/css" href="bootstrap-4.4.1-dist/css/bootstrap.min.css">
	<script type="text/javascript" src="bootstrap-4.4.1-dist/js/bootstrap.min.js"></script>
	
	<title>TutorCabin - Get Best Home Tutors in Indore</title>

<style type="text/css">
  
.bg {
  /* The image used */
  background-image: url("images/Facultyimg.jpg");

  /* Full height */
  height: 100%;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  width: 200px;
  border: 1px solid #555;
}

li a {
  display: block;
  color: #fff;
  padding: 8px 16px;
  text-decoration: none;
}

li {
  text-align: center;
  border-bottom: 1px solid #555;
}

li:last-child {
  border-bottom: none;
}

li a:hover:not(.active) {
  background-color: #555;
  color: white;
}

.col-sm-4{

width: 200px; 
height: 230px; 
margin-top: 135px; 
margin-left: 43px;
float: left;
}

.col-sm-8{

float: right;
    margin-top: 63px;
    margin-right: 95px;
    margin-bottom: 50px;
}

table{
align:center;
overflow:scroll
}

table td{
color:white;
}

</style>

</head>
<body class="bg">
  <!-- header -->
  
<img  data-placeholder="no" src="images/TutorCabin.jpg" alt="TutorCabin" style="padding: 35px 26px 43px 111px;opacity: 0.3;">
<h3> <p align="center" style="margin-top:-85px;">|&nbsp Welcome to Admin Panel  &nbsp| </p> </h3>
  <hr>    

<div class="col-sm-12">
<div class="col-sm-4">  

<!-- nav start -->
  <ul class="navbar-nav ">
  
    <li class="nav-item">
      <a class="nav-link" href="admindash.html">Home</a>
    </li>
    
    <li class="nav-item">
      <a class="nav-link" href="#" >View Students</a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="#">View Discusion</a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="viewtutors.html">View Tutors</a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="adminlogout.html">Logout</a>
    </li>

  </ul>
</div>

<div class="col-sm-8 ">

<h1>Registered Students</h1>
<br>
<br>

<table border="1"><tr><th>Photo</th><th>STUDENT NAME</th><th>CLASS</th><th>MOBILE NO.</th><th>EMAIL ID</th><th>SUBJECT</th><th>PASSWORD</th><th>Status</th></tr>
<%
Datahelper.configureFile();
Query q=Datahelper.getRecord("from Student s");
List lst = q.list();
Iterator it = lst.iterator();
while(it.hasNext())
{
	Student st = (Student)(it.next());%>
	
	<tr><td><%-- <img alt="<%= st.getUsername() %>" src="images/<%= /* st.getPhoto() */ %>" width="100" height="100">< --%>/td><td><%= st.getUsername() %></td><td><%= st.getUserclass() %></td><td><%= st.getMobileno() %></td><td><%= st.getEmailid() %></td><td><%= st.getSubject() %></td><td><%= st.getPassword() %> </td><td><a href="managestatus.html?q=<%= st.getEmailid() %>"> <% if(st.getStatus()==1){out.print("Blocked");}else {out.print("Approved");}  %></a> </td></tr>
	
	
<% }


Datahelper.closeConn();


%>
</table>


</div>



</div>
  <!-- nav End -->
</body>
</html>