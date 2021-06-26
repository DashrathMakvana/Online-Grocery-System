<%-- 
    Document   : adminhome
    Created on : Mar 2, 2021, 10:27:52 AM
    Author     : Admin
--%>

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


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <link rel="stylesheet" href="css/home-style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
             <!-- custom CSS here -->
        <link href="assets/css/style.css" rel="stylesheet" />
        <link href="assets/ItemSlider/css/main-style.css" rel="stylesheet" />
        <title>Admin Home</title>
        <style>
            h3
            {
                color: yellow;
                text-align: center;
            }
        </style>
    </head>
    <body style="background-image: linear-gradient(to right top, #85d16b, #b7c051, #dbad51, #f19a64, #f78c81, #fa8ca7,
          #ec94cc, #d0a2ea, #a3bdff, #67d6ff, #39ebff, #5ffbf1);background-repeat: no-repeat; background-attachment: fixed; background-size: cover;">
    <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
          
      <a class="navbar-brand" href="#">Grocery Shop</a>
    </div>
    <ul class="nav navbar-nav">
        <li class="active"><a href="index.jsp">Home</a></li>
    
      <li class="active"><a href="productdata.jsp">Product Data</a></li>
      <li class="active"><a href="deliverboydata.jsp">Delivery boy Data</a></li>
         <li class="active"><a href="userdata.jsp">User Data</a></li>
     
         <li class="active"><button type="button" class="btn btn-danger"><a class="btn btn-danger" href="sellerlogoutServlet">Logout</a></button></li>
        
    </ul>
  </div>
</nav>
   
    
  
    <%
                            String errormsg=(String)session.getAttribute("msg");
                            if(errormsg!=null)
                            {%>
                            
                            <h3 class="alert alert-success"><%=errormsg %></h3>
                            <%
                            session.removeAttribute("msg");
                            }
                            %>
                           
                            
                            
                            <br> 
                            <br> 
                           
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
