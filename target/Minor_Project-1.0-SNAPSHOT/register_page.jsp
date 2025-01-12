
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>


        <!--css-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://kit.fontawesome.com/e9ab401aff.js" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<!--        <link rel="icon" href="css/college-logo.jpg" type="image/icon type">-->



        <style>

            .form-group{
                font-size: 16px;
            }
            .form-group input{
                font-size: 11px;
            }

        </style>

    </head>
    <body>

        <%@include file="navbar.jsp" %>
        <div class="back" >

            <div class="login_p"  style=" height: 105vh;  padding:10px 0px 10px 20px; ">

                <div class="container" >

                    <div class="col-md-4 offset-md-8" >
                        <div class="card">
                            <div class="card-header text-center primary-background text-white" style="padding:1px; background-color: gray">
                                <span class="fa fa-3x fa-user-circle"></span>
                                <br>
                                Register here
                            </div>
                            <div class="card-body" style="padding-bottom: 0px; margin: 0px;" >
                                <!--form action-->
                                <form id="reg-form" action="RegisterServlet" method="POST">

                                    <div class="form-group">
                                        <label for="user_name">User Name</label>
                                        <input name="user_name" type="text" class="form-control" id="user_name" aria-describedby="emailHelp" placeholder="Enter name">
                                    </div>

                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Email address</label>
                                        <input name="user_email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                    </div>



                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Password</label>
                                        <input  name="user_password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                    </div>


                                    <div class="form-group">
                                        <label for="gender">Select Gender</label>
                                        <br>
                                        <input type="radio"  id="gender" name="gender" value="male" >Male
                                        <input type="radio"  id="gender" name="gender" value="famale">Female
                                    </div>

                                    <div class="form-group">

                                        <textarea name="about"  class="form-control" id=""  rows="2" placeholder="Enter something about yourself"></textarea>

                                    </div>


                                    <div class="form-check">
                                        <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1">
                                        <label class="form-check-label" for="exampleCheck1">Agree Terms and Conditions</label>
                                    </div>

                                    <br>

                                    <div class="container text-center" id="loader" style="display: none;">
                                        <span class="fa fa-refresh fa-spin fa-4x"></span>
                                        <h4>Please wait..</h4>
                                    </div>
                                    <div class="text-center"style="padding-bottom:10px " >
                                        <button id="sumbimt-btn" type="submit" class="btn btn-primary " >Submit</button>
                                    </div>

                                </form>

                            </div>


                        </div>

                    </div>
                </div>

            </div>

            <div class="foot"style="padding: 70px 0px 0px 4px ;  " >
                <%@include file="footer.jsp" %>
            </div>

        </div>  
        <!--javascripts-->
        <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/myjs.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        <script>
            $(document).ready(function () {
                console.log("loaded........")

                $('#reg-form').on('submit', function (event) {
                    event.preventDefault();



                    let form = new FormData(this);

                    $("#sumbimt-btn").hide();
                    $("#loader").show();
                    //send register servlet:
                    $.ajax({
                        url: "RegisterServlet",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data)

                            $("#sumbimt-btn").show();
                            $("#loader").hide();

                            if (data.trim() === 'done')
                            {

                                swal("Registered successfully..We are going to redirect to login page")
                                        .then((value) => {
                                            window.location = "login_page.jsp"
                                        });
                            } else
                            {

                                swal(data);
                            }

                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            $("#sumbimt-btn").show();
                            $("#loader").hide();
                            swal("something went wrong..try again");

                        },
                        processData: false,
                        contentType: false

                    });



                });


            });



        </script>


    </body>
</html>
