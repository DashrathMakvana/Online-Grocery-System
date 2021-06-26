<%-- 
    Document   : deletuserdata
    Created on : Mar 20, 2021, 8:42:16 AM
    Author     : Admin
--%>

%@page import="javax.servlet.http.HttpSession"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.*"%>

<%
    
   String user_id = request.getParameter("id");
     try
     {
        Connection conn = DBConnect.getConnection();
        Statement st = conn.createStatement();
        st.executeUpdate("delete from userdata where Id='" + user_id + "'");
        session.setAttribute("removed", "User Removed Successfully");
         response.sendRedirect("userdata.jsp");
     }
     catch(Exception e)
     {
         System.out.println(e);
     }
%>