<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Agriculture Management System</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="images/Outdoor.css" type="text/css" />
<style>
        table
        {
          margin-left:100px;
        background-color:green;
        }
        table tr td
        {
            padding:15px;
            
        }
    </style>
</head>
<body>
<div id="wrap">
  <div id="header">
    <h1 id="logo-text"><a href="#">Agriculture Management System</a></h1>
   
    <div id="header-links">
      
    </div>
  </div>
  <div id="header-photo"><img src="images/header-photo.jpg" width="870" height="206" alt="" /></div>
  <div  id="nav">
    <ul>
      <li id="current"><a href="UserHome.jsp">Home</a></li>
      
      <li><a href="ViewAllIdeas.jsp">View All Ideas</a></li>
      <li><a href="ViewProducts.jsp">View Products</a></li>
      <li><a href="ProductsRequests.jsp">Product Response</a></li>
      <li><a href="SendFeedBack.jsp">Send FeedBack</a></li>
      <li><a href="index.html">Logout</a></li>
      
    </ul>
  </div>
  <div id="content-wrap">
    <div id="main"> <a name="TemplateInfo"></a>
      
      <% String uname=(String)session.getAttribute("uname");%>
            <h2 class="mb-md-2">Welcome  <%=uname%></h2>
             <%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.*"%>
<%@page import="dbcon.Dbconnection" %>
<%
 
    try
    {
     Connection con=Dbconnection.getConnection();
     Statement st=con.createStatement();
     ResultSet rs=st.executeQuery("select * from register where utype='Farmer'");
     
  %>
              <h2 class="mb-md-2">SendBack to The Farmer</h2>
            <form name="login" action="SendFeedBackAction.jsp" method="post">
                <table>
                        <tr>
                            <td><font color="black" size="4">Farmer Name </td><td><select name="pname">
                    <%while(rs.next())
                    {%>
                    <option value="<%=rs.getString(8)%>"><%=rs.getString(8)%></option>   
                    <%}
}
catch(Exception e)
{
out.println(e);
}
%>
                            </tr>   <tr><td><font color="black" size="4">Feed Back<font color="red" size="4">*</font></td><td><textarea name="feedback" required=""></textarea></td></tr>
                       <tr><td><font color="black" size="4"><input type="submit" value="Send FeedBack"></td><td><font color="black" size="4"><input type="Reset"></td></tr>
                </table>
            </form> 
            
          </div>
    <div id="sidebar">
     
      </div>
      
      <div class="col3">
        </div>
    </div>
    <div id="footer-bottom">
      <p><strong>Rohith Java Projects</strong> | Design by: <a href="#">ROHTITH</a></p>
    </div>
  </div>
</div>
</body>
</html>
