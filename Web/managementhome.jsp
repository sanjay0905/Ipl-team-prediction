 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import=" Dbconn.dbconn"%>
     
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Management</title>
<link rel="stylesheet" href="css/main.css">
</head>
<style>
body{
background-image:url("images/15.jpg");
background-size:cover;
}
a{
text-decoration:none;
color: black;

}

</style>
 <%
       
       Connection con;
       
       
       con=dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT count(*) FROM `cricket`.`userreg` Where status='request' ");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    
    	   int cout=rs.getInt(1);  
    	     
    	  
    	   
       %>

<body>
<div class="container">
  <div class="nav">
    <div class="logo">
    </div>
    <ul>
     <a href="useraccept.jsp"><span style="color:white">New Users</span><span style="color:black">(<%=cout %>)</span></a></li>
      <li><a href="userslist.jsp"><span style="color:white">User List View</span></a></li>
     <!--  <li><a href="addcasedetails.jsp"><span style="color:white">Add Case Details</span></a></li> -->
       <li><a href="suspectedhistory.jsp"><span style="color:white">Overall History</span></a></li>
      <li><a href="homepage.jsp"><span style="color:white">Logout</span></a>		</li>
    </ul>
  </div>

  <div class="hero">
    

 
  </div>

  

    <div class="go">
      <i class="fas fa-paper-plane"></i>
    </div>
  </div>
<%} %>
</div>
</body>
</html>