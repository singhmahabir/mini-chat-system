
<%@page import ="mypack.Dao" %>
<%@page session ="false" %>
<body background="image/1.jpg" >


<jsp:useBean id="ob" class="mypack.client"/>
<jsp:setProperty property="*" name="ob" />
<%
		HttpSession session=request.getSession(false);
		if(session==null)
		response.sendRedirect("index.html");
		
		String s=(String)session.getAttribute("key");
		
		

	Dao.editrecord(ob,s);

	out.println("<b>"+ob.getUname()+"</b> your account successfully edited");
	%>
	<br><br>
	<jsp:include page="welcome.jsp" />
	