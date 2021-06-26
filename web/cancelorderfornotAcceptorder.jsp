<%-- 
    Document   : cancelorderfornotAcceptorder
    Created on : Mar 12, 2021, 4:16:49 PM
    Author     : Admin
--%>

<%-- 
    Document   : cancelorderaction
    Created on : Mar 12, 2021, 8:55:04 AM
    Author     : Admin
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import=" javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import=" javax.servlet.http.HttpServletResponse"%>
<%@page import=" javax.servlet.http.HttpSession"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="javax.servlet.http.HttpSession"%>

<%
    String email = (String) session.getAttribute("email");
   
      String product_id = (String) session.getAttribute("product_id");
    String orderAccept = "Order Cancel";
    
    
    try {
        Connection conn = DBConnect.getConnection();
       
        
         PreparedStatement ps1 = conn.prepareStatement("update cart set status='"+orderAccept+"'  where email ='"+email+"' and status='processing' and cId='" + product_id + "'");
         ps1.executeUpdate();
       
        session.setAttribute("msg1", "Order Cancel Successfully");
        response.sendRedirect("myOrders.jsp");
       

    } catch (Exception e) {
        System.out.println(e);
    }


%>