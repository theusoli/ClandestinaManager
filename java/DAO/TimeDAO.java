/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import ConnectionFactory.ConnectionFactory;
import Javabeans.Times;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Aluno
 */
public class TimeDAO {

    public TimeDAO() throws ClassNotFoundException {
    }

    public void inserirTime(Times time) {
        Connection connection;

        try {
            connection = new ConnectionFactory().getConnection();
            String sql = "insert into Times"
                    + "(nome, patrimonio, nomePresidente, pontuacao, preco, timecoracao, loginUsuario)"
                    + " values(?,?,?,?,?,?,?)";

            PreparedStatement stmt;
            try {
                stmt = connection.prepareStatement(sql);

                stmt.setString(1, time.getNome());
                stmt.setDouble(2, time.getPatrimonio());
                stmt.setString(3, time.getNomePresidente());
                stmt.setDouble(4, time.getPontuacao());
                stmt.setDouble(5, time.getPreco());
                stmt.setString(6, time.getTimeCoracao());
                stmt.setString(7, time.getLoginUsuario());
                System.out.println("AEEE");
                stmt.execute();
                System.out.println("22222");
                stmt.close();
                connection.close();
                System.out.println("uabdyuawdbuq");
            } catch (SQLException ex) {
                Logger.getLogger(TimeDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(TimeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void editarTime(String nomeTime, String nomePresidente, String login) {
        Connection connection;
        try {
            connection = new ConnectionFactory().getConnection();
            String sql = "update usuario as u, times as t "
                    + "set u.nome = ?, t.nomePresidente = ?, t.nome = ? "
                    + "where u.login = ? and t.loginUsuario = u.login;";
            
            PreparedStatement stmt;
            try {
                stmt = connection.prepareStatement(sql);

                stmt.setString(1, nomePresidente);
                stmt.setString(2, nomePresidente);
                stmt.setString(3, nomeTime);
                stmt.setString(4, login);
                
                stmt.execute();
                stmt.close();
                connection.close();
            } catch (SQLException ex) {
                Logger.getLogger(TimeDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(TimeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public boolean verificarExistencia(String nomeTime){
        Connection connection;
        boolean resultado = false;
        try {
            connection = new ConnectionFactory().getConnection();
            String sql = "select nome from times where nome = ?";
            try {
                PreparedStatement stmt = connection.prepareStatement(sql);
                stmt.setString(1, nomeTime);
                
                ResultSet rs = stmt.executeQuery();

                if (rs.next()) {
                    resultado = true;
                } else {
                    resultado = false;
                }
                
                rs.close();
                stmt.close();
                connection.close();
            } catch (SQLException ex) {
                Logger.getLogger(TimeDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(TimeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return resultado;
    }
}
