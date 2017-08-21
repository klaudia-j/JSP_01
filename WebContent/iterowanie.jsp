<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% String[] animals = {"Pies", "Kot", "Nietoperz", "Ważka", "Słoń", "Mysz", "Szczur", "Kangur", "Pelikan"}; %> 
<html>
<body>
	<ul>
		<c:forEach var="animal" items="<%= animals%>" step="2" varStatus = "statusLoop" begin="1"> 
			<li> ${animal} ${statusLoop.count} ${statusLoop.index}</li>
	  	</c:forEach>
	</ul>
	<select>
		<c:forEach var="counter" begin="1" end="6">
			<option>${counter}</option>
		</c:forEach>
	</select>
	<br>
	<c:forTokens items="www.coderslab.pl" delims="." var="site" varStatus="stat"> 
		<c:out value="${site}"/> <c:if test="${not stat.isLast()}"><hr></c:if>
	</c:forTokens>
</body>
</html>