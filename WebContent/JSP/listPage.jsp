<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html:form action="/listPage">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
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
    text-align:left;
    padding-left:5%;

}

.secondTop h4 {
	color:white;
	font-size:14px;
	text-align:left;
    padding-left:5%;
}



body{
  margin:0;
  background-color: #F5F5F5;
  overflow-x:scroll;
}

.tableDiv{
	padding-top: 3%;
	
    padding-left:20%;
}

.tableDiv table, td, th{

	
	border-collapse: collapse;
	padding-left:12px;
	
}
.tableDiv table{
border: 1px solid black;
}
.tableDiv table  th{
	background-color:#F7F7F7;
	text-align:left;	

}
.tableDiv table tr{
	height:50px;

}
.tableDiv table tr:nth-child(odd){
background-color:#F6F7F8;
}
.tableDiv table tr:nth-child(even){
background-color:#FFFFFF;
}

</style>
<body>
<div class="secondTop">
<h3>Archived Scores</h3>
<h4>See <span style="text-decoration:underline; cursor:pointer" onclick="openTermsPage()">Terms</span> for Scoring System.</h4>
</div>
<div class="tableDiv" width="100%">
<div><input name="playersSearch" id="playersSearchId" type="text" size="40" placeholder="Filter By Screen Name" value="" resultSize="20" autoCompleteImage="autoCompleteImage" />
<img id="autoCompleteImage" class="spinner" src="images/ajax-loader.gif" style="display: none; position: left center;"></img></div><br/>
<div>
 <table width="80%" rules="cols">
 <thead>
<tr>

	<th>Rank</th><th>Screen Name</th><th> Score</th><th>Submission Time</th>
</tr>
</thead>
<tbody>
<c:forEach items="${fRlist}" var="flist" varStatus="loop">

<tr id="${loop.index}">

<td><c:out value="${flist.rank}"/></td>
<td><c:out value="${flist.playerName}"/></td>
<td><c:out value="${flist.score}"/></td>
<td><c:out value="${flist.submissionTime}"/></td></div>


</tr>
</c:forEach>
</tbody>
<tr id="pageTrigger"> 
<td colspan="4" align="center" ><img src="images/ajax-loader.gif" id="spinner"  style="display:none;color:red;"/></td>
</tr>

</table> 
</div>
</body>
</html:form>