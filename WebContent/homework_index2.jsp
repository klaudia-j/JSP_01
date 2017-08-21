<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<body>
	<%
		int[] array = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
	%>
	<c:forEach var="number" items="<%= array%>" begin ="2" step="2" >
		<p><c:out value="${number}" /></p>
	</c:forEach>
</body>
</html>