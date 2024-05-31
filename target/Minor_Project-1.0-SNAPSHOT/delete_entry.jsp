<%@page import="com.helper.ConnectionProvider"%>
<%@page import= "java.sql.*" %>



<%
    String qname = request.getParameter("d");
    Connection con = ConnectionProvider.getConnection();
    Statement st = con.createStatement();
    st.executeUpdate("delete from querry where stop = '"+qname+"' ");
    response.sendRedirect("bus_details.jsp");

%>