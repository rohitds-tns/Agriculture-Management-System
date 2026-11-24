<%-- 
    Document   : alogin
    Created on : 18 Feb, 2019, 4:22:48 PM
    Author     : VENKAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="dbcon.Dbconnection"%>
<%
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    String email=request.getParameter("email");
    String mobile=request.getParameter("mobile");
    String gender=request.getParameter("gender");
    String address=request.getParameter("address");
    String utype=request.getParameter("utype");
    String uname=request.getParameter("username");
    String password=request.getParameter("password");
    
try
{
   Connection con=Dbconnection.getConnection();
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select count(*) from register where username='"+uname+"'");
    while(rs.next())
    {
        int count=rs.getInt(1);
        if(count==0)
        {
            int i=st.executeUpdate("insert into register values(null,'"+fname+"','"+lname+"','"+email+"','"+mobile+"','"+gender+"','"+address+"','"+uname+"','"+password+"','"+utype+"')");
            if(i>0)
                    {
                      %>
        <script type="text/javascript">
            window.alert(" Registration Sucessfull");
            window.location="Register.jsp";
            </script>
        
        <%   
                    }
else
{
 %>
        <script type="text/javascript">
            window.alert(" Registration Fail");
            window.location="Register.jsp.jsp";
            </script>
        
        <%
}
        
        
        %>
        <script type="text/javascript">
            window.alert("Username Already Exist");
            window.location="Register.jsp";
            </script>
        
        <%
    }

 %>
        <script type="text/javascript">
            window.alert("UserName Already Exist");
            window.location="Register.jsp";
            </script>
        
        <%

  }  
}
catch(Exception e)
{
    out.println(e);
}
    %>
