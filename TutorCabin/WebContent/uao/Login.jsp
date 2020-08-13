<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>
	</title>
	<link rel="stylesheet" type="text/css" href="bootstrap-4.4.1-dist/css/signup&login_cssR.css"><link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
	<link rel="stylesheet" type="text/css" href="bootstrap-4.4.1-dist/css/animate.css">
</head>
<body><div class="animated fadeInDown " id="ani">
	<div class="container">
		<div class="formB">
			<div class="buttonB">
				<div id="btnn"></div>
				<button type="button" class="btn" onclick="login()">STUDENT LOGIN</button>
				<button type="button" class="btn" onclick="login2()">TEACHER LOGIN</button>	
				</div>
				
					<form class="field" id="login" action="loginlogic.html" method="post">
						<input type="email" name="email" class="if" placeholder="Enter Email-Id" required="">
						<input type="Password" name="password" class="if" placeholder="Enter Password" required="">
						<input type="checkbox" name="" class="checkB"><span>Remember Password</span>
						<input type="submit" class="sub" value="login1">${msg1}
					</form>
					<form class="field" id="login2" action="TutorloginPage.html" method="post">
						<input type="email" name="useremail" class="if" placeholder="Enter Email-Id" required="">
						<input type="Password" name="userpass" class="if" placeholder="Enter Password" required="">
						<input type="checkbox" name="" class="checkB"><span>Remember Password</span>
						<input type="submit" class="sub" value="login1">${msg1}
					</form>
		</div>
	</div>
	<script>
		
		var x = document.getElementById("login");
		var y = document.getElementById("login2");
		var z = document.getElementById("btnn");

		function login2() {
	
			x.style.left = "-400px";
			y.style.left = "10px";
			z.style.left = "110px";
		}
		
		function login() {
	
			x.style.left = "10px";
			y.style.left = "450px";
			z.style.left = "0";
		}

	</script>
</div>
</body>
</html>
</html>