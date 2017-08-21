<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<body>
	<%
		String[] str = request.getParameterValues("role");
		request.setAttribute("roles", str);
	%>
	<c:forEach var="role" items="<%= str%>">
		<p><c:out value="${role}" /></p>
	</c:forEach>
</body>
</html>