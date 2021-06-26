<%-- 
    Document   : addtocard
    Created on : Feb 26, 2021, 10:16:46 AM
    Author     : Admin
--%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import=" javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import=" javax.servlet.http.HttpServletResponse"%>
<%@page import=" javax.servlet.http.HttpSession"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="javax.servlet.http.HttpSession"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
       <link rel="stylesheet" href="css/addressPaymentForOrder-style.css">
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
          <link rel="stylesheet" href="css/bill.css">
        <link href="assets/css/bootstrap.css" rel="stylesheet">
        <!-- Fontawesome core CSS -->
        <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
        <!--GOOGLE FONT -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
        <!--Slide Show Css -->
        <link href="assets/ItemSlider/css/main-style.css" rel="stylesheet" />
        <!-- custom CSS here -->
        <link href="assets/css/style.css" rel="stylesheet" />
        <title>My Cart</title>
        <style>
            h3
            {
                color: yellow;
                text-align: center;
            }
        </style>
    </head>
    <body style="background-image: linear-gradient(to right top, #85d16b, #b7c051, #dbad51, #f19a64, #f78c81, #fa8ca7,
          #ec94cc, #d0a2ea, #a3bdff, #67d6ff, #39ebff, #5ffbf1);background-repeat: no-repeat; background-attachment: fixed; background-size: cover;">
    <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
     <a class="navbar-brand" href="#"><strong>Grocery</strong> Shop</a>
    <ul class="nav navbar-nav">
      <li class="active"><a href="home.jsp">Home</a></li>
      
    </ul>
  </div>
</nav>
    <div style="color: white; text-align: center; font-size: 30px;">My Cart </i></div>
        <%
            String msg = request.getParameter("msg");
            if ("notpossible".equals(msg)) {
        %>
    <h3 class="alert">There is only one Quantity! So click on remove!</h3>
    <%} %>
    <%

        if ("inc".equals(msg)) {
    %>
    <h3 class="alert">Quantity  Increased Successfully!</h3>
    <%} %>
    <%

        if ("dec".equals(msg)) {
    %>
    <h3 class="alert">Quantity  Decreased Successfully!</h3>
    <%} %>
    <%

        if ("removed".equals(msg)) {
    %>
    <h3 class="alert">Product Successfully Removed!</h3>
    <%} %>
    <table>

        <thead>
            <%
                String email = (String) session.getAttribute("email");
                int total = 0;
                int sno = 0;
                try {
                    Connection conn = DBConnect.getConnection();
                    Statement st1 = conn.createStatement();
                    ResultSet rs1 = st1.executeQuery("select sum(total) from cart where email='" + email + "' and address is null");
                    while (rs1.next()) {
                        total = rs1.getInt(1);


            %>  

            <tr>
                <th scope="col" style="background-color: yellow;">Total: <i class="fa fa-inr"><% out.println(total);%></i> </th>
                <%if (total > 0) {%><th scope="col"><a href="addressPaymentForOrder.jsp">Proceed to order</a></th><%}%>
            </tr>
        </thead>
        <thead>
            <tr>
                <th scope="col">S.No</th>
                <th scope="col">Product Name</th>
                <th scope="col">Category</th>
                <th scope="col">ShopName</th>
                <th scope="col"><i class="fa fa-inr"></i> price</th>
                <th scope="col">Quantity</th>
                <th scope="col">Sub Total</th>
                <th scope="col">Remove <i class='fas fa-trash-alt'></i></th>
            </tr>
        </thead>
        <tbody>
            <% ResultSet rs = st1.executeQuery("select * from product inner join cart on product.Id=cart.product_id and cart.email='" + email + "' where cart.address is NULL");
                while (rs.next()) {
            %>
            <tr>
                <%sno = sno + 1; %>
                <td><%out.println(sno);%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(6)%></td>
                <td><i class="fa fa-inr"><%=rs.getString(3)%></i> </td>
                <td><a href="incDecQuantityAction.jsp?id=<%=rs.getString(1)%>&Quantity=inc"><i class='fa fa-plus'></i></a> <%=rs.getString(16)%> <a href="incDecQuantityAction.jsp?id=<%=rs.getString(1)%>&Quantity=dec"><i class='fa fa-minus'></i></a></td>
                <td><i class="fa fa-inr"></i><%=rs.getString(18)%> </td>
                <td><a href="removefromcart.jsp?id=<%=rs.getString(1)%>">Remove <i class='fas fa-trash-alt'></i></a></td>
            </tr>
            <%
                        }
                    }
                } catch (Exception e) {
                    System.out.println(e);
                }%>
        </tbody>
    </table>
    <br>
    <br>
    <br>

           <div class="col-md-12 end-box ">
            &copy; 2021 | &nbsp; All Rights Reserved | &nbsp; 24x7 support | &nbsp; Email us: dmakvana854@rku.ac.in | ssingh233@rku.ac.in
        </div>
        <!-- /.col -->
        <!--Footer end -->
        <!--Core JavaScript file  -->
        <script src="assets/js/jquery-1.10.2.js"></script>
        <!--bootstrap JavaScript file  -->
        <script src="assets/js/bootstrap.js"></script>
        <!--Slider JavaScript file  -->
        <script src="assets/ItemSlider/js/modernizr.custom.63321.js"></script>
        <script src="assets/ItemSlider/js/jquery.catslider.js"></script>
        <script>
            $(function () {

                $('#mi-slider').catslider();

            });
        </script>
    </body>
</html>