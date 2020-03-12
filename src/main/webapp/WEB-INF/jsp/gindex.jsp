<%@page import ="java.util.*" %>
<%@page import ="mypack.*" %>
<title>Message Page</title>
                  
    
	<jsp:include page="new.jsp"/>

<table align="center" height="300" width="300" bgcolor="white" >
<caption><font color="red" >received message</font></caption>
  <tr>
    <td colspan="4"><font color="blue"> Sendfrom</font></td>
	<td colspan="4"><font color="blue"> Msg</font></td></tr>
    
  </tr>

<%
		String gname=request.getParameter("gname");
		mypack.Projects p= Dao1.cheek2(gname);
		Set t=p.getProgrammers();
		 Iterator i2=t.iterator();
        
        while(i2.hasNext())
        {
            Programmers t1=(Programmers)i2.next();
            out.println("<tr><td colspan='4'>"+t1.getPname()+"</td><td colspan='4'>"+t1.getMsg()+"</tr>");     
        }

%>

</table>