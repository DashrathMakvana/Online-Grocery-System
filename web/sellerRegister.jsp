<%-- 
    Document   : sellerRegister
    Created on : Feb 27, 2021, 2:11:41 PM
    Author     : Dashrath b Makvana
--%>

<%@page contentType="index.html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seller Register Page</title>
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
    <body style="background-image: linear-gradient(to right top, #85d16b, #b7c051, #dbad51, #f19a64, #f78c81, #fa8ca7,
          #ec94cc, #d0a2ea, #a3bdff, #67d6ff, #39ebff, #5ffbf1);background-repeat: no-repeat; background-attachment: fixed; background-size: cover;">
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
                
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container-fluid -->
        </nav>
        <!--    End Navbar-->
        <div class="container">
           
                    <div class="card">
                        <div class="card-header text-center c-head text-white">
                            <i class="fa fa-user-circle-o fa-2x"></i>
                            <h5><b> Seller Registration Page</b></h5>
                        </div>
                        <%
                            String regmsg = (String) session.getAttribute("reg-msg");

                            if (regmsg != null) {
                        %>

                        <div class="alert alert-success" role="alert">
                            <%= regmsg %>Login<a href="sellerlogin.jsp">Click here</a>
                        </div>
                        <%
                            session.removeAttribute("reg-msg");
                            
                            }
                        %>



                        <div class="card-body">

                            <form action="sellerRegisterServlet" method="post">

                                <div class="form-group">
                                    <label for="email">Enter Full Name:</label>
                                    <input type="text" class="form-control"  id="name" name="sellername" required>
                                </div>

                                <div class="form-group">
                                    <label for="pwd">Password:</label>
                                    <input type="password" class="form-control"  id="pwd" name="sellerpassword" required>
                                </div>

                                <div class="form-group">
                                    <label for="email">Email address:</label>
                                    <input type="email" class="form-control" id="email" name="selleremail" required>
                                </div>
                                <div class="form-group">
                                    <label for="number">Mobile Number:</label>
                                    <input type="text" class="form-control" name="sellernumber" required>
                                </div>

                                <div class="form-group">
                                    <label for="pwd">Address:</label>
                                    <input type="text" class="form-control"  id="pwd" name="selleraddress" required>
                                </div>
                                 <div class="form-group">
                                     <label for="pwd">SequerityQuation</label>
                                     <select name="sellersequrityQuation" required>
                                        <option value="What is your favorite smartphone?">What is your favorite smartphone?</option>
                                        <option value="What is your favourite colour?"> What is your favourite colour?</option>
                                        <option value="What is your Favourite movie?">What is your Favourite movie?</option> 
                                        <option value="Which is your Favourite game?">Which is your Favourite game?</option>    
                                        
                                     </select>
                                </div>
                                <div class="form-group">
                                    <label for="pwd">Answer:</label>
                                    <input type="text" class="form-control"  id="pwd" name="selleranswer" required>
                                </div>

                                <button type="submit" class="btn btn-primary btn-block badge-pill">Register</button>
                            </form>
                        </div>
                    </div>
        </div>
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
