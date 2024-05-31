
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bus Transportation System</title>
        <link rel="stylesheet" href="css/about.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link rel="icon" href="css/college-logo.jpg" type="image/icon type">

        <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,200;0,300;0,400;1,500&display=swap"
              rel="stylesheet">
        <script src="https://kit.fontawesome.com/e9ab401aff.js" crossorigin="anonymous"></script>
        <style>
            .row{
                width: 80%;
                margin-top: 3%;
                margin-left: 10%;
                display: flex;
                justify-content: space-between;
            }
            .about-col{
                flex-basis: 31%;
                background: #fff3f3;
                border-radius: 10px;
                margin-bottom: 5%;
                padding: 20px 12px;
                box-sizing: border-box;
            }
        </style>
    </head>
    <body>
        <!-- ---------------------------Navigation--------------------------------------- -->

        <%@include file="navbar.jsp" %>
        <!-- ---------------------------Header--------------------------------------- -->

        <section class="header">
            <div class="text-box">
                <h1>About Us</h1>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque sed neque quam. Temporibus natus eaque
                    fuga impedit eius minus ad aspernatur saepe.</p>
            </div>

        </section>
        <!--------------------------Services------------------------------------->
        <section class="about">
            <div style="text-align: center; padding-top: 50px">
                <h2>We Provide</h2>
            </div>   
            <div class="row">
                <div class="about-col"style="width: 30%; text-align: center;">
                    <h3>Pass</h3>
                    <p>Knowledge can be defined as awareness of facts or as practical skills, and may also refer to familiarity with objects or situations. Knowledge of facts, also called propositional knowledge, is often defined as true belief that is distinct from opinion or guesswork by virtue of justification. While there is wide agreement among philosophers that propositional knowledge is a form of true belief, many controversies in philosophy focus on justification: whether it is needed at all, how to understand it, and whether something else besides it is needed.</p>
                </div>
                <div class="about-col"style="width: 30%; text-align: center;">
                    <h3>Student</h3>
                    <p>Knowledge can be defined as awareness of facts or as practical skills, and may also refer to familiarity with objects or situations. Knowledge of facts, also called propositional knowledge, is often defined as true belief that is distinct from opinion or guesswork by virtue of justification. While there is wide agreement among philosophers that propositional knowledge is a form of true belief, many controversies in philosophy focus on justification: whether it is needed at all, how to understand it, and whether something else besides it is needed.</p>
                </div>
                <div class="about-col"style="width: 30%; text-align: center;">
                    <h3>Driver</h3>
                    <p>Knowledge can be defined as awareness of facts or as practical skills, and may also refer to familiarity with objects or situations. Knowledge of facts, also called propositional knowledge, is often defined as true belief that is distinct from opinion or guesswork by virtue of justification. While there is wide agreement among philosophers that propositional knowledge is a form of true belief, many controversies in philosophy focus on justification: whether it is needed at all, how to understand it, and whether something else besides it is needed.</p>
                </div>
            </div>




        </section>
        <!--------------------------Footer------------------------------------->

        <section class="footer"style="padding-bottom: 0">

            <div class="icons">
                <i class="fa-brands fa-facebook"></i>
                <i class="fa-brands fa-instagram"></i>
                <i class="fa-brands fa-twitter"></i>
                <i class="fa-brands fa-linkedin"></i>
                <p>Bus Transportation System | Made with <i class="fa-solid fa-heart"></i></p>
            </div>

        </section>
        <!----------------------JavaScript for toggle Menu--------------------------->

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        <!--    <script>
                var navLinks = document.getElementById("navLinks");
                function showMenu() {
                    navLinks.style.right = "0";
                }
                function hideMenu() {
                    navLinks.style.right = "-200px";
                }
            </script>-->

    </body>
</html>
