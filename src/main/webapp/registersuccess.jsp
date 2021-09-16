<%-- 
    Document   : registersuccess
    Created on : 30 Aug, 2021, 11:58:25 AM
    Author     : saquib
--%>
<%@page import="com.ibsoft.onlinebookstore.entities.User"%>
<%
    User user = new User();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>onlinebookstore | Message</title>
        <%@include file = "components/common_css_js.jsp" %>

    </head>
    <body>
        <%@include file = "components/navbar.jsp" %>
        <div class="bg-image" style="
             background-image: url('img/bggreen.jpg');
             height: 100vh;
             ">
        <br>

    <center><div class="card text-center" style="width: 24rem;">
  <div class="card-body">Registerd successfully !!</h5>
    <p class="card-text"></p>
    <a href="login.jsp" class="btn btn-success">Login now</a>
  </div>
</div></center>
        </div></body>
</html>
