<%@page import ="java.util.*" %>

<title>Message Page</title>
                  
    
	<jsp:include page="new.jsp"/>

<table align="center" height="300" width="300" bgcolor="white" >
<caption><font color="red" >received message</font></caption>
  <tr>
    <td colspan="4"><font color="blue"> Sendfrom</font></td>
	<td colspan="4"><font color="blue"> Msg</font></td>
    
  </tr>

<%

		String sendto=(String)session.getAttribute("key");
		List l=mypack.Dao.get1(sendto);
			for(int i=0;i<l.size();i++)
	{
		out.print("<tr>");
	Object row[]=(Object[])l.get(i);
		for(int k=0;k<row.length;k++)
		{
			out.print(" <td colspan='4'>"+row[k].toString()+"\t</td>");
		}
		System.out.println("</tr>");
	}
%>
</table>
<hr>
<br><a href="welcome.jsp">back to deskbord</a>
