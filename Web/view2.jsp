<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>






<style>

body{


background-color: #003566;


}



            .plan-card {background:#fff;width:14.50rem;font-family:'Nunito Sans', sans-serif;padding:10px 2rem 20px;border-radius:10px;border-bottom:4px solid #000446;box-shadow:0 6px 30px rgba(207,212,222, 0.6)}
            .plan-card h2 {margin-bttom:15px;font-size:30px;font-weight:800;color:#dadada;text-transform:uppercase}
            .plan-card h2 span {display:block;margin-top:-4px;color:#4d4d4d;font-size:12px;font-weight:600;text-transform:none}
            .etiquet-price {position:relative;background:#fdbd4a;width:14.93rem;margin-left:0.1rem;padding:.2rem 1.2rem;border-radius:5px 0 0 5px}
            .etiquet-price p {margin:0;padding-top:.4rem;display:flex;font-size:1.9rem;font-weight:800;}
            .etiquet-price p:before {content:"$";margin-right:5px;font-size:15px;font-weight:600}
            .etiquet-price p:after {content:"/handle";margin-left:5px;font-size:15px;font-weight:600}
            .etiquet-price div {position:absolute;bottom:-22px;right:0;width:0;height:0;border-top:13px solid #c58102;border-bottom:10px solid transparent;border-right:13px solid transparent;z-index:-6}
            .benefits-list {margin-top:16px}
            .benefits-list ul {padding:0;font-size:14px}
            .benefits-list ul li {color:#4d4d4d;list-style:none;margin-bottom:.2rem;display:flex;align-items:center;gap:.5rem}
            .benefits-list ul li svg {width:.9rem;}
            .benefits-list ul li span {font-weight:600}
            .button-get-plan {display:flex;justify-content:center;margin-top:1.2rem}
            .button-get-plan a {display:flex;justify-content:center;align-items:center;background:#000446;color:#fff;padding:10px 15px ;border-radius:5px;font-size:.8rem;letter-spacing:.05rem;font-weight:700;transition:all 0.3s ease;text-decoration:none;}
            .button-get-plan a:hover {transform:translateX(-3%);box-shadow:0 3px 10px rgba(207,212,222,0.9)}
            .button-get-plan svg {margin-right:10px;width:.9rem;fill:#fff}










</style>



















</head>
<body>


<%


String ground=request.getParameter("ground");
String season=request.getParameter("season");

String bowler=request.getParameter("bowler");

String wicket=request.getParameter("wicket");

String country=request.getParameter("country");



session.setAttribute("bowler", bowler);














%>











<center>

<div class="plan-card">
  <h2>Player Details<span></span></h2>
  <div class="etiquet-price">
  
    <div></div>
  </div>
  <div class="benefits-list">
    <ul>
      <li><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 59 59"><title>check circle</title><g id="Layer_2" data-name="Layer 2"><g id="Layer_1-2" data-name="Layer 1"><g id="check_circle" data-name="check circle"><path d="M29.5,59A29.5,29.5,0,1,1,59,29.5,29.53,29.53,0,0,1,29.5,59Zm0-54A24.5,24.5,0,1,0,54,29.5,24.53,24.53,0,0,0,29.5,5Z"/><path d="M26.37,39.24a2.49,2.49,0,0,1-1.77-.73l-7.22-7.22a2.5,2.5,0,0,1,3.53-3.54l5.46,5.46L38.09,21.49A2.5,2.5,0,1,1,41.62,25L28.14,38.51A2.49,2.49,0,0,1,26.37,39.24Z"/></g></g></g></svg>Venue : <%=ground %></li>
      
      <br>
      <li><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 59 59"><title>check circle</title><g id="Layer_2" data-name="Layer 2"><g id="Layer_1-2" data-name="Layer 1"><g id="check_circle" data-name="check circle"><path d="M29.5,59A29.5,29.5,0,1,1,59,29.5,29.53,29.53,0,0,1,29.5,59Zm0-54A24.5,24.5,0,1,0,54,29.5,24.53,24.53,0,0,0,29.5,5Z"/><path d="M26.37,39.24a2.49,2.49,0,0,1-1.77-.73l-7.22-7.22a2.5,2.5,0,0,1,3.53-3.54l5.46,5.46L38.09,21.49A2.5,2.5,0,1,1,41.62,25L28.14,38.51A2.49,2.49,0,0,1,26.37,39.24Z"/></g></g></g></svg>Season : <%=season %></li>
      <li><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 59 59"><title>check circle</title><g id="Layer_2" data-name="Layer 2"><g id="Layer_1-2" data-name="Layer 1"><g id="check_circle" data-name="check circle"><path d="M29.5,59A29.5,29.5,0,1,1,59,29.5,29.53,29.53,0,0,1,29.5,59Zm0-54A24.5,24.5,0,1,0,54,29.5,24.53,24.53,0,0,0,29.5,5Z"/><path d="M26.37,39.24a2.49,2.49,0,0,1-1.77-.73l-7.22-7.22a2.5,2.5,0,0,1,3.53-3.54l5.46,5.46L38.09,21.49A2.5,2.5,0,1,1,41.62,25L28.14,38.51A2.49,2.49,0,0,1,26.37,39.24Z"/></g></g></g></svg>Bowler : <%=bowler %></li>
      <li><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 59 59"><title>check circle</title><g id="Layer_2" data-name="Layer 2"><g id="Layer_1-2" data-name="Layer 1"><g id="check_circle" data-name="check circle"><path d="M29.5,59A29.5,29.5,0,1,1,59,29.5,29.53,29.53,0,0,1,29.5,59Zm0-54A24.5,24.5,0,1,0,54,29.5,24.53,24.53,0,0,0,29.5,5Z"/><path d="M26.37,39.24a2.49,2.49,0,0,1-1.77-.73l-7.22-7.22a2.5,2.5,0,0,1,3.53-3.54l5.46,5.46L38.09,21.49A2.5,2.5,0,1,1,41.62,25L28.14,38.51A2.49,2.49,0,0,1,26.37,39.24Z"/></g></g></g></svg>Wicket: <%=wicket %></li>
      <li><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 59 59"><title>check circle</title><g id="Layer_2" data-name="Layer 2"><g id="Layer_1-2" data-name="Layer 1"><g id="check_circle" data-name="check circle"><path d="M29.5,59A29.5,29.5,0,1,1,59,29.5,29.53,29.53,0,0,1,29.5,59Zm0-54A24.5,24.5,0,1,0,54,29.5,24.53,24.53,0,0,0,29.5,5Z"/><path d="M26.37,39.24a2.49,2.49,0,0,1-1.77-.73l-7.22-7.22a2.5,2.5,0,0,1,3.53-3.54l5.46,5.46L38.09,21.49A2.5,2.5,0,1,1,41.62,25L28.14,38.51A2.49,2.49,0,0,1,26.37,39.24Z"/></g></g></g></svg>Country : <%=country %></li>
   
   
   
   
    </ul>
  </div>
  <div class="button-get-plan">
    <a href="suspectedlist2.jsp"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 58.99 59"><title>rocket</title><g id="Layer_2" data-name="Layer 2"><g id="Layer_1-2" data-name="Layer 1"><g id="rocket"><path d="M17.85,59a2.51,2.51,0,0,1-1.77-4.27L19.84,51a2.5,2.5,0,0,1,3.54,3.53l-3.76,3.76A2.5,2.5,0,0,1,17.85,59Z"/><path d="M2.5,43.65A2.5,2.5,0,0,1,.73,39.38L4.5,35.62A2.5,2.5,0,0,1,8,39.15L4.27,42.92A2.53,2.53,0,0,1,2.5,43.65Z"/><path d="M5.38,56.12a2.53,2.53,0,0,1-1.77-.73,2.5,2.5,0,0,1,0-3.54l8.56-8.56a2.5,2.5,0,0,1,3.53,3.54L7.15,55.39A2.53,2.53,0,0,1,5.38,56.12Z"/><path d="M38.62,58.5a2.28,2.28,0,0,1-.63-.09,2.5,2.5,0,0,1-1.78-1.74L32.55,43.45a2.5,2.5,0,0,1,4.82-1.33l2.52,9.08,5.69-5.69-2-10.33a2.5,2.5,0,1,1,4.9-1l2.3,11.63a2.51,2.51,0,0,1-.68,2.26l-9.67,9.66A2.47,2.47,0,0,1,38.62,58.5Z"/><path d="M28.44,47.74A2.5,2.5,0,0,1,26.67,47L12,32.32a2.47,2.47,0,0,1-.65-2.42C16.75,10.1,37-3,56.39.61a2.49,2.49,0,0,1,2,2C62,22,48.89,42.24,29.1,47.65A2.5,2.5,0,0,1,28.44,47.74ZM16.57,29.84,29.16,42.42c16-5.09,26.64-21.24,24.59-37.17C37.8,3.2,21.66,13.85,16.57,29.84Z"/><path d="M16.21,26.54a2.57,2.57,0,0,1-.67-.09L2.33,22.78a2.5,2.5,0,0,1-1.1-4.18L10.9,8.94a2.5,2.5,0,0,1,2.25-.69l11.63,2.3a2.5,2.5,0,0,1-1,4.91l-10.32-2L7.8,19.11l9.08,2.52a2.5,2.5,0,0,1-.67,4.91Z"/><path d="M38.51,28.28A7.71,7.71,0,0,1,33,26a7.8,7.8,0,1,1,11,0h0A7.74,7.74,0,0,1,38.51,28.28Zm3.75-4.05h0Zm-3.75-6.54a2.79,2.79,0,0,0-2,4.77,2.87,2.87,0,0,0,4,0,2.79,2.79,0,0,0-2-4.77Z"/></g></g></g></svg><span>SELECT</span></a>
  </div>
</div>

</center>

</body>
</html>