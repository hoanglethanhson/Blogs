/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.BaseModel;

/**
 *
 * @author dell
 */
public class BaseDAO<T extends BaseModel> {
    public Connection connection;
            
    public BaseDAO() 
    {
        try {
            String username = "sa";
            String password = "sa";
            String url = "jdbc:sqlserver://localhost:1433;databaseName=J3.L.P0005";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url,username,password);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(BaseDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
