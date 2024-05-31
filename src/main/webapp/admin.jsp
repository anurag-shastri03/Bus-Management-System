
<%@page import="com.entities.User" %>
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
        <title>Profile Page</title>
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
        </style>




    </head>
    <body>
        <!--navbar-->
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
                            <a class="nav-link"  style= "padding-left: 830px" href="#"></a>
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
        <section class="profile">
            <div class="row">
                <div class="col-md-4 mt-1">
                    <div class="card text-center sidebar">
                        <div class="card-body">
                            
                            <div class="mt-3 links">

                                <a href="admin.jsp">Home</a>
                                <a href="bus_details.jsp">Bus Details</a>
                                <a href="query.jsp">Queries</a>
                                
                                <a href="login_page.jsp">Logout</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-8 mt-1">
                    <div class="card mb-3 content">
                        <h1 class="m-3 pt-3">About</h1>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-3">
                                    <h5>Full Name</h5>
                                </div>
                                <div class="col-md-9 text-secondary">
                                    <%=user.getName()%>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-md-3">
                                    <h5>Email</h5>
                                </div>
                                <div class="col-md-9 text-secondary">
                                    <%=user.getEmail()%>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-md-3">
                                    <h5>Gender</h5>
                                </div>
                                <div class="col-md-9 text-secondary">
                                    <%=user.getGender()%>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-md-3">
                                    <h5>About</h5>
                                </div>
                                <div class="col-md-9 text-secondary">
                                    <%=user.getAbout()%>
                                </div>
                            </div>
                            <hr>   
                            <div class="row">
                                <div class="col-md-3">
                                    <h5>Registration Date</h5>
                                </div>
                                <div class="col-md-9 text-secondary">
                                    <%=user.getDateTime().toString()%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </section>

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
        <!-- Modal -->
        <div class="modal fade bg-white" id="profilemodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">

                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Profile</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <div class="container text-center">
                    <img src="pics/<%=user.getProfile()%>" class="img-fluid" style="border-radius: 50%;max-width: 100px;"> 
                    <br>
                    <h5 class="modal-title mt-3" id="exampleModalLabel"><%= user.getName()%></h5>

                </div>

                <!--details-->
                <table class="details">
                    <thead>

                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">Id :</th>
                            <td><%= user.getId()%></td>
                        </tr>
                        <tr>
                            <th scope="row">Email :</th>
                            <td><%= user.getEmail()%></td>
                        </tr>
                        <tr>
                            <th scope="row">Gender :</th>
                            <td><%= user.getGender()%></td>
                        </tr>
                        <tr>
                            <th scope="row">About :</th>
                            <td><%= user.getAbout()%></td>
                        </tr>
                        <tr>
                            <th scope="row">Registered on :</th>
                            <td><%= user.getDateTime().toString()%></td>
                        </tr>
                    </tbody>
                </table>       
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Edit</button>
                </div>

            </div>
        </div>  
        <!--end of modal-->

        <!--javascript-->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/myjs.js" type="text/javascript"></script>



    </body>
</html>
