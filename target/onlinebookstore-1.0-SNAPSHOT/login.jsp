<%-- 
    Document   : login
    Created on : 30 Aug, 2021, 1:56:04 PM
    Author     : saquib
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Onlinebookstore | Login</title>
        <%@include file = "components/common_css_js.jsp" %>

    </head>
    <body>
        <%@include file = "components/navbar.jsp" %>
        <div class="bg-image" style="
             background-image: url('img/bggreen.jpg');
             height: 100vh;
             "><br>
        <div class="container-fluid">
                <div class ="col-md-4 offset-md-4 ">
                     <div class="card text-white text-center bg-success mb-3" >
                        <div class="card-header">Login here !!</div>
                    </div>
                    <div class="card">
                        <div class="card-body">
                           
                            
                            <form action = "LoginServlet" method="post">

                                
                                <div class="form-group">
                                    <label for="email">Email</label>
                                    <input name = "email" type="email" class="form-control" id="email">
                                </div>
                                
                               
                                <div class="form-group">
                                    <label for="password">Password</label>
                                    <input name="password" type="password" class="form-control" id="password">
                                </div>
                                <div class="container text-center">
                                    <button type ="submit" class="btn btn-dark bg-success">Login</button>
                                   <a href="register.jsp">&nbsp;&nbsp;New user? Register here.</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div></body>
</html>
