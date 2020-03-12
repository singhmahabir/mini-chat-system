<%@page session ="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
<script src="js/Validation.js"></script>
	
<title>Login Page</title>

</head>
<body background = "image/1.jpg" bgcolor="teal" topmargin="40"
	leftmargin="200">
	<marquee>

		<h1>
			<font color="blue">Welcome to Chat System</font>
		</h1>
	</marquee>

	<center>
		<form name = "myForm" action = "login"
			onsubmit ="return validateCredencials()" method ="post">
			<strong>User Id</strong> &nbsp&nbsp&nbsp:<input type ="text" name = "uid" placeholder="User Name" required="required"> <br>
			<strong>Password:</strong><input type="password" name ="pass" placeholder="Create a password" required="required"> <br> 
			<a	href="forget.html">Forget Password</a><br>
			<input type="submit">
			<input type="reset" name="s" value="Reset" />
	</center>
	<hr>
	<h2 align="center">New Users</h2>

	<h2 align="center">
		<a href="jsp/register.html">Register</a>
	</h2>
</body>
</html>