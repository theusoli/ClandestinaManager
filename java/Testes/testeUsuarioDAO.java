/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Testes;

import DAO.TimeDAO;
import DAO.UsuarioDAO;

/**
 *
 * @author Cleydson
 */
public class testeUsuarioDAO {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws ClassNotFoundException {
        UsuarioDAO usuDAO = new UsuarioDAO();
        TimeDAO timeDAO = new TimeDAO();
        System.out.println("Deu certo!");
    }
    
}
