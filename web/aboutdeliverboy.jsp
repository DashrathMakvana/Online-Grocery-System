<%-- 
    Document   : aboutdeliverboy
    Created on : Mar 19, 2021, 7:38:18 PM
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
        <title>Feedback</title>
    </head>
    <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"><strong>Grocery</strong> Shop</a>
    </div>
    <ul class="nav navbar-nav">
    
      
    </ul>
       <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">



            <form action="searchdeliveryboyfeed.jsp" method="post" class="navbar-form navbar-right" role="search">
                <div class="form-group">
                    <input type="text" name="search" placeholder="Enter Delivery boy Name Here ..." class="form-control">
                </div>
                &nbsp; 
                <button type="submit" class="btn btn-primary">Search</button>
            </form>
        </div>
  </div>
</nav>
    <body>
       
    <tr>
    <h3 style="background-color: yellow; text-align: center; ">Delivery boy all Feedback </h3>
    <%
        String msg = request.getParameter("msg");
        if ("cancel".equals(msg)) {
    %>
    <h3 class="alert">Order Canceled Successfully!</h3>
    <%
            session.removeAttribute("msg");
        }
    %>

    <%
        String errormsg = (String) session.getAttribute("msg");
        if (errormsg != null) {%>

    <h3 class="alert alert-success"><%=errormsg%></h3>
    <%
            session.removeAttribute("msg");
        }
    %>




    <%
                                String donermsg = (String) session.getAttribute("msg-er");
                                if (donermsg != null) {%>
    <h3 class="alert alert-danger"><%=donermsg%></h3>
    <%
            session.removeAttribute("msg-er");
        }
    %>
    <div style="color: white; text-align: center; font-size: 30px;">My Orders <i class='fab fa-elementor'></i></div>
    <table>
        <thead>
            <tr>
                <th scope="col">S.No</th>
                <th scope="col">Delivery boy Name</th>
                <th scope="col">Email</th>
                <th scope="col">Feedback</th>


            </tr>
        </thead>
        <tbody>
            <%
                Connection conn = DBConnect.getConnection();
                Statement st1 = conn.createStatement();
                int sno = 0;

                try {

                    ResultSet rs1 = st1.executeQuery("select * from feedback  where 1");
                    while (rs1.next()) {

                        sno = sno + 1;

            %>
            <tr>
                <td><%out.println(sno);%></td>
                <td><%=rs1.getString(4)%></td>
                <td><%=rs1.getString(3)%></td>
                <td><%=rs1.getString(2)%></td>




            </tr>

            <%

                    }

                } catch (Exception e) {
                    System.out.println(e);
                }%>
        </tbody>

    </table>
    
    <br>
    <br>



</form>

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
