<%-- 
    Document   : deliveryboyforgotpassAction
    Created on : Mar 8, 2021, 4:58:54 PM
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
    String demail = request.getParameter("demail");
    String dnumber = request.getParameter("dnumber");
    String dsequrityQuation = request.getParameter("dsequrityQuation");
    String danswer = request.getParameter("danswer");
    String dnewpassword = request.getParameter("dnewpassword");

    int check = 0;
    try {
        Connection conn = DBConnect.getConnection();
        Statement st = conn.createStatement();
        ResultSet rs = st.executeQuery("select * from delevryboy_data where email='" + demail + "' and number='" + dnumber + "' and sequrityQuation='" + dsequrityQuation + "' and answer='" + danswer + "' ");

        while (rs.next()) {
            check = 1;
            st.executeUpdate("update delevryboy_data set password='" + dnewpassword + "' where email='" + demail + "'");
            session.setAttribute("done-smg", "Succesfully password reset");

            response.sendRedirect("deliveryboyforgotpass.jsp");

        }
        if (check == 0) {
            session.setAttribute("error-msg", "Somthing Went Wrong! Please Try Again!");
            response.sendRedirect("deliveryboyforgotpass.jsp");

        }

    } catch (Exception e) {

        System.out.println(e);

    }
%>
