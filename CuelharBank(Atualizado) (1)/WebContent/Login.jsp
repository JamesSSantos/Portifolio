<!doctype html>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <title>Login</title>
  <link rel="icon" type="img/png" href="img/brasao.png"/>
  <!--<script type="text/javascript" src="../js/login.js"></script>-->
</head>
<body class="bg-dark">
	  <div class="card text-center mx-auto mt-5" style="width: 50%;">
	    <div class="card-body">
	      <h5 class="card-title">Realizar Login</h5>
	      <form action="autenticador" method="post">
	        <div class="form-row">
	        <div class="form-group col-md-3">
	        </div>
	          <div class="form-group col-md-6">
	            <label>Número da Agencia</label>
	            <input type="text" name="idAgencia" maxlength="4" class="form-control" onkeypress="return onlyNum(event);" placeholder="Conta">
	          </div>
	          
	          <div class="form-group col-md-6">
	            <label>Número da Conta</label>
	            <input type="text" name="numeroConta" maxlength="4" class="form-control" onkeypress="return onlyNum(event);" placeholder="Conta">
	          </div>
	        </div>
	        <div class="form-row">
	        	<div class="form-group col-md-6">
	            	<label>Senha</label>
	            	<input type="password" name="senhaConta" maxlength="6" class="form-control" onkeypress="return onlyNum(event);" placeholder="Senha">
	        	</div> 
	        	<div class="form-group col-md-6">
	          		<label>Token</label>
	          		<input type="text" name="token" class="form-control" maxlength="6" onkeypress="return onlyNum(event);" placeholder="Senha">
	        	</div>
	        </div>
	      	<button class="btn btn-dark" type="submit" name='command' value="Logar">Entrar</button>
	      </form>
	    </div>
	  </div>
  <!-- Optional JavaScript -->
  <script type="text/javascript" src="js/onlyNum.js"></script>
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>