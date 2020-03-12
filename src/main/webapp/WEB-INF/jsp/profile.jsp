<%@page import ="mypack.Dao" %>
<%@page session ="false" %>
<%@page import ="java.util.*" %>
<title>Profile Page</title>
  <jsp:include page="new.jsp" />

<%
	HttpSession session=request.getSession(false);
		if(session==null)
		response.sendRedirect("index.html");
		Client.client c=(Client.client)session.getAttribute("clientob");
%>
 <br><br>
	<center>
	<table>
	
	<tr><td>	User Name :</td><td><b> <%=c.getUname()%></b></td></tr>
	<tr><td>   First Name :</td><td><b> <%=c.getFname()%></b></td></tr>
	<tr><td>	Last Name :</td><td><b><%=c.getLname()%></b></td></tr>
	<tr><td>	Email id :</td><td><b><%=c.getEname()%></b></td></tr>
	<tr><td>	Address	: </td><td><b><%=c.getAdd()%></b></td></tr>
	<tr><td>	Date of Birth :</td><td><b><%=c.getDob()%></b></td></tr>
	</table>
	<br><br>
	
		<a href="register.jsp"><font size="3" color="red">Edit Profile</font></a>
	</center>
	

	



	