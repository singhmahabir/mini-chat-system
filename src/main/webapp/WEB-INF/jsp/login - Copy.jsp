<%@page import ="singh.mahabir.chat.mypack.Dao" %>
<%@page session ="false" %>
<%@page import ="java.util.List" %>
<head>

<link rel="stylesheet" type="text/css" href="my.css"/>
<script>
function validateForm()
	{
	var x=document.forms["myForm"]["msg"].value;
		if (x==null || x=="")
		{
		alert("enter messaege");
		return false;
		}
	}
</script>

<%
HttpSession session = request.getSession(false);
		if(session!= null){
		session.invalidate();
		}
		session = request.getSession(true);

singh.mahabir.chat.mypack.Client ob = Dao.cheek1(request.getParameter("uid"),request.getParameter("pass"));
if(ob == null){
response.sendRedirect("index1.html");
}
session.setAttribute("key",ob.getUname());

session.setAttribute("clientOb",ob);
application.setAttribute(ob.getUname(),"online");

%>


<title><%=ob.getUname()%></title>

</head>
                      
     
<body background="image/1.jpg" >
<center>
<h1 ><font color="blue">Welcome to Chat System</font></h1>
</center>

<p align="right">welcome: <b><%=ob.getUname()%><p></p>

<h4 align="right"><a href="logout.jsp">Logout</a> <a href="invalidate.jsp">Quit Account</a></h4>
<hr>

  
	  <form name="myForm" action="msgsend.jsp" onsubmit="return validateForm()" method="post" >

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
			%>
			
		    <option  value = <%= s %> > <%=s%> </option>
                              
                        <%
			}
			%>     
                               
                                  <select >


                          </td>
  	</tr>
	<tr><td>
              <textarea name="msg" rows="10" cols="30">
				</textarea>
              </td> </tr>

	<tr><td>
	<input type="submit">
	</tr></td>
	</table>
	</form>

	
			</body>