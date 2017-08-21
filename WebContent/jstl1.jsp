<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<body>
	<%
		String str = request.getParameter("role");
		request.setAttribute("role", str);
	%>
	<c:out value="${role}" default = "guest" />
</body>
</html>