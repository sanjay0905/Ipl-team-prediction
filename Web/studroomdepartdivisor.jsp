<%@ page import="Dbconn.dbconn" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<%



String roomdepart=request.getParameter("room").toString();
String bb=request.getParameter("batbowl").toString();
System.out.println(roomdepart);
session.setAttribute("sdeprom", roomdepart);
session.setAttribute("batbowl", bb);

try{
	if(roomdepart.equals("depart")){
	 String departname=request.getParameter("departname");
	 session.setAttribute("sdepana", departname);
	 
		String progname=request.getParameter("progname");
		 session.setAttribute("sprogname", progname);
		 
		String classname=request.getParameter("classname"); 
		 session.setAttribute("sclana", classname);
		 
		String year=request.getParameter("year"); 
		 session.setAttribute("syearna", year);
		 
		 session.setAttribute("sno", "2");
		 
		 System.out.println("hi");
	response.sendRedirect("viewsuspect.jsp?valid");
	}
	else if(roomdepart.equals("room")){
		String roomnum=request.getParameter("roomnum"); 
		session.setAttribute("sroomnum", roomnum);
		session.setAttribute("sno", "2");
		response.sendRedirect("viewsuspect.jsp?valid");
	}
}
catch(Exception e){
	response.sendRedirect("error.jsp?inval id");
System.out.println(e);
}
%>