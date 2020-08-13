 <%@page import="template.Datahelper"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="dao.Tutor"%> 
<%@ include file = "Header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

	
      

<div class="row" style="position:sticky!important;">

  </div>

<div class = "container" style ="">

<!-- This is Edit name modal -->
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h6 class="modal-title"></h6>
        </div>
        <div class="modal-body">
          <table align = "center" style ="background:white">
				<form action ="changeName.html">
				<tr>
				<td>change name :</td>
				</tr>
				<tr>
				<td><input type = "text" name="newName" value ="<%= session.getAttribute("tutorName")%>"></td>
				</tr>
				<td><input type ="submit" value ="Change Name"></td>
				</tr>
				</form>
		</table>
			          

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
  <!-- Edit name Modal is closed here --> 
  
  <!-- This is Change Email model  -->
  
  
  <!-- ADD NEW PRODUCT model is here -->
  <!-- Modal -->
  <div class="modal fade" id="changeEmail" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h6 class="modal-title"></h6>
        </div>
        <div class="modal-body">
          <table align = "center" style ="background:white">
				<form action ="changeEmail.html">
				<tr>
				<td>change email :</td>
				</tr>
				<tr>
				<td><input type = "text" name="newEmail" value ="<%= session.getAttribute("tutorEmail")%>"></td>
				</tr>
				<td><input type ="submit" value ="Change Email"></td>
				</tr>
				</form>
		</table>
			          

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
  <!-- Change Email Modal is closed here  -->
    <!-- This is Change Contact model  -->
  
  <!-- Modal -->
  <div class="modal fade" id="changeContact" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h6 class="modal-title"></h6>
        </div>
        <div class="modal-body">
          <table align = "center" style ="background:white">
				<form action ="changeContact.html">
				<tr>
				<td>change contact :</td>
				</tr>
				<tr>
				<td><input type = "text" name="newContact" value ="<%= session.getAttribute("tutorContact")%>"></td>
				</tr>
				<td><input type ="submit" value ="Change Contact"></td>
				</tr>
				</form>
		</table>
			          

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
  <!-- Change Contact Modal is closed here  -->
    <!-- This is Change Education model  -->
  
  <div class="modal fade" id="changeEducation" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h6 class="modal-title"></h6>
        </div>
        <div class="modal-body">
          <table align = "center" style ="background:white">
				<form action ="changeEducation.html">
				<tr>
				<td>change education :</td>
				</tr>
				<tr>
				<td><input type = "text" name="newEducation" value ="<%= session.getAttribute("tutorEducation")%>"></td>
				</tr>
				<td><input type ="submit" value ="Change Education"></td>
				</tr>
				</form>
		</table>
			          

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
  <!-- Change Education Modal is closed here  -->
<!-- This is Change Teaching Experience model  -->
  
  <div class="modal fade" id="changeTeachingEx" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h6 class="modal-title"></h6>
        </div>
        <div class="modal-body">
          <table align = "center" style ="background:white">
				<form action ="changeTeachingEx.html">
				<tr>
				<td>change Experience :</td>
				</tr>
				<tr>
				<td><input type = "text" name="newExperience" value ="<%= session.getAttribute("tutorExperience")%>"></td>
				</tr>
				<td><input type ="submit" value ="Change Experience"></td>
				</tr>
				</form>
		</table>
			          

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
  <!-- Change Teaching Experience Modal is closed here  -->
  <!-- This is Change Board model  -->
  
  <div class="modal fade" id="changeBoard" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h6 class="modal-title"></h6>
        </div>
        <div class="modal-body">
          <table align = "center" style ="background:white">
				<form action ="changeBoard.html">
				<tr>
				<td>change Board :</td>
				</tr>
				<tr>
				<td><input type = "text" name="newBoard" value ="<%= session.getAttribute("tutorTeachingBoard")%>"></td>
				</tr>
				<td><input type ="submit" value ="Change Board"></td>
				</tr>
				</form>
		</table>
			          

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
  <!-- Change Board Modal is closed here  -->
  <!-- This is Change DOB model  -->
  
  <div class="modal fade" id="changeDOB" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h6 class="modal-title"></h6>
        </div>
        <div class="modal-body">
          <table align = "center" style ="background:white">
				<form action ="changeDOB.html">
				<tr>
				<td>change DOB :</td>
				</tr>
				<tr>
				<td><input type = "text" name="newDOB" value ="<%= session.getAttribute("tutorDOB")%>"></td>
				</tr>
				<td><input type ="submit" value ="Change DOB"></td>
				</tr>
				</form>
		</table>
			          

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
  <!-- Change DOB Modal is closed here  -->
  <!-- This is Change Teaching Subject model  -->
  
  <div class="modal fade" id="changeTeachingSub" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h6 class="modal-title"></h6>
        </div>
        <div class="modal-body">
          <table align = "center" style ="background:white">
				<form action ="changeTeachingSub.html">
				<tr>
				<td>change teaching subject :</td>
				</tr>
				<tr>
				<td><input type = "text" name="newSubject" value ="<%= session.getAttribute("tutorTeachingSub")%>"></td>
				</tr>
				<td><input type ="submit" value ="Change Subject"></td>
				</tr>
				</form>
		</table>
			          

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
  <!-- Change Teaching subject Modal is closed here  -->
  <!-- This is Change Residential Address model  -->
  
  <div class="modal fade" id="changeResAddress" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h6 class="modal-title"></h6>
        </div>
        <div class="modal-body">
          <table align = "center" style ="background:white">
				<form action ="changeResAddress.html">
				<tr>
				<td>change address :</td>
				</tr>
				<tr>
				<td><input type = "text" name="newResAddress" value ="<%= session.getAttribute("tutorAddress")%>"></td>
				</tr>
				<td><input type ="submit" value ="Change Address"></td>
				</tr>
				</form>
		</table>
			          

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
  <!-- Change Residential Address Modal is closed here  -->
  <!-- This is Change City model  -->
  
  <div class="modal fade" id="changeCity" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h6 class="modal-title"></h6>
        </div>
        <div class="modal-body">
          <table align = "center" style ="background:white">
				<form action ="changeCity.html">
				<tr>
				<td>change city :</td>
				</tr>
				<tr>
				<td><input type = "text" name="newCity" value ="<%= session.getAttribute("tutorCity")%>"></td>
				</tr>
				<td><input type ="submit" value ="Change City"></td>
				</tr>
				</form>
		</table>
			          

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
  <!-- Change City Modal is closed here  -->
  
  
  
  
  
  
  
  


