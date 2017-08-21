<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<body>
	<c:set var = "now" value = "<%= new java.util.Date()%>" />
	<p><fmt:formatDate type = "date" value = "${now}" /></p>
	<c:set var="Amount" value="99.14115" />
	<p><fmt:formatNumber value = "${Amount}" maxFractionDigits="3"/></p>
	<p><fmt:formatNumber value = "${Amount}" maxFractionDigits="5"/></p>
	<p><fmt:formatNumber value = "${Amount}" type="Percent"/></p>
	<p><fmt:formatNumber value = "${Amount}" type="Currency" currencySymbol="zl" maxFractionDigits="3"/></p>
</body>
</html>