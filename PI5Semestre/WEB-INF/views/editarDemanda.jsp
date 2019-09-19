<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<jsp:include page="header.jsp" />

<body>
	<div class="wrapper px-5">
		<jsp:include page="sideBar.jsp" />
		<div id="content  mx-5">
			<!-- navBar -->
			<jsp:include page="navBar.jsp" />


			<section class=" pt-5 px-5">
				<div class="panel pt-5  px-4">
					<div class="painel-heading">

						<h1 class="">Editar Demanda</h1>
					</div>
					<hr>
					<form action="atualizar_demanda" method="post">
						<div class="row">

							<div class="col-md-6 border-right ">

								<div class="form-group">
									<label for="nomeDemanda" class="text-left">Nome da
										Demanda </label> 
										<input id="nomeDemanda" name="nomeDemanda" type="text" class="form-control"  required value="${demanda.nomeDemanda} ">
								</div>

								<div class="form-group">
									<label for="usuario">Analista</label> <select class="form-control" name="usuario.idUsuario" id="cliente">
										<option>Selecione o Analista</option>
										<c:forEach var="usuario" items="${usuarios}">
											<option value="${usuario.idUsuario}">${usuario.nomeUsuario}</option>
										</c:forEach>
									</select>
								</div>

								<div class="form-group">
									<label for="tempoDemanda" class="text-left">Tempo
										Demanda(horas)</label> <input id="tempoDemanda" name="duracaoDemanda" type="text" class="form-control">
								</div>

								<div class="row">
									<div class="col-12"><label>Tempo do Projeto</label></div>
									<div class="col-md-6 ">
										<label for="dataInicioDemanda" class="text-left">Início</label>
										<input id="dataInicioProjeto" name="dataInicioDemanda" type="date" class="form-control" pattern="dd/MM/yyyy">
									</div>
									<div class="col-md-6 ">
										<label for="dataTerminoProjeto" class="text-left">Términio</label>
										<input id="dataTerminoProjeto" name="dataTerminoDemanda" type="date" class="form-control">
									</div>
								</div>
							</div>

							<div class="col-md-6 ">
								<!-- <div class="form-group">
									<label for="arquivo" class="text-left">Anexar Arquivo</label> <input type="file" id="action_json" name="action_json" class="input-file" accept=".txt,.json">
									<div id="action_jsondisplay"></div>
								</div> -->

								<div class="form-group">
									<label for="descricaoDemanda" class="text-left">Descrição</label>
									<textarea id="descricaoDemanda" name="descricaoDemanda" cols="30" rows="10" class="form-control" placeholder="Ex: Demanda Urgente!!!!."></textarea>
								</div>

								<div class="form-group">
									<input type="hidden" name="statusDemanda" value="Não Iniciado" />
								</div>
								<div class="form-group">
									<input type="hidden" name="projeto_idProjeto" value="${demanda.getProjeto().getIdProjeto()}" />
								</div>
								<div class="col-md-12">
									<a href="listar_Projetos" class="btn btn-sm  pi-btnCancelar float-right px-2">Cancelar</a>
									<button class="btn pi-btn btn-sm  float-right mx-2" value="criar_demanda">Salvar</button>
								</div>

							</div>
						</div>
					</form>
				</div>
			</section>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
	<script src="js/mask.js"></script>
</body>

</html>