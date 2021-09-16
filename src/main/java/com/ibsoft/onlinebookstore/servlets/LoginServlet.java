
package com.ibsoft.onlinebookstore.servlets;

import com.ibsoft.onlinebookstore.dao.UserDao;
import com.ibsoft.onlinebookstore.entities.User;
import com.ibsoft.onlinebookstore.helper.FactoryProvider;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.Clock;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            
                    
            //validation karo, sath me registration page ka bhi
            
            //authenticating user
            UserDao userDao = new UserDao(FactoryProvider.getFactory());
            User user = userDao.getUserByEmailAndPassword(email, password);
            HttpSession httpSession = request.getSession();

            if(user==null) {
                out.println("<h1>Invalid email or password. try again");
            }
            else {
                out.println("<h1> Welcome " + user.getUserName() + "</h1>");
                
                httpSession.setAttribute("current-user", user);
                
                if(user.getUserType().equals("admin")) {
                    response.sendRedirect("admin.jsp");
                }
                else if(user.getUserType().equals("normal")) {
                    response.sendRedirect("normal.jsp");
                }
                else {
                    out.println("We haven't identified user type.");
                }
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
