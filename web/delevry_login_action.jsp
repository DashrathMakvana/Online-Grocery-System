<%-- 
    Document   : delevry_login_action
    Created on : Mar 8, 2021, 3:42:05 PM
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
     String dname = request.getParameter("dname");
    String demail = request.getParameter("demail");
    String dpassword = request.getParameter("dpassword");
    try {
        Connection conn = DBConnect.getConnection();
        String qu = "select * from delevryboy_data where Name=? and email=? and password=?";

        PreparedStatement pst = conn.prepareStatement(qu);
        pst.setString(1, dname);
        pst.setString(2, demail);
        pst.setString(3, dpassword);
        

        ResultSet rs = pst.executeQuery();

        if (rs.next()) {

            session.setAttribute("msg", "Login Successfully");
            session.setAttribute("demail",demail); 
             session.setAttribute("dname",dname); 
            response.sendRedirect("delevryboyHome.jsp");
        }
        else
        {
             session.setAttribute("msg-er", "Somthing Went Wrong! Please Try Again!");
        response.sendRedirect("delevryboy_login.jsp");
        
        }

    } catch (Exception e) {
       
        System.out.println(e);
    }


%>