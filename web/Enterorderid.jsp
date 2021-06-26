<%-- 
    Document   : Enterorderid
    Created on : Mar 10, 2021, 1:35:36 PM
    Author     : Admin
--%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Orderid Page</title>

         <link rel="stylesheet" href="css/home-style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
          <!-- custom CSS here -->
        <link href="assets/css/style.css" rel="stylesheet" />
        <link href="assets/ItemSlider/css/main-style.css" rel="stylesheet" />
    </head>
    <body style="background-image: linear-gradient(to right top, #de72af, #fc7c99, #ff9082, #ffaa70, #ffc76a,
          #f1d56a, #e0e370, #cbf17e, #b6f482, #9ff789, #83f993, #5ffb9f);background-repeat: no-repeat; background-attachment: fixed; background-size: cover;">

 <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">Grocery Shop</a>
            </div>

        </div>
    </nav>

        <!--    End Navbar-->


        <div class="container">
           
                    <div class="card">
                        <div class="card-header text-center c-head text-white">
                            <i class="fa fa-user-circle-o fa-2x"></i>
                            <h5>Conform Page</h5>
                  </div>
                        <div class="card-body">

                            <form action="deliverydata.jsp" method="post">


                                <div class="form-group">
                                    <label for="email">Please Enter Last Order Id:</label>
                                    <input type="text" class="form-control" id="email" name="orderid">
                                </div>
                                
                                <button type="submit" class="btn btn-primary btn-block badge-pill">Go</button>
                               
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
