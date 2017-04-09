<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>archived</title>
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
.match1 {
	
	margin: 8px;
	
	display: inline-block;
	text-align:center;
	
	padding: 20px 20px 20px 20px;

}
#date{
	font-family: 'Roboto', sans-serif;
    font-weight: 400;
    color:#34495E;
    font-size: 24px;
    text-align:center;
    }
#teams, #prize{
	font-family: 'Roboto', sans-serif;
    font-weight: 300;
	color:#34495E;
    font-size: 14px;
    text-align:center;
}
.match1 button{
 	padding: 9px 13px;
    color: white;
    text-align:center;
    background: #F1592A;
    font-family: 'Roboto', sans-serif;
    font-weight: bold;
    border: 1px solid transparent;
    border-radius:4px;
    cursor:pointer;
	    
 }
 table{

 	width:100%;
 	margin-top:2%;
 } 
 table tr td{
 
 	text-align:center;
 }

</style>
</head>
<body>
<div class="secondTop">
<h3>Archived Contests</h3>
</div>
<table>
<tr>
<td>
<div class="match1">
<h1 id="date"><span>Date:</span><span>29th October 2016</span></h1>
<p id="teams"><span>Teams:</span><span>5th ODI - India v New Zealand</span></p>
<p id="prize"><span>Total prize value:</span><span>5,000 INR</span></p>
<p><button type="button" onclick="openListPage();">Final Ranks</button></p>
</div>
</td>

<td>
<div class="match1">
<h1 id="date"><span>Date:</span><span>26th October 2016</span></h1>
<p id="teams"><span>Teams:</span><span>4th ODI - India v New Zealand</span></p>
<p id="prize"><span>Total prize value:</span><span>5,000 INR</span></p>
<p><button type="button">Final Ranks</button></p>
</div>
</td>
</tr>
</table>

</body>
</html>
