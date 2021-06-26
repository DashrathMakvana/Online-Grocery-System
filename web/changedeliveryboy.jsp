<%-- 
    Document   : changedeliveryboy
    Created on : Mar 16, 2021, 8:29:59 AM
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
                String email = (String) session.getAttribute("email");
                String delevryboy = (String)request.getParameter("delevryboy");
                        //out.println(delevryboy);
                try {

                          
                   
        Connection conn = DBConnect.getConnection();
        PreparedStatement ps = conn.prepareStatement("update cart set delevryboyname='"+delevryboy+"' where email='"+email+"' and status='processing'");
         
           
        ps.executeUpdate();
              
          session.setAttribute("msg-cdb", "Delivery Boy Change Successfully");
         response.sendRedirect("myOrders.jsp");
                    }
                
                    catch(Exception e)
                            {
                                 System.out.println(e);
                            }
            %>    