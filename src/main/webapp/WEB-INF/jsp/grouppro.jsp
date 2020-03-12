<%@page import ="mypack.*" %>
<%@page import ="java.util.*" %>
<%@page session ="false" %>


<title>Group</title>
<jsp:include page="new.jsp"/>

	<%
		HttpSession session1=request.getSession(false);
		if(session1==null)
		
		response.sendRedirect("index.html");
		String gname=request.getParameter("gname");
	%>
	


<a href="gindex.jsp?gname=<%=gname%>">group Inbox</a>

		
	<%
				Client.client ob=(Client.client)session1.getAttribute("clientob");
				
					

				
				
				mypack.Projects c=Dao1.cheek2(gname);
				Set set= c.getProgrammers();
				HashSet set1=new HashSet();
				Iterator i2=set.iterator();
			        
			      			  while(i2.hasNext())
			        		{
			        		    Programmers t1=(Programmers)i2.next();
			       			    set1.add(t1.getPname());     
			       			 }
			%>
			
		<center><font color="red">Group Name: </font><%=gname%></center>
	<%
		List l1=Dao1.get1(gname);
		String owner=(String)l1.get(0);
		out.println("<p align='right'><font align='right' color='red' size='4'>OWNER:- "+owner+"</font></p>");	
	%>

	
		<form name="myForm" action="clientadd.jsp" onsubmit="return validateForm() method="post">

	<table align="right" height="100" width="100" >
               
 	 
              <tr>
		
                          <td>
                                <b>Add to Group</b><select name="client">
	<%
			String s="";Programmers t1=null;
			List l=mypack.Dao.get();
	

			
			for(int i=0;i<l.size();i++)
			{
			 s=(String)l.get(i);
				if(!s.equals(ob.getUname()))
        			set1.add(s);
			}
			Iterator i3=set1.iterator();
       			 while(i3.hasNext())
       			{

				String name=(String)i3.next();

	 

			%>
			
		    <option  value=<%=name%> ><%=name%></option>
                              
                        <%
			}
			
			%>     
                               
                                  </select >
			 </td>
		  	</tr>
	<tr><td>
		<input type="submit" name="add" value=<%=gname%> onclick="return abc()">
	</tr></td>
	<tr><td>
	</table></form>
			

				<form name="myForm" action="groupsend.jsp" onsubmit="return validateForm() method="post">

	<table align="center" height="100" width="100" ><tr><td>
			<textarea name="msg" rows="10" cols="30" id="txtname" >
				</textarea></td></tr><tr><td>
				<input type="submit" name="send" value=<%=gname%> onclick="return abc()">
				</td></tr></table></form>

		<%String s2=(String)session1.getAttribute("m1");
		if(s2!=null)
		out.println(s2);
		%>
