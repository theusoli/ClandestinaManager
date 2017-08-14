/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import ConnectionFactory.ConnectionFactory;
import Javabeans.Times;
import Javabeans.Usuario;
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
public class UsuarioDAO {

    public UsuarioDAO() throws ClassNotFoundException {
    }

    public void inserirUsuario(Usuario usuario) throws SQLException {
        Connection connection;
        try {
            connection = new ConnectionFactory().getConnection();

            String sql = "insert into Usuario "
                    + "(email, login, nome, senha)"
                    + "values(?,?,?,?)";
            PreparedStatement stmt;
            try {
                stmt = connection.prepareStatement(sql);
                stmt.setString(1, usuario.getEmail());
                stmt.setString(2, usuario.getLogin());
                stmt.setString(3, usuario.getNome());
                stmt.setString(4, usuario.getSenha());
                stmt.execute();
                stmt.close();
                connection.close();
            } catch (SQLException ex) {
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public boolean verificarExistencia(Usuario usuario) {
        Connection connection;
        boolean resultado = false;
        try {
            connection = new ConnectionFactory().getConnection();

            String sql = "select login from usuario where login=?";

            try {
                PreparedStatement stmt = connection.prepareStatement(sql);

                stmt.setString(1, usuario.getLogin());

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
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return resultado;
    }

    public boolean fazerLogin(String login, String senha) {
        Connection connection;
        boolean resultado = false;
        try {
            connection = new ConnectionFactory().getConnection();

            String sql = "select login,senha from usuario where login=? and senha=?";

            try {
                PreparedStatement stmt = connection.prepareStatement(sql);

                stmt.setString(1, login);
                stmt.setString(2, senha);

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
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return resultado;
    }

    public Times recuperarInformacoes(String login) {
        Connection connection;
        Times time = new Times();
        try {
            connection = new ConnectionFactory().getConnection();

            String sql = "select * from times as t, usuario as u "
                    + "where u.login = ? and u.login = t.loginUsuario;";

            try {
                PreparedStatement stmt = connection.prepareStatement(sql);
                stmt.setString(1, login);

                ResultSet rs = stmt.executeQuery();

                while (rs.next()) {
                    time.setNome(rs.getString("t.nome"));
                    time.setPatrimonio(rs.getDouble("t.patrimonio"));
                    time.setNomePresidente(rs.getString("nomePresidente"));
                    time.setPontuacao(rs.getDouble("pontuacao"));
                    time.setPreco(rs.getDouble("preco"));
                    time.setTimeCoracao(rs.getString("timecoracao"));
                }
            } catch (SQLException ex) {
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return time;
    }
}
