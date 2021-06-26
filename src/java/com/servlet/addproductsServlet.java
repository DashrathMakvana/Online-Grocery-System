/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet;

import com.DAO.UserDAO;
import com.DB.DBConnect;
import com.entites.User;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Admin
 */
@MultipartConfig
@WebServlet(name = "addproductsServlet", urlPatterns = {"/addproductsServlet"})
public class addproductsServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
            
            String pname=request.getParameter("pname");
            String pprice=request.getParameter("price");
            String category=request.getParameter("category");
            String active=request.getParameter("active");
            String shopname=request.getParameter("shopname");
            Part file=request.getPart("image");
            String pemail=request.getParameter("email");
            String address=request.getParameter("address");
            String quantity=request.getParameter("quantity");
            String about=request.getParameter("about");
            String tquantity=request.getParameter("tquantity");
             
            String imageFileName=file.getSubmittedFileName();
            System.out.println("selected Image file name:" +imageFileName);
            
            String uploadPath="C:/Users/Admin/Documents/NetBeansProjects/beta/web/assets/img/"+imageFileName;
            System.out.println("Upload path:" +uploadPath);
            
            User us=new User();
            us.setPName(pname);
            us.setPprice(pprice);
            us.setCategory(category);
            us.setActive(active);
            us.setShopname(shopname);            
            us.setImageFileName(imageFileName);
            us.setPemail(pemail);
            us.setAddress(address);
            us.setAnswer(quantity);
            us.setPassword(about);
            us.setProductname(tquantity);
              UserDAO dao=new UserDAO(DBConnect.getConnection());
              boolean f=dao.addproduct(us);
              
              if(true)
            {
                HttpSession session=request.getSession();
                session.setAttribute("reg-msg", "Product Added  Sucessfully....");
                
                response.sendRedirect("addproducts.jsp");
            }
            else
            {
                 HttpSession session=request.getSession();
                session.setAttribute("reg-msg", "Somthing Went Wrong Server....");
                response.sendRedirect("addproducts.jsp");
            }
            
           
             try {
                   
                    FileOutputStream fos=new FileOutputStream(uploadPath);
                    InputStream is=file.getInputStream();

                    //reading data

                    byte [] data = new byte[is.available()];
                    is.read(data);

                    //writing the data
                    fos.write(data);
                    
                    //close the FileoutputStream
                    fos.close();
                } catch (Exception e) {
                }
        }
    }

    
            

    
           
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
