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

<style>

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #0000ff;
}

li {
  float: right;
  padding-right:95px;
}

li a {
  display: block;
  color: white;
  text-align: center;
  text-style:bold;
  padding: 14px 16px;
  text-decoration: none;
}

.backtag{
float:right;
margin-right:50px;
font-size:30px;
}

.myDiv2 {
  font-size:25px;  
  font-style: italic;
font-weight: bold;
color:blue; 
}

table,td,th {
  border: 2px solid black;
  
}
table {
  border-collapse: collapse;
  width: 90%;
}

td {
  text-align: center;
 height: 40px;
}
th{
 height: 30px;
 color: blue;
}


</style>

</head>
<body>

<!-- <ul>

<li><a href="ownermainpage.jsp">Logout</a></li>

</ul>
 -->
<div class="backtag">
<!-- <a href="usermain.jsp">Back</a> -->
</div>

<br>
<center>
<div class="myDiv2">
OverAll History
</div>



<br><br><br>
<table class="table table-bordered">
  <thead>
    <tr>
    
      <th scope="col"> Id</th>
      <th scope="col"> Venue</th>
      <th scope="col">Season</th>
       <th scope="col">Bowler</th>
         <th scope="col">Wicket</th>
         <th scope="col">Country</th>
          <!--<th scope="col">Batting Team</th>
          -->
      <!-- 
         <th scope="col">Bowling Team</th>
         <th scope="col">Player Name</th>
         <th scope="col">Section</th>
         <th scope="col">Case Details</th>
        <th scope="col">View Evidence</th>
        <th scope="col">Remark</th>
     
       -->
    </tr>
  </thead>

       <%
       
       Connection con;
       
      
       con=dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `cricket`.`Batter`  ");
       
       ResultSet rs=ps.executeQuery();
     
     while(rs.next())
       {
       	     	
    	String image=rs.getString(3);
PreparedStatement ps1=con.prepareStatement("SELECT * FROM `cricket`.`player_country_updated` where playerName='"+rs.getString(3)+"' ");
        
        ResultSet rs1=ps1.executeQuery();
         while(rs1.next())
        {
    	  
    	   
       %>
 <tbody>
    <tr>
	

	
	  <%--      <td><img src="Local/<>" width="70" height="70"/></td> --%>
     
   <td> <p class="card-text"><%=rs.getString(1)%></p></td>
       

<td><p class="card-text"><%=rs.getString(2)%></p></td>
<td><p class="card-text"><%=rs.getString(4)%></p></td>
       
       <td><p class="card-text"><%=rs.getString(3)%></p></td>
       <td><p class="card-text"><%=rs.getString(5)%></p></td>
   <td><p class="card-text"><%=rs1.getString(2)%></p></td> 
        <%--  <td><p class="card-text"><%=rs.getString(7)%></p></td>
       
        <td><p class="card-text"><%=rs.getString(8)%></p></td>
       <td><p class="card-text"><%=rs.getString(9)%></p></td>
       <td><p class="card-text"><%=rs.getString(10)%></p></td><td><a href="viewcertificate.jsp?name=<%=rs.getString(1)%>">View</a></td>  --%>
   <%-- <td><a href="suspectedlist.jsp?ground=<%=rs.getString(2)%>&&season=<%=rs.getString(4)%>&&player=<%=rs.getString(3)%>&&runwic=<%=rs.getString(5)%>">Select</a></td>
  --%>
   </tr>
   </tbody>
</center>

<%}} %>
</body>
</html>