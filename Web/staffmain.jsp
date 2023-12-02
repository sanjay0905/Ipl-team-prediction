<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="Dbconn.dbconn"%>
     
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/mmain.css">
</head>
<style>

body{

background-image:url(images/640.jpg);
background-repeat: no-repeat;
background-size:cover;

}

a{
text-decoration:none;
}

</style>

<%-- <%String email=session.getAttribute("semail").toString(); 
System.out.println(email);
 session.setAttribute("loca", "hi");
       
       Connection con;
       
       int cout=0; String a="";
       con=dbconn.create();
       PreparedStatement ps=con.prepareStatement(" SELECT*FROM `pharmacymedical`.`money` where  mail='"+email+"' ");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    
    	    cout=rs.getInt(10);  
    	    
       }   %>  --%>

<body>
<%
/* Connection con;
String Name,colroll;
con=dbconn.create();

 PreparedStatement ps=con.prepareStatement("SELECT * FROM timetable.studreg where univregnum='"+univreg+"'");
 
 ResultSet rs=ps.executeQuery();
 while(rs.next()){
	 Name=rs.getString(2);
	 
	 System.out.println(Name);
	 
	 colroll=rs.getString(5); */
 
session.setAttribute("sno",1);
	 session.setAttribute("batbowl",1);
%>
<div class="container">
  <div class="nav">
    <div class="logo">
    </div>
    <ul>
      <!-- <li><a href="moneyupdate.jsp"><span style="color:white">New Aquist Updation </span></a></li>
     <li><a href="expenditure.jsp"><span style="color:white">Daily Sold Medicines Updation </span></a></li> -->
     
     <li><a href="viewsuspect.jsp"><span style="color:white">Batter/Bowler </span></a></li>
     
       <li><a href="bat.jsp"><span style="color:white">Batter stats</span></a></li>
     
     <li><a href="bowl.jsp"><span style="color:white">Bowler stats</span></a></li>
     
     
     
     
     
     
     
     
     
     <li><a href="suspectedhistory.jsp"><span style="color:white">Batter History </span></a></li>
     <li><a href="bowlsuspectedhistory.jsp"><span style="color:white"> Bowler History </span></a></li>
     
     
     
     
     
     
     
     
     
     
     
     <%-- <li><a href="ownsuspectedhistory.jsp"><span style="color:white">Own History </span></a></li>
<li><a href="balanceview.jsp"><span style="color:white">Balance Checking <%if(cout==20 || cout<20){
	  a="1";

    %>
    <span style="color:red">(<%=a %>)</span> <%} %></span></a></li>
    --%>  <li><a href="homepage.jsp"><span style="color:white">Logout</span></a>		</li>
    </ul>
  </div>

 

  <!--   <div class="button">
      About
    </div> -->
  </div>

  

    <div class="go">
    
    </div>
  </div>
	<%%> 
</div>
</body>
</html>