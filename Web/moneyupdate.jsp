<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="Dbconn.dbconn"%>
     
<%@page import="java.util.*" %>
 <%@page import="java.text.SimpleDateFormat"%> 
<!DOCTYPE html>
<html>
    <head>
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <style>
    html {
    height: 100%;
}
body{
    background-image: linear-gradient(rgb(148, 73, 233),rgb(99, 174, 248));
    background-image: -webkit-linear-gradient(rgb(148,73,233),rgb(99,174,248));
    background-image: -moz-linear-gradient(rgb(148,73,233),rgb(99,174,248));
    background-attachment: fixed;
    background-repeat: no-repeat;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
}

.container{
    position: absolute;
    top: 350px;
    left: 800px;
    margin-top: -330px;
    margin-left: -300px;
    width: 550px;
}

.tab {
  overflow: hidden;
  border: 0px solid rgb(255, 255, 255);
  background-color: #ffffff79;
  width: fit-content;
  border-radius: 5px 5px 0 0;
}


.tab button {
  background-color: inherit;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  transition: 0.3s;
  font-size: 17px;
}


.tab button:hover {
  background-color: rgb(255, 255, 255);
}


.tab button.active {
  background-color: whitesmoke;
}


.tabcontent {
  padding: 6px 120px;
  border: 0px solid rgb(255, 255, 255);
  border-radius: 0 5px 5px 5px;
  background-color: white;
}

.transfer-icon{
    font-size: 3em;
    color: rgb(120, 60, 231);
    text-align: center;
}


input,select {
    width: 300px;
    padding-left: 30px;
    border: 1px solid blueviolet;
    border-radius: 5px 5px 5px 5px;
    height: 50px;
}


input[type=number]::-webkit-inner-spin-button, 
input[type=number]::-webkit-outer-spin-button { 
  -webkit-appearance: none; 
  margin: 0; 
}

input:focus {
    outline:none;
}
select:focus {
    outline:none;
}

.input-icon{
    position: absolute;
    left: 10px;
    top: calc(50% - 0.5em); 
    color: blueviolet;
    font-size: 20px;
}

.input-wrapper{
    position: relative;
    padding: 4px;
}

.button-wrapper{
    text-align: center;
    padding: 20px;
}

.send {
    background-color: blueviolet; 
    border: 2px solid blueviolet;
    border-radius: 5px 5px 5px 5px;
    color: white;
    padding: 5px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 25px;
    position: relative;
}

.send:hover {
    background-color: white; 
    border: 2px solid blueviolet;
    border-radius: 5px 5px 5px 5px;
    color: blueviolet;
    padding: 5px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 25px;
}</style>
    </head>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
    <body ng-app="">
    <%HttpSession ses=request.getSession();
    String mail=ses.getAttribute("semail").toString(); 
    
    
 
 
    SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");  
    Date date = new Date();  
 
    String time= formatter.format(date);
    System.out.println(time); 
 %>
        <div class="container">
            <div class="tab">
                <button class="tablinks active" id="toggle-transfer">NEW CASE UPDATE</button>
           <!--      <button class="tablinks" id="toggle-trade">Trade</button> -->
            </div>
                  
            <div id="transfer" class="tabcontent">
                <h3 class="transfer-icon"><i class="fa fa-vcard"></i></h3>
                <form action="moneyupdateservlet" method="post" onsubmit="alert('Product is added Successfully')">
                
                 <div class="input-wrapper" >
                        <input type="text" min="100000" step="1" max="999999" id="stuff" value="<%=time%>" name="time" placeholder="Payer Wallet ID" required>
                        <label for="stuff" class="fa fa-arrow-circle-right input-icon"></label>
                    </div>
                    
                       <!-- <div class="input-wrapper">
                       <select name="user"  id="stuff" style="width:335px">
                        <option>Choose Product Type:</option>
                         <option value="new">New Product</option>
                       <option value="old">Old Product</option>
                       </select>
                        <label for="stuff" class="fa fa-cube input-icon"></label>
                    </div> -->
                    <div class="input-wrapper">
                        <input type="text" id="stuff" name="user" placeholder="Enter Aquist Name" required>
                        <label for="stuff" class="fa fa-cube input-icon"></label>
                    </div>
                    
                    <div class="input-wrapper">
                        <input type="text" id="stuff" name="name" placeholder="Enter Aquist Address " required>
                        <label for="stuff" class="fa fa-cube input-icon"></label>
                    </div>
                    
                 
                   
                    <div class="input-wrapper" >
                        <input type="number" min="100000" name="upi" step="1"  id="stuff" placeholder="Enter Aadhar ID" required>
                        <label for="stuff" class="fa fa-arrow-circle-left input-icon"></label>
                    </div>
                     <div class="input-wrapper">
                        <input type="text" id="stuff" name="mail" value="<%=mail%>" required>
                        <label for="stuff" class="fa fa-cube input-icon"></label>
                    </div>
                    <div class="input-wrapper">
                        <input type="number" min="1" step="1" name="quantity" id="stuff" placeholder="Age" required>
                        <label for="stuff" class="fa fa-money input-icon"></label>
                    </div>
                    <div class="input-wrapper">
                        <input type="text"  step="1" name="money"  id="stuff" placeholder="Height-weight" required>
                        <label for="stuff" class="fa fa-money input-icon"></label>
                    </div>
                    <div class="input-wrapper">
                        <input type="text" min="1" step="1" name="section"  id="stuff" placeholder="Section" required>
                        <label for="stuff" class="fa fa-money input-icon"></label>
                    </div>
                    <div class="input-wrapper">
                        <input type="text" step="1" name="description"  id="stuff" placeholder="Case Description" required>
                        <label for="stuff" class="fa fa-money input-icon"></label>
                    </div>
                    <div class="button-wrapper">
                        <button type="submit" class="send"><i class="fa fa-rocket"></i>  Submit</button>
                    </div>
                </form>
            </div>
           <!--  <div id="trade" class="tabcontent">
                    <h3 class="transfer-icon"><i class="fa fa-cubes"></i></h3>
                    <form>
                        <div class="input-wrapper">
                            <input type="text" id="stuff" placeholder="Currency Name to Send" required>
                            <label for="stuff" class="fa fa-cube input-icon"></label>
                        </div>
                        <div class="input-wrapper">
                            <input type="text" id="stuff" placeholder="Currency Name to Receive" required>
                            <label for="stuff" class="fa fa-diamond input-icon"></label>
                        </div>
                        <div class="input-wrapper">
                            <input type="number" min="100000" step="1" max="999999" id="stuff" placeholder="Payer Wallet ID" required>
                            <label for="stuff" class="fa fa-arrow-circle-right input-icon"></label>
                        </div>
                        <div class="input-wrapper">
                            <input type="number" min="100000" step="1" max="999999" id="stuff" placeholder="Payee Wallet ID" required>
                            <label for="stuff" class="fa fa-arrow-circle-left input-icon"></label>
                        </div>
                        <div class="input-wrapper">
                            <input type="number" min="1" step="1" max="100000000" id="stuff" placeholder="Currency Amount to Send" required>
                            <label for="stuff" class="fa fa-money input-icon"></label>
                        </div>
                        <div class="input-wrapper">
                                <input type="number" min="1" step="1" max="100000000" id="stuff" placeholder="Currency Amount to Receive" required>
                                <label for="stuff" class="fa fa-dot-circle-o input-icon"></label>
                            </div>
                        <div class="button-wrapper">
                            <button class="send"><i class="fa fa-arrows-h"></i>  Trade</button>
                        </div>
                    </form>
                </div>
        </div> -->
    </body><style>$(document).ready(function (){
    $('#trade').hide();
    $('#toggle-trade').click(function(){
        $('#trade').fadeIn(1000);
        $('#transfer').hide();
        $('#toggle-transfer').removeClass('tablinks active').addClass('tablinks');
        $('#toggle-trade').removeClass('tablinks').addClass('tablinks active');
    })
    $('#toggle-transfer').click(function(){
        $('#transfer').fadeIn(1000);
        $('#trade').hide();
        $('#toggle-transfer').removeClass('tablinks').addClass('tablinks active');
        $('#toggle-trade').removeClass('tablinks active').addClass('tablinks');
    })
})</style>
</html>