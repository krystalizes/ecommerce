/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import DAO.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Sanpham;

/**
 *
 * @author acer
 */
@WebServlet(name = "LoadProduct", urlPatterns = {"/LoadProduct"})
public class LoadProduct extends HttpServlet {

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
        DAO dao=new DAO();
        PrintWriter out = response.getWriter();       
        String amount=request.getParameter("exist");      
        int iamount=Integer.parseInt(amount);
        List<Sanpham> list=dao.getNext3Product(iamount);      
        int count = 0;
        for(Sanpham o:list){
            out.println("<div  class=\"content\">\n" +
"                        <li>\n" +
"                            <a href=\"Detail?pid="+o.getId()+"\">\n" +
"                                <img src=\""+o.getAnh()+"\" class=\"pic1\">\n" +
"                                <p class=\"pa1\">"+o.getTen()+"</p>\n" +
"                                <p class=\"tien1\">"+o.getGia()+"$</p>\n" +
"                            </a>\n" +
"                        </li>\n" +
"                    </div>");
            count++;
            if (count % 3 == 0) {
                out.println("<div style=\"clear: both;\"></div>");
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
