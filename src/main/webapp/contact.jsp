
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bus Transportation System</title>
        <link rel="stylesheet" href="css/contact.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link rel="icon" href="css/college-logo.jpg" type="image/icon type">
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

        <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,200;0,300;0,400;1,500&display=swap"
              rel="stylesheet">
        <script src="https://kit.fontawesome.com/e9ab401aff.js" crossorigin="anonymous"></script>
        <style>
            *{
                font-size: 16px;
            }
            .contact{
                width: 100%;
                display: flex;
            }
            .row{
                width:80%;
                margin:auto;
                padding: 80px 0;
            }

            .contact-col .btn{
                background-color:#40c4ff;
            }
            .contact-col input, .contact-col textArea{
                width: 100%;
                padding: 15px;
                margin-bottom: 17px;
                outline: none;
                border: 1px solid black;
            }
        </style>

    </head>
    <body>
        <!-- ---------------------------Navigation--------------------------------------- -->
        <%@include file="navbar.jsp" %>
        <!-- ---------------------------Header--------------------------------------- -->

        <section class="header">
            <div class="text-box">
                <h1>Contact Us</h1>

            </div>
        </section>

        <!--------------------------------Contact Us----------------------------------------------------->

        <section class="contact">

            <div class="row ">
                <div class="contact-col"style="padding-right:200px;" >
                    <div>
                        <i class="fa fa-home"></i>
                        <span>
                            <h5>Bansal College of Engineering, Umariya</h5>
                            <p>Indore, Madhya Pradesh, India</p>
                        </span>
                    </div>
                    <div>
                        <i class="fa fa-phone"></i>
                        <span>
                            <h5>+91 0123456789</h5>
                            <p>Monday to Saturday, 10am to 4pm</p>
                        </span>
                    </div>
                    <div>
                        <i class="fa fa-envelope-o"></i>
                        <span>
                            <h5>sdbc@gmail.com</h5>
                            <p>Email us your query</p>
                        </span>
                    </div>
                </div>

                <div class="contact-col"style="width:40%;" >
                    <form id="query-form" action="QueryServlet" method="POST">
                        <input type="text" name="qname" placeholder="Enter your name" required>
                        <input type="email" name="qemail" placeholder="Enter your email" required>
                        <input type="text" name="qbranch" placeholder="Enter your branch" required>
                        <textarea rows="4" name="qabout" placeholder="Message" required></textarea>
                        <div class="sub" style="text-align:center;">
                            <button id="submit" type="submit" class="btn" >Submit</button>
                            <button id="reset" type="reset" class="btn" >Reset</button>
                        </div>


                    </form>
                </div>


            </div>


        </section>



        <!--------------------------Footer------------------------------------->

        <section class="footer">
            <!--        <h4>About Us</h3>
                        <p>Lorem ipsum dolor sit amet.</p>-->
            <div class="icons">
                <i class="fa-brands fa-facebook"></i>
                <i class="fa-brands fa-instagram"></i>
                <i class="fa-brands fa-twitter"></i>
                <i class="fa-brands fa-linkedin"></i>
                <p>Bus Transportation System | Made with <i class="fa-solid fa-heart"></i></p>
            </div>

        </section>
        <!----------------------JavaScript for toggle Menu--------------------------->
        <!--    <script>
                var navLinks = document.getElementById("navLinks");
                function showMenu() {
                    navLinks.style.right = "0";
                }
                function hideMenu() {
                    navLinks.style.right = "-200px";
                }
            </script>-->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<!--        <script>
            $(document).ready(function(){
                console.log("Loaded.....");
                $('#query-form').on('submit',function(event){
                    event.preventDefault();
                    let form = new FormData(this);
                    $.ajax({
                        url:"QueryServlet",
                        type:'POST',
                        data:form,
                        success: function(data,textStatus , jqXHR){
                            swal("Message Sent", "", "success");
                        },
                        error: function (jqXHR , textStatus , errorThrown){
                            console.log(jqXHR);
                        },
                        processData:false,
                        contentType:false
                    });
                    
                });
            });
        </script>    -->

    </body>
</html>
