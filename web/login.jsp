<%-- 
    Document   : login
    Created on : Feb 7, 2021, 9:35:45 AM
    Author     : Admin
--%>


<%@page import="java.sql.Connection"%>
<%@page import="com.DB.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>


        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    
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
    <body style="background-image: linear-gradient(to right top, #de72af, #fc7c99, #ff9082, #ffaa70, #ffc76a,
          #f1d56a, #e0e370, #cbf17e, #b6f482, #9ff789, #83f993, #5ffb9f);background-repeat: no-repeat; background-attachment: fixed; background-size: cover;">


<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Grocery Shop</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index.jsp">Home</a></li>
      
    </ul>
  </div>
</nav>

        <!--    End Navbar-->


        <div class="container">
        
                    <div class="card">
                        <div class="card-header text-center c-head text-white">
                            <i class="fa fa-user-circle-o fa-2x"></i>
                            <h5>Login Page</h5>
                            
                            <%
                                String logoutMSG = (String) session.getAttribute("logout-msg");
                                if (logoutMSG != null) {%>

                            <div class="alert alert-success" role="alert"><%=logoutMSG%></div>
                            <%
                                    session.removeAttribute("logout-msg");
                                }
                            %>

                            <!-- Error Msg -->     


                            <%
                           String errormsg = (String) session.getAttribute("error-msg");
                           if (errormsg != null) {%>

                            <div class="alert alert-danger" role="alert"><%=errormsg%></div>
                            <%
                                    session.removeAttribute("error-msg");
                                }
                            %>


                            
                            
                            
                        </div>
                      

                            <form action="loginservlet"  method="post">


                                <div class="form-group">
                                    <label for="email">Email address:</label>
                                    <input type="email" class="form-control" id="email" name="email">
                                </div>
                                <div class="form-group">
                                    <label for="pwd">Password:</label>
                                    <input type="password" class="form-control"  id="pwd" ng-bind="password" name="password">
                                </div>
                                <button type="submit" class="btn btn-primary btn-block badge-pill">Login</button>
                                <a href="forgotpassword.jsp">Forgot Password?</a>
                            </form>
                       
                    </div>
                </div>
          
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
