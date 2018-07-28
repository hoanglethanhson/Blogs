/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.BlogDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Blog;
import model.Category;

/**
 *
 * @author dell
 */
public class ListController extends HttpServlet {

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
        BlogDAO bd = new BlogDAO();
        int id = Integer.parseInt(request.getParameter("cateID"));
        
        String strPagesize = this.getServletConfig().getInitParameter("pagesize");
        String strPageGap = this.getServletConfig().getInitParameter("pagegap");
        int pagesize = Integer.parseInt(strPagesize);
        String strPageIndex = request.getParameter("page");
        
        if (strPageIndex == null) {
            strPageIndex = "1";
        }
        
        int pageIndex = Integer.parseInt(strPageIndex);
        BlogDAO db = new BlogDAO();
        
        int totalrows = db.count(id);
        totalrows = (id == 0)? db.count() : db.count(id);
        int totalpage = (totalrows / pagesize) + ((totalrows % pagesize != 0) ? 1 : 0);
        int pagegap = Integer.parseInt(strPageGap);
        int start = pagesize * (pageIndex - 1) + 1;
        int end = start + pagesize - 1;
        
        
        ArrayList<Blog> results = db.all(start, end, id);
        results = (id == 0)? db.all(start, end) : db.all(start, end, id);
        
        request.setAttribute("results", results);
        request.setAttribute("totalpage", totalpage);
        request.setAttribute("pagegap", pagegap);
        request.setAttribute("pageindex", pageIndex);
        
        ArrayList<Blog> blogs = bd.getAllByCategory(id);
        ArrayList<Category> list = bd.getCategory();
        ArrayList<Blog> same = bd.getAllByCategory(id);
        
        request.setAttribute("same", same);
        request.setAttribute("categories", list);
        request.setAttribute("blogs", blogs);
        request.setAttribute("cateID", id);
        
        request.getRequestDispatcher("list.jsp").forward(request, response);
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
