<%@ include file = "Header.jsp" %>



<div style="height: 688px;" class="middle_container col-sm-12">
<!-- <div style="margin-top: 81px; margin-left: 94px;" class="col-sm-6 float-left"> -->
  <h3>Contact</h3>
  <hr>
  <br>
<form>
  <label for="Name*"><b>Name*</b></label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
  <input style= "padding-right:400px;" type= "text"  id="name" name="name"><br><br>
  <label for="Email"><b>Email*</b> </label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
  <input style= "padding-right:400px;"type="email" id="email" name="email"><br><br>
  <label for="message"><b>Message*</b> </label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
  <textarea style="padding-right: 400px;padding-bottom: 100px;"></textarea> <br><br>
  <label for="captha"><b>Captha*</b> </label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
  <input style= "padding-right:200px;"type="captha" id="captha" name="captha"><br><br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
  <input style="background-color: #0da8d6" type="submit" value="Submit message">
</form>
<!-- </div> -->

</div>




<!-- Middle content End-->





<!--  footer start-->

<%@ include file ="Footer.jsp" %>