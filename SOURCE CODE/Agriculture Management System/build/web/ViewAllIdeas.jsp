<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Agriculture Management System</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="images/Outdoor.css" type="text/css" />
<style>
        table
        {
          margin-left:200px;
        
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
      <h2><a href="#">Agriculture Management System</a></h2>
     
      <% String uname=(String)session.getAttribute("uname");%>
            <h2 class="mb-md-2">Welcome  <%=uname%></h2>
            <center><h2>View User Details Screen</h2></center>
            <%@page import="java.sql.*"%>
             <%@page import="dbcon.Dbconnection"%>
                <%
                    try
                    {
                         Connection con=Dbconnection.getConnection();
    Statement st=con.createStatement();
    
    ResultSet rs=st.executeQuery("select *from ideas ");
    %>
            <table border="5px" align="center" style="margin-bottom:150px;">
                <tr>
                    <th>Idea ID</th>
                    <th>User Name</th>
                    <th>Idea</th>
                    <th>Idea Description</th>
                    <th>Image</th>
                    
                    
                </tr>
               <%while(rs.next())
                {
                    
                %>
                <tr>
                     
                    <td><%=rs.getString(1)%></td>
                    <td><%=rs.getString(2)%></td>
                    <td><%=rs.getString(3)%></td>
                    <td><%=rs.getString(4)%></td>
                    <td><img src="view.jsp?iid=<%=rs.getString(1)%>" width="100px" height="100px"></img></td>
                    
                    
               
           
   
                 <%   }
%>
                 <%
                    }
                    catch(Exception e)
{
out.println(e);
}
                    %>
                     </tr>
           </table>
            
          </div>
    <div id="sidebar">
     
      </div>
      
      <div class="col3">
        </div>
    </div>
    <div id="footer-bottom">
      <p><strong>Rohith Java Projects</strong> | Design by: <a href="#">ROHITH</a></p>
    </div>
  </div>
</div>
</body>
</html>
