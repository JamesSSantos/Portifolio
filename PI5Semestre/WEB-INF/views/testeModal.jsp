<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<jsp:include page = "header.jsp" />
<body onload="tests()">
  	<div class="w3-container">
  <h2>W3.CSS Modal</h2>
  <button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-black">Open Modal</button>

  <div id="id01" class="w3-modal">
    <div class="w3-modal-content">
      <div class="w3-container">
        <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-display-topright">&times;</span>
        <p>Some text. Some text. Some text.</p>
        <p>Some text. Some text. Some text.</p>
      </div>
    </div>
  </div>
</div>
    
    <jsp:include page = "footer.jsp" />
    <script src="js/filtre.js"></script>
    <script src="js/tests.js"></script>
     <script src="js/teste.js"></script>
</body>
</html>