<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bill Notification System</title>
</head>
<body>
<div style="text-align:center">
	Welcome to Bill Notification System
</div>
<br>
<div style="text-align:center">
	<button type="button" onclick="displayForm()">Add Notifications</button>
	<button type="button" onClick="javaScript:window.location='displayBills.jsp';"
	>Get Notifications</button>
</div>
<br>
<br>
<form id="addForm" style="display:none; text-align:center" method="post"
action="${pageContext.request.contextPath}/addBills">
  <label for="billName">Bill Name:</label>
  <input type="text" id="billName" name="billName"><br><br>
  <label for="dueDate">Due Date:</label>
  <input type="date" id="dueDate" name="dueDate"><br><br>
  <input type="submit" value="Submit">
</form>
</body>
<script>
function displayForm() {
  document.getElementById("addForm").style.display = "block";
}
function displayBills() {
  document.getElementById("addForm").style.display = "none";
}
</script>
</html>