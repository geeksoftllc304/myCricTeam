<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>live</title>
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
.info{
    border: 2px solid #DDD;
    border-radius: 4px;
    box-sizing: border-box;
    font-size:14px;
    font-family: 'Roboto', sans-serif;
    font-weight: 300;
    color:#34495E;
    text-align:center;
    background-color:#FFF;
	margin-left:1%;  
    margin-right:1%;
    padding-top:5px;
    padding-bottom:13px;
     
}

</style>
</head>
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
<h3>Live Contests</h3>
</div><br><br>
<div class="info">
No live contests are available at this time.

</div>
</body>
</html>
