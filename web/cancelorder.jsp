<%-- 
    Document   : cancelorder
    Created on : Mar 11, 2021, 9:05:29 PM
    Author     : Admin
--%>

<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.*"%>

<%
    String email=(String)session.getAttribute("email");
     String product_id = request.getParameter("id");
     try
     { 
         String status=null;
        Connection conn = DBConnect.getConnection();
        Statement st = conn.createStatement();
         ResultSet rs2 = st.executeQuery("select * from cart where email='" + email + "' and cId='" + product_id + "'");
         while(rs2.next())
         {
         status=rs2.getString(14);
         }
         if(status.equals("Accept Order"))
         {
          session.setAttribute("msg1", "Order Cancel Successfully");
         response.sendRedirect("cancelorderwarnig.jsp");
          session.setAttribute("product_id",product_id);
         }
         else
         {
             response.sendRedirect("cancelorderfornotAcceptorder.jsp");
              session.setAttribute("product_id",product_id);
         }
     }
     catch(Exception e)
     {
         System.out.println(e);
     }
%>