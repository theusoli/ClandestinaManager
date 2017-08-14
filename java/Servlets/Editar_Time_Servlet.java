/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import DAO.TimeDAO;
import Javabeans.Times;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Cleydson
 */
public class Editar_Time_Servlet extends HttpServlet {

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
        String nomeTime, nomePresidente;

        nomeTime = request.getParameter("nomeTime");
        System.out.println(nomeTime);
        nomePresidente = request.getParameter("nomePresidente");
        System.out.println(nomePresidente);
        HttpSession sessao = request.getSession();
        TimeDAO timedao;
        Times time, timeSessao;
        try {
            timedao = new TimeDAO();
            time = new Times();
            timeSessao = new Times();
            timedao.editarTime(nomeTime, nomePresidente, (String) sessao.getAttribute("login"));
            timeSessao = (Times) sessao.getAttribute("Time");
            time.setPatrimonio(timeSessao.getPatrimonio());
            time.setPontuacao(timeSessao.getPontuacao());
            time.setPreco(timeSessao.getPreco());
            time.setTimeCoracao(timeSessao.getTimeCoracao());
            time.setNomePresidente(nomePresidente);
            time.setNome(nomeTime);
            sessao.setAttribute("Time", time);
            RequestDispatcher disp = request.getRequestDispatcher("home.jsp");
            disp.forward(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Editar_Time_Servlet.class.getName()).log(Level.SEVERE, null, ex);
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
