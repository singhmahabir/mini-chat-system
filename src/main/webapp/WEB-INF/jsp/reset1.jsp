<%@page import ="mypack.Dao" %>
<%@page session ="false" %>
<%@page import ="java.util.*" %>
<%
	HttpSession session=request.getSession(false);
		if(session==null)
		response.sendRedirect("index.html");
		
		String pass =request.getParameter("pass");
		String name=(String)session.getAttribute("key");
		Client.client c=(Client.client)session.getAttribute("clientob");
		boolean b=mypack.Dao.reset(c,name,pass);
		if(b)
		out.println("</b>"+name+"</b> your password set successfully" );
%>
<jsp:include page="index.html" />

	