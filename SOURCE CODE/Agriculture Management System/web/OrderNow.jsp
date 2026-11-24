<%-- 
    Document   : OrderNow
    Created on : Feb 10, 2022, 11:25:36 PM
    Author     : Venkat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="dbcon.Dbconnection"%>
<%
    String uname=(String)session.getAttribute("uname");
    String pid = request.getParameter("pid");
    String oname = request.getParameter("oname");
    String pname = request.getParameter("pname");
    String pcost = request.getParameter("pcost");
    
try
{
 
    Connection con=Dbconnection.getConnection();
    Statement st=con.createStatement();
    int i=st.executeUpdate("insert into orders values(null,'"+pid+"','"+oname+"','"+pname+"','"+pcost+"','"+uname+"',now(),'Waiting')");
    if(i>0)
    {
        %>
        <script type="text/javascript">
            window.alert("Order Placed Sucessfull");
            window.location="UserHome.jsp";
            </script>
        <%
    }
else
{
 %>
        <script type="text/javascript">
            window.alert(" Unable To Placed Your Order");
            window.location="UserHome.jsp";
            </script>
        <%
}
}
catch(Exception e)
{
    out.println(e);
}
    %>