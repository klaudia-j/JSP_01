<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
	String kmText = request.getParameter("km");
	if (kmText != null) {
		try {
			double km = Double.parseDouble(kmText);
			double mil = km * 0.62137;
			%>
			<%= mil + " mil"%>
		<%} catch (Exception e) {
		}}%>
</body>
</html>