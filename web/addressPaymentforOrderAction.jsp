<%-- 
    Document   : addressPaymentforOrderAction
    Created on : Mar 5, 2021, 2:08:34 PM
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
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Calendar"%>

<%
    String email = (String) session.getAttribute("email");
    String address = request.getParameter("address");
    String city = request.getParameter("city");
    String state = request.getParameter("state");
    String country = request.getParameter("country");
    String mobile = request.getParameter("mobile");
    String paymentmethod = request.getParameter("paymentmethod");
    String TransactionID = "";
    TransactionID = request.getParameter("TransactionID");
    String status = "bill";
    String delevryboy = request.getParameter("delevryboy");
    long randomno = (long) (Math.random() * 1000000);
    int charge=100;
     String status1="yes";
    System.out.println(TransactionID);

    try {
        int total=0;
       
        Calendar calendar = Calendar.getInstance();
        System.out.println("Current Date = " + calendar.getTime());
        // Incrementing hours by 5
        calendar.add(Calendar.HOUR_OF_DAY, +3);
        System.out.println("Updated Date = " + calendar.getTime());

        //Displaying current time in 12 hour format with AM/PM
        DateFormat dateFormat2 = new SimpleDateFormat("yyyy-MM-dd hh:mm aa");
        String dateString2 = dateFormat2.format(calendar.getTime()).toString();

        Connection conn = DBConnect.getConnection();
        PreparedStatement ps = conn.prepareStatement("update userdata set address=?,city=?,state=?,country=?,number=?,OrderId='" + randomno + "' where email=?");
        ps.setString(1, address);
        ps.setString(2, city);
        ps.setString(3, state);
        ps.setString(4, country);
        ps.setString(5, mobile);
        ps.setString(6, email);
        ps.executeUpdate();

        PreparedStatement ps1 = conn.prepareStatement("update cart set address=?,city=?,state=?,country=?,number=?,paymentMethod=?,transactionID=?,status=?,delevryboyname=?,orderDateTime=now(),DelevryDate='" + dateString2 + "',OrderId='" + randomno + "' where email=? and status is null");
        ps1.setString(1, address);
        ps1.setString(2, city);
        ps1.setString(3, state);
        ps1.setString(4, country);
        ps1.setString(5, mobile);
        ps1.setString(6, paymentmethod);
        ps1.setString(7, TransactionID);
        ps1.setString(8, status);
        ps1.setString(9, delevryboy);
        ps1.setString(10, email);
        ps1.executeUpdate();
        
          PreparedStatement ps2 = conn.prepareStatement("update deliverycharge set deliverboyname=? where email='"+email+"' and status is null");
            ps2.setString(1, delevryboy);
        ps2.executeUpdate();
               
                   
                    
                  
        response.sendRedirect("bill.jsp");

    } catch (Exception e) {
        System.out.println(e);
    }


%>