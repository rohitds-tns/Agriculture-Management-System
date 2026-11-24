<%-- 
    Document   : Accept
    Created on : Apr 14, 2019, 12:13:47 PM
    Author     : Acer
--%>

<%@page import="java.sql.*"%>
<%@page import="dbcon.Dbconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String oid=request.getParameter("oid");
try{
    Connection con=Dbconnection.getConnection();
    Statement st=con.createStatement();
    int i=st.executeUpdate("update orders set status='Accepted' where oid='"+oid+"'");
    if(i>0){
        response.sendRedirect("FarmerHome.jsp?msg=success");
    }else{
      response.sendRedirect("FarmerHome.jsp?msg=failed");   
    }
}catch(Exception e){
 out.println(e);   
}


%>
