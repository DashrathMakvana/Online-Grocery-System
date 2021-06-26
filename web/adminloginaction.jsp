<%-- 
    Document   : adminloginaction
    Created on : Mar 4, 2021, 1:03:41 PM
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
    String adminemail = request.getParameter("adminemail");
    String adminpassword = request.getParameter("adminpassword");
    try {
        Connection conn = DBConnect.getConnection();
        String qu = "select * from admindata where adminemail=? and adminpass=?";

        PreparedStatement pst = conn.prepareStatement(qu);
        pst.setString(1, adminemail);
        pst.setString(2, adminpassword);

        ResultSet rs = pst.executeQuery();

        if (rs.next()) {

            session.setAttribute("msg", "Login Successfully");
            session.setAttribute("adminemail",adminemail); 
            response.sendRedirect("adminhome.jsp");
        }
        else
        {
             session.setAttribute("msg-er", "Somthing Went Wrong! Please Try Again!");
        response.sendRedirect("adminlogin.jsp");
        
        }

    } catch (Exception e) {
       
        System.out.println(e);
    }


%>
