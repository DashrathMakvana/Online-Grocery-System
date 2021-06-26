<%-- 
    Document   : addressPaymentForOrder
    Created on : Mar 5, 2021, 12:34:32 PM
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
        <title>Home</title>
    
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
<!--<script>
    if(window.history.forward(1) !=null)
        window.history.forward(1);
</script>-->

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

                        if (total > 0 && total < 1000) {
                            int charge = 100;
                            PreparedStatement ps = conn.prepareStatement("update deliverycharge set charge=? where email='" + email + "' and status is null");
                            ps.setInt(1, charge);
                            ps.executeUpdate();
                        } else if (total > 1000 && total < 2000) {
                            int charge = 200;
                            PreparedStatement ps = conn.prepareStatement("update deliverycharge set charge=? where email='" + email + "' and status is null");
                            ps.setInt(1, charge);
                            ps.executeUpdate();
                        } else if (total > 2000 && total < 3000) {
                            int charge = 300;
                            PreparedStatement ps = conn.prepareStatement("update deliverycharge set charge=? where email='" + email + "' and status is null");
                            ps.setInt(1, charge);
                            ps.executeUpdate();
                        }
                    }
            %>               
            <tr>


            </tr>
        </thead>
        <thead>
            <tr>
                <th scope="col">S.No</th>
                <th scope="col">Product Name</th>
                <th scope="col">Category</th>
                <th scope="col">shopname</th>
                <th scope="col"><i class="fa fa-inr"></i> price</th>
                <th scope="col">Quantity</th>
                <th scope="col">Sub Total</th>
            </tr>
        </thead>
        <tbody>
            <% ResultSet rs = st1.executeQuery("select * from product inner join cart on product.Id=cart.product_id and cart.email='" + email + "'and cart.address is NULL");
                while (rs.next()) {
            %>
            <tr>

                <%sno = sno + 1; %>
                <td><%out.println(sno);%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(6)%></td>
                <td><i class="fa fa-inr"><%=rs.getString(3)%></i> </td>
                <td><%=rs.getString(16)%></td>
                <td><i class="fa fa-inr"></i><%=rs.getString(18)%> </td>
            </tr>

        </tbody>
        <%}
            ResultSet rs4 = st1.executeQuery("select * from userdata where email='" + email + "'");
            while (rs4.next()) {
        %>
    </table>

    <hr style="width: 100%">
    <form action="addressPaymentforOrderAction.jsp" method="post">
        <div class="left-div">
            <h3>Enter Address</h3>
            <input class="input-style"  type="text" name="address" value="<%=rs4.getString(6)%>" required="">
        </div>

        <div class="right-div">
            <h3>Enter city</h3>
            <input class="input-style"  type="text" name="city"  placeholder="Enter City Name"  required="">
        </div> 

        <div class="left-div">
            <h3>Enter State</h3>
            <input class="input-style"  type="text" name="state"   placeholder="Enter State Name" required="">

        </div>

        <div class="right-div">
            <h3>Enter country</h3>
            <input class="input-style"  type="text" name="country"  placeholder="Enter Country Name"  required="">

        </div>
        <h3 style="color: red">*If there is no address its mean that you did not set you address!</h3>
        <h3 style="color: red">*This address will also updated to your profile</h3>
        <hr style="width: 100%">
        <div class="left-div">
            <h3>Select way of Payment</h3>
            <select class="input-style" name="paymentmethod">
                <option value="Cash on delivery(COD)">Cash on delivery(COD) </option>
                <option value="Online Payment ">Online Payment </option>


            </select>
        </div>

        <div class="right-div">
            <h3>Pay online on this grocery.admin@pay.com</h3>
            <input class="input-style"  type="text" name="TransactionID"  placeholder="Enter Transaction ID">
            <h3 style="color: red">*If you select online Payment then enter you transaction ID here otherwise leave this blank</h3>
        </div>
        <hr style="width: 100%">

        <div class="left-div">
            <h3>Mobile Number</h3>
            <input class="input-style"  type="text" name="mobile" value="<%=rs4.getString(5)%>" placeholder="Enter Mobile Number"  required="">
            <h3 style="color: red">*This mobile number will also updated to your profile</h3>
        </div>
        <h3><b>Select Available Deliveryboy</b></h3>
        <select class="input-style" name="delevryboy">
            <%
                ResultSet rs5 = st1.executeQuery("select * from delevryboy_data where Avalible='yes'");
                while (rs5.next()) {
            %>

            <option value="<%=rs5.getString(2)%>"><%=rs5.getString(2)%></option>

            <% } %>
        </select>

        <div class="footer-bottom">
            <h3 style="color: red">*If you enter wrong transaction id then your order will we can cancel!</h3>
            <button class="button" type="submit">Procced to Generate bill & Save <i class='far fa-arrow-alt-circle-right'></i></button>
            <h3 style="color: red">*Fill form correctly</h3>
        </div>

    </form>


    <%

            }

        } catch (Exception e) {
                System.out.println(e);
            }%>

    <a href="aboutdeliverboy.jsp"><button class="button left-button-button">About Delivery boy</button></a>         
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
