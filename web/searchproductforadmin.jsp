<%-- 
    Document   : searchproductforadmin
    Created on : Mar 19, 2021, 8:03:27 AM
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
        <title>My Cart</title>
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
        <li class="active"><a href="productdata.jsp">Product Page</a></li>
      
    
     
         
    </ul>
  </div>
</nav>
    <div style="color: white; text-align: center; font-size: 30px;">All Product </div>
    
  
                            
                         
                           

    <table>

        <thead>
            <%
                String adminemail = (String) session.getAttribute("adminemail");
                int total = 0;
                int sno = 0;
                try {
                     String search = request.getParameter("search");
                    Connection conn = DBConnect.getConnection();
                    Statement st1 = conn.createStatement();
                    ResultSet rs1 = st1.executeQuery("select *from productsellerdata where 1 ");
                    while (rs1.next()) {
                        total = rs1.getInt(1);


            %>  

            
        </thead>
        <thead>
            <tr>
                <th scope="col">S.No</th>
                <th scope="col">Product Name</th>
                <th scope="col">Shop Name</th>
                <th scope="col">Category</th>
                <th scope="col"><i class="fa fa-inr"></i> price</th>
                 <th scope="col">Edit <i class='glyphicon glyphicon-edit'></i></th>
                <th scope="col">Remove <i class='fas fa-trash-alt'></i></th>
            </tr>
        </thead>
        <tbody>
            <%          
                        
                        
                        ResultSet rs = st1.executeQuery("select * from product where PName like '%" + search + "%' or  category like '%" + search + "%' or  shopname like '%" + search + "%'and active='yes'");
                while (rs.next()) {
            %>
            <tr>
                <%sno = sno + 1; %>
                <td><%out.println(sno);%></td>
                <td><%=rs.getString(2)%></td>
                 <td><%=rs.getString(6)%></td>
                <td><%=rs.getString(4)%></td>
                <td><i class="fa fa-inr"><%=rs.getString(3)%></i> </td>
                
                 <td><a href="adminedit.jsp?id=<%=rs.getString(1)%>">Edit <i class='glyphicon glyphicon-edit'></i></a></td>
                 <td><button type="button" class="btn btn-success"><a href="adminremoveproduct.jsp?id=<%=rs.getString(1)%>">Remove <i class='fas fa-trash-alt'></i></a></button></td>
            </tr>
            <%
                        }
                    }
                } catch (Exception e) {
                    System.out.println(e);
                }%>
        </tbody>
    </table>
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
