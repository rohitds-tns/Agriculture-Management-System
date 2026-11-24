<%-- 
    Document   : alogin
    Created on : 18 Feb, 2019, 4:22:48 PM
    Author     : VENKAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
    String uname=(String)session.getAttribute("uname");
    String pname=request.getParameter("pname");
    String feedback=request.getParameter("feedback");
    

    
try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/agriculture","root","root");
    Statement st=con.createStatement();
    
            int i=st.executeUpdate("insert into feedback values('"+uname+"','"+pname+"','"+feedback+"',now())");
            if(i>0)
                    {
                      %>
        <script type="text/javascript">
            window.alert("FeedBack Posted  SucessFully...");
            window.location="SendFeedBack.jsp";
            </script>
        
        <%   
                    }
else
{
 %>
        <script type="text/javascript">
            window.alert("Unable to Post FeedBack");
            window.location="SendFeedBack.jsp";
            </script>
        
        <%
}
 
}
catch(Exception e)
{
    out.println(e);
}
    %>
