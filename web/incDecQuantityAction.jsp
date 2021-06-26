<%-- 
    Document   : incDecQuantityAction
    Created on : Feb 26, 2021, 1:41:04 PM
    Author     : Admin
--%>

<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.*"%>
<%
    String email = (String) session.getAttribute("email");
    String id = request.getParameter("id");
    String incdec = request.getParameter("Quantity");
    int price = 0;
    int total = 0;
    int quantity = 0;
    int final_total = 0;

    try {
        Connection conn = DBConnect.getConnection();
        Statement st = conn.createStatement();
        ResultSet rs = st.executeQuery("select * from cart where email='" + email + "' and product_id='" + id + "'");
        while(rs.next())
        {
        
        price=rs.getInt(5);
        total=rs.getInt(6);
        quantity=rs.getInt(4);
        }
        if(quantity==1 && incdec.equals("dec"))
        {
            response.sendRedirect("mycart.jsp?msg=notpossible");
        }
        else if(quantity!=1 && incdec.equals("dec"))
        {
            total=total-price;
            quantity=quantity-1;
            st.executeUpdate("update cart set total='"+total+"' ,Quantity='"+quantity+"' where  email='" + email + "' and product_id='" + id + "'");
             response.sendRedirect("mycart.jsp?msg=dec");
        }
        else
        {
             total=total+price;
            quantity=quantity+1;
            st.executeUpdate("update cart set total='"+total+"' ,Quantity='"+quantity+"' where  email='" + email + "' and product_id='" + id + "'");
             response.sendRedirect("mycart.jsp?msg=inc");
        }
    } catch (Exception e) {
        System.out.println(e);
    }


%>