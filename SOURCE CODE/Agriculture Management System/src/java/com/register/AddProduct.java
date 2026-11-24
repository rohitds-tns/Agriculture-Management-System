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

@WebServlet("/AddProduct")
@MultipartConfig(maxFileSize = 16177215)
public class AddProduct extends HttpServlet {

    private String dbURL = "jdbc:mysql://localhost:3306/agriculture";
    private String dbUser = "root";
    private String dbPass = "root";

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        String pid = request.getParameter("iid");
        String username = request.getParameter("username");
        String pname = request.getParameter("pname");
        String pdec = request.getParameter("pdec");
        String pcost = request.getParameter("pcost");
        
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

            String sql = "INSERT INTO Addproducts (pid, username, pname,pdec, pcost,image) values (?,?, ?, ?, ?,?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, pid);
            statement.setString(2, username);
            statement.setString(3, pname); 
      statement.setString(4, pdec);
        statement.setString(5, pcost);
            
            

            if (inputStream != null) {
                statement.setBlob(6, inputStream);
            }

            int row = statement.executeUpdate();
            if (row > 0) {

                System.out.println("image upload sucess");
                response.sendRedirect("Addproducts.jsp?reg=Product Added Successfully");
            } else {
                response.sendRedirect("Addproducts.jsp?reg= Prduct Adding Failed");

            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AddProduct.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}