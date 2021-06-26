<%-- 
    Document   : orderaccept
    Created on : Mar 9, 2021, 9:30:46 AM
    Author     : Admin
--%>

<%@page import="com.entites.User"%>
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
          <link rel="stylesheet" href="css/home-style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
          <!-- custom CSS here -->
        <link href="assets/css/style.css" rel="stylesheet" />
        <link href="assets/ItemSlider/css/main-style.css" rel="stylesheet" />
        <title>Order Details</title>
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
                <a class="navbar-brand" href="#">Grocery Shop</a>
            </div>

        </div>
    </nav>
    <div style="color: white; text-align: center; font-size: 30px;"> Order Details</div>


    <table>



  
            <%
                String demail = (String) session.getAttribute("demail");
                String dname = (String) session.getAttribute("dname");
                long total = 0;

                int sno = 0;
                try {
                    Connection conn = DBConnect.getConnection();
                    Statement st1 = conn.createStatement();
                    ResultSet rs2 = st1.executeQuery("select sum(total) from cart where delevryboyname ='" + dname + "'");
                    while (rs2.next()) {
                        total = rs2.getLong(1);
                    }
                    ResultSet rs1 = st1.executeQuery("select *from delevryboy_data where email='" + demail + "'");
                    while (rs1.next()) {
                        total = rs1.getInt(1);


            %>  


       
        <thead>
            <tr>
                <th scope="col">S.No</th>
                <th scope="col">Product Name</th>
                <th scope="col">Category</th>
                <th scope="col">Shop Name</th>
                <th scope="col">Shop Address</th>
                <th scope="col">Quantity</th>
                <th scope="col"><i class="fa fa-inr"></i> price</th>
                <th scope="col">OrderId</th>
                <th scope="col">Order Date</th>
                <th scope="col">Status Order</th>
            </tr>

        </thead>

        <tbody>
            <%                ResultSet rs = st1.executeQuery("select * from cart inner join product where cart.product_id=product.id  and cart.delevryboyname='" + dname + "' and status NOT IN ('Order Delivered')");
                while (rs.next()) {
            %>
            <tr>
                <%sno = sno + 1; %>
                <td><%out.println(sno);%></td>
                <td><%=rs.getString(21)%></td>
                <td><%=rs.getString(23)%></td>
                <td><%=rs.getString(25)%></td>
                <td><%=rs.getString(28)%></td>
                <td><%=rs.getString(4)%></td>
                <td><i class="fa fa-inr"><%=rs.getString(5)%></i> </td>
                <td><%=rs.getString(18)%></td>
                <td><%=rs.getString(15)%></td>
                <td><p style="color:red"><%=rs.getString(14)%></p></td>
            </tr>

            <%
                        }
                    }
                } catch (Exception e) {
                    System.out.println(e);
                }%>
        </tbody>
    </table>
    <ul class="nav navbar-nav">
        <li class="active"><button type="button" class="btn center-block"><a class="btn btn-success" href="Enterorderid.jsp">Delivery Details</a></button></li>


    </ul>


    


        
    <!-- /.col -->
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
