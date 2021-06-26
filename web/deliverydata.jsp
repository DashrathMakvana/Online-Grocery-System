<%-- 
    Document   : deliverydata
    Created on : Mar 10, 2021, 10:28:13 AM
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

<html>
    <head>
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
        <!-- custom CSS here -->
        <link href="assets/css/style.css" rel="stylesheet" />
        <link href="assets/ItemSlider/css/main-style.css" rel="stylesheet" />
        <title>data</title>
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
        <h2 align="center"><b>Delivery Address</b></h2>
        <hr>

        <%            String orderid = request.getParameter("orderid");
            String dname = (String) session.getAttribute("dname");

            int total = 0;
            int sno = 0;
            try {
                Connection conn = DBConnect.getConnection();
                Statement st = conn.createStatement();
                ResultSet rs1 = st.executeQuery("select sum(total) from cart where delevryboyname ='" + dname + "' and status ='Accept Order'");
                while (rs1.next()) {
                    total = rs1.getInt(1);
                }
                ResultSet rs2 = st.executeQuery("select * from cart innner join userdata where userdata.OrderId='" + orderid + "'");
                while (rs2.next()) {

        %>  
        <div class="left-div"><h3>Name: <%=rs2.getString(21)%> </h3></div>
        <div class="right-div-right"><h3>Email: <%=rs2.getString(23)%></h3></div>
        <div class="right-div"><h3>Mobile Number:   <%=rs2.getString(24)%></h3></div>  

        <div class="left-div"><h3>Order Date:  <%=rs2.getString(15)%> </h3></div>
        <div class="right-div-right"><h3>Payment Method:  <%=rs2.getString(12)%></h3></div>
        <div class="right-div"><h3>Address: <%=rs2.getString(7)%> </h3></div> 

        <div class="left-div"><h3>State: <%=rs2.getString(9)%> </h3></div>
        <div class="right-div-right"><h3>City:  <%=rs2.getString(8)%></h3></div> 
        <div class="right-div"><h3>OrderId: <%=rs2.getString(18)%> </h3></div> 


        <div class="left-div"><h3>Country: <%=rs2.getString(10)%> </h3></div>  

        <hr>

        <%
           break;
       } %>

        <%

            } catch (Exception e) {
                System.out.println(e);
            }
        %>
        <%
            Connection conn = DBConnect.getConnection();
            Statement st = conn.createStatement();
            ResultSet rs4 = st.executeQuery("select *from deliverycharge where deliverboyname='" + dname + "' and status='continue'");
            while (rs4.next()) {%>
        <h3>Extra Delivery charge: <i class="fa fa-inr"><%=rs4.getString(3)%></i> </h3>  
        <%
                       break;
                   } %>
        <h3>Total Amount: <i class="fa fa-inr"><%out.println(total);%></i> </h3>

        <div><button type="button" class="btn center-block"><a class="btn btn-success" href="doneOrder.jsp">Complete Order</a></button></div>
        <br>
        <br>
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