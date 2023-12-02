<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%-- <%@page import="dbconn.Dbconn"%> --%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="appointment.css" />
  <link rel="stylesheet" href="css1/bootstrap.min.css"> >

<style>
.myDiv {
border: 5px;
  background-image:url(Local/char6.jfif);    
  background-size:cover;
  border-radius: 5px;
  width:350px;
  height:390px;
  margin: auto;
  padding-top:40px;
  opacity:0.9;
}
.myDiv2 {
  font-size:25px;  
  font-style: italic;
font-weight: bold;
color: #ffffff; 
}


body{
background-image:url("image/9.jpg");
background-size:cover;
}

</style>


</head>
<body>
<div class="container">
    <h3 style="font-weight:bold; text-align:center; margin-top: 10px">Acquist Details</h3><br>
    <form method="post" action="acsedetailsadd" enctype="multipart/form-data">
     <div class="row">
       <div class="card col-sm-5" style="padding-bottom:10px;background-color: #333;color:#fff;padding:10px;margin-left:30%;width: 38em;margin-bottom: 25px">
        <div class="form-group">
          <label for="full_name" style="color:#fff;">Name :</label>
          <input type="text" class="form-control" id="full_name" placeholder="Enter  Name" name="name" required>
        </div>
        <div class="form-group">
          <label for="email"  style="color:#fff;">Date :</label>
          <input type="date" class="form-control" id="date" placeholder="" name="date"  required>
          
        </div>
      
    	
    	<div class="form-group">
          <label for="name"  style="color:#fff;">Age :</label>
          <input type="text" class="form-control" placeholder="Age" name="age"  required>
        </div>
<div class="form-group">
          <label for="name"  style="color:#fff;">Aadhar Number :</label>
          <input type="text" class="form-control" placeholder="Height" name="height" id="password1" required>
        </div><div class="form-group">
          <label for="name"  style="color:#fff;">Driving License Number :</label>
          <input type="text" class="form-control" placeholder="Height" name="height" id="password1" required>
        </div>
        <div class="form-group">
          <label for="name"  style="color:#fff;">Height :</label>
          <input type="text" class="form-control" placeholder="Height" name="height" id="password1" required>
        </div>
         <div class="form-group">
          <label for="name"  style="color:#fff;">Weight :</label>
          <input type="text" class="form-control" placeholder="Weight" name="weight" id="password1" required>
        </div><br>
        
         <div class="form-group">
         <label for="duration">Gender</label>
        <input type="radio" name="gender" value="male" checked> male
        <input type="radio" name="gender" value="female"> female
        </div>
        <br>
          <div class="form-group">
			  <label for="zone"  style="color:#fff;">Zone</label>
                      <select class="form-control" name="zone" placeholder="Zone">
                        <option value="THIRUVOTRIYUR">THIRUVOTRIYUR</option>
                        <option value="MANALI">MANALI</option>
                        <option value="MADHAVARAM">MADHAVARAM</option>
                        <option value="TONDIARPET">TONDIARPET</option>
                        <option value="ROYAPURAM">ROYAPURAM</option>
                        <option value="THIRU-VI-KA NAGAR">THIRU-VI-KA NAGAR</option>
                        <option value="AMBATTUR">AMBATTUR</option>
                        <option value="ANNA NAGAR">ANNA NAGAR</option>
                        <option value="TEYNAMPET">TEYNAMPET</option>
                        <option value="KODAMBAKKAM">KODAMBAKKAM</option>
                        <option value="VALASARAVAKKAM">VALASARAVAKKAM</option>
                        <option value="ALANDUR">ALANDUR</option>
                        <option value="ADYAR">ADYAR</option>
                        <option value="PERUNGUDI">PERUNGUDI</option>
                        <option value="SOZHANGANALLUR">SOZHANGANALLUR</option>
                      </select>

                    </div>
                    
        <div class="form-group">
          <label for="caseno"  style="color:#fff;">Case No :</label>
          <input type="text" class="form-control" id="" placeholder="Case Number" name="case" required>
        </div>
                  
           <div class="form-group">
          <label for="Sectoin"  style="color:#fff;">Section :</label>
          <input type="text" class="form-control" placeholder="" name="section"  required>
        </div>        
                  
         <div class="form-group">
          <label for="password1"  style="color:#fff;">Case details</label>
          <textarea type="textarea" class="form-control" " placeholder="Case details" name="casedetails"  required></textarea>
        </div>
        <br>
       
         
         <div class="form-group">
          <label for="card_photo"  style="color:#fff;">Crime Detail:</label>
          <input type="file" class="form-control" name="filename" >
        </div>
       
       
        <center><button id="submit" name="donator_register" class="btn btn-primary btn-block"  style="width:50%;" onclick="return Validate()">Register</button></center><br>
      </div>
    </div>
    
      
  </form>
</div>


  </body>
</html>


