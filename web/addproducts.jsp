<%-- 
    Document   : addproducts
    Created on : Feb 27, 2021, 8:42:58 AM
    Author     :Dashrath b Makvana
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AddProducts Page</title>
        <link rel="stylesheet" href="css/home-style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
          <link href="assets/ItemSlider/css/main-style.css" rel="stylesheet" />
        <!-- custom CSS here -->
        <link href="assets/css/style.css" rel="stylesheet" />
    </head>
    <body style="background-image: linear-gradient(to right top, #85d16b, #b7c051, #dbad51, #f19a64, #f78c81, #fa8ca7,
          #ec94cc, #d0a2ea, #a3bdff, #67d6ff, #39ebff, #5ffbf1);background-repeat: no-repeat; background-attachment: fixed; background-size: cover;">
      <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Grocery Shop</a>
    </div>

   
 
</nav>
        <!--    End Navbar-->
        <div class="container">
           
                    <div class="card">
                        <div class="card-header text-center c-head text-white">
                            <i class="fa fa-user-circle-o fa-2x"></i>
                            <h5>AddProducts Page</h5>
                        </div>
                        <%
                            String regmsg = (String) session.getAttribute("reg-msg");

                            if (regmsg != null) {
                        %>

                        <div class="alert alert-success" role="alert">
                            <%= regmsg %><a href="sellerhome.jsp">Home</a>
                        </div>
                        <%
                            session.removeAttribute("reg-msg");
                            
                            }
                        %>



                        <div class="card-body">

                            <form action="addproductsServlet" method="post" enctype="multipart/form-data">

                                <div class="form-group">
                                    <label for="email">Enter Product Name:</label>
                                    <input type="text" class="form-control"  id="name" name="pname" required>
                                </div>

                                <div class="form-group">
                                    <label for="pwd">Enter price</label>
                                    <input type="text" class="form-control"  id="pwd" name="price" required>
                                </div>

                                <div class="form-group">
                                    <label for="email">Enter Category:</label>
                                    <input type="text" class="form-control" id="email" name="category" required>
                                </div>
                                <div class="form-group">
                                     <label for="pwd">Active:</label>
                                     <select name="active" required>
                                        <option value="Yes">Yes</option>
                                        <option value="No"> No</option>                           
                                     </select>
                                </div>

                                <div class="form-group">
                                    <label for="pwd">Enter ShopName:</label>
                                    <input type="text" class="form-control"  id="pwd" name="shopname" required>
                                </div>
                               
                                
                                <div class="form-group">
                                    <label for="pwd">Select Image</label>
                                    <input type="file" name="image ">
                                   
                                </div>
                                <div class="form-group">
                                    <label for="pwd">Enter The Email With Login:</label>
                                    <input type="text" class="form-control"  id="pwd" name="email" required>
                                </div>
                                <div class="form-group">
                                    <label for="pwd">Enter Shop Address:</label>
                                    <input type="text" class="form-control"  id="pwd" name="address" required>
                                </div>
                                    
                                <div class="form-group">
                                    <label for="pwd">Enter Quantity:</label>
                                    <input type="text" class="form-control"  id="pwd" name="quantity" placeholder="stock per order: Ex:1 kg, 1 Liter" required>
                                </div>
                                <div class="form-group">
                                    <label for="pwd">Enter About Product:</label>
                                    <input type="text" class="form-control"  id="pwd" name="about" placeholder="Enter product description" required>
                                </div>
                                <div class="form-group">
                                    <label for="pwd">Enter Available Total Quantity:</label>
                                    <input type="text" class="form-control"  id="pwd" name="tquantity" placeholder="Ex: 50 kg,60 Liter" required>
                                </div>
                                <button type="submit" class="btn btn-primary btn-block badge-pill">Save</button>
                            </form>
                        </div>
                    </div>
                </div>
       
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
