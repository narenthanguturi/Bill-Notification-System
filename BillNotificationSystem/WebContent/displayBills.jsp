<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "com.bill.notification.system.AddBills" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%AddBills  addBills = new AddBills();%>
<%String temp= addBills.getBills().toString();%>
<input type="text" id="billName" name="billName" value=<%=temp%>><br><br>
</body>
</html>