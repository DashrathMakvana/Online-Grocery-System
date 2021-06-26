<%-- 
    Document   : removefromcart
    Created on : Feb 26, 2021, 1:53:47 PM
    Author     : Dashrath b Makvana
--%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.*"%>

<%
    String email=(String)session.getAttribute("email");
     String product_id = request.getParameter("id");
     try
     {
        Connection conn = DBConnect.getConnection();
        Statement st = conn.createStatement();
        st.executeUpdate("delete from cart where email='" + email + "' and product_id='" + product_id + "'");
         response.sendRedirect("mycart.jsp?msg=removed");
     }
     catch(Exception e)
     {
         System.out.println(e);
     }
%>
