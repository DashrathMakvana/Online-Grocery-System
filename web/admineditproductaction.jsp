<%-- 
    Document   : admineditproductaction
    Created on : Mar 19, 2021, 8:15:37 AM
    Author     : Admin
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.DB.DBConnect"%>


<%
    String adminemail = (String) session.getAttribute("adminemail");
      String product_id = (String) session.getAttribute("product_id");
      
    String productname = request.getParameter("pname");
    String productprice = request.getParameter("price");
    String productcategory = request.getParameter("category");
    String productshopname = request.getParameter("shopname");
    String productemail = request.getParameter("email");
   
    try {
        Connection conn = DBConnect.getConnection();
        PreparedStatement ps2 = conn.prepareStatement("update product set PName=?,Price=?,category=?,shopname=?,emailid=? where id='" + product_id + "'");

        ps2.setString(1, productname);
        ps2.setString(2, productprice);
        ps2.setString(3, productcategory);
        ps2.setString(4, productshopname);
        ps2.setString(5, productemail);
       

        ps2.executeUpdate();
        session.setAttribute("msg", "Successfully  Updated !");
        response.sendRedirect("productdata.jsp");

    } catch (Exception e) {
        session.setAttribute("msg-er", "Some thing Went Wrong! Try Aging!!");
        response.sendRedirect("productdata.jsp");
    }


%>
