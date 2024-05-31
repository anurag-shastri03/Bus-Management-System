<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sorry ! something went wrong...</title>

        <!--css-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            
        </style>

    </head>
    <body>
        <div class="container text-center">
            <img src="img/error.png" class="img-fluid" style="width: 30% " >
            <h3 class="display-3">Sorry ! Something went wrong ...</h3>
            <h6>  <%= exception%>   </h6> 
            <a href="index.jsp" class="btn primary-background btn-lg text-white"style="background-color: #90caf9 ; padding: 0.5rem 1rem; font-size: 1.25rem; line-height: 1.5;
                                                                                             border-radius: 0.3rem;" >Home </a>
        </div>


    </body>
</html>
