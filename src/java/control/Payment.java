
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
import javax.servlet.http.HttpSession;
import model.Giohang;
import model.Sanpham;
import model.Taikhoan;

@WebServlet(name = "Payment", urlPatterns = {"/Payment"})
public class Payment extends HttpServlet {

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
        
        HttpSession session=request.getSession();
        Taikhoan a=(Taikhoan) session.getAttribute("taikhoan");
        if (a == null){
            request.getRequestDispatcher("Trangchu").forward(request, response);
        }else{
            int id=a.getId();
            String tong = request.getParameter("tong");
            int tongval=(int)Double.parseDouble(tong);
            List<Giohang> list=dao.getCartbyID(id);
            for (Giohang giohang : list) {
                int pid = giohang.getId();
                int psoluong=dao.getProductAmountByID(pid);
                int soluong = psoluong - giohang.getSoluong();
                int price=dao.getProductPriceByID(pid);
                if (soluong >= 0) {
                    dao.updateAmountProduct(soluong, pid);
                    dao.themDonhangchitiet(tongval, pid, soluong, price);
                }
            }
            
            int i=dao.themDonhang(id,tongval);
            dao.xoagiohang(id);
            request.getRequestDispatcher("/Cart").forward(request, response);
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
