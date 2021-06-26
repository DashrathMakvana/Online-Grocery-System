<%-- 
    Document   : searchdeliveryboyfeed
    Created on : Mar 19, 2021, 8:36:07 PM
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
        <link rel="stylesheet" href="css/home-style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <title>Feedback</title>
    </head>

    <body>
        
    <tr>
    <h3 style="background-color: yellow; text-align: center; ">Delivery boy Feedback </h3>
    




   
    <table>
        <thead>
            <tr>
                <th scope="col">S.No</th>
                <th scope="col">Delivery boy Name</th>
                <th scope="col">Email</th>
                <th scope="col">Feedback</th>


            </tr>
        </thead>
        <tbody>
            <%  int z = 0;
                String search=request.getParameter("search");
                Connection conn = DBConnect.getConnection();
                Statement st1 = conn.createStatement();
                int sno = 0;

                try {

                    ResultSet rs1 = st1.executeQuery("select * from feedback where name like '%" + search + "%'");
                    while (rs1.next()) {
                        z=1;
                        sno = sno + 1;

            %>
            <tr>
                <td><%out.println(sno);%></td>
                <td><%=rs1.getString(4)%></td>
                <td><%=rs1.getString(3)%></td>
                <td><%=rs1.getString(2)%></td>




            </tr>

            <%

                    }

                } catch (Exception e) {
                    System.out.println(e);
                }%>
                
                
        </tbody>

    </table>
     <%if (z == 0) {%>
            <h2 style="color:red; text-align:center; ">Nothing to show, Please try Again!</h2>
            <%}%>
    <br>
    <br>



</form>

</body>
</html>