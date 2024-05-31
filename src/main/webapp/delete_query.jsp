<%@page import="com.helper.ConnectionProvider"%>
<%@page import= "java.sql.*" %>



<%
    String qname = request.getParameter("d");
    Connection con = ConnectionProvider.getConnection();
    Statement st = con.createStatement();
    st.executeUpdate("delete from querry where qname = '"+qname+"' ");
    response.sendRedirect("query.jsp");

%>