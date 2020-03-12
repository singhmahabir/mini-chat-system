<%@page import ="mypack.Dao" %>
<%@page session ="false" %>
<%@page import ="java.util.*" %>
<%
HttpSession session1=request.getSession(false);
		if(session1==null)
		
		response.sendRedirect("index.html");
		
	%>
<head>

<title>Reset User name</title>
<script>
function validateForm()
	{
	var x=document.forms["myForm"]["pass1"].value;
		if (x==null || x=="")
		{
		alert("User Name must be filled out");
		return false;
		}
	
		
		
	}
		</script></head>

<body  background="image/1.jpg" topmargin="30" leftmargin="100" >
		<marquee>
			<h1 ><font color="blue">Welcome to Chat System</font></h1>
		</marquee><br><br>
		<hr color="blue">
		<br><br>

	<center>
	<center><font color="red" size="3">user exist try some other user Name</font></center><br>
	
		<form name="myForm" action="save2.jsp" onsubmit="return validateForm()" method="post">

		Enter new User Name* :<input type="text" name="pass1" size="25" />
		<br><br>
		<input type="submit" value="submit"/><input type="reset" name="s"  value="Reset" />
		</form><br>
		<br><a href="register.jsp"><b>back</b></a>
		</body>