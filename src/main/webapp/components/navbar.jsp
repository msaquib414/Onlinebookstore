<%@page import="com.ibsoft.onlinebookstore.entities.User"%>
<%
    User user1 = (User) session.getAttribute("current-user");

%>    
<nav class="navbar navbar-expand-lg navbar-dark bg-success">
    <div class="container">
        <a class="navbar-brand mb-0 h1" href="#">
            <img src="img/obsiconlong.png" width="195" height="30" class="d-inline-block align-top" alt="">
            
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="aboutus.jsp">About us<span class="sr-only">(current)</span></a>
                </li>


            </ul>
            <ul class = "navbar-nav ml-auto">
                <%            if (user1 == null) {
                %>
                <li class="nav-item active">
                    <a class="btn btn-outline-light" href="login.jsp"> &nbsp;Login <span class="sr-only">(current)</span></a>
                </li>

                <%
                } else {
                %>
                <li class="nav-item active">
                    <a class="nav-link" href="#!"> <%= user1.getUserName() %> <span class="sr-only">(current)</span></a>
                </li>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <li class="nav-item active">
                    <a class="btn btn-outline-light" href="LogOutServlet"> LogOut <span class="sr-only">(current)</span></a>
                </li>
                <%
                    }
                %>    



            </ul>


        </div>
    </div>
</nav>