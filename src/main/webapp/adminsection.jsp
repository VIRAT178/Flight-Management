<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Section</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/amdstyle.css" type="text/css" media="all">
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
</head>
<body id="page6">
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
        <li><a href="amdflght.jsp"><span><span>Add Flight</span></span></a></li>
        <li><a href="updateservlet"><span><span>Update Flight</span></span></a></li>
        <li><a href="deleteservlet"><span><span>Delete Flight</span></span></a></li>
        <li><a href="listofflightservlet"><span><span>Fight List</span></span></a></li>
        <li><a href="searchflightservlet"><span><span>Search </span></span></a></li>
      </ul>
    </nav>
  </header><br><br>
         <h2 style="text-align: center;"><%
            String msg = (String)request.getAttribute("msg");
            if(msg!=null){
            	out.print(msg);
            }
            %></h2>
  <br><br><div style="text-align: center; font-size: 20px; font-family: cursive;">
   <a style=" color: black;" href="amdflght.jsp"><span><span>Add Flight</span></span></a><br><br>
   <a style=" color: black;" href="updateservlet"><span><span>Update Flight</span></span></a><br><br>
   <a style=" color: black;" href="deleteservlet"><span><span>Delete Flight</span></span></a><br><br>
   <a style=" color: black;" href="listofflightservlet"><span><span>Fight List</span></span></a><br><br>
   <a style=" color: black;" href="searchflightservlet"><span><span>Search </span></span></a><br><br>
   <a style=" color: black;" href="login.jsp"><span><span>  Back to Login Page </span></span></a><br><br>
   </div>
 <%@include file="footer.jsp" %>
</body>
</html>