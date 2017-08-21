<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<body>
	<%
		String str = request.getParameter("minimalAge");
		request.setAttribute("minimalAge", str);
	%>
	<c:if test="${not empty param.minimalAge}">
		<c:if test="${param.minimalAge < 18}">
			<c:out value="Dozwolone poniżej lat 18" />
		</c:if>
		<c:if test="${param.minimalAge > 18}">
			<c:out value="Dozwolone od lat 18" />
		</c:if>
	</c:if>
	<c:if test="${empty param.minimalAge}">
		<c:out value="Brak parametru" />
	</c:if>
</body>
</html>