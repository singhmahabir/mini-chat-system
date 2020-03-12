
<%@page session ="false" %>
<body background="image/1.jpg" >
<%
	HttpSession session=request.getSession(false);
		if(session==null)
		response.sendRedirect("index.html");
		else
		{
		String s=(String)session.getAttribute("key");
		session.removeAttribute(s);
		application.removeAttribute(s);
		session.invalidate();
		response.sendRedirect("index.html");
		}

%>