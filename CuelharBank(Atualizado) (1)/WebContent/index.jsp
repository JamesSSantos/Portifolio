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
  <title>Cuelhar's Bank</title>
  <link rel="icon" type="img/png" href="img/brasao.png"/>
  <link rel="stylesheet" href="css/index.css">
</head>
<body class="bg-dark">
  <c:import url="Menu.jsp" />
    <div class="card text-center mx-auto mt-5" style="width: 20%;">
      <img class="card-img-top" src="img/brasao.png" alt="Card image cap">
      <div class="card-body">
        <h5 class="card-title">Bem vindo!</h5>
        <p class="card-text">Aqui você pode realizar operações bancárias sem sair de casa, que tal começarmos?</p>
        <a href = "controller.do?command=ResetarExtrato" class="btn btn-dark">Acesse seu Extrado e Saldo!</a>
      </div>
    </div>
    <!--<div class="parallax"></div>-->
    <!-- Optional JavaScript -->
    <script type="text/javascript" src="js/onlyNum.js"></script>
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>