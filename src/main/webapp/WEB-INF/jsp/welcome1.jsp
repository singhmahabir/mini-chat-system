<%@page import ="mypack.Dao" %>
<%@page session ="false" %>
<head>
<%@page import ="java.util.*" %>
<head>

		<script type="text/javascript">
		function abc()
		{
			var nm=document.getElementById("msg").value;			
			if(nm=="" || nm==null)
			{
				alert("message can not be empty");	
				return(false);	
			}
			else
				return(true);	
			}
	</script>
<%
	//response.setHeader("Refresh","3");
HttpSession session=request.getSession(false);
		if(session==null)
		response.sendRedirect("index.html");
		
	//session.setMaxInactiveInterval(5);

Client.client ob=(Client.client)session.getAttribute("clientob");
if(ob==null)
response.sendRedirect("index1.html");
out.println("<b>welcome :</b><font size='6' color='red'>"+ob.getFname()+"</font>");
%>


<title><%=ob.getUname()%></title>

</head>
                      
     
<body background="image/1.jpg" >
<center>
<font size="6" color="blue">Welcome to Chat System</font>
</center>

<p align="right">welcome: <b><%=ob.getUname()%><p></p>

<p align="right"><a href="logout.jsp">Logout</a> &nbsp;&nbsp; <a href="invalidate.jsp"><font size='3' color="red">Quit Account</font></a></p>
<a href="inbox.jsp">Inbox</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="reset.jsp"><font size='3' color="green">Reset Password</font></a>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="profile.jsp"><font color="orange">Profile</font></a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="group.jsp"><font size="4" color="blue">group</font></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="g1.jsp"><font size="3" color="blue">create Group</a>
<hr color="blue">

  
	  <form name="myForm" action="msgsend.jsp" onsubmit="return validateForm() method="post">

	<table align="center" height="100" width="100" >
               
 	 
              <tr>
		
                          <td>
                                <b>send to</b><select name="msgto">
			<%
			String s="";
			List l=mypack.Dao.get();
			for(int i=0;i<l.size();i++)
			{
				s=(String)l.get(i);
					if(!s.equals(ob.getUname()))
					{
			%>
			
		    <option  value=<%=s%> ><%=s%></option>
                              
                        <%
			}
			}
			%>     
                               
                                  </select >


                          </td>
		  	</tr>
	<tr><td>
              <textarea name="msg" rows="10" cols="30" id="txtname" >
				</textarea>
              </td> </tr>

	<tr><td>
	<input type="submit" value="submit" onclick="return abc()">
	</tr></td>
	<tr><td>
		<%String s2=(String)session.getAttribute("m");
		if(s2!=null)
		out.println(s2);
	
		%></tr></td>
	</table>
	</form>
<jsp:include page="page.jsp" />




	
			</body>