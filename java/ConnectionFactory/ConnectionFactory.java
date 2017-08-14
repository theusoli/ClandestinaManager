package ConnectionFactory;


import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Aluno
 */
public class ConnectionFactory {
    public Connection getConnection() throws ClassNotFoundException{
        try{
            Class.forName("com.mysql.jdbc.Driver");
            return (Connection) DriverManager.getConnection(
                    "jdbc:mysql://localhost/ClandestinaManager?useSSL=false", "root", "root");
        }catch(SQLException  e){
            throw new RuntimeException(e);
        }
    }
}
