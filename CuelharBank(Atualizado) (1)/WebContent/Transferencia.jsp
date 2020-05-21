<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css
	bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW
	dAiS6JXm" crossorigin="anonymous">
	<title>Transferências</title>
	<link rel="icon" type="img/png" href="../img/brasao.png"/>
</head>
<body>
	<c:import url="Menu.jsp" />
	<div class="card text-center mx-auto mt-5" style="width: 30%;">
		<div class="card-body">
	        <h5 class="card-title">Realizar Transferência</h5>
	        <form action="controller.do" method="post">
	          <div class="form-row">
	            <div class="form-group col-md-6">
	              <label>Agência</label>
	              <input type="text" name="agenciaDestino" maxlength="4" class="form-control" onkeypress="return onlyNum(event);" placeholder="Agência">
	            </div>
	            <div class="form-group col-md-6">
	              <label>Conta</label>
	              <input type="text" name="contaDestino" maxlength="5" class="form-control" onkeypress="return onlyNum(event);" placeholder="Conta">
	            </div>
	          </div>
	          <div class="form-row">
	            <div class="form-group col-md-6">
	              <label>CPF do Beneficiado</label>
	              <input type="text" name="cpfBeneficiadoTransferencia" maxlength="11" class="form-control" onkeypress="return onlyNum(event);" placeholder="CPF do Beneficiado">
	            </div>
	            <a type="text" name="idTipoTransacao" value="2"></a>
	            <div class="form-group col-md-6">
	              <label>Valor da Transferência (R$)</label>
	              <input type="text" name="valorTransferencia" maxlength="20" class="form-control" onkeypress="return onlyNum(event);" placeholder="Valor da Transferência">
	            </div>
	          </div>
	          <div class="form-group">
	            <label>Comentário (Opcional)</label>
	            <input type="text" name="identificacaoTransferencia" class="form-control" maxlength="20" placeholder="Caso deseje identifique esta transferência">
	          </div>
	          <div class="form-group">
	          	<div class="container">
	    			<div class="row">
	    			<div class="form-group col-md-3">
	    			</div>
	          <div class="form-group col-md-6">
	            <label>Token</label>
	            <input type="text" name="token" class="form-control" maxlength="6" placeholder="Digite o token" onkeypress="return onlyNum(event);">
	          </div>
	          <div class="form-group col-md-3">
	    			</div>
	          </div>
	          </div>
	          </div>
                        <button class="btn btn-dark" name="command" value="FazerTransferencia" class="btn1">Realizar Transferencia</button>
            </form>
	        </div>
	    </div>
	    <!-- Optional JavaScript -->
	  <script type="text/javascript" src="../js/onlyNum.js"></script>
	  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
	  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	</body>
	</html>