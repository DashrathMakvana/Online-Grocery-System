<%-- 
    Document   : register
    Created on : Feb 7, 2021, 9:39:12 AM
    Author     : Admin
--%>

<%@page contentType="index.html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
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
    </head>
    <body style="background-image: linear-gradient(to right top, #85d16b, #b7c051, #dbad51, #f19a64, #f78c81, #fa8ca7,
          #ec94cc, #d0a2ea, #a3bdff, #67d6ff, #39ebff, #5ffbf1);background-repeat: no-repeat; background-attachment: fixed; background-size: cover;">
        <!-- Start   Navbar-->

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
                            <h5>Forgot Password</h5>
                        </div>
                         <!-- Error Msg -->     
                       
                       
                       <%
                            String errormsg=(String)session.getAttribute("error-msg");
                            if(errormsg!=null)
                            {%>
                            
                            <div class="alert alert-danger" role="alert"><%=errormsg %></div>
                            <%
                            session.removeAttribute("error-msg");
                            }
                            %>
                           
                            
                            <!--forget password message-->
                            
                            <%
                            String donermsg=(String)session.getAttribute("user-smg");
                            if(donermsg!=null)
                            {%>
                            
                            
                                 <div class="alert alert-success" role="alert">
                                 <%=donermsg%>Login<a href="login.jsp">Click here</a>
                                </div>
                            
                            <%
                            session.removeAttribute("user-smg");
                            }
                            %>

                        <div class="card-body">

                            <form action="forgotpasswordservlet" method="post">

                                <div class="form-group">
                                    <label for="email">Email address:</label>
                                    <input type="email" class="form-control" id="email" name="email" required>
                                </div>
                                <div class="form-group">
                                    <label for="number">Mobile Number:</label>
                                    <input type="text" class="form-control" name="number" required>
                                </div>

                                <div class="form-group">
                                    <label for="pwd">security Question</label>
                                    <select name="sequrityQuation" required>
                                        <option value="What is your favorite smartphone?"> What is your favorite smartphone?</option>
                                        <option value="What is your favourite colour?"> What is your favourite colour?</option>
                                        <option value="What is your Favourite movie?">What is your Favourite movie?</option> 
                                        <option value="Which is your Favourite game?">Which is your Favourite game?</option> 
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="pwd">Answer:</label>
                                    <input type="text" class="form-control"  id="pwd" name="answer" required>
                                </div>
                                <div class="form-group">
                                    <label for="pwd">New Password</label>
                                    <input type="password" class="form-control"  id="pwd" name="newpassword" required>
                                </div>

                                <button type="submit" class="btn btn-primary btn-block badge-pill">Save</button>

                               
                            </form>
                        </div>
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