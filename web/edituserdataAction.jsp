<%-- 
    Document   : edituserdataAction
    Created on : Mar 20, 2021, 8:09:46 AM
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
    String user_id = (String) session.getAttribute("user_id");
//     System.out.println(user_id);
      
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String number = request.getParameter("number");
    String address = request.getParameter("address");
//     System.out.println(name);
//      System.out.println(email);
//       System.out.println(number);
//        System.out.println(address);
       

    try {
        Connection conn = DBConnect.getConnection();
        PreparedStatement ps = conn.prepareStatement("update userdata set name=?,email=?,number=?,address=? where Id='" + user_id + "'");

        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, number);
        ps.setString(4, address);
       
        

        ps.executeUpdate();
        session.setAttribute("msg", "Successfully  Updated !");
        response.sendRedirect("userdata.jsp");

    } catch (Exception e) {
        session.setAttribute("msg-er", "Some thing Went Wrong! Try Aging!!");
        response.sendRedirect("userdata.jsp");
        System.out.println(e);
    }


%>
