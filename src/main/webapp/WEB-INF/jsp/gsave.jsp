
<%@page import ="mypack.*" %>
<%@page session ="false" %>




<jsp:include page="new.jsp"/>


<%
	HttpSession session=request.getSession(false);
	String c=(String)session.getAttribute("key");
	String gname=request.getParameter("uname");
	Projects ob=new Projects();
	
	
	
	ob.setProname(gname);
	boolean b=Dao1.cheek(gname);
	if(!b)
	{
	ob.setOwner(c);
	Dao1.savegroup(ob);
	out.println("<center><b>Group created !!!! now add members</b><br>");
	out.println("<a href='group.jsp'>Groups</a></center>");
	}
	else{
	out.println("<center><b>Group created already try another name</b><br>");
	out.println("<a href='g1.jsp'>back</a></center>");}
	
		
	%>
