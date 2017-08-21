<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.Enumeration, java.util.HashMap, java.util.Map"%>
<!DOCTYPE html>
<html>
<body>
	<%
		Map<String, String> map = new HashMap<String, String>();
		Enumeration<String> headerNames = request.getHeaderNames();
		while (headerNames.hasMoreElements()) {
			String key = (String) headerNames.nextElement();
			String value = request.getHeader(key);
			map.put(key, value);
		}
		request.setAttribute("map", map);
	%>
	<c:forEach var="header" items="<%=map%>">
		<c:out value="${header}" />
	</c:forEach>
</body>
</html>