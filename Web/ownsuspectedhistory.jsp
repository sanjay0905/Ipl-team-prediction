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
Suspected History
</div>



<br><br><br>
<table>
<!-- <th>Pharmacyname</th> -->
<th>Aquist Name</th>
<th>Date</th>
<th>Cop ID</th>
<th>Aadhar</th>
<th>Height-Weight</th>
<th>Age</th>
<th>Section</th>
<th>Description</th>

<th>Remark</th>
<!-- <th>Category</th>
<th>Priority</th> -->


<%
String id=session.getAttribute("semail").toString();
String idlist="";
String fnamelist="";
String fkeylist="";
String encryptlist="";
/* String categlist="";
String priorlist=""; */


%>


<%	

	 Connection d = dbconn.create();
	 PreparedStatement p = d.prepareStatement("SELECT * FROM `findingcriminals`.`polaquist` where mail='"+id+"'");
	ResultSet rp = p.executeQuery();
	
		while (rp.next()){
		
		idlist=rp.getString(1);
		fnamelist=rp.getString(4);
		fkeylist=rp.getString(3);
		encryptlist=rp.getString(4);
		/* categlist=rp.getString(5);
		priorlist=rp.getString(6); */

	%>
	
	 <tr>                           
      <td><%=rp.getString(11) %></td>
      <td><%=rp.getString(2) %></td>
      <td><%=rp.getString(4) %> </td>
      
      <td><%=rp.getString(5) %> </td>
      
      <td><%=rp.getString(6) %> </td>
      <td><%=rp.getString(10) %> </td>
      
      <td><%=rp.getString(12) %> </td>
      
      <td><%=rp.getString(13) %> </td>
      <td><a href="reject.jsp?ids=<%=rp.getString(1)%>"><button class="btn btn-primary">Remove</button></a></td>
     
      <%-- <td><%=categlist %> </td>      
      <td><%=priorlist %> </td> --%>
                 
       </tr>
				
	<%
	}		
	%> 
 
</table>

</center>


</body>
</html>