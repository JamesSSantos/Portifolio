<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html lang="pt-br">
<jsp:include page="header.jsp" />
<body>
<div class="wrapper px-5">
	<jsp:include page="sideBar.jsp" />
		<div id="content pt-5 mx-5">
			<!-- navBar -->
			<jsp:include page="navBar.jsp" />
				<section class=" pt-5 px-5">
					<div class="panel pt-5  px-4">
						<div class="painel-heading">
							<h1 >Cadastrar Projeto</h1>
						</div>
						<hr>
						<form action="criar_Projeto" method="post">
							<div class="row">
								<div class="col-md-6 border-right ">
									<div class="form-group">
										<label for="nomeProjeto" class="text-left">Nome do projeto</label> 
										<input id="nomeProjeto" name="nomeProjeto" value="" type="text" class="form-control" placeholder="Ex: Projeto reestruturação de código" required>
									</div>
									<div class="form-group">
										<label for="valor" class="text-left">Valor do projeto</label>
										<input id="valor" name="valorProjeto" value="" type="text" class="form-control" placeholder="Ex: R$ 0.000,00" required>
									</div>
									<div class="form-group">
										<label for="duracao" class="text-left">Duração do projeto(dias)</label>
										<input id="duracao" name="duracaoProjeto" value="" type="text" class="form-control" placeholder="Ex: 15" required>
									</div>
									<div class="row">
									<div class="col-12">
										<label>Tempo do Projeto</label>
									</div>
									<div class="col-md-6 ">
										<label for="dataInicioProjeto" class="text-left">Início</label>
										<input id="dataInicioProjeto" name="dataInicioProjeto" type="date" class="form-control" value="">
									</div>
									<div class="col-md-6 ">
										<label for="dataTerminoProjeto" class="text-left">Terminio</label>
										<input id="dataTerminoProjeto" name="dataTerminoProjeto" type="date" class="form-control">
									</div>
								</div>
							</div>
							<div class="col-md-6 ">
								<div class="form-group">
									<label for="cliente">Cliente</label>
									 <select class="form-control" name="cliente.idCliente" id="cliente">
										<option>Selecione o cliente</option>
										<c:forEach var="cliente" items="${clientes}">
											<option value="${cliente.idCliente }">${cliente.razaoSocial}</option>
										</c:forEach>
									</select>
								</div>
								<div class="form-group">
									<label for="descricaoProjeto" class="text-left">Observações do projeto</label>
									<textarea name="descricaoProjeto" id="descricaoProjeto" cols="30" rows="10" class="form-control" placeholder="O projeto devera ter um estagiario e dois analistas nivel II (2) para fins..."></textarea>
								</div>
								<div class="form-group">
									<input type="hidden" name="statusProjeto" value="Não Iniciado" />
								</div>
							</div>
							<div class="col-md-12 ">
								<a href="listar_Projetos" class="btn btn-sm  pi-btnCancelar float-right px-2">Cancelar</a>
		                        <button class="btn pi-btn btn-sm  float-right mx-2" name="criar_Projeto" onclick="projCreated()" value="criar_Projeto">Salvar</button>
							</div>
						</div>
					</form>
				</div>
				</section>
			</div>
		</div>
	<jsp:include page="footer.jsp" />
</body>
</html>