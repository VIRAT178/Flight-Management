<!DOCTYPE html>
<%@page import="com.web.dto.Flight"%>
<html lang="en">
<head>
<title>AirLines</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.5.2.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Cabin_400.font.js"></script>
<script type="text/javascript" src="js/tabs.js"></script>
<script type="text/javascript" src="js/jquery.jqtransform.js" ></script>
<script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
<script type="text/javascript" src="js/atooltip.jquery.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<style>
.form-container {
  margin-top: 40px;
  margin-left: 70px;
  width:max-content;
  background-color: #fff;
  padding: 20px;
  border-radius: 10px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
  animation: fadeIn 2s ease-in-out;
}

form {
  display: flex;
  flex-direction: column;
}

label {
  margin-top: 10px;
  font-weight: bold;
}

input {
  margin: 5px 0 15px 0;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
  transition: border-color 0.3s ease;
}

input:focus {
  border-color: #1e90ff;
  outline: none;
}

button {
  padding: 10px 15px;
  background-color: #1e90ff;
  color: white;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

button:hover {
  background-color: #007acc;
}

@keyframes fadeIn {
  from {
    opacity: 0;
    transform: translateY(-20px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}
</style>
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<style type="text/css">.main, .tabs ul.nav a, .content, .button1, .box1, .top { behavior:url("../js/PIE.htc")}</style>
<![endif]-->
</head>
<body id="page1">
<div class="main">
<header>
    <div class="wrapper">
      <h1><a href="index.jsp" id="logo">AirLines</a></h1>
      <span id="slogan">Fast, Frequent &amp; Safe Flights</span>
      <nav id="top_nav">
        <ul>
          <li><a href="index.jsp" class="nav1">Home</a></li>
          <li><a href="login.jsp" class="nav2">User</a></li>
          <li><a href="contacts.jsp" class="nav3">Contact</a></li>
        </ul>
      </nav>
    </div>
    <nav>
      <ul id="menu">
        <li id="menu_active"><a href="index.jsp"><span><span>About</span></span></a></li>
        <li><a href="login.jsp"><span><span>Sign In</span></span></a></li>
      </ul>
    </nav>
  </header>	
  <!--content -->
  <section id="content">
    <div class="for_banners">
     <div class="form-container">
    <form action="homesearchservlet" method="post">
      <label for="from">From:</label>
      <input type="text" id="from" name="depart" placeholder="Enter starting location">
      
      <label for="to">To:</label>
      <input type="text" id="to" name="dest" placeholder="Enter destination">
      
      <button type="submit">Search</button>
    </form>
  
      <div id="slider"> <img src="images/banner1.jpg" alt=""> <img src="images/banner2.jpg" alt=""> <img src="images/banner3.jpg" alt=""> </div>
<table>
  <%
  Flight f =  (Flight)request.getAttribute("flight");
  System.out.print(f);
  if(f!=null){
	  %>
	  <tr>
	  <th><%=f.getFid()%></th>
	    <th><%=f.getDepart()%></th>
	      <th><%=f.getDest()%></th>
	        <th><%=f.getDdate()%></th>
	          <th><%=f.getDtime()%></th>
	            <th><%=f.getSeattype()%></th>
	  </tr>
	  <%
  }
  %>
</table>
    </div></div>
  </section>
  <!--content end-->
  <br><br><br>
  <%@include file="footer.jsp" %>
  </body>
</html>