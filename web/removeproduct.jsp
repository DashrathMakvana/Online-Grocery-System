<%-- 
    Document   : removeproduct
    Created on : Feb 27, 2021, 5:13:45 PM
    Author     : Admin
--%>

<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.*"%>

<%
    String selleremail=(String)session.getAttribute("selleremail");
     String product_id = request.getParameter("id");
     try
     {
        Connection conn = DBConnect.getConnection();
        Statement st = conn.createStatement();
        st.executeUpdate("delete from product where emailid='" + selleremail + "' and id='" + product_id + "'");
         response.sendRedirect("sellerhome.jsp?msg=removed");
     }
     catch(Exception e)
     {
         System.out.println(e);
     }
%>