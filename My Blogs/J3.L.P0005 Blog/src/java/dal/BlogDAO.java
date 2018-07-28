/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Blog;
import model.Category;

/**
 *
 * @author dell
 */
public class BlogDAO extends BaseDAO<Blog> {

    public ArrayList<Blog> getAllByCategory(int category) {
        ArrayList<Blog> list = new ArrayList();
        try {
            String query = "SELECT [ID]\n"
                    + "      ,[Title]\n"
                    + "      ,[Content]\n"
                    + "      ,[Image]\n"
                    + "      ,[Date]\n"
                    + "      ,[CategoryID]\n"
                    + "  FROM [J3.L.P0005].[dbo].[Blog] WHERE CategoryID = ?";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setInt(1, category);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Blog blog = new Blog();
                blog.setId(rs.getInt("ID"));
                blog.setTitle(rs.getString("Title"));
                blog.setContent(rs.getString("Content"));
                blog.setImage(rs.getString("Image"));
                blog.setDate(rs.getDate("Date"));
                blog.setCategory(rs.getInt("CategoryID"));
                list.add(blog);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public Blog getLatest() {
        Blog blog = new Blog();
        try {
            String query = "SELECT TOP (1) [ID]\n"
                    + "      ,[Title]\n"
                    + "      ,[Content]\n"
                    + "      ,[Image]\n"
                    + "      ,[Date]\n"
                    + "      ,[CategoryID]\n"
                    + "  FROM [J3.L.P0005].[dbo].[Blog] ORDER BY Date DESC";
            PreparedStatement statement = connection.prepareStatement(query);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                blog.setId(rs.getInt("ID"));
                blog.setTitle(rs.getString("Title"));
                blog.setContent(rs.getString("Content"));
                blog.setImage(rs.getString("Image"));
                blog.setDate(rs.getDate("Date"));
                blog.setCategory(rs.getInt("CategoryID"));
                return blog;
            }
        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Blog getByID(int id) {
        Blog blog = new Blog();
        try {
            String query = "SELECT [ID]\n"
                    + "      ,[Title]\n"
                    + "      ,[Content]\n"
                    + "      ,[Image]\n"
                    + "      ,[Date]\n"
                    + "      ,[CategoryID]\n"
                    + "  FROM [J3.L.P0005].[dbo].[Blog] WHERE ID = ?";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                blog.setId(rs.getInt("ID"));
                blog.setTitle(rs.getString("Title"));
                blog.setContent(rs.getString("Content"));
                blog.setImage(rs.getString("Image"));
                blog.setDate(rs.getDate("Date"));
                blog.setCategory(rs.getInt("CategoryID"));
                return blog;
            }
        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    
    //category
    public Category getCategoryByBlog(int id) {
        try {
            String query = "SELECT Category.ID, Category.Category FROM\n"
                    + "Blog INNER JOIN Category\n"
                    + "ON Blog.CategoryID = Category.ID WHERE Blog.ID = ?";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                Category category = new Category();
                category.setId(rs.getInt("ID"));
                category.setCategory(rs.getString("Category"));
                return category;
            }
        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ArrayList<Category> getCategory() {
        ArrayList<Category> list = new ArrayList();
        try {
            String query = "SELECT [ID]\n"
                    + "      ,[Category]\n"
                    + "  FROM [dbo].[Category] ";
            PreparedStatement statement = connection.prepareStatement(query);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Category category = new Category();
                category.setId(rs.getInt("ID"));
                category.setCategory(rs.getString("Category"));
                list.add(category);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    public int count(int cateID) {
        String query = "SELECT COUNT(*) as TotalRows FROM Blog WHERE CategoryID = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setInt(1, cateID);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                return rs.getInt("TotalRows");
            }
        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }
    
    public ArrayList<Blog> all(int start, int end, int cateID) {
        ArrayList<Blog> list = new ArrayList<>();
        String query = "select rn,[ID], [Title], [Content],  [Date], [Image], [CategoryID]"
                + " from (\n"
                + "  select ROW_NUMBER() over (order by Date DESC) as rn, [ID], [Title], [Content], [Date], [Image], [CategoryID]\n"
                + "    from Blog WHERE CategoryID = ?\n"
                + ") as x\n"
                + "where rn between ? and ? ";
        try {
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setInt(1, cateID);
            statement.setInt(2, start);
            statement.setInt(3, end);
            
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Blog blog = new Blog();
                blog.setId(rs.getInt("ID"));
                blog.setTitle(rs.getString("Title"));
                blog.setContent(rs.getString("Content"));
                blog.setDate(rs.getDate("Date"));
                blog.setImage(rs.getString("Image"));
                blog.setCategory(cateID);
                list.add(blog);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    public int count() {
        String query = "SELECT COUNT(*) as TotalRows FROM Blog";
        try {
            PreparedStatement statement = connection.prepareStatement(query);
            
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                return rs.getInt("TotalRows");
            }
        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }
    
    public ArrayList<Blog> all(int start, int end) {
        ArrayList<Blog> list = new ArrayList<>();
        String query = "select rn,[ID], [Title], [Content],  [Date], [Image], [CategoryID]"
                + " from (\n"
                + "  select ROW_NUMBER() over (order by Date DESC) as rn, [ID], [Title], [Content], [Date], [Image], [CategoryID]\n"
                + "    from Blog\n"
                + ") as x\n"
                + "where rn between ? and ? ";
        try {
            PreparedStatement statement = connection.prepareStatement(query);
            
            statement.setInt(1, start);
            statement.setInt(2, end);
            
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Blog blog = new Blog();
                blog.setId(rs.getInt("ID"));
                blog.setTitle(rs.getString("Title"));
                blog.setContent(rs.getString("Content"));
                blog.setDate(rs.getDate("Date"));
                blog.setImage(rs.getString("Image"));
                blog.setCategory(rs.getInt("CategoryID"));
                list.add(blog);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
}
