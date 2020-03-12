<%@page import ="mypack.Dao" %>
<%@page session ="false" %>

<%@page import ="java.util.*" %>
<head>
<%
	HttpSession session=request.getSession(false);
		if(session==null)
		response.sendRedirect("index.html");

Client.client ob=(Client.client)session.getAttribute("clientob");
if(ob==null)
response.sendRedirect("index1.html");
out.println("<b>welcome :</b><font size='3' color='red'>"+ob.getFname()+"</font>");
%>


<title><%=ob.getUname()%></title>

</head>
   
<body background="image/1.jpg" >
<center><marquee>
<font size="4" color="blue">Welcome to Chat System</font>
</marquee></center>

<p align="right">welcome: <b><%=ob.getUname()%></p>

<p align="right"><a href="logout.jsp">Logout</a> &nbsp;&nbsp; <a href="invalidate.jsp"><font size='3' color="red">Quit Account</font></a></p>
<a href="inbox.jsp">Inbox</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="reset.jsp"><font size='3' color="green">Reset Password</font></a>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="profile.jsp"><font color="orange">Profile</font></a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="group.jsp"><font size="4" color="blue">group</font></a>
<hr color="blue">
