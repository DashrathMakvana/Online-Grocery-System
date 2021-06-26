<%-- 
    Document   : searchproductforindex
    Created on : Mar 16, 2021, 7:58:07 PM
    Author     : Admin
--%>

<%@page import="java.io.OutputStream"%>
<%@page import="com.entites.User"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import=" javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import=" javax.servlet.http.HttpServletResponse"%>
<%@page import=" javax.servlet.http.HttpSession"%>
<%@page import="com.DB.DBConnect"%>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>home</title>
        <!-- Bootstrap core CSS -->
        <link href="assets/css/bootstrap.css" rel="stylesheet">
        <!-- Fontawesome core CSS -->
        <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
        <!--GOOGLE FONT -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
        <!--Slide Show Css -->
        <link href="assets/ItemSlider/css/main-style.css" rel="stylesheet" />
        <!-- custom CSS here -->
        <link href="assets/css/style.css" rel="stylesheet" />
    </head>
    <body>


        <nav class="navbar navbar-default" role="navigation">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"><strong>Grocery</strong> Shop</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">


                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="addtocardAction.jsp">My Cart</a></li>



                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">User Data <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <%
                                    String name = (String) session.getAttribute("email");

                                %>
                                

                                <li><strong>Address: </strong>
                                    <div>
                                       
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>

                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container-fluid -->
        </nav>


        <%                                        int z = 0;
            try {
                String search = request.getParameter("search");
                Connection conn = DBConnect.getConnection();
                Statement st = conn.createStatement();
                ResultSet rs = st.executeQuery("select * from product where PName like '%" + search + "%' or  category like '%" + search + "%' or  shopname like '%" + search + "%'and active='yes'");
                while (rs.next()) {
                    z = 1;

        %> 




        <div class="row">
            <div class="col-md-4 text-center col-sm-6 col-xs-6">
                <div class="thumbnail product-box">

                    <div class="caption">

                        <img src="assets/img/<%=rs.getString(7)%>" style="max-height: 220px;max-width: 100%; width: auto;"  class="card-img-top m-2" alt="..">
                        <h3><%=rs.getString(2)%></h3>
                        <p>Price :<i class="fa fa-inr"></i> <strong><%=rs.getString(3)%></strong>  </p> 
                        <p>Category : <strong><%=rs.getString(4)%></strong>  </p> 
                        <p>ShopName : <strong><%=rs.getString(6)%></strong>  </p>   
                        <p>Quantity : <strong><%=rs.getString(10)%></strong>  </p>
                        <p>About : <strong><%=rs.getString(11)%></strong>  </p>
                        <p><a href="addtocardAction.jsp?id=<%=rs.getString(1)%>" class="btn btn-success" role="button">Add To Cart</a> <a href="addtocardAction.jsp" class="btn btn-primary" role="button">Buy</a></p>
                    </div>
                </div>
            </div>


            <%
                    }
                } catch (Exception e) {
                                                                                         System.out.println(e);
                                                                                     }%>           

            <%if (z == 0) {%>
            <h2 style="color:red; text-align:center; ">Nothing to show</h2>
            <%}%>
        </div>         

    </div>


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
