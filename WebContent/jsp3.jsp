<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
	<% 
	String aText = request.getParameter("a");
	String bText = request.getParameter("b");
	if (! (aText == null || bText == null)) {
		int a = Integer.parseInt(aText);
		int b = Integer.parseInt(bText);
		for (int i = a; i < b+1; i++){
	%>
			<li><%= i %></li>
	<%}}%>
	</ul>
</body>
</html>