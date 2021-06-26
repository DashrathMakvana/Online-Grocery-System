<%-- 
    Document   : deliveryboyforgotpass
    Created on : Mar 8, 2021, 4:54:51 PM
    Author     : Admin
--%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Forgot Password </title>
       <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <!-- custom CSS here -->
        <link href="assets/css/style.css" rel="stylesheet" />
        <link href="assets/ItemSlider/css/main-style.css" rel="stylesheet" />
    </head>
    <body style="background-image: linear-gradient(to right top, #85d16b, #b7c051, #dbad51, #f19a64, #f78c81, #fa8ca7,
          #ec94cc, #d0a2ea, #a3bdff, #67d6ff, #39ebff, #5ffbf1);background-repeat: no-repeat; background-attachment: fixed; background-size: cover;">
        <!-- Start   Navbar-->
<nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">Grocery Shop</a>
                
        </nav>

        
        <!--    End Navbar-->
        <div class="container">
           
                    <div class="card">
                        <div class="card-header text-center c-head text-white">
                            <i class="fa fa-user-circle-o fa-2x"></i>
                            <h3>Delivery boy  Forgot Password</h3>
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
                            String donermsg=(String)session.getAttribute("done-smg");
                            if(donermsg!=null)
                            {%>
                            
                            
                                 <div class="alert alert-success" role="alert">
                                 <%=donermsg%>Login<a href="delevryboy_login.jsp">Click here</a>
                                </div>
                            
                            <%
                            session.removeAttribute("user-smg");
                            }
                            %>

                        <div class="card-body">

                            <form action="deliveryboyforgotpassAction.jsp" method="post">

                                <div class="form-group">
                                    <label for="email">Email address:</label>
                                    <input type="email" class="form-control" id="email" name="demail" required>
                                </div>
                                <div class="form-group">
                                    <label for="number">Mobile Number:</label>
                                    <input type="text" class="form-control" name="dnumber" required>
                                </div>

                                <div class="form-group">
                                    <label for="pwd">security Question</label>
                                    <select name="dsequrityQuation" required>
                                        <option value="What is your favorite smartphone?"> What is your favorite smartphone?</option>
                                        <option value="What is your favourite colour?"> What is your favourite colour?</option>
                                        <option value="What is your Favourite movie?">What is your Favourite movie?</option> 
                                        <option value="Which is your Favourite game?">Which is your Favourite game?</option> 
                                    </select>
                                </div>
                                  <div class="form-group">
                                    <label for="pwd">Answer:</label>
                                    <input type="text" class="form-control"  id="pwd" name="danswer" required>
                                </div>
                                <div class="form-group">
                                    <label for="pwd">New Password</label>
                                    <input type="password" class="form-control"  id="pwd" name="dnewpassword" required>
                                </div>

                                <button type="submit" class="btn btn-primary btn-block badge-pill">Save</button>

                               
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
