<%-- 
    Document   : feedbackaction
    Created on : Mar 19, 2021, 12:18:42 PM
    Author     : Admin
--%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.DB.DBConnect"%>

<%
String name=request.getParameter("name");
String feedback=request.getParameter("feedback");
String email = (String) session.getAttribute("email");

try {
        Connection conn = DBConnect.getConnection();
        String qu = "insert into feedback(feedback ,email,name ) values (?,?,?)";

        PreparedStatement pst = conn.prepareStatement(qu);
        pst.setString(1, feedback);
        pst.setString(2, email);
        pst.setString(3, name);
        
       

        pst.executeUpdate();
        session.setAttribute("msg3", "Feedback Added Successfully!");
        response.sendRedirect("myOrders.jsp");

    } catch (Exception e) {
        session.setAttribute("msg-er", "Some thing Went Wrong! Try Aging!!");
        response.sendRedirect("myOrders.jsp");
    }





%>
