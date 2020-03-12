<%@page import ="java.util.*" %>

<title>Message Page</title>
                  
    
	<jsp:include page="new.jsp"/>

		<script>
	function validateForm()
	{
	var x=document.forms["myForm"]["uname"].value;
		if (x==null || x=="")
		{
		alert("Group Name must be filled out");
		return false;
		}

}
</script>

<center>
		<form name="myForm" action="gsave.jsp" onsubmit="return validateForm()" method="post">


		Group Name* :<input type="text" name="uname" size="25" />
		<br>

		<input type="submit" value="create"/><input type="reset" name="s"  value="Reset" />
		<br>
		
	</form>



<hr>
<br><a href="welcome.jsp">back to deskbord</a>
