<html>
<head>
<title>Admin Login </title>

<style>

.bg {
  /* The image used */
  background-image: url("images/adbg.jpg");
font-family: Arial, Helvetica, sans-serif;
  /* Full height */
  height: 68%;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}


.input-field {
  width: 100%;
  padding: 10px;
  outline: none;
}

.input-field:focus {
  border: 2px solid dodgerblue;
}

/* Set a style for the submit button */
.btn {
  background-color: dodgerblue;
  color: white;
  padding: 15px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.btn:hover {
  opacity: 1;
}


</style>

</head>
<body class="bg">
<div style="margin-top:200px;margin-left: 24px;">

  <center>  <h2 style="color: white;">| Admin Login Here |</h2> </center>

   <form action="adminLogin.html" style="max-width:500px;margin:auto">
   <input class="input-field" type="text" placeholder="Username" name="username">
  
  <br>
  <br>
  <br>
      <input class="input-field" type="password" placeholder="Password" name="password">
   <br>
  <br>
  <br>
  <button type="submit" class="btn">Login</button>
</form>
<br>
${msg}

</div>

</body>
</html>
