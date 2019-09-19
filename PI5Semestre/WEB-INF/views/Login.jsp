<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pt">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

 <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap/bootstrap.min.css">

    <!-- Font Awesome JS -->
    <link rel="stylesheet" href="css/fontawesome/all.css">
<link rel="stylesheet" href="css/analista.css">
<link rel="stylesheet" href="css/app.css">
<link rel="stylesheet" href="css/text.css">
<link rel="stylesheet" href="css/card.css">
<link rel="stylesheet" href="css/form.css">
<link rel="stylesheet" href="css/colors.css">
<link rel="stylesheet" href="css/button.css">
<link rel="stylesheet" href="css/footer.css">
<title>Controle de Demandas</title>
</head>
<body class="container-color">
<c:set var="erro" property="erro" scope="session" value="${erro}" />
	<div class="container ">
		<div class="row pi-container justify-content-center ">
			<div
				class="col-md-4 align-self-center pi-border-box-shadow  pi-background-form ">
				<div class="text-center py-3">
					<h5 class="mb-4">Iniciar sessão</h5>
					<img src="img/ProjectForce.png" alt="" class="img-fluid"
						width="100px">
				</div>
				<form action="Entrar" method="POST">

					<div class="form-group">
						<input id="email" name="email" type="text" class="form-control" placeholder="Usuário" required>
					</div>
					<div class="form-group">
						<input id="senha" name="senha" type="password" class="form-control" placeholder="Senha" required>
					</div>
					<button class="btn pi-btn btn-lg btn-block" value="Entrar">Entrar</button>
					<c:if test="${erro != null }">
						<div class="alert alert-danger" role="alert">
							${erro}</div>
					</c:if>
					
				</form>
			</div>
		</div>
	
	</div>


	


    <script src="js/jquery-3.3.1.slim.min.js"></script>
	<script src="js/ajax/libs/popper.min.js"></script>
	<script src="js/bootstrap/bootstrap.min.js" ></script>
</body>
</html>