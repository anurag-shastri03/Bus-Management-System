
<%@page import="com.entities.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.entities.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Paqe</title>

        <!--css-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <!--<link rel="icon" href="css/college-logo.jpg" type="image/icon type">-->

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://kit.fontawesome.com/e9ab401aff.js" crossorigin="anonymous"></script>
    </head>
    <body>

        <!--navbar-->
        <%@include  file="navbar.jsp" %>
        <section class="log"style="position: fixed">

            <main class="d-flex banner-background">
                <div class="login_p" style="padding-top:40px; padding-left: 20%">
                    <div class="row" style="margin-right: -350px;
                         margin-left: 100px;
                         ">
                        <div class="col-md-4 offset-md-4">

                            <div class="card">
                                <div class="card-header primary-background text-white text-center" style="background-color: gray ">
                                    <span class="fa fa-user-plus "></span>
                                    <br>
                                    <p>Login here</p>
                                </div>

                                <%
                                    Message m = (Message) session.getAttribute("msg");
                                    if (m != null) {
                                    
                                %>
                                <div class="alert <%= m.getCssClass()%> " role="alert">
                                    <%= m.getContent()%>
                                </div>

                                <%
                                        session.removeAttribute("msg");
                                    }   
                                %>

                                <div class="card-body">
                                    <form action="LoginServlet" method="POST">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Email address</label>
                                            <input name="email" required type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputPassword1">Password</label>
                                            <input name="password" required type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                        </div>

                                        <div class="container text-center">
                                            <button type="submit" class="btn btn-primary">Submit</button>
                                        </div>
                                    </form>

                                </div>


                            </div>



                        </div>


                    </div>

                </div>

            </main>
            <div class="footer" style="margin-top: 70px;
                 width: 100%;
                 text-align: center;
                 padding: 0px 0;">
                <%@include file="footer.jsp" %>
            </div>
        </section>

        <!--javascripts-->
        <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/myjs.js" type="text/javascript"></script>

    </body>
</html>
