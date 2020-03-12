<%@page import ="mypack.Dao" %>
<%@page import ="mypack.SentMail" %>
<%@page session ="false" %>
<body background="image/1.jpg" >

<%
	HttpSession session=request.getSession(false);
		if(session==null)
		response.sendRedirect("index.html");
		else
		{
		String msg=request.getParameter("msg");
		String sendto=request.getParameter("msgto");
		mypack.SentMail m=new mypack.SentMail();
			m.setSendto(sendto);
			m.setMsg(msg);
			String sendfrom=(String)session.getAttribute("key");
			
			m.setSendfrom(sendfrom);
		int i=mypack.Dao.savemsg(m);
		if(i>0)
		session.setAttribute("m","massage send successfull");
		
		else
		session.setAttribute("m","massage not send successfully");
		
		
		response.sendRedirect("welcome.jsp");
		
		}
%>

<br><br>

