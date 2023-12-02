<%@ page import="Dbconn.dbconn" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<%

String id=request.getParameter("ids");


try{
	Connection con=dbconn.create();
	Statement st=con.createStatement();
	st.executeUpdate("DELETE FROM findingcriminals.polaquist where id='"+id+"' ");
	response.sendRedirect("ownsuspectedhistory.jsp?valid");
}
catch(Exception e)
{
	System.out.print(e);
	response.sendRedirect("signup.jsp?msg=invaild");
}
%>