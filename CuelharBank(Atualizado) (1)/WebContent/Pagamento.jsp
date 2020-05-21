<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <title>Pagamentos</title>
  <link rel="icon" type="img/png" href="../img/brasao.png"/>
</head>
<body>
  <c:import url="Menu.jsp" />
    <div class="card text-center mx-auto mt-5" style="width: 30%;">
      <div class="card-body">
        <h5 class="card-title">Realizar Pagamentos</h5>
        <form action="controller.do" method="post">
          <div class="form-group">
          	<div class="container">
    			<div class="row">
      			<div class="col-sm">
            <label>Valor da Conta</label>
            <input class="form-control" name="valorPagamento" type="text" maxlength="13" onkeypress="return onlyNum(event);" placeholder="Valor da Conta">
          </div>
          <div class="col-sm">
        				<label for="zip">Token</label>
            			<input class="form-control" type="text" maxlength="13" onkeypress="return onlyNum(event);" placeholder="Digite o token">
      			</div>
      			<a type="text" name="idTipoTransacao" value="1"></a>
      			</div>
      			</div>
      			</div>
          <div class="form-group">
            <label>Comentário (Opcional)</label>
            <input type="text" class="form-control" name="identificacaoPagamento" maxlength="20" placeholder="Caso deseje identifique este pagamento">
          </div>
          <div class="form-group">
          	<label for="zip">Data de Pagamento</label>
           	<input type="date" name="dtPagamento" placeholder="DD/MM/YYYY">	
          </div>
  		<br>
        	<button class="btn btn-dark" name="command" value="FazerPagamento" class="btn1">Realizar Pagamento</button>
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