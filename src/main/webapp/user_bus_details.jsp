
<%@page import="com.helper.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@page import="com.entities.User" %>
<%@page import="com.entities.User_Query" %>
<%@page errorPage="error_page.jsp" %>
<%
    User user = (User) session.getAttribute("currentUser");

    if (user == null) {
        response.sendRedirect("login_page.jsp");
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bus Details</title>
        <link rel="stylesheet" href="css/profile.css" type="text/css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,200;0,300;0,400;1,500&display=swap"
              rel="stylesheet">
        <link rel="icon" href="css/college-logo.jpg" type="image/icon type">
        <script src="https://kit.fontawesome.com/e9ab401aff.js" crossorigin="anonymous"></script>
        <style>
            .sidebar{
                background-color: gray;
                color: white;
                height: 100%;
            }

            .sidebar a{
                margin-left: 10px;
                display: block;
                color: white;
                padding-bottom: 10px;
                font-size: 30px;
                text-decoration: none;
            }
            .row{
                display: flex;
            }
        </style>


    </head>
    <body>
        <!-- ---------------------------Navigation--------------------------------------- -->
        <section class="navigation"style="position: static" >
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">

                <a class="navbar-brand " href="index.jsp"><img src="img/bus.jpg" alt="logo" style="width:30px; border-radius: 30px; "> </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <i class="fa-solid fa-xmark" style="display:none" onclick="hideMenu()"></i>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about.jsp">About </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.jsp">Contact </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link"  style= "padding-left: 750px" href="#"></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#!" data-toggle="modal" data-target="#profilemodal" ><span class="fa fa-user-circle"></span> <%= user.getName()%></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="LogoutServlet" >Log Out</a>
                        </li>

                    </ul>

                </div>

                <i class="fa-sharp fa-solid fa-bars"style="display:none" onclick="showMenu()"></i> 
            </nav>
        </section>
        <!--end of navbar-->
        <!--profile body-->
        <div class="sec-container"style="display:flex; flex-direction: column;">
            <section class="profile">
                <div class="row">
                    <div class="col-md-4 mt-1">
                        <div class="card text-center sidebar" style="width:100%">
                            <div class="card-body">
                                <img src="css/default.png" class="rounded-circle" width="1" >
                                <div class="mt-3 links">

                                    <a href="profile.jsp">Home</a>
                                    <a href="user_bus_details.jsp">Bus Details</a>
                                    <a href="contact.jsp">Support</a>
                                    <a href="login_page.jsp">Logout</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="container" style="display:flex;flex-direction: column; width: 66%">
                        <nav class="navbar navbar-light bg-light">
                            <div style="display: flex">        
                                <form action="" method="get" style="display: flex">
                                    <input class="form-control mr-sm-2" name="srch" type="search" placeholder="Search" aria-label="Search">
                                    <button class="btn fa fa-magnifying-glass" type="submit"></button>    
                                </form>    
                            </div>
                        </nav>
                        <table class="table col-md-4 m-3" style="" >
                            <thead> 

                                <tr>
                                    <th scope="col">Bus NO.</th>
                                    <th scope="col">Stop</th>
                                    <th scope="col">Time</th>


                                </tr>
                            </thead>
                            <tbody>

                                <%
                                    Statement st = null;
                                    ResultSet rs = null;
                                    try {
                                        Connection con = ConnectionProvider.getConnection();
                                        st = con.createStatement();
                                       String q = request.getParameter("srch");
                                        if (q != null) {
                                            String qry = "  select * from bus43 where stop like '%" + q + "%' or busno like '%" + q + "%' ";
                                            rs = st.executeQuery(qry);

                                        while (rs.next()) {
                                %>        
                                <tr>
                                    <td><%= rs.getString(1)%></td>
                                    <td><%= rs.getString(2)%></td>
                                    <td><%= rs.getString(3)%></td>                           

                                </tr>      
                                <%
                                    }
                                        }
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    }
                                %>

                            </tbody>

                        </table>


                    </div>

                </div>

            </section>
        </div>
        <!--footer-->
        <section class="footer" style="
                 width: 100%;
                 text-align: center;
                 padding-top: 80px; ">

            <div class="icons">
                <i class="fa-brands fa-facebook"></i>
                <i class="fa-brands fa-instagram"></i>
                <i class="fa-brands fa-twitter"></i>
                <i class="fa-brands fa-linkedin"></i>
                <p>Bus Transportation System | Made with <i class="fa-solid fa-heart" style="color: red"></i></p>
            </div>

        </section>
        <!--footer end-->                    

        <!--javascript-->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/myjs.js" type="text/javascript"></script>

    </body>
</html>
