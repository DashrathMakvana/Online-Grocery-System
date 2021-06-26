<%-- 
    Document   : deliveryboylogout
    Created on : Mar 8, 2021, 4:48:20 PM
    Author     : Admin
--%>
<%@page import=" javax.servlet.http.HttpSession"%>
<%
    HttpSession session3 = request.getSession();

    session3.removeAttribute("demail");
    session3.setAttribute("logout-msg", "Logout Sucessfully");
    response.sendRedirect("index.jsp");

%>

