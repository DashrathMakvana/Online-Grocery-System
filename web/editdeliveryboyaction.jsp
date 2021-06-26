<%-- 
    Document   : editdeliveryboyaction
    Created on : Mar 19, 2021, 9:02:15 AM
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
       
      String product_id = (String) session.getAttribute("product_id");
      
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String number = request.getParameter("number");
    String address = request.getParameter("address");
  
   
    try {
        Connection conn = DBConnect.getConnection();
        PreparedStatement ps2 = conn.prepareStatement("update delevryboy_data set Name=?,email=?,number=?,address=? where delevryboyid='" + product_id + "'");

        ps2.setString(1, name);
        ps2.setString(2, email);
        ps2.setString(3, number);
        ps2.setString(4, address);
        ps2.executeUpdate();
       

       
        session.setAttribute("msg", "Successfully  Updated !");
        response.sendRedirect("deliverboydata.jsp");

    } catch (Exception e) {
        session.setAttribute("msg-er", "Some thing Went Wrong! Try Aging!!");
        response.sendRedirect("deliverboydata.jsp");
    }
    %>
