
<%@page import ="singh.mahabir.chat.dl.UserRepository" %>
<%@page import ="singh.mahabir.chat.dl.User" %>
<%@page session ="false" %>
<body background="image/1.jpg" >


<jsp:useBean id="client" class="singh.mahabir.chat.mypack.Client"/>
<jsp:setProperty property="*" name="ob" />

<jsp:useBean id="repository" class="singh.mahabir.chat.dl.UserRepository"/>

<%
	boolean b = false;
    User user = repository.findByUserId(client.getUserName());
	if(user == null){
	response.sendRedirect("register1.html");
	}
	User nUser = new User();
	nUser.setEmail(client.getEmail());
	nUser.setDob(client.getDob());
	nUser.setFirstName(client.getFName());
	nUser.setLastName(client.getLName());
	nUser.setUserId(client.getUserName());
	if(repository.save(nUser));	
	{
	out.println("<b>"+client.getUserName()+"</b> your account is successfully created");
	
	%>
	<br><br>
	<%@include file="index.jsp" %>
	<%
	}
	else {
	
	out.println("<center><b>try again</b></center>");
	
	%>
	
	<br><br>
		<%@include file="register1.html" %>
	<%
	}
	%>
	
