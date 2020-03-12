<%@page import ="mypack.Dao" %>
<%@page session ="false" %>
<body background="image/1.jpg" >

<%
	HttpSession session=request.getSession(false);
		if(session==null)
		response.sendRedirect("index.html");
		else
		{
		String name=(String)session.getAttribute("key");
		mypack.Dao.deleate(name);
		out.println("<center> welcome back <b>"+name+"</b></center>");
		
		}

%>
<br><br>
<%@include file="index.html" %>
