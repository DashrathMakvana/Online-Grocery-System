<%-- 
    Document   : delevryboyRegAction
    Created on : Mar 8, 2021, 4:03:36 PM
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


<%
    String dname = request.getParameter("dname");
    String dpassword = request.getParameter("dpassword");
    String demail = request.getParameter("demail");
    String dnumber = request.getParameter("dnumber");
    String daddress = request.getParameter("daddress");
    String dsequrityQuation = request.getParameter("dsequrityQuation");
    String danswer = request.getParameter("danswer");
    String available = request.getParameter("available");
    
//    System.out.println(dname);
//     System.out.println(danswer);
    try {
        Connection conn = DBConnect.getConnection();
        String qu = "insert into delevryboy_data(Name,password,email,number,address,sequrityQuation,answer,Avalible ) values (?,?,?,?,?,?,?,?)";

        PreparedStatement pst = conn.prepareStatement(qu);
        pst.setString(1, dname);
        pst.setString(2, dpassword);
        pst.setString(3, demail);
        pst.setString(4, dnumber);
        pst.setString(5, daddress);
        pst.setString(6, dsequrityQuation);
        pst.setString(7, danswer);
        pst.setString(8, available);

       pst.executeUpdate();

        

            session.setAttribute("reg-msg", "Registration Successfully");
            
            response.sendRedirect("delevryboyRegistation.jsp");
      
           

        }

     catch (Exception e) {

        System.out.println(e);
         session.setAttribute("msg-er", "Somthing Went Wrong! Please Try Again!");
            response.sendRedirect("delevryboyRegistation.jsp");
    }


%>