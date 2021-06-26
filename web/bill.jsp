<%-- 
    Document   : bill
    Created on : Mar 5, 2021, 2:47:54 PM
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
        <title>Bill</title>
    </head>
    <body>
            <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"><strong>Grocery</strong> Shop</a>
      
       
  </div>
    
</nav>
        <h3>Online Grocery Shopping Bill</h3>
        <hr>
        <%
            String email = (String) session.getAttribute("email");
            System.out.println(email);
            int total = 0;
            int sno = 0;
            try {
                Connection conn = DBConnect.getConnection();
                Statement st = conn.createStatement();
                ResultSet rs1 = st.executeQuery("select sum(total) from cart where email='" + email + "' and status='bill'");
                while (rs1.next()) {
                    total = rs1.getInt(1);
                }
                ResultSet rs2 = st.executeQuery("select * from cart innner join userdata where userdata.email='" + email + "' and status='bill' ");
                while (rs2.next()) {

        %>  
        <div class="left-div"><h3>Name: <%=rs2.getString(21)%> </h3></div>
        <div class="right-div-right"><h3>Email: <%out.println(email);%> </h3></div>
        <div class="right-div"><h3>Mobile Number:   <%=rs2.getString(24)%></h3></div>  

        <div class="left-div"><h3>Order Date:  <%=rs2.getString(15)%> </h3></div>
        <div class="right-div-right"><h3>Payment Method:  <%=rs2.getString(12)%></h3></div>
        <div class="right-div"><h3>Delivery Date and Time: <%=rs2.getString(16)%> </h3></div> 

        <div class="left-div"><h3>Transaction Id:   <%=rs2.getString(13)%>  </h3></div>
        <div class="right-div-right"><h3>City:  <%=rs2.getString(7)%></h3></div> 
        <div class="right-div"><h3>OrderId: <%=rs2.getString(18)%> </h3></div> 

        <div class="left-div"><h3>State: <%=rs2.getString(9)%> </h3></div>
        <div class="right-div-right"><h3>Country: <%=rs2.getString(10)%> </h3></div>  
        <div class="right-div"><h3>Address: <%=rs2.getString(8)%> </h3></div> 
        <hr>

        <%
           break;
       } %>


        <br>

        <table id="customers">
            <h3>Product Details</h3>
            <tr>
                <th>S.No</th>
                <th>Product Name</th>
                <th>category</th>
                <th>ShopName</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Sub Total</th>
            </tr>
            <%
                ResultSet rs3 = st.executeQuery("select * from product inner join cart on product.Id=cart.product_id and cart.email='" + email + "' and cart.status='bill'");
                while (rs3.next()) {
                    sno = sno + 1;
            %>
            <tr>
                <td><%out.println(sno);%></td>
                <td><%=rs3.getString(2)%></td>
                <td><%=rs3.getString(4)%></td>
                <td><%=rs3.getString(6)%></td>
                <td><i class="fa fa-inr"><%=rs3.getString(3)%></i> </td>
                <td><%=rs3.getString(16)%></td>
                <td><i class="fa fa-inr"></i><%=rs3.getString(18)%> </td>
            </tr>
            <% } %>
            <tr>
                   
        </table>
            <% ResultSet rs4= st.executeQuery("select *from deliverycharge where email='" + email +"' and status is null");
                while (rs4.next()) { %>
                  <h3>Delivery charge Extra: <i class="fa fa-inr"><%=rs4.getString(3)%></i> </h3>  
               <%
           break;
       } %>
        <h3>Total Amount: <i class="fa fa-inr"><%out.println(total);%></i> </h3>
        
       
        <a href="continueShopping.jsp"><button class="button left-button">Continue Shopping</button></a>
        <a onclick="window.print();"><button class="button right-button">Print</button></a>
        <br><br><br><br>
        <%

            } catch (Exception e) {
                System.out.println(e);
            }%>
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