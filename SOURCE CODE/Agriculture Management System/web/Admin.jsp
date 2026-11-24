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
      <li id="current"><a href="index.html">Home</a></li>
      <li><a href="Admin.jsp">Admin</a></li>
      <li><a href="Farmer.jsp">Farmer</a></li>
      <li><a href="User.jsp">User</a></li>
      <li><a href="Register.jsp">Registration</a></li>
      
    </ul>
  </div>
  <div id="content-wrap">
    <div id="main"> <a name="TemplateInfo"></a>
        <center><h2><a href="#">Admin Login Screen</a></h2></center>
     
      <form name="login" action="AdminLogin.jsp" method="post">
                <table>
                    <tr><td><font size="4" color="black">UserName</font></td><td><font size="4" color="black"><input type="text" name="username" required=""></td></tr>
                    <tr><td><font size="4" color="black">Password</td><td><font size="4" color="black"><input type="password" name="password" required=""></td></tr>
                    <tr><td><font size="4" color="black"><input type="submit" value="Login"></td><td><font size="4" color="black"><input type="Reset"></td></tr>
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
