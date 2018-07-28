/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Contact;

/**
 *
 * @author dell
 */
public class ContactDAO extends BaseDAO<Contact> {

    public void insert(Contact c) {
        try {
            String query = "INSERT INTO [dbo].[Contact]\n"
                    + "           ([Name]\n"
                    + "           ,[Email]\n"
                    + "           ,[Phone]\n"
                    + "           ,[Company]\n"
                    + "           ,[Message])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?, ?)\n";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, c.getName());
            statement.setString(2, c.getEmail());
            statement.setString(3, c.getPhone());
            statement.setString(4, c.getCompany());
            statement.setString(5, c.getMessage());
            statement.execute();
        } catch (Exception ex) {
            Logger.getLogger(ContactDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
}
