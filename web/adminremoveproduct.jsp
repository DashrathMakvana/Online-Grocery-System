<%-- 
    Document   : adminremoveproduct
    Created on : Mar 19, 2021, 8:32:25 AM
    Author     : Admin
--%>

<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.*"%>

<%
    String adminemail=(String)session.getAttribute("adminemail");
String product_id = (String) session.getAttribute("product_id");
     try
     {
        Connection conn = DBConnect.getConnection();
        Statement st = conn.createStatement();
        st.executeUpdate("delete from product where id='" + product_id + "'");
        session.setAttribute("removed", "Product Removed Successfully");
         response.sendRedirect("productdata.jsp");
     }
     catch(Exception e)
     {
         System.out.println(e);
     }
%>