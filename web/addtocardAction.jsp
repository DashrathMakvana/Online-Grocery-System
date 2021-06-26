<%-- 
    Document   : addtocardAction
    Created on : Feb 23, 2021, 3:36:15 PM
    Author     : Admin
--%>

<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>



<%
    String email = (String) session.getAttribute("email");
    //System.out.println(email);
    String product_id = request.getParameter("id");//30

int Quantity=1;
int product_price=0;
int product_total=0;
int cart_total=0;
int z=0;

try
{
    Connection conn=DBConnect.getConnection();
    Statement st=conn.createStatement();
    ResultSet rs=st.executeQuery("select * from product where id='"+product_id+"'");
    while(rs.next())
    {
    
    product_price=rs.getInt(3);
    product_total=product_price;
    }
     ResultSet rs1=st.executeQuery("select * from cart where product_id='"+product_id+"' and email='"+email+"'");
     while(rs1.next())
     {
         cart_total=rs1.getInt(5);
         cart_total=cart_total+product_total;
         Quantity=rs1.getInt(3);
         Quantity=Quantity+1;
         z=1;
     }
     if(z==1)
     {
         st.executeUpdate("update cart set total='"+cart_total+"', quantity='"+Quantity+"' where product_id="+product_id+" and email='"+email+"'");
         response.sendRedirect("home.jsp?msg=exist");
     }
    
   
     if(z==0)
     {    //ResultSet rs2=st.executeQuery("select * from cart where  email='"+email+"'");
         PreparedStatement ps=conn.prepareStatement("insert into cart(email,product_id,Quantity,cprice,total) values (?,?,?,?,?)");
         ps.setString(1, email);
         ps.setString(2, product_id);
         ps.setInt(3, Quantity);
         ps.setInt(4, product_price);
         ps.setInt(5, product_total);
         ps.executeUpdate();
         
          PreparedStatement ps1=conn.prepareStatement("insert into deliverycharge(email,product_id ) values (?,?)");
           ps1.setString(1, email);
            ps1.setString(2, product_id);
            ps1.executeUpdate();
         response.sendRedirect("home.jsp?msg=added");
     }
}
catch(Exception e)
{
    System.out.println(e);
    response.sendRedirect("index.jsp?msg=invalid");
}
%>



