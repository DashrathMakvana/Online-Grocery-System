<%-- 
    Document   : editproductAction
    Created on : Mar 3, 2021, 4:42:16 PM
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
    String selleremail = (String) session.getAttribute("selleremail");
      String product_id = (String) session.getAttribute("product_id");
      
    String productname = request.getParameter("pname");
    String productprice = request.getParameter("price");
    String productcategory = request.getParameter("category");
    String productshopname = request.getParameter("shopname");
    String productemail = request.getParameter("email");
    String address = request.getParameter("address");
    String quantity = request.getParameter("quantity");
    String about = request.getParameter("about");
    String tquantity = request.getParameter("tquantity");

    try {
        Connection conn = DBConnect.getConnection();
        PreparedStatement ps2 = conn.prepareStatement("update product set PName=?,Price=?,category=?,shopname=?,emailid=?,shopaddress=?,Quantity=?,about=?,tquantity=?  where emailid='" + selleremail + "'and id='" + product_id + "'");

        ps2.setString(1, productname);
        ps2.setString(2, productprice);
        ps2.setString(3, productcategory);
        ps2.setString(4, productshopname);
        ps2.setString(5, productemail);
        ps2.setString(6, address);
        ps2.setString(7, quantity);
        ps2.setString(8, about);
        ps2.setString(9, tquantity);

        ps2.executeUpdate();
        session.setAttribute("msg", "Successfully  Updated !");
        response.sendRedirect("sellerhome.jsp");

    } catch (Exception e) {
        session.setAttribute("msg-er", "Some thing Went Wrong! Try Aging!!");
        response.sendRedirect("sellerhome.jsp");
    }


%>
