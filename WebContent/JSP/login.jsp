<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<style type="text/css"> 



.secondTop {
	background-color: #1B5CAB;
	height: 16vh;
	width:100%;
	padding-top:16.5vh;
	padding-left:14vh;
	text-align:left;
	
}
.secondTop h3 {
  	color:white;
	font-size:24px;
	font-family: 'Roboto', sans-serif;
    font-weight: 400;

}

body{
  margin:0;
  background-color: #F5F5F5;
  overflow-x:scroll;
}

.loginForm{
	text-align:center;
}

form{
	margin:5% 30% ;
	color:#34495e;
	font-weight:bold;
	font-family: 'Roboto', sans-serif;
	font-size: 14px;
	left:30%;
	
}
.textArea{
 	height:6px;
 	padding:12px;
 	border-radius:5px;
 	
 
}
label{
 	display: inline-block;
	text-align:right;
	margin-right: 20px;
	width:20%;


}

.loginButton{
	font-size:14px;
	font-weight:bold;
	color:#FFF;
	background-color:#428BCA;
	border-color:#357EBD;
    text-align: center;
    white-space: nowrap;
    cursor:pointer;
    border: 1px solid transparent;
    border-radius: 4px;
    padding:9px 15px;
   
}

a{
font-family: 'Roboto', sans-serif;
font-weight: 300;
color:#34495e;

}
a:link{

text-decoration:none;
}

a:hover{
color:#D9534F;
cursor:pointer;
}

</style>

</head>
<body>

<div class="secondTop">
<h3>Login</h3>
</div>

<div class="loginForm">

<form action="">
<label>Email</label>
  <input type="text" name="email" size="60" placeholder="Email" class="textArea">
  <br><br>
  <label>Password</label>
  <input type="password" name="password" size="60" placeholder="Password" class="textArea">
  
  <br><br>
  <table style="width:100%;margin-left:10%;"><tr>
  <td style="padding-left:4%;"><button class="loginButton" type="submit">Login</button></td>
  <td style="text-align:right;padding-right:10%;"><span><a>Forgot Password</a></span></td>
  </tr>
  </table>
</form>
</div>
</body>
</html>
