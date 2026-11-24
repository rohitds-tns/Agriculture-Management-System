<%-- 
    Document   : alogin
    Created on : 18 Feb, 2019, 4:22:48 PM
    Author     : VENKAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="dbcon.Dbconnection"%>
<%
    String uname=request.getParameter("username");
    session.setAttribute("uname",uname);
    String password=request.getParameter("password");
    
try
{
    
    Connection con=Dbconnection.getConnection();
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select *from register where username='"+uname+"' and password='"+password+"' and utype='User'");
    if(rs.next())
    {
        %>
        <script type="text/javascript">
            window.alert("User Login Sucess");
            window.location="UserHome.jsp";
            </script>
        
        <%
    }
else
{
 %>
        <script type="text/javascript">
            window.alert("User Login Fail");
            window.location="User.jsp";
            </script>
        
        <%
}
    
}
catch(Exception e)
{
    out.println(e);
}
    %>
