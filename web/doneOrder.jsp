<%-- 
    Document   : doneOrder
    Created on : Mar 10, 2021, 3:16:04 PM
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
    String demail = (String) session.getAttribute("demail");
     String dname = (String) session.getAttribute("dname");
    String orderAccept = "Order Delivered";
    String complate="complete";
    String Avalible="yes";
    try {
        Connection conn = DBConnect.getConnection();
        PreparedStatement ps = conn.prepareStatement("update delevryboy_data set Avalible='" + Avalible + "' where email='" + demail + "'");
        ps.executeUpdate();
        
         PreparedStatement ps1 = conn.prepareStatement("update cart set status='"+orderAccept+"' , delivered='"+complate+"' where delevryboyname ='"+dname+"' and status='Accept Order'");
         ps1.executeUpdate();
         
         PreparedStatement ps2 = conn.prepareStatement("update deliverycharge set status='"+complate+"' where deliverboyname ='"+dname+"' and status='complete'");
        
        ps2.executeUpdate();
        
        response.sendRedirect("delevryboyHome.jsp");
       

    } catch (Exception e) {
        System.out.println(e);
    }


%>