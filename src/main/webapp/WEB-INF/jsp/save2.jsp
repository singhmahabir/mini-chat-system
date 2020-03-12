
<%@page import ="mypack.Dao" %>
<%@page session ="false" %>
<body background="image/1.jpg" >


<jsp:useBean id="ob" class="mypack.client"/>
<jsp:setProperty property="*" name="ob" />
<%
		HttpSession session=request.getSession(false);
		if(session==null)
		response.sendRedirect("index.html");
		String ne=request.getParameter("pass1");
		String s=(String)session.getAttribute("key");
		if(s.equals(ne))
		response.sendRedirect("id2.jsp");
		boolean b=Dao.cheek(s);
		if(!b)
		{
		Dao.setUname(s,ne);
		}
		else
		response.sendRedirect("id1.jsp");
		//session.invalidate();
		

	out.println("<b>"+s+"</b> your user id successfully changed to "+ne);
	%>
	<br><br>
<jsp:include page="index.html"/>	
	