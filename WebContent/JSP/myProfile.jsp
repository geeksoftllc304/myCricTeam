<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Profile</title>
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
.secondTop {
	background-color: #1B5CAB;
	height: 16vh;
	width:100%;
	padding-top:16.5vh;
	padding-left:1vh;
	text-align:center;
	
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


}
.submitButton{
	font-size:14px;
	color:white;
	background-color:#F1592A;
	
    text-align: center;
    cursor:pointer;
    
    padding:6px 10px;
    margin-left:7%;
    border-radius: 4px;
    border-width: 2px;
    border-style: outset;
    border-color: buttonface;
    
}
   
}
</style>
</head>
<body>
<body>
<div class ="topDiv">
<img src="../images/logo.png"/>
<div class="buttonBar">
<button type="button">Home</button>
<button type="button">Upcoming Contests</button>
<button type="button">Live Contests</button>
<button type="button">Archived Contests</button>
<button type="button">My profile</button>
<button type="button">Logout</button>
<button type="button">Terms</button>
</div>
</div>
<div class="secondTop">
<h3> My Profile</h3>
</div>
<div class="myProfileform">

<form action="">
 <label> Screen Name*</label>
  <input type="text" name="firstname" size="60" class="textArea">
  <br><br><br>
  <label>Whatssapp ID*</label>
  <input type="text" name="lastname" size="60" class="textArea">
  <br>
  <h4>*WhatsApp ID will be used to identify users uniquely and communicate prize details</h4>
  <br>
  <label>State*</label>
  <input type="text" name="email" size="60" class="textArea">
  <br><br><br>
  <label>City*</label>
  <input type="password" name="password" size="60"  class="textArea">
  
  <br><br><br>
  <button class="submitButton" type="submit">Submit</button>
</form>
</div>

</form>
</body>
</html>
