
<%@page import ="java.util.*" %>
<%@page session ="false" %>


<title>Group</title>
<jsp:include page="new.jsp"/>

	<%
		HttpSession session1=request.getSession(false);
		if(session1==null)
		
		response.sendRedirect("index.html");
	%>
	
		
	<%
					singh.mahabir.chat.mypack.Client ob=(singh.mahabir.chat.mypack.Client)session1.getAttribute("clientob");
						

					
					String gname=request.getParameter("add");
					String client=request.getParameter("client");

					//singh.mahabir.chat.mypack.Projects c=singh.mahabir.chat.mypack.Dao1.cheek2(gname);
					singh.mahabir.chat.mypack.Programmers pro=new singh.mahabir.chat.mypack.Programmers();
						pro.setPname(client);
						HashSet t1=new HashSet();
				//	t1.add(c);
						pro.setProjects(t1);
						//Dao1.savec(pro);
						out.println("client added successfully");
				%>
		
