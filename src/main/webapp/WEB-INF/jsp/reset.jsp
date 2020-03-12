

<head>

<title>Reset Page</title>
<jsp:include page="new.jsp"/>
<script>
function validateForm()
	{
	var x=document.forms["myForm"]["pass1"].value;
		if (x==null || x=="")
		{
		alert("User Name must be filled out");
		return false;
		}
	var x1=document.forms["myForm"]["pass"].value;
		if (x1==null || x1=="")
		{
		alert("User Name must be filled out");
		return false;
		}
		
		if (x1!=x)
		{
		alert("password must be match");
		return false;
		}
		 
		if ( x.length<=4 || x.length>=21 )
		{
		alert("Password must be filled out minimum 5 and maximum 20");
		return false;
		
		}
	}
		</script>

		<br><br>
		<center>
		<form name="myForm" action="reset1.jsp" onsubmit="return validateForm()" method="post">

		Enter new Password* :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="pass" size="25" />
		<br>
		Re enter Password* :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="password" name="pass1" size="25"/>
		<br><br>
		<input type="submit" value="submit"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" name="s"  value="Reset" />
		</form><br>
		<br><a href="welcome.jsp"><b>back</b></a>
		</center>
		</body>