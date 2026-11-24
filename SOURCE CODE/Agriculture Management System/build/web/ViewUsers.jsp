<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Agriculture Management System</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="images/Outdoor.css" type="text/css" />
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
      <li id="current"><a href="AdminHome.jsp">Home</a></li>
      <li><a href="ViewFarmers.jsp">View Farmers</a></li>
      <li><a href="ViewUsers.jsp">View Users</a></li>
      <li><a href="AViewProducts.jsp">View Products</a></li>
      <li><a href="ViewUserFeedBack.jsp">View User FeedBack</a></li>
      <li><a href="index.html">Logout</a></li>
      
    </ul>
  </div>
  <div id="content-wrap">
    <div id="main"> <a name="TemplateInfo"></a>
      
     
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
    
    ResultSet rs=st.executeQuery("select *from register where utype='User'");
    %>
            <table border="5px" align="center" style="margin-bottom:150px;">
                <tr>
                    <th>User ID</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email ID</th>
                    <th>Mobile</th>
                    <th>Gender</th>
                    <th>Address</th>
                    <th>User Name</th>
                    <th>User Type</th>
                    
                </tr>
               <%while(rs.next())
                {
                    
                %>
                <tr>
                     
                    <td><%=rs.getString(1)%></td>
                    <td><%=rs.getString(2)%></td>
                    <td><%=rs.getString(3)%></td>
                    <td><%=rs.getString(4)%></td>
                    <td><%=rs.getString(5)%></td>
                    <td><%=rs.getString(6)%></td>
                    <td><%=rs.getString(7)%></td>
                    <td><%=rs.getString(9)%></td>
                    <td><%=rs.getString(10)%></td>
                    
               
           
   
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