<table class = "table" class = "table-responsive" style = "margin-top:50px;">
<%
 Datahelper.configureFile();
Query q;
q=Datahelper.getRecord("from Tutor t where t.tutorid=" + session.getAttribute("tutorID"));
List lst = q.list();
Iterator it = lst.iterator();
while(it.hasNext())
{
	Tutor t = (Tutor)(it.next());%>
<tr>
<td>Tutor Name</td>
<td><%= t.getT_name() %></td>
<td><button type="button" class="btn btn-default btn-sm" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-pencil"></span></button></td>
</tr>

<tr>
<td>Email Id</td>
<td><%= t.getEmailid()%></td>
<td><button type="button" class="btn btn-default btn-sm" data-toggle="modal" data-target="#changeEmail"><span class="glyphicon glyphicon-pencil"></span></button></td>
</tr>

<tr>
<td>Contact</td>
<td><%= t.getContact() %></td>
<td><button type="button" class="btn btn-default btn-sm" data-toggle="modal" data-target="#changeContact"><span class="glyphicon glyphicon-pencil"></span></button></td>
</tr>

<tr>
<td>Education</td>
<td><%= t.getEducation() %></td>
<td><button type="button" class="btn btn-default btn-sm" data-toggle="modal" data-target="#changeEducation" ><span class="glyphicon glyphicon-pencil"></span></button></td>
</tr>

<tr>
<td>Teaching Experience</td>
<td><%= t.getExperience() %></td>
<td><button type="button" class="btn btn-default btn-sm" data-toggle="modal" data-target="#changeTeachingEx" ><span class="glyphicon glyphicon-pencil"></span></button></td>
</tr>

<tr>
<td>Board</td>
<td><%= t.getBoardtoTeach() %></td>
<td><button type="button" class="btn btn-default btn-sm" data-toggle="modal" data-target="#changeBoard"><span class="glyphicon glyphicon-pencil"></span></button></td>
</tr>

<tr>
<td>Date Of Birth</td>
<td><%= t.getDob() %></td>
<td><button type="button" class="btn btn-default btn-sm" data-toggle="modal" data-target="#changeDOB" ><span class="glyphicon glyphicon-pencil"></span></button></td>
</tr>

<tr>
<td>Subject For Teaching</td>
<td><%= t.getSubjecttoTeach() %></td>
<td><button type="button" class="btn btn-default btn-sm" data-toggle="modal" data-target="#changeTeachingSub" ><span class="glyphicon glyphicon-pencil"></span></button></td>
</tr>

<tr>
<td>Residential Address</td>
<td><%= t.getAddress() %></td>
<td><button type="button" class="btn btn-default btn-sm" data-toggle="modal" data-target="#changeResAddress" ><span class="glyphicon glyphicon-pencil"></span></button></td>
</tr>

<tr>
<td>City</td>
<td><%= t.getCity() %></td>
<td><button type="button" class="btn btn-default btn-sm" data-toggle="modal" data-target="#changeCity" ><span class="glyphicon glyphicon-pencil"></span></button></td>
</tr>


<% }
/* Datahelper.closeConn(); */
%>
</table>
</div>




<%@ include file = "/uao/Footer.jsp" %>