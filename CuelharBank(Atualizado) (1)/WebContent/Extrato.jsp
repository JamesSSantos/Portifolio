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
  <title>Extrato e Saldo</title>
  <link rel="icon" type="img/png" href="img/brasao.png"/>
</head>
<body>
	<c:import url="Menu.jsp" />
	<form action="controller.do" method="post">	
	<div class="container" style="padding-top: 20px; padding-bottom: 20px;">
			<div class="row">
				<div class="col">
					<label>Data do Extrato:</label>
				</div>
				<div class="col">
					<label>De:</label>
					<input type="date" name="extratoInicio" placeholder="DD/MM/YYYY">
				 </div>
				 <div class="col-6">
				 	<div class="row">
						<div class="col6">
							<label>Até:</label>
							<input type="date" name="extratoFim" placeholder="DD/MM/YYYY">
						</div>
					<div class="col" style="padding-left: 50px;">
								<button class="btn btn-dark" name="command" value="ListarTransacao" class="btn1">Gerar Extrato</button>
							</div>
							<div class="col">
								<button class="btn btn-dark" name="command" value="ResetarExtrato" class="btn1">Limpar</button>
							</div>
							</div>
						</div>
				 	</div>
	</div>
	</form>
	 	<div id = "list" class = "row">
			<div class = "table-responsive col-md-12">
				<div id = "lista">
				    <table class="table table-hover table-striped">
				      		<thead class="thead-dark">
				        		<tr>
				          			<th scope="col">Data</th>
				  			    	<th scope="col">Identificação</th>
				  		        	<th scope="col"></th> <!--colunas em branco para o valor do saldo ficar no final da linha-->
				  		        	<th scope="col"></th>
				  		        	<th scope="col">Valor</th>
				  	    	</thead>
				      			<c:forEach var="transacao" items="${lista}">
				        			<tr>
				          				<td>${transacao.getDtTransacao() }</td>
										<td>${transacao.getIdentificacaoTransacao() }</td>
										<td></td>
										<td></td>
										<td>${transacao.getValorTransacao() }</td>
				        			</tr>
				        		</c:forEach>
				        	</tbody>
				        <thead class="thead-dark">
				        <tr>
				          <th scope="col">Saldo em conta:</th>
				          <th scope="col"></th>
				          <th scope="col"></th> <!--colunas em branco para o valor do saldo ficar no final da linha-->
				          <th scope="col"></th>
				          <th scope="col">R$: ${contAutenticado.getSaldoConta() }</th>
				        </tr>
				      </thead>
				    </table>
				    </div>
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