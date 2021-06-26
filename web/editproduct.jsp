<%-- 
    Document   : editproduct
    Created on : Mar 2, 2021, 8:30:06 PM
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

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>editproduct Page</title>
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
    <ul class="nav navbar-nav">
      <li class="active"><a href="sellerhome.jsp">Home</a></li>
      
    </ul>
  </div>
</nav>

        <!--    End Navbar-->
        <div class="container">
            
                    <div class="card">
                        <div class="card-header text-center c-head text-white">
                            <i class="fa fa-user-circle-o fa-2x"></i>
                            <h5>Edit Products Page</h5>
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

                            <form action="editproductAction.jsp"  method="post">
                                    <%
                String selleremail = (String) session.getAttribute("selleremail");
                String product_id = request.getParameter("id");
                session.setAttribute("product_id", product_id);
                try {
                    Connection conn = DBConnect.getConnection();
                    Statement st1 = conn.createStatement();
                             
                        
                        
                        ResultSet rs = st1.executeQuery("select * from product where emailid ='" + selleremail + "' and id='" + product_id + "'");
                    while (rs.next()) {
            
                        


            %>  
                                <div class="form-group">
                                    <label for="email">Product Name:</label>
                                    <input type="text" class="form-control" name="pname" value="<%=rs.getString(2)%>"  id="name"  required>
                                </div>

                                <div class="form-group">
                                    <label for="pwd"> price</label>
                                    <input type="text" class="form-control"  value="<%=rs.getString(3)%>" id="pwd" name="price" required>
                                </div>

                                <div class="form-group">
                                    <label for="email">Enter Category:</label>
                                    <input type="text" class="form-control" value="<%=rs.getString(4)%>" id="email" name="category" required>
                                </div>
                                
                               

                                <div class="form-group">
                                    <label for="pwd">Enter ShopName:</label>
                                    <input type="text" class="form-control" value="<%=rs.getString(6)%>" id="pwd" name="shopname" required>
                                </div>
                               
                                
                                
                                <div class="form-group">
                                    <label for="pwd">Enter The Email With Login:</label>
                                    <input type="text" class="form-control" value="<%=rs.getString(8)%>" id="pwd" name="email" required>
                                </div>
                                <div class="form-group">
                                    <label for="pwd">Enter Shop Address:</label>
                                    <input type="text" class="form-control" value="<%=rs.getString(9)%>"  id="pwd" name="address" required>
                                </div>
                                    
                                <div class="form-group">
                                    <label for="pwd">Enter Quantity:</label>
                                    <input type="text" class="form-control" value="<%=rs.getString(10)%>" id="pwd" name="quantity"  required>
                                </div>
                                <div class="form-group">
                                    <label for="pwd">Enter About Product:</label>
                                    <input type="text" class="form-control" value="<%=rs.getString(11)%>" id="pwd" name="about" required>
                                </div>
                                <div class="form-group">
                                    <label for="pwd">Enter Available Total Quantity:</label>
                                    <input type="text" class="form-control" value="<%=rs.getString(12)%>" name="tquantity"  required>
                                   
                                </div>
                                
                                <button type="submit" class="btn btn-primary btn-block badge-pill">Save</button>
                                
                                
                                <% break;} %>
                                <%
                        
                    
                } catch (Exception e) {
                    System.out.println(e);
                }%>
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
