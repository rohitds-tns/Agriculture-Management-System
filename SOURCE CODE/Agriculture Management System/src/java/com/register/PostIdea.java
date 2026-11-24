package com.register;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import java.sql.*;

@WebServlet("/PostIdea")
@MultipartConfig(maxFileSize = 16177215)
public class PostIdea extends HttpServlet {

    private String dbURL = "jdbc:mysql://localhost:3306/agriculture";
    private String dbUser = "root";
    private String dbPass = "root";

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        String iid = request.getParameter("iid");
        String username = request.getParameter("username");
        String idea = request.getParameter("idea");
        String ideadec = request.getParameter("ideadec");
        
        InputStream inputStream = null;
        Part filePart = request.getPart("image");
        if (filePart != null) {

            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());


            inputStream = filePart.getInputStream();
        }

        Connection conn = null;
        String message = null;

        try {

           Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

            String sql = "INSERT INTO ideas (iid, username,idea,ideadec,image) values (?,?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, iid);
            statement.setString(2, username);
       statement.setString(3, idea);     
      statement.setString(4, ideadec);
            

            if (inputStream != null) {
                statement.setBlob(5, inputStream);
            }

            int row = statement.executeUpdate();
            if (row > 0) {

                System.out.println("image upload sucess");
                response.sendRedirect("PostIdea.jsp?reg= Idea Posted success");
            } else {
                response.sendRedirect("PostIdea.jsp?reg= Idea Posting Failed");

            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(PostIdea.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}