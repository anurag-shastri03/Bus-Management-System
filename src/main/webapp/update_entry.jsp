<%@page import="com.helper.ConnectionProvider"%>
<%@page import= "java.sql.*" %>

<%
    String srch = request.getParameter("place");
    String bus_no = request.getParameter("bus_no");
    String stop = request.getParameter("stop");
    String time = request.getParameter("time");
    
    
    try{
        Connection con = ConnectionProvider.getConnection();
        PreparedStatement pstmt = con.prepareStatement("update bus43 set BusNo = ? , stop = ? , time = ? where stop = ?  ");
       
        pstmt.setString(1,bus_no);
        pstmt.setString(2,stop);
        pstmt.setString(3,time);
        pstmt.setString(4,srch);
        
        pstmt.executeUpdate();
        response.sendRedirect("bus_details.jsp?msg=valid");
    }
    catch(Exception e){
        e.printStackTrace();
        response.sendRedirect("bus_details.jsp?msg=invalid");
    }
%>