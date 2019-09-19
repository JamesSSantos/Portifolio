<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<jsp:include page = "header.jsp" />
<body>
<div class="wrapper px-5">
		<jsp:include page = "sideBarAnalista.jsp" />
	 		<div id="content mx-5">
	 		<!-- navBar -->
	 	 	<jsp:include page = "navBar.jsp" />
	 	 	<div class=" px-5 pt-5 panel">
	<div id='calendar'></div>
	</div>
</div>
</div>
	<jsp:include page = "footer.jsp" />
</body>
</html>