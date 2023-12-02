<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Dbconn.dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.FileInputStream" %>
<%@page import="java.io.IOException" %>
<%@page import="java.io.PrintWriter" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css1/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>

</head>
<style>
.mydiv{
font-size:20px;
text-decoration:none;
float:right;
}
body{
width:90%;
margin-left:20px;
background-color: #e9edc9;


}
</style>
<div class="mydiv">

</div><br><br><br>
<body >
<form action="studroomdepartdivisor.jsp" ng-app="">
<div class="choose" style="margin-left:20px;">
<h3>Cricket Team :</h3></br>

Ground Name: <input type="checkbox" value="room" name="room" ng-model="myVar">   <!-- Department:<input type="checkbox" value="depart" name="room" ng-model="myV">
<div style="padding:20px;" ng-show="myV">
<input type="text" placeholder="Enter the Department Name" name="departname" ><br></br>
<input type="text" placeholder="Enter the Program" name="progname" ><br></br>
<input type="text" placeholder="Enter the Year" name="year" ><br></br>
<input type="text" placeholder="Enter the class" name="classname" ><br></br>
<input type="submit"  value="submit" >
</div> -->
<div ng-show="myVar">
<input type="text" placeholder="Enter Ground Name" name="roomnum" >
<!-- <input type="text" placeholder="Enter batter/bowler" name="batbowl" > -->
<input list="dropdown1" name="batbowl" placeholder="Batter/Bowler">
                 <datalist id="dropdown1" name="batbowl">
                <option value="----">----</option>   
              
               <option value="batter"></option>            
                        <option value="bowler"></option>
                       
                    </datalist> 
              

<input type="submit"  value="submit" >
<h1></h1>
</div>
</div>
<%
String no=session.getAttribute("sno").toString();
if(no.equals("2")){
	String b=session.getAttribute("sdeprom").toString();
	String bb=session.getAttribute("batbowl").toString();
System.out.println(b);
if(b.equals("room")&&bb.equals("batter")){
	String roomnum=session.getAttribute("sroomnum").toString();
	
%>
</br></br>
<h1>Cricket Team Management</h1></br>
<h3>Ground name : <%=roomnum.toUpperCase() %></h3>
        </br>
<table class="table table-bordered">
  <thead>
    <tr>
    
      <th scope="col"> Id</th>
      <th scope="col"> Venue</th>
      <th scope="col">Season</th>
       <th scope="col">Striker</th>
         <th scope="col">Run Off Bat</th>
          <th scope="col">Country</th>
        <!-- <th scope="col">Batting Team</th>
          -->
      <!-- 
         <th scope="col">Bowling Team</th>
         <th scope="col">Player Name</th>
         <th scope="col">Section</th>
         <th scope="col">Case Details</th>
        <th scope="col">View Evidence</th>
       --> <th scope="col">View stats</th>
     
       
    </tr>
  </thead>

       <%
       
       Connection con;
       
      
       con=dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `cricket`.`batter` where venue LIKE '%"+roomnum+"%' ");
       
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
    <%-- 
       <td><p class="card-text"><%=rs.getString(7)%></p></td>
       
        <td><p class="card-text"><%=rs.getString(8)%></p></td>
       <td><p class="card-text"><%=rs.getString(9)%></p></td>
       <td><p class="card-text"><%=rs.getString(10)%></p></td><td><a href="viewcertificate.jsp?name=<%=rs.getString(1)%>">View</a></td>  --%>
     <td><a href="view.jsp?ground=<%=rs.getString(2)%>&&season=<%=rs.getString(4)%>&&player=<%=rs.getString(3)%>&&run=<%=rs.getString(5)%>&&country=<%=rs1.getString(2)%>">View</a></td>
 
   </tr>
   </tbody>

	<%}}}%>
	
	<%if(b.equals("room")&&bb.equals("bowler")){
	String roomnum=session.getAttribute("sroomnum").toString();
	
%>   
</br></br>
<h1>Cricket Team Management</h1></br>
<h3>Ground name: <%=roomnum.toUpperCase() %></h3>
        </br>
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
       --> <th scope="col">View stats</th>
     
       
    </tr>
  </thead>

       <%
       
       Connection con;
       
      
       con=dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `cricket`.`bowler` where venue LIKE '%"+roomnum+"%' ");
       
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
   <td><a href="view2.jsp?ground=<%=rs.getString(2)%>&&season=<%=rs.getString(4)%>&&bowler=<%=rs.getString(3)%>&&wicket=<%=rs.getString(5)%>&&country=<%=rs.getString(2)%>">View</a></td>
 
   </tr>
   </tbody>

	<%}}}%>
	
	<% if(b.equals("depart")){
		String departname=session.getAttribute("sdepana").toString();
		System.out.println("departname");
		String progname=session.getAttribute("sprogname").toString();
		System.out.println("progname");
		String classname=session.getAttribute("sclana").toString();
		System.out.println("classname");
		String a="";
		if(classname.toLowerCase().equals("a")){
			a=progname+" -1";
		}else if(classname.toLowerCase().equals("b")){
			a=progname+" -2";
			
		}else{
			a=progname+"";
		}
		String year=session.getAttribute("syearna").toString(); %>
	
		</br></br>
<h1>TIMETABLE Details</h1></br>

<h3>DEPARTMENT NAME: <%=departname.toUpperCase() %></h3><br>
 <h3>PROGRAM NAME: <%=progname.toUpperCase() %></h3>
 <h3>CLASS NAME: <%=classname.toUpperCase() %></h3>
 <h3>YEAR : <%=year.toUpperCase() %></h3>
        </br>
<table class="table table-bordered">
  <thead>
    <tr>
          <th scope="col">Period1(8.30-9.20)</th>
      <th scope="col"> Period2(9.20-10.10)</th>
      <th scope="col">Period3(10.10-11.00)</th>
         <th scope="col">Period4(11.00-11.50)</th>
         <th scope="col">Period5(11.50 - 12.40)</th>
         <th scope="col">Period6(12.40 - 01.30)</th>
         <th scope="col">Period7(01.30 - 02.15)</th>
         <th scope="col">Period8(02.15 - 03:00)</th>
         <th scope="col">Period9(03:00 - 03:45)</th>
    </tr>
  </thead>

       <%
       
       Connection con1;
       
      
       con1=dbconn.create();
       PreparedStatement p2=con1.prepareStatement("SELECT * FROM `timetable`.`timetableclasswise` where Department='"+departname.toUpperCase()+"'and Program='"+a+"' and year='"+year+"'");
       
       ResultSet rs2=p2.executeQuery();
     
     while(rs2.next())
       {
       	     	
    	String image=rs2.getString(3);
    	  
    	   
       %>
 <tbody>
    <tr>
	

	
	  <%--      <td><img src="Local/<>" width="70" height="70"/></td> --%>
     
 
<td><p class="card-text"><%=rs2.getString(4)%></p></td>
       
       <td><p class="card-text"><%=rs2.getString(5)%></p></td>
       <td><p class="card-text"><%=rs2.getString(6)%></p></td>
       <td><p class="card-text"><%=rs2.getString(7)%></p></td>
       <td><p class="card-text"><%=rs2.getString(8)%></p></td>
       
        <td><p class="card-text"><%=rs2.getString(9)%></p></td>
       <td><p class="card-text"><%=rs2.getString(10)%></p></td>
       <td> <p class="card-text"><%=rs2.getString(11)%></p></td>
       

<td><p class="card-text"><%=rs2.getString(12)%></p></td>
   </tr>
   </tbody>
		
	<% }}} %>
</table>
</form>
</body>
</html>