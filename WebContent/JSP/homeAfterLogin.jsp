<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
@CHARSET "ISO-8859-1";
.topDiv {
	background-color: #10427F;
	height: 12vh;
	width:100%;
	position:fixed;
	
	
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
.bgimg {
    background-image: url('../images/bg4.jpg');
    width: 100%;
    height          : 90vh;    
    background-size: contain;
    background-repeat: no-repeat;
    background-size: 100% ; 
  
}
body{
  margin:0;
  background-color: #F5F5F5;
}
.divBar{
	
	text-align: center;
	margin-top:-5%;
	

}
.divBar .divBarDiv{
	width: 22%; 
	height:40%;
	margin: 8px;
	border: 2.5px solid #A1A1A1;
	border-radius: 5px;
	display: inline-block;
	text-align:left;
	line-height: 200%;
	padding: 20px 20px 60px 20px;
	
}
 .firstSpan{
	font-weight:bold;
	
}

.lastDivBar{
	text-align: center;
	margin-top:1%;
	

}
.lastDiv {
	width: 82%; 
	margin: 8px;
	border: 2.5px solid #A1A1A1;
	border-radius: 5px;
	display: inline-block;
	text-align:center;
	line-height: 200%;
	padding: 20px 20px 20px 20px;

}

.lastDiv button{
	background-color: #F1592A;
	color: white;
	font-size: 14px;
	padding: 8px 14px;
	border: none;
	border-radius: 5px;
	margin-top: 0.5%;
}

.buttonBar button:hover{
	color:#F5F5F5;
}
.buttonBar button:first-child{
background-color: #F1592A;

}

 form{
 display:inline;
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
<button type="button" onclick = "openTermsPage();">Terms</button>
</div>
</div>
<div  class="bgimg" ></div>
<div class="divBar">
<div class="divBarDiv">
<span class="firstSpan">How To Play</span> <br/>
<span>Signup to create an account</span> <br/>
<span>Verify your account and update profile</span> <br/>
<span>Pick a contest and draft your team</span> 
</div>
<div class="divBarDiv">
<span class="firstSpan">Play For Free - Daily</span> <br/>
<span>Contest opens 24 hrs. before live game</span> <br/>
<span>Draft your team when contest opens</span> <br/>
<span>Show your cricket skills</span>
</div>
<div class="divBarDiv">
<span class="firstSpan">5,000 INR In Total Daily Prizes</span> <br/>
<span>Pick a contest, draft your team and win BIG!</span> <br/>
<span>Invite your friends to play</span> <br/>
<span>Share us on Facebook</span>
</div>
</div>
<div class= "lastDivBar">
<div class="lastDiv">
<span class="firstSpan">Sign Up Today & Start Winning!</span> <br/>
<span>No payment required to play fantasy cricket</span> <br/>
<span>Creating an account is easy, secure and free</span> <br/>
<span>What are you waiting for?</span> <br/>
<button type="button"><strong>Sign Up Now</strong></button>
</div>
</div>
</body>
</html>
