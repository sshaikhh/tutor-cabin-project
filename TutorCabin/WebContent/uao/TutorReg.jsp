<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="reg_tutor.html">

<input type = "text" name = "mobileno" placeholder="enter mobile no"><br>
<input type = "text" name = "email" placeholder="enter email"><br>
<input type = "text" name = "password" placeholder="enter password"><br>
<input type = "text" name = "address" placeholder="enter address"><br>
<input type="submit" value ="register">

</form>
${msg}
</body>
</html>