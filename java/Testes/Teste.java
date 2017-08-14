/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Testes;

import ConnectionFactory.ConnectionFactory;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Cleydson
 */
public class Teste {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        try {
            Connection connection = new ConnectionFactory().getConnection();
            System.out.println("Conexão aberta!");
            connection.close();
        } catch (SQLException ex) {
            Logger.getLogger(Teste.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Teste.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
