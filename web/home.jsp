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
<%@page import="javax.servlet.http.HttpSession"%>


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
                        <li><a href="mycart.jsp">My Cart</a></li>

                        <li><a href="myOrders.jsp">My Order</a></li>



                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">User Data <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <%
                                    String name = (String) session.getAttribute("email");

                                %>
                                <li><strong><%out.println(name);%></strong></li>


                            </ul>
                        </li>
                    </ul>
                    <form action="searchproduct.jsp " method="post" class="navbar-form navbar-right" role="search">
                        <div class="form-group">
                            <input type="text" name="search" placeholder="Enter Product Name Here ..." class="form-control">


                            &nbsp; 
                            <button type="submit" class="btn btn-primary">Search</button>








                            <div class="form-group"><a class="btn btn-dangerbtn btn-danger" href="logoutservlet">Logout</a></div>

                        </div>



                    </form>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container-fluid -->
        </nav>
        <div class="container">
            <div class="row">
                <div class="col-md-9">
                    <div class="well well-lg offer-box text-center">


                        Today's Offer : &nbsp; <span class="glyphicon glyphicon-cog"></span>&nbsp;40 % off  on purchase of  2,000 and above till 24 dec !                


                    </div>
                    <%
                        String errormsg = (String) session.getAttribute("error-msg2");
                        if (errormsg != null) {%>

                    <div class="alert alert-danger" role="alert"><%=errormsg%></div>
                    <%
                            session.removeAttribute("error-msg2");
                        }
                    %>
                    <%
                        String msg = request.getParameter("msg");
                        if ("added".equals(msg)) {
                    %>
                    <h3 class="alert alert-success">Product added successfully!</h3>
                    <%} %>
                    <%
                        if ("exist".equals(msg)) {%>
                    <h3 class="alert alert-success">Product already exist in you cart! Quantity increased!</h3>
                    <%
                            session.removeAttribute("error-msg2");
                        }
                    %>
                    <%
                        if ("invalid".equals(msg)) {%>
                    <h3 class="alert alert-danger">Some thing went wrong! Try Again!</h3>
                    <%} %>
                    <div class="main box-border">
                        <div id="mi-slider" class="mi-slider">
                            <ul>

                                <li><a href="#">
                                        <img src="assets/ItemSlider/images/1.jpg" alt="img01"><h4>Orange</h4>
                                    </a></li>
                                <li><a href="#">
                                        <img src="assets/ItemSlider/images/2.jpg" alt="img02"><h4>Apple</h4>
                                    </a></li>
                                <li><a href="#">
                                        <img src="assets/ItemSlider/images/3.jpg" alt="img03"><h4>Papaya</h4>
                                    </a></li>
                                <li><a href="#">
                                        <img src="assets/ItemSlider/images/4.jpg" alt="img04"><h4>Painepal</h4>
                                    </a></li>
                            </ul>
                            <ul>
                                <li><a href="#">
                                        <img src="assets/ItemSlider/images/5.jpg" alt="img05"><h4>Sunflower</h4>
                                    </a></li>
                                <li><a href="#">
                                        <img src="assets/ItemSlider/images/6.jpg" alt="img06"><h4>Soybean</h4>
                                    </a></li>
                                <li><a href="#">
                                        <img src="assets/ItemSlider/images/7.jpg" alt="img07"><h4>Star</h4>
                                    </a></li>
                                <li><a href="#">
                                        <img src="assets/ItemSlider/images/8.jpg" alt="img08"><h4>Tirupati</h4>
                                    </a></li>
                            </ul>
                            <ul>
                                <li><a href="#">
                                        <img src="assets/ItemSlider/images/9.jpg" alt="img09"><h4>Vesaline</h4>
                                    </a></li>
                                <li><a href="#">
                                        <img src="assets/ItemSlider/images/10.jpg" alt="img10"><h4>Nivia</h4>
                                    </a></li>
                                <li><a href="#">
                                        <img src="assets/ItemSlider/images/11.jpg" alt="img11"><h4>Dynamite</h4>
                                    </a></li>

                            </ul>
                            <ul>
                                <li><a href="#">
                                        <img src="assets/ItemSlider/images/12.jpg" alt="img12"><h4>Dairy-Milk</h4>
                                    </a></li>
                                <li><a href="#">
                                        <img src="assets/ItemSlider/images/13.jpg" alt="img13"><h4>Kishan Jam</h4>
                                    </a></li>
                                <li><a href="#">
                                        <img src="assets/ItemSlider/images/14.jpg" alt="img14"><h4>Chips</h4>
                                    </a></li>
                                <li><a href="#">
                                        <img src="assets/ItemSlider/images/15.jpg" alt="img15"><h4>Honny</h4>
                                    </a></li>
                            </ul>
                            <nav>
                                <a href="#">FRUITS</a>
                                <a href="#">Oil</a>
                                <a href="#">Beauty</a>
                                <a href="#">Branded Food</a>
                            </nav>
                        </div>

                    </div>
                    <br />
                </div>
                <!-- /.col -->

                <div class="col-md-3 text-center">
                    <div class=" col-md-12 col-sm-6 col-xs-6" >
                        <div class="offer-text">
                            30% off here
                        </div>
                        <div class="thumbnail product-box">
                            <img src="assets/img/fruits.jpg" alt="" />
                            <div class="caption">
                                <h3><a href="#">Fruits </a></h3>

                            </div>
                        </div>
                    </div>

                    <div class=" col-md-12 col-sm-6 col-xs-6">
                        <div class="offer-text2">
                            40% off here
                        </div>
                        <div class="thumbnail product-box">
                            <img src="assets/img/wegetable.jpg" alt="" />
                            <div class="caption">
                                <h3><a href="#">Wegetable </a></h3>

                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-md-3">
                    <div>
                        <%

                            String sname = null;
                            try {

                                Connection conn = DBConnect.getConnection();
                                Statement st = conn.createStatement();
                                ResultSet rs = st.executeQuery("select * from product where active='yes'");
                                while (rs.next()) {

                                    sname = rs.getString(6);

                        %> 

                        <a href="#" class="list-group-item active"><%=rs.getString(6)%>
                        </a>
                        <ul class="list-group">
                            <li class="list-group-item"> <h5> <b>Available <%=rs.getString(4)%></b></h5></li>
                                <%
                                    try {
                                        Connection conn1 = DBConnect.getConnection();
                                        Statement st1 = conn1.createStatement();
                                        ResultSet rs1 = st1.executeQuery("select * from product where shopname ='" + sname + "'");
                                        while (rs1.next()) {


                                %> 

                            <li class="list-group-item"><%=rs1.getString(2)%>
                                <span class="label label-success pull-right"><%=rs1.getString(12)%></span>
                            </li>

                            <%
                                    }

                                } catch (Exception e) {
                                                         System.out.println(e);
                                                     }%>
                            <%
                                    }
                                } catch (Exception e) {
                                                                         System.out.println(e);
                                                                     }%>  

                        </ul>
                    </div>

                    <!-- /.div -->
                    <div>
                        <ul class="list-group">
                            <li class="list-group-item list-group-item-success"><a href="#">New Offer's Coming </a></li>
                            <li class="list-group-item list-group-item-info"><a href="addproducts.jsp">Add New Products</a></li>
                            <li class="list-group-item list-group-item-warning"><a href="#">Ending Soon Offers</a></li>
                            <li class="list-group-item list-group-item-danger"><a href="#">Just Ended Offers</a></li>
                        </ul>
                    </div>
                    <!-- /.div -->

                    <div class="well well-lg offer-box offer-colors">


                        <span class="glyphicon glyphicon-star-empty"></span>25 % off  , GRAB IT                 

                        <br />
                        <br />
                        <div class="progress progress-striped">
                            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"
                                 style="width: 70%">
                                <span class="sr-only">70% Complete (success)</span>
                                2hr 35 mins left
                            </div>
                        </div>

                        <a href="#">click here to know more </a>
                    </div>
                    <!-- /.div -->

                </div> 

                <%
                    try {
                        Connection conn = DBConnect.getConnection();
                        Statement st = conn.createStatement();
                        ResultSet rs = st.executeQuery("select * from product where active='yes'");
                        while (rs.next()) {


                %> 




                <div class="row">
                    <div class="col-md-4 text-center col-sm-6 col-xs-6">
                        <div class="thumbnail product-box">

                            <div class="caption">

                                <img src="assets/img/<%=rs.getString(7)%>" style="max-height: 220px;max-width: 100%; width: auto;"  class="card-img-top m-2" alt="..">
                                <h3><%=rs.getString(2)%></h3>
                                <p>Price :<i class="fa fa-inr"></i> <strong><%=rs.getInt(3)%></strong>  </p> 
                                <p>Category : <strong><%=rs.getString(4)%></strong>  </p> 
                                <p>ShopName : <strong><%=rs.getString(6)%></strong>  </p>   
                                <p>Quantity : <strong><%=rs.getString(10)%></strong>  </p>
                                <p>About : <strong><%=rs.getString(11)%></strong>  </p>
                                <p><a href="addtocardAction.jsp?id=<%=rs.getString(1)%>" class="btn btn-success" role="button">Add To Cart</a> <a href="Proceedtoorder.jsp?id=<%=rs.getString(1)%>" class="btn btn-primary" role="button">Buy Now</a></p>



                            </div>
                        </div>
                    </div>


                    <%
                            }
                        } catch (Exception e) {
                                                                                         System.out.println(e);
                                                                                     }%>           


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
