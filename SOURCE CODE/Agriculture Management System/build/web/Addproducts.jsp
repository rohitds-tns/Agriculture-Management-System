<%@page import="java.util.Random"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Agriculture Management System</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="images/Outdoor.css" type="text/css" />
</head>
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
      <li id="current"><a href="FarmerHome.jsp">Home</a></li>
      <li><a href="PostIdea.jsp">Post Idea</a></li>
      <li><a href="ViewYourIdeas.jsp">View Your Ideas</a></li>
      <li><a href="AllIdeas.jsp">All Ideas</a></li>
      <li><a href="Addproducts.jsp">Add Products</a></li>
      <li><a href="ViewProductsRequests.jsp">Product Requests</a></li>
      <li><a href="index.html">Logout</a></li>
      
    </ul>
  </div>
  <div id="content-wrap">
    <div id="main"> <a name="TemplateInfo"></a>
     <%
    
    
    
    Random rand = new Random();
    
    String iid ="P_"+String.valueOf(rand.nextInt(10))+String.valueOf(rand.nextInt(10))+String.valueOf(rand.nextInt(10)
            );
    
//    String userid =  Integer.toString(randomNum);
//    String useridds = "LBS"+userid;
    
%>
     
      <% String uname=(String)session.getAttribute("uname");%>
      <center><h2 class="mb-md-2">Welcome  <%=uname%></h2></center>
             <% String msg=request.getParameter("reg");%>
              <%if(msg!=null)
              {
                  %>
                  <h2 class="mb-md-2"><font color="red"><%=msg%></font></h2>
                  <%
                  
              }
              %>
            <center><h2><a href="#">Post Your Product Details Here To Share All Users</a></h2></center>
     
      <form  action="AddProduct" method="post" enctype="multipart/form-data">
                <table>
<tr><td><font size="4" color="black">Product ID</font></td><td><font size="4" color="black"><input type="text" name="iid" value="<%=iid%>"></td></tr>
<tr><td><font size="4" color="black">YourName</font></td><td><font size="4" color="black"><input type="text" name="username" value="<%=uname%>"></td></tr>
<tr><td><font size="4" color="black">Product Name</td><td><font size="4" color="black"><input type="text"  name="pname" required=""></td></tr>
<tr><td><font size="4" color="black">Product Description</td><td><font size="4" color="black"><textarea  name="pdec" required=""></textarea></td></tr>
<tr><td><font size="4" color="black">Product Cost</td><td><font size="4" color="black"><input type="text"  name="pcost" required=""></td></tr>                 
<tr><td><font size="4" color="black">Idea Image</td><td><font size="4" color="black"><input type="file"  name="image" required=""></td></tr>
                 
                                    <tr><td><font size="4" color="black"><input type="submit" value="Add Product"></td><td><font size="4" color="black"><input type="Reset"></td></tr>
                </table>
            </form> 
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
