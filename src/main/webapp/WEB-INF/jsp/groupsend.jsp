<%@page import ="mypack.*" %>
<%@page import ="java.util.*" %>
<%@page import ="mypack.SentMail" %>
<%@page session ="false" %>
<body background="image/1.jpg" >

<%
	HttpSession session=request.getSession(false);
		if(session==null)
		response.sendRedirect("index.html");
		

		String msg=request.getParameter("msg");
		String send=request.getParameter("send");
		mypack.Programmers m=new mypack.Programmers();
			m.setMsg(msg);
			String client=(String)session.getAttribute("key");
			m.setPname(client);
		mypack.Projects c=Dao1.cheek2(send);
		HashSet t1=new HashSet();
			t1.add(c);
			m.setProjects(t1);
		Dao1.savec(m);
		session.setAttribute("m1","massage send successfull");
		out.println("message send successful !!!");
			
%>
		
		<p align="center"><a href="grouppro.jsp">back</a></p>