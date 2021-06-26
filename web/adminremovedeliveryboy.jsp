<%-- 
    Document   : adminremovedeliveryboy
    Created on : Mar 19, 2021, 9:49:55 AM
    Author     : Admin
--%>

<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.*"%>

<%
    
String product_id = (String) session.getAttribute("product_id");
     try
     {
        Connection conn = DBConnect.getConnection();
        Statement st = conn.createStatement();
        st.executeUpdate("delete from delevryboy_data where delevryboyid='" + product_id + "'");
        session.setAttribute("removed", "Delivery boy Removed Successfully");
         response.sendRedirect("deliverboydata.jsp");
     }
     catch(Exception e)
     {
         System.out.println(e);
     }
%>