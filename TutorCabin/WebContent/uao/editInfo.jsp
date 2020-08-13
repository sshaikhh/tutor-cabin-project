<%@ include file = "Header.jsp" %>

<%@page import="org.hibernate.Query"%>
<%@page import="template.Datahelper"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<!-- ADD NEW PRODUCT model is here -->
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
          <p>Some text in the modal.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  


	<%
	Datahelper.configureFile();
	Query q;
	%>
	<div style ="margin:">
	<table>
	<form action ="changeName.html">
	<tr>
	<td>Old Name :</td>
	<td><input type = "text" value = "<%= session.getAttribute("tutorName")%>"></td>
	
	<td>New Name :</td>
	<td><input type ="text" name ="newName"></td>
	
	<td>Enter password</td>
	<td><input type ="password" name="password"></td>
		</form>
	<td></td>
	<td>  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>							</td>
	</tr>

	
	<div style ="margin:10% 40%">
	<table>
	<form action ="changeEmail.html">
	<tr>
	<td>Old Email :</td>
	<td><input type = "text" value = "<%= session.getAttribute("tutorEmail")%>"></td>

	<td>New Email :</td>
	<td><input type ="text" name ="newEmail"></td>

	<td>Enter password</td>
	<td><input type ="password" name="password"></td>
	
	<td></td>
	<td><input type ="submit" value ="Change Email"></td>
	</tr>
	</form>
	

	</table></div>
	
		<%-- <%if(request.getAttribute("")) %> --%>
	<h2>Successfully Changed</h2>
	<a href ="dashboard.html">Go To Home</a>
	
</body>
</html>