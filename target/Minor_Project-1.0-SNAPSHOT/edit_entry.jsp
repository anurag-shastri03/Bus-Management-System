<%@page import="java.sql.*" %>
<%@page import="com.helper.ConnectionProvider" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,200;0,300;0,400;1,500&display=swap"
              rel="stylesheet">
        <link rel="icon" href="css/college-logo.jpg" type="image/icon type">
        <script src="https://kit.fontawesome.com/e9ab401aff.js" crossorigin="anonymous"></script>
    </head>
    <body>


        <%
            String id = request.getParameter("e");

            try {
                Connection con = ConnectionProvider.getConnection();
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("select * from bus43 where stop = '%" + id + "%' ");

                {
        %>

        <form action="update_entry.jsp" method="post" style="margin: 50px; padding: 50px;"  >
            <input type="text" name="place" value="<% out.println(id);%>" >
            <h2>Bus No.</h2>
            <input type="text" value="" name="bus_no" class="form-control" placeholder="Enter Bus NO.">
            <hr>
            <h2>Stop</h2>
            <input type="text" value="" name="stop" class="form-control" placeholder="Enter Stop">
            <hr>
            <h2>Time</h2>
            <input type="text" value="" name="time" class="form-control" placeholder="Enter Time">
            <br>
            <center><button type="submit" class="btn btn-primary">Save</button></center>
        </form>
        <!--        <section class="container" >
                    <form action="update_entry.jsp" method="post">
        
                        <input type="text" name="place" >
                        
                            <input type="text"  name="place" >
                            <div class="col" >
                                <h5>Bus No.</h5>
                                <input type="text"  name="bus_no"  placeholder="Bus NO.">
                            </div>
                            <hr>
                            <div class="col">
                                <h5>Stop</h5>
                                <input type="text" value="<%=rs.getString(2)%>" name="stop"  placeholder="Stop">
                            </div>
                            <hr>
                            <div class="col">
                                <h5>Time</h5>
                                <input type="text" value="<%=rs.getString(3)%>" name="time"  placeholder="Time">
                            </div>
                            <br>
                            <button type="submit" class="btn btn-primary">Primary</button>
                        
        
                    </form>-->


        <%
                }
            } catch (Exception e) {
                e.printStackTrace();
            }

        %>

 

    <!--javascript-->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="js/myjs.js" type="text/javascript"></script>

</body>
</html>
