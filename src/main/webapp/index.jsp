<%-- 
    Document   : index
    Created on : 21 Aug, 2021, 9:49:41 PM
    Author     : saquib
--%>

<%@page import="com.ibsoft.onlinebookstore.helper.FactoryProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Onlinebookstore | Home</title>
        <%@include file = "components/common_css_js.jsp" %>

    </head>

    <body>
        <%@include file = "components/navbar.jsp" %>
        <div class="bg-image" style="
             background-image: url('img/bggreen.jpg');
             height: 100vh;
             ">
            <br>
            <center>
                <div class="card mb-3" style="max-width: 66%;">
                    <div class="row no-gutters">
                        <div class="col-md-4">
                            <img src="img/obsicon.png" class="card-img" alt="...">
                        </div>
                        <div class="col-md-8">
                            <div class="card-body">
                                <div class="card text-white text-center bg-success mb-3" >
                                    <a class="navbar-brand mb-0 h1" >
                                        <img src="img/obsiconlong.png" width="196" height="30" class="d-inline-block align-top" alt="logo">
                                     
                                    </a></div>
                                <div class="card-body">
                                    <p class="card-text">It’s an e-commerce web application built on java web technologies. It has admin and
                                        user module and an add to cart feature, where admin can perform CRUD operations
                                        and users can order and scroll through books.</p>

                                </div>
                            </div>
                        </div>
                    </div>
            </center>
            <br>
            <%        out.println(FactoryProvider.getFactory());
            %>
            </div>
            </body>
            </html>
