<%@page import ="mypack.*" %>
<%@page import ="java.util.*" %>
<%@page session ="false" %>


<title>Group</title>
<jsp:include page="new.jsp"/>

	<%
		HttpSession session1=request.getSession(false);
		if(session1==null)
		
		response.sendRedirect("index.html");
	%>
		<br><br><font color="red">your group</font><br><br>
		
	<%
			
		
			String s="";
			HashSet ht=new HashSet();
			String s1=(String)session1.getAttribute("key");
			List l=mypack.Dao1.get(s1);
			String s5[]=new String[l.size()];
			for(int i=0;i<l.size();i++)
			{
				s=(String)l.get(i);
				s5[i]=s;
	
			%>
			<form method="post" action="grouppro.jsp">
				<input type="submit" name="gname"  value=<%=s%> >
			</form>
			
			<%
			}
			%>

			<br><br><font color="red">added group</font><br><br>
			<%

			List l1=mypack.Dao1.getall();	
			for(int i=0;i<l1.size();i++)
			{
				s=(String)l1.get(i);
			
			mypack.Projects p= Dao1.cheek2(s);
			Set t=p.getProgrammers();
			 Iterator i2=t.iterator();
        
        		while(i2.hasNext())
      			  {
       			     Programmers t1=(Programmers)i2.next();
					ht.add(t1.getPname());
			 }
			for(int k=0;k<s5.length;k++)
			{
				ht.remove(s5[k]);
			}
			Iterator i3=ht.iterator();
        
        		while(i3.hasNext())
      			  {
       			     String client=(String)i3.next();
				if(client.equals(s1)){
			%>
				<form method="post" action="grouppro.jsp">
				<input type="submit" name="gname" value=<%=s%> >
			</form>
			
		<%		
			}
			 }
			}
		%>
					