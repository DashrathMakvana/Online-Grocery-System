<%-- 
    Document   : deliveryboyOrderaction
    Created on : Mar 9, 2021, 9:25:15 AM
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
    String orderAccept = "Accept Order";
    String Avalible="no";
    try {
        Connection conn = DBConnect.getConnection();
        PreparedStatement ps = conn.prepareStatement("update delevryboy_data set Avalible='" + Avalible + "' where email='" + demail + "'");
        ps.executeUpdate();
        
         PreparedStatement ps1 = conn.prepareStatement("update cart set status='"+orderAccept+"' where delevryboyname ='"+dname+"' and status='processing'");
         ps1.executeUpdate();
       
        
        response.sendRedirect("orderaccept.jsp");
       

    } catch (Exception e) {
        System.out.println(e);
    }


%>
