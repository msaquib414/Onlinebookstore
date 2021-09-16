<%@page import="com.ibsoft.onlinebookstore.entities.User"%>
<%
    User user = (User)session.getAttribute("current-user");
    if(user == null) {
        out.println("<h1>Your'e not logged in.</h1>");
        return;
    }
    else {
        if(user.getUserType().equals("admin")) {
            out.println("You're not normal user");
            return;
        }
    }

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <div class="bg-image" style="
             background-image: url('img/bggreen.jpg');
             height: 50vh;
             ">
        <h1>Hello World!</h1>
        <h1>
            This is normal panel page
        </h1>
        </div></body>
</html>
