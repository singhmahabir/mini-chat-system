<%@page import ="singh.mahabir.chat.dl.UserRepository" %>
<%@page session ="false" %>
<%@page errorPage="err.jsp" %>

<title>Forget password</title>


		<%
			String name=request.getParameter("uid");
				String ename=request.getParameter("ename");
				//Client.client b=mypack.Dao.cheek2(name,ename);
				//if(b!=null)
				{
				//String pass=b.getPass();
				//String mail=b.getEname();
				     //SendMailSSL.send(mail,pass);
				//out.println("your password is <b>"+pass+"</b>");
		%>
		
		<%@include file="index.jsp" %>
		<%
		}
		//else
		{
		out.println("<center> your <b>User name</b> and <b>email_id</b> not match try again</center><br><br>");
		%>
		
		<%@include file="forget.html" %>
		<%
		}

%>
<br>
<center>
<a href="index.html">home </a>
<center>