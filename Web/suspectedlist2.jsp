
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="Dbconn.dbconn"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
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


String m= session.getAttribute("bowler").toString();

%> 

  
  
  
  
  
  
  
  
  
  
  
  
    <table>
      <caption>Bowler Stats</caption>
      <thead>
        <tr>
          <th scope="col"> Player Name</th>
          <th scope="col">Match</th>
          
       <th scope="col">Ininings </th>
    
          <th scope="col">Wickets </th>
     
      <th scope="col">Average </th>
     
       <th scope="col">Economy </th>
        <th scope="col">Strike rate </th>
     
      <th scope="col">BBI </th>
     
      <th scope="col">4 Fer</th>
    
       
      <th scope="col">5 Fer </th>
    
     
     
     
       
     
        </tr>
      </thead> 
    <% 
Connection con;
   
     
     
         
    
    
    
    
    

con=dbconn.create();
PreparedStatement ps=con.prepareStatement("SELECT * FROM `cricket`.`bowling` where Players='"+m+"' ");

ResultSet rs=ps.executeQuery();

while(rs.next())
{
	String m1=rs.getString(1);  
 	String m2= rs.getString(2); 
 	
 	String m3=rs.getString(3);  
 	String m4= rs.getString(4); 
 	String m5=rs.getString(5);  
 	String m6= rs.getString(6); 
 	
 	String m7=rs.getString(7);  
 	String m8= rs.getString(8); 
 	

 	String m9=rs.getString(9);  
 	
 	String m10=rs.getString(10); 

 	





















%>
     
     
     
     
      <%
   int reg=0;
		Connection con2;
		con2=dbconn.create();
		
		try {
 			
				PreparedStatement ps2=con2.prepareStatement("INSERT INTO `cricket`.storebowler VALUES(id,?,?,?,?,?,?,?,?,?,?,?,?)");
				ps2.setString(1, m1);
				ps2.setString(2, m2);
				ps2.setString(3, m3);
				ps2.setString(4, m4);
				ps2.setString(5, m5);
				ps2.setString(6, m6);
				ps2.setString(7, m7);
				ps2.setString(8, m8);
				ps2.setString(9, m9);
				
				ps2.setString(10, "status");
				ps2.setString(11, formatter.format(date));
				ps2.setString(12, m10);
				
				
			
				
				
				
				
				
				reg=ps2.executeUpdate();





		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		















				%>

     
     
     
     
     
     
     
     
     
     
     
     
     
      
      <tbody>
        <tr>
          
          <td><%=rs.getString(1) %></td>
       
      <td><%=rs.getString(2) %></td>
       
         <td><%=rs.getString(3) %></td>
      
      <td><%=rs.getString(4) %></td>
      
         <td><%=  rs.getString(5) %></td>
       
         <td><%=rs.getString(6) %></td>
       
         <td><%=rs.getString(7) %></td>
         <td><%=rs.getString(8) %></td>
       
         <td><%=rs.getString(9) %></td>
        <td><%=rs.getString(10) %></td>
        </tr>
        
      
      
      
       
      
      
      
      
   <%  }  %>
       </tbody> 
    </table>
     
  </body>
</html>















