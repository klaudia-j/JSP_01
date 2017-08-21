<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<body>
	<c:forTokens items="Witaj w coderslab" delims=" " var="site">
		<c:if test="${site == 'coderslab'}">
			<p>OK</p>
		</c:if>
	</c:forTokens>
	<c:set var="someName" value="Witaj w coderslab." />
	<c:if test="${fn:contains(someName, 'coderslab')}">
		<p>OK</p>
	</c:if>
</body>
</html>