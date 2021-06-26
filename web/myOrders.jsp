<%-- 
    Document   : myOrders
    Created on : Mar 6, 2021, 9:26:33 AM
    Author     : Admin
--%>
<%@page import="java.sql.PreparedStatement"%>
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
        
        
        <title>My Orders</title>
        
    </head>
 <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
    <a class="navbar-brand" href="#"><strong>Grocery</strong> Shop</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="home.jsp">Home</a></li>
      
    </ul>
  </div>
</nav>
                   

                
    <body>
        
    <tr>
    <%String errormsg1=(String)session.getAttribute("msg1");
                            if(errormsg1!=null)
                            {%>
                            
                            <h3 class="alert alert-success"><%=errormsg1 %></h3>
                            <%
                            session.removeAttribute("msg1");
                            }
                            %>

     <%String errormsg=(String)session.getAttribute("msg-cdb");
                            if(errormsg!=null)
                            {%>
                            
                            <h3 class="alert alert-success"><%=errormsg %></h3>
                            <%
                            session.removeAttribute("msg-cdb");
                            }
                            %>
                            
                            <%String errormsg2=(String)session.getAttribute("msg3");
                            if(errormsg2!=null)
                            {%>
                            
                            <h3 class="alert alert-success"><%=errormsg2 %></h3>
                            <%
                            session.removeAttribute("msg3");
                            }
                            %>
    
    <div style="color: white; text-align: center; font-size: 30px;">My Orders <i class='fab fa-elementor'></i></div>
    <table>
        <thead>
            <tr>
                <th scope="col">S.No</th>
                <th scope="col">OrderId</th>
                <th scope="col">Product Name</th>
                <th scope="col">category</th>
                <th>ShopName</th>
                <th scope="col"><i class="fa fa-inr"></i>  Price</th>
                <th scope="col">Quantity</th>
                <th scope="col"><i class="fa fa-inr"></i> Sub Total</th>
                <th scope="col">Order Date</th>
                <th scope="col">Expected Delivery Date and Time</th>
                <th scope="col">Payment Method</th>
                <th scope="col">Status</th>
                <th scope="col">Delivery boy Name</th>
                <th scope="col">Cancel Order<i class='fas fa-trash-alt'></i></th>
               
            </tr>
        </thead>
        <tbody>
            <%
                 Connection conn = DBConnect.getConnection();
                    Statement st1 = conn.createStatement();
                String email = (String) session.getAttribute("email");
                int sno = 0;
                long orderid = 0;
                String status=null;
                try {
                    
                    ResultSet rs1 = st1.executeQuery("select * from cart inner join product where cart.product_id=product.id and cart.email='" + email + "'");
                    while (rs1.next()) {
                        long rno = (long) (Math.random() * 10000);
                        //          orderid=rs1.getLong(16);
                        //            orderid=orderid + rno;
                        sno = sno + 1;
                        status=rs1.getString(14);
                        System.out.println(status);
            %>
            <tr>
                <td><%out.println(sno);%></td>
                <td><%=rs1.getString(18)%></td>
                <td><%=rs1.getString(21)%></td>
                <td><%=rs1.getString(23)%></td>
                <td><%=rs1.getString(25)%></td>
                <td><i class="fa fa-inr"></i><%=rs1.getString(22)%> </td>
                <td><%=rs1.getString(4)%></td>
                <td><i class="fa fa-inr"></i> <%=rs1.getString(6)%></td>
                <td><%=rs1.getString(15)%></td>
                <td><%=rs1.getString(16)%></td>
                <td><%=rs1.getString(12)%></td>
                <td style="color:blue;"><%=rs1.getString(14)%></td>
                <td><%=rs1.getString(17)%></td>
                <%if(status.endsWith("processing") || status.endsWith("Accept Order")){%><td style="color:red;"><button type="button" class="btn btn-danger"><a href="cancelorder.jsp?id=<%=rs1.getString(1)%>">Cancel</a></button></td> <% } %>
                
               
                  
                 
            </tr>

            <%

                    }
                
                } catch (Exception e) {
                    System.out.println(e);
                }%>
        </tbody>

    </table>
    <br>
    <br>
    <br>
    
                
    
      <%
                    int status2=0;
                    ResultSet rs7 = st1.executeQuery("select * from cart where status='processing' and email='"+email+"'");
                    while (rs7.next()) {
                        status2=1;
                %>    
     <%if(status2==1){ %><form action="changedeliveryboy.jsp" method="post">
       
            
            <h3 style="color: red">*If Delivery Boy order in not Accept within 10 minutes after,replace Delivery Boy</h3>
   
            <label for="cars">Select Available Deliveryboy</label>
  
            
            <div class="dropdown">
       <select class="btn btn-primary dropdown-toggle" name="delevryboy"  data-toggle="dropdown" required="">
         
                <%
                       
                    ResultSet rs5 = st1.executeQuery("select * from delevryboy_data where Avalible='yes'");
                    while (rs5.next()) {
                %>
                
                <option value="<%=rs5.getString(2)%>"><%=rs5.getString(2)%></option>

                <% }  %>
                 </select>
            </div>
      
        
       
     
       <button type="submit" class="btn btn-warning">Change</button>
        <br>
        <br>
       
   </form>
                  <a href="aboutdeliverboy.jsp"><button type="button" class="btn btn-success">About Delivery boy</button></a>
                   <% }%>
          <% break; } %>
          
          <br>
          <%
                    int status1=0;
                    ResultSet rs6 = st1.executeQuery("select * from cart where status='Order Delivered' and email='"+email+"'");
                    while (rs6.next()) {
                        status1=1;
                %>
           <%if(status1==1){ %><a href="feedbackform.jsp"><button type="button" class="btn btn-danger">Feedback</button></a><% }%>
     <br>
         <% break; } %>
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
