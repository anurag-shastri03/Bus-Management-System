
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bus Transportation System</title>
        <link rel="stylesheet" href="css/style.css" type="text/css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link rel="icon" href="css/college-logo.jpg" type="image/icontype"> 

        <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,200;0,300;0,400;1,500&display=swap"
              rel="stylesheet">
        <script src="https://kit.fontawesome.com/e9ab401aff.js" crossorigin="anonymous"></script>



    </head>
    <body>

        <%@include  file= "navbar.jsp" %>

        <div class="header">
            <div class="text-box"style="padding-top:100px;">
                <h1 class="display-3">Bus Transportation System</h1>
                <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis, porro. Libero, exercitationem?<br>
                    Dolorum nemo harum incidunt ab fugit quos, numquam ratione amet.</p>
                <a href="about.jsp" class="visit-btn"style="text-decoration: none;" >Visit Us TO Know More</a>
            </div>
        </div>

        <!--------------------------Services------------------------------------->
        <section class="services">
            <h1>Services</h1>
            <class class="data">
                <img src="img/bus-img.jpg">
                <ul>
                    <li>Lorem ipsum dolor sit amet.</li>
                    <li>Lorem ipsum dolor sit amet consectetur </li>
                    <li>Lorem ipsum dolor sit, amet elit. kajdkakhda</li>
                    <li>Lorem ipsum dolor sit amet.</li>

                </ul>

            </class>
        </section>
        <!--------------------------Querry------------------------------------->
        <section class="querry">
            <!-- <class class="write">
                <img src="img/write.jpeg">
            </class> -->
            <h1> Having Any Queries??</h1>
            <a href="contact.jsp" class="con visit-btn">Contact Us</a>



        </section>
        <!--    <section class="about">
                <h4 class="head" >About Us</h4>
                <p>Lorem ipsum dolor sit amet.</p>
            </section>
        -->

        <!--------------------------Footer------------------------------------->

        <%@include file="footer.jsp" %>




        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/myjs.js" type="text/javascript"></script>

        <script>
            var navLinks = document.getElementById("navLinks");
            function showMenu() {
                navLinks.style.right = "0";
            }
            function hideMenu() {
                navLinks.style.right = "-200px";
            }
        </script>
    </body>
</html>
