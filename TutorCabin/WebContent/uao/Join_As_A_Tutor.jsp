<%@ include file = "Header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Middle content start-->

<div style="height: 1064px;" class="middle_container col-sm-12">

<div style="margin-top: 79px; margin-left: 84px; " class="col-sm-6 float-left">      
<form action ="reg_tutor.html" method="post" enctype="multipart/form-data">
    <h3>Register</h3>
    <hr>

    <label for="name"><b>Full Name</b></label>&nbsp&nbsp&nbsp
    <input type="text"  name="t_name" size="70">
    <br>
    <label for="email"><b>Email Id</b></label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <input type="text"  name="emailid" sixze="70">
    <br>
    <label for="password"><b>Password</b></label>&nbsp&nbsp&nbsp&nbsp&nbsp
    <input type="text" name="password" size="70">
    <br>

    <label for="psw-repeat"><b>Repeat Password</b></label>
    <input type="password" placeholder="Repeat Password" name="psw-repeat">
    <br>
    
    <label for="Contact"><b>Contact Number</b></label>&nbsp&nbsp&nbsp
    <input type="text"  name="contact" size="70">
    <br>
    <label for="Education"><b>Education</b></label>&nbsp&nbsp&nbsp
    <input type="text" name="education" size="70">
    <br>
    <label for="Education"><b>Teaching experience</b></label>&nbsp&nbsp&nbsp
 <select name ="experience">
    <option value="Experience*">Experience*</option>
    <option value="No Previous Experience"> No Previous Experience</option>
    <option value="1 Year">1 Year</option>
    <option value="2 Year">2 Year</option>
    <option value="3 Year">3 Year</option>
    <option value="More then 3s Year">More then 3s Year</option>

  </select>
     <br>
    <label for="boardtoTeach"><b>Board</b></label>&nbsp&nbsp&nbsp
    <select name = "board">
    <option  value="Choose Option">Choose Option</option>
    <option  value="CBSE"> CBSE</option>
    <option  value="ICSE">ICSE</option>
    <option  value="Local State Board">Local State Board</option>
    <option  value="IGCSE">IGCSE</option>
  </select>
    <br>
    <label for="Education"><b>Date of Birth</b></label>&nbsp&nbsp&nbsp
    <input type="Date" name="dob" size="70">
    <br>
    <label for="Education"><b>Subject can teach</b></label>&nbsp&nbsp&nbsp
    <input type="text" name="subject" size="70">
    <br>
    <label for="Education"><b>Residential Address</b></label>&nbsp&nbsp&nbsp
    <input type="text" name="address" size="70">
    <br>
    <label for="city"><b>City</b></label>&nbsp&nbsp&nbsp
    <select name = "city">
    <option  value="Choose Option">Choose Option</option>
    <option  value="Indore"> Indore</option>
    <option  value="Bhopal"> Bhopal</option>
    <option  value="Harda"> Harda</option>
    <option  value="Sehore"> Sehore</option>
    <option  value="Jabalpur"> Jabalpur</option>
    <option  value="Hosangabad"> Hosangabad</option>
    <option  value="Khandwa"> Khandwa</option>
    
  </select>
   <br>
    <label for="photo"><b>Upload Photo</b></label>&nbsp&nbsp&nbsp
    <input type="file" name="Photo">
    <br>
    
    <hr>
   <input type="checkbox" name=""> <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
    <button type="submit" class="registerbtn">Submit</button>
  <br>
  <div class="container signin">
    <p>Already have an account? <a href="#">Sign in</a>.</p>
  </div>
</form>


</div>

</div>




<!-- Middle content End-->





<!--  footer start-->

<%@ include file = "Footer.jsp" %>
