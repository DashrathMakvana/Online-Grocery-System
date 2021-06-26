<%-- 
    Document   : continueShopping
    Created on : Mar 6, 2021, 9:02:24 AM
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
 String  status="processing";
 String  status1="continue";
 
 try
 {
        Connection conn = DBConnect.getConnection();
        PreparedStatement ps = conn.prepareStatement("update cart set status='"+status+"' where email='"+email+"' and status='bill'");
         ps.executeUpdate();
        PreparedStatement ps1 = conn.prepareStatement("update deliverycharge set status='"+status1+"' where email='"+email+"' and status is null");
        
        ps1.executeUpdate();
       // PreparedStatement ps1 = conn.prepareStatement("update userdata set orderid=? where email=? and status='bill'");
        response.sendRedirect("home.jsp");
 }
 catch(Exception e)
 {
 
 
 
 }
 %>