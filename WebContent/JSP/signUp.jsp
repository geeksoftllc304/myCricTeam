<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<style type="text/css"> 

.topDiv {
	background-color: #10427F;
	height: 12vh;
	width:100%;
	position:fixed;
	top:0;
	}
.topDiv img {
	padding-top: 1%;
	padding-left: 14%;
	width: 18%;
	height: 65%;
	}
.topDiv .buttonBar{
	float: right;
	padding-top: 1%;
	padding-right: 11%;

}
.topDiv button {
 
	margin: 5px;
	background-color: #10427F;
	border: none;
	color: #B7B7B1;
	font-size: 14px;
	padding: 9px 15px
	
}


.buttonBar button:hover{
	color:#F5F5F5;
}
.secondTopInSignUp {
	background-color: #1B5CAB;
	height: 24vh;
	width:100%;
	padding-top:12vh;
	text-align:left;
	padding-left:30px;
}
.secondTopInSignUp h3 {
  	color:white;
	font-family: 'Roboto', sans-serif;
   	font-weight: 400;
	font-size: 24px;
	margin-top: 60px;
    margin-bottom: 20px;
    margin-left:5%;
    line-height: 1.1;
    
   
}
.secondTopInSignUp h4 {
  	color:white;
	font-family: 'Roboto', sans-serif;
   	font-weight: bold;
	font-size: 14px;
	line-height:35%;
	margin-left:5%;
	
}
body{
  margin:0;
  background-color: #F5F5F5;
  overflow-x:scroll;
}
.form{
	text-align:center;

}

form{
	margin:5% 30% ;
	color:#34495e;
	font-weight:bold;
	font-family: 'Roboto', sans-serif;
	font-size: 14px;
	
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
.registerButton{
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
    margin-left:7%;
}

</style>
</head>
<body>
<div class ="topDiv">
<img src="../images/logo.png"/>
<div class="buttonBar">
<button type="button">Home</button>
<button type="button">Upcoming Contests</button>
<button type="button">Login</button>
<button type="button">Sign Up</button>
<button type="button">Terms</button>
</div>
</div>
<div class="secondTopInSignUp">
<h3>Sign Up</h3>
<h4>Joining confirms you're 18+ years of age and that you agree to our Terms of Service.</h4>
</div>
<div class="form">

<form action="">
 <label> First Name</label>
  <input type="text" name="firstname" size="60" placeholder="First Name" class="textArea">
  <br><br>
  <label>Last Name</label>
  <input type="text" name="lastname" size="60" placeholder="Last Name" class="textArea">
  <br><br>
  <label>Email</label>
  <input type="text" name="email" size="60" placeholder="Email" class="textArea">
  <br><br>
  <label>Password</label>
  <input type="password" name="password" size="60" placeholder="Password" class="textArea">
  
  <br><br>
  <button class="registerButton" type="submit">Register</button>
</form>
</div>

</form>
</body>
</html>
