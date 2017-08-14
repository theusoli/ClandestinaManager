/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import DAO.TimeDAO;
import DAO.UsuarioDAO;
import Javabeans.Times;
import Javabeans.Usuario;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Aluno
 */
@WebServlet("/Home")
public class Cadastro_Servlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        String nome, login, senha, nomeTime, email, timeCoracao;
        boolean oi = false;
        Times times = new Times();
        nome = request.getParameter("nomeU");
        login = request.getParameter("login");
        senha = request.getParameter("senha");
        nomeTime = request.getParameter("nomeT");
        email = request.getParameter("email");
        timeCoracao = request.getParameter("select");
        Usuario usuario = new Usuario();
        usuario.setNome(nome);
        usuario.setLogin(login);
        usuario.setSenha(senha);
        usuario.setEmail(email);
        UsuarioDAO usuDAO = new UsuarioDAO();
        TimeDAO timeDAO = new TimeDAO();
        try {
            if (!usuDAO.verificarExistencia(usuario)) {
                if (!timeDAO.verificarExistencia(nomeTime)) {
                    usuDAO.inserirUsuario(usuario);
                    Times time = new Times();
                    time.setNome(nomeTime);
                    time.setPatrimonio(50);
                    time.setNomePresidente(nome);
                    time.setPontuacao(0);
                    time.setPreco(0);
                    time.setLoginUsuario(login);
                    time.setTimeCoracao(timeCoracao);
                    timeDAO.inserirTime(time);

                    HttpSession sessao = request.getSession();
                    sessao.setAttribute("logado", "true");
                    sessao.setAttribute("login", login);
                    times = usuDAO.recuperarInformacoes(login);
                    sessao.setAttribute("Time", time);

                    RequestDispatcher disp = request.getRequestDispatcher("home.jsp");
                    disp.forward(request, response);
                } else {
                    response.sendRedirect("index.jsp");
                }
            } else {
                response.sendRedirect("index.jsp");
            }
        } catch (SQLException ex) {
            Logger.getLogger(Cadastro_Servlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Cadastro_Servlet.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Cadastro_Servlet.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
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
