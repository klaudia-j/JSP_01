<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<body>
	<%
		String value = request.getParameter("author");
		request.setAttribute("author", value);
	%>
	<c:if test="${not empty param.author}">
		<c:out value="Wybrany autor ${param.author}" />
	</c:if>
</body>
</html>