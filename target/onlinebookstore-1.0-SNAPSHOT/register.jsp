
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Onlinebookstore | Register</title>
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
                        <div class="card-header">Register here !!</div>
                    </div>
                    <div class="card">
                        <div class="card-body">

                            <form action = "RegisterServlet" method="post">

                                <div class="form-group">
                                    <label for="Name">User's full name</label>
                                    <input name="user_name" type="text" class="form-control" id="Name">
                                </div>
                                <div class="form-group">
                                    <label for="email">Email</label>
                                    <input name = "user_email" type="email" class="form-control" id="email">
                                </div>
                                <div class="form-group">
                                    <label for="password">Password</label>
                                    <input name="user_password" type="password" class="form-control" id="password">
                                </div>
                                <div class="form-group">
                                    <label for="phone">Phone number</label>
                                    <input name="user_phone" type="number" class="form-control" id="phone">
                                </div>
                                <div class="form-group">
                                    <label for="address">Address</label>
                                    <textarea name="user_address" style="height : 50px;" class="form-control" ></textarea> 
                                </div>
                                <div class="container text-center">
                                    <button type="submit" class="btn btn-success">Register</button>
                                    <button type="reset" class="btn btn-outline-primary">Reset</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </body>
</html>
