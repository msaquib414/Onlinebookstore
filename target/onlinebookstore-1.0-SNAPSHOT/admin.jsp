<%@page import="com.ibsoft.onlinebookstore.entities.User"%>
<%
    User user = (User)session.getAttribute("current-user");
    if(user == null) {
        out.println("<h1>Your'e not logged in.</h1>");
        return;
    }
    else {
        if(user.getUserType().equals("normal")) {
            out.println("You're not admin");
            return;
        }
    }

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Onlinebookstore | Admin</title>
        <%@include file = "components/common_css_js.jsp" %>

        
    </head>
    <body>
         <div class="bg-image" style="
             background-image: url('img/bggreen.jpg');
             height: 100vh;
             ">
        <%@include file = "components/navbar.jsp" %>
       
        <div class ="container">
            <div class="row mt-3">
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="container">
                                <img style="max-width: 125px;" class="img-fluid rounded-circle" src="img/avatar.png">
                            </div>
                            <h1>4554</h1>
                            <h1 class = "text-muted">Users</h1>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="container">
                                <img style="max-width: 125px;" class="img-fluid rounded-circle" src="img/avatar.png">
                            </div>
                            <h1>22454</h1>
                            <h1 class = "text-muted">Categories</h1>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="container">
                                <img style="max-width: 125px;" class="img-fluid rounded-circle" src="img/avatar.png">
                            </div>
                            <h1>7542</h1>
                            <h1 class = "text-muted">Products</h1>
                        </div>
                    </div>
                </div>
            </div>
           
            <div class="row mt-3 justify-content-center">
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="container">
                                <img style="max-width: 125px;" class="img-fluid rounded-circle" src="img/avatar.png">
                            </div>
                            <h1>4554</h1>
                            <h1 class = "text-muted">Add Category</h1>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="container">
                                <img style="max-width: 125px;" class="img-fluid rounded-circle" src="img/avatar.png">
                            </div>
                            <h1>22454</h1>
                            <h1 class = "text-muted">Add Product</h1>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
        </div>
    </body>
</html>
