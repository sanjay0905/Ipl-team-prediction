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
</head>
<body>
<%
String date=request.getParameter("time");
System.out.println(date);
String mail=request.getParameter("mail");
System.out.println(mail);
String upi=request.getParameter("upi");
System.out.println(upi);
String description=request.getParameter("description");
System.out.println(description);
String amount=request.getParameter("amount");
System.out.println(amount);

int i=Integer.parseInt(amount); 

       
       Connection con;
       
       
       con=dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM pharmacymedical.money where  mail='"+mail+"' and upi='"+upi+"'  ");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    
    	   int cout=rs.getInt(10);  
    	   
    	     int a=cout-i;
    	     
    	     String s=String.valueOf(a);
    	     
    	  
    	    		
    	    		Statement st=con.createStatement();
    	    		st.executeUpdate("UPDATE `pharmacymedical`.money set quantity='"+s+"' where upi='"+upi+"' ");
    	    		System.out.println("Success");
    	    	
    	   
       
       
			
			 PreparedStatement ps1=con.prepareStatement("INSERT INTO pharmacymedical.expenditure VALUES(id,?,?,?,?,?,?,?)");
			 ps1.setString(1,date);
			
			 ps1.setString(2,mail);
			 ps1.setString(3,upi);
			 ps1.setString(4,amount);
			 ps1.setString(5,"hi");
			 ps1.setString(6, "Request");
			 ps1.setString(7,"");
			 int dd=ps1.executeUpdate();	
			 if(dd==1){
				 response.sendRedirect("staffmain.jsp");
			 }else{
				 response.sendRedirect("expenditure.jsp");
			 }
		
		
		
		
		}
       %>
</body>
</html>