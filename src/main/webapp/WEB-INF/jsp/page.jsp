<%@page import ="mypack.Dao" %>
<%@page session ="false" %>
<%@page import ="java.util.*" %>
<%
HttpSession session1=request.getSession(false);
		if(session1==null)
		{
		response.sendRedirect("index.html");
		}
	%>
<head>
<table align="right" height="150" width="130" bgcolor="white" >
<tr>
<td>friends<hr></td></tr>
<%
		response.setHeader("Refresh","3");
			String s1="";
			List l1=mypack.Dao.get();
			for(int i=0;i<l1.size();i++)
			{
				s1=(String)l1.get(i);
				
				String e=(String)application.getAttribute(s1);
			
				if(e!=null)
				out.println("<tr><td><b>"+s1+"</b> <font color='red'>"+ e+"</font></tr></td>");
							
				else
				out.println("<tr><td><b>"+s1+"</b> <i>offline<i>"+"</tr></td>");
				
			
			}
			%>

			</table>