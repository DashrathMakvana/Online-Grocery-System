/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet;

import com.DAO.UserDAO;
import com.DB.DBConnect;
import com.entites.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
@WebServlet(name = "sellerRegisterServlet", urlPatterns = {"/sellerRegisterServlet"})
public class sellerRegisterServlet extends HttpServlet {

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
            String sellername=request.getParameter("sellername");
            String sellerpassword=request.getParameter("sellerpassword");
            String selleremail=request.getParameter("selleremail");
            String sellernumber=request.getParameter("sellernumber");
            String selleraddress=request.getParameter("selleraddress");
            String sellersequrityQuation=request.getParameter("sellersequrityQuation");
            String selleranswer=request.getParameter("selleranswer");
            
          
              
                
          
            
            User us=new User();
            us.setName(sellername);
            us.setPassword(sellerpassword);
            us.setEmail(selleremail);
            us.setNumber(sellernumber);
            us.setAddress(selleraddress);
            us.setSequrityQuation(sellersequrityQuation);
            us.setAnswer(selleranswer);
            
            
            
            
            UserDAO dao=new UserDAO(DBConnect.getConnection());
            boolean f=dao.sellerRegister(us);
            
            if(true)
            {
                HttpSession session=request.getSession();
                session.setAttribute("reg-msg", "Registration Sucessfully....");
                session.setAttribute("selleremail",selleremail);                
                response.sendRedirect("sellerRegister.jsp");
            }
            else
            {
                 HttpSession session=request.getSession();
                session.setAttribute("reg-msg", "Somthing Went Wrong Server....");
                response.sendRedirect("sellerRegister.jsp");
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
