
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="Dbconn.dbconn"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.util.*" %>

<%@ page import = " java.text.SimpleDateFormat" %>
<%@ page import = "  java.util.Date" %>








<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="css/normalize.css">
    <link href='https://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="css/main.css">
 <style type="text/css">
 
 *, *:before, *:after {
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}

body {
  font-family: 'Nunito', sans-serif;
  color: #384047;


}

table {
  max-width: 930px;
  margin: 10px auto;
width: 100%;


}

caption {
  font-size: 1.6em;
  font-weight: 400;
  padding: 10px 0;
}

thead th {
  font-weight: 400;
  background: #8a97a0;
  color: #FFF;
}

tr {
  background: #f4f7f8;
  border-bottom: 1px solid #FFF;
  margin-bottom: 5px;
}

tr:nth-child(even) {
  background: #e8eeef;
}

th, td {
  text-align: left;
  padding: 20px;
  font-weight: 300;
}

tfoot tr {
  background: none;
}

tfoot td {
  padding: 10px 2px;
  font-size: 0.8em;
  font-style: italic;
  color: #8a97a0;
}
 
 
 
 
 
 
 
 
 
 
 
 
 </style>
 
 
  </head>
  <body>

















  
  
  
  
  
  <%
  SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");  
  Date date = new Date();  
  System.out.println(formatter.format(date));  
 
  %>
  
  
  
    <table>
      <caption>Batters Stats</caption>
      <thead>
        <tr>
          <th scope="col"> Player Name</th>
          <th scope="col">Match</th>
          
       <th scope="col">Ininings </th>
    
          <th scope="col">No </th>
     
      <th scope="col">Runs </th>
     
       <th scope="col">Hs </th>
        <th scope="col">Avg </th>
     
      <th scope="col">BF </th>
     
      <th scope="col">SR </th>
      <th scope="col">Hundred </th>
      
      
     
      <th scope="col">Time </th>
     
     
       
     
        </tr>
      </thead> 
    <% 
Connection con;
   
     
     
         
    
    
    
    
    

con=dbconn.create();
PreparedStatement ps=con.prepareStatement("SELECT * FROM `cricket`.`storebatter` where status='status' ");

ResultSet rs=ps.executeQuery();

while(rs.next())
{
 	String m1=rs.getString(2);  
 	String m2= rs.getString(3); 
 	
 	String m3=rs.getString(4);  
 	String m4= rs.getString(5); 
 	String m5=rs.getString(6);  
 	String m6= rs.getString(7); 
 	
 	String m7=rs.getString(8);  
 	String m8= rs.getString(9); 
 	

 	String m9=rs.getString(10);  
 	String m10= rs.getString(11); 
 	
	String m11=rs.getString(12);  
 	String m12= rs.getString(13); 
 	
 	









%>
      

   
   
   
   
   
   
   
   
   
   
   
   
      <tbody>
        <tr>
          <th scope="row"><%=rs.getString(2) %></th>
          <td><%=rs.getString(3) %></td>
       
      <td><%=rs.getString(4) %></td>
       
         <td><%=rs.getString(5) %></td>
      
      <td><%=rs.getString(6) %></td>
      
         <td><%=  rs.getString(7) %></td>
       
         <td><%=rs.getString(8) %></td>
       
         <td><%=rs.getString(9) %></td>
         <td><%=rs.getString(10) %></td>
       
         
         <td><%=rs.getString(11) %></td>
       
       
        
       
         <td><%=rs.getString(16) %></td>
        
       
        </tr>
        
      
      
       
      
      
      
      
      
   <%  }  %>
      </tbody> 
    </table>
     
  </body>
</html>















