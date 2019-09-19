<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">


<jsp:include page="header.jsp" />

<body>
	<div class="wrapper px-5 ">
		<jsp:include page="sideBarAnalista.jsp" />
		<div id="content mx-5">
			<!-- navBar -->
			<jsp:include page="navBar.jsp" />
			<section>
			<div class=" px-5 pt-5 panel ">
				<c:if test="${demanda.statusDemanda.equals('Finalizada')}">
										<p class="alert alert-danger mt-5">Está demanda está finalizada</p>
				</c:if>
				<c:if test="${demanda.statusDemanda != ('Finalizada')}">
				<div class="mx-2 pt-5 painel-heading">
					<h3>Status atual da demanda</h3>
				</div>
				<form action="validarStatus" method="post" id="formStatusDemanda">
					<div class="panel-body table-responsive">
						<table class=" table border">
							<thead class="pi-color4 text-white">
								<tr>
									<th scope="col">Status</th>
									<th scope="col">Alterar Status</th>
									<th scope="col">Opção</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="align-middle" >
										<p class=" my-2 text-justify">
											${demanda.statusDemanda}
										</p>
									</td>
									<td class="align-middle" >
										<select name="statusDemanda" class="form-control " id="selectStatusDemanda">
											<option selected disabled>Selecione a opção</option>
											<option value="Em andamento">Em andamento</option>
											<option value="Almoço">Almoço</option>
											<option value="Em andamento">Retorno de Almoço</option>
											<option value="Fim de Expediente">Fim de Expediente</option>
											<option value="Finalizada">Finalizada</option>
										</select>
									</td>
									<td class="align-middle" ><input type="hidden" name="idDemanda" value="${demanda.idDemanda }" id="btnAtualizar"/>
										<button type="submit" class="btn pi-btnAtualizar btn-sm">Atualizar</button>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</form>
				</c:if>
			</div>
		</section>
		<section>
			
				<div class="panel px-5">
				
					<hr >
					<div class="painel-heading">
						<h3>Demanda</h3>
						<div class="panel-body table-responsive">
							<table class=" table  border">
								<thead class="pi-color4 text-white">
									<tr>
										<th scope="col">Demanda</th>
										<th scope="col">Descrição</th>
				
										<th scope="col">Projeto</th>
										<th scope="col">Status</th>
									
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="align-middle">${demanda.nomeDemanda }</td>
										<td class="align-middle">${demanda.descricaoDemanda }</td>
										<td class="align-middle">${demanda.projeto.nomeProjeto }</td>
										<td class="align-middle">${demanda.statusDemanda }</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				
			</div>
		</section>
		<section class="px-5 ">
			<div class="panel">
				<hr>
				<div class="painel-heading">
					<div class="row">
						<div class="col-md-12 col-sm-12">
							<div class="row">
								<div class="col-md-3 col-sm-12 ">
									<h6>Anexos</h6>
								</div>
								<c:if test="${demanda.statusDemanda != ('Finalizada')}">
								<div class="col-md-9 col-sm-12  pb-3">
									<form:form method="post" action="Upload" enctype="multipart/form-data" class="float-right">
										<input type="hidden" name="demanda.idDemanda" value="${demanda.idDemanda}" >
										<input name="file" type="file" /> <input type="submit" value="Upload">	
									</form:form>
								
								</div>
								</c:if>
								<div class="col-md-12 col-sm-12  ">
									<form action="listar_anexoDemanda" method="post">
										<div class="panel-body table-responsive table-scrollAnalista">
											<table class=" table table-striped  table-hover ">
												<thead class="pi-color4 text-white">
													<tr>
														<th scope="col">Anexos</th>
														<th scope="col">Registrado por</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="recurso" items="${listaAnexoDemanda}">
														<tr>
															<td class="align-middle"><a href="download?arquivo=${recurso.diretorioAnexo}" target="_blank">${recurso.nomeAnexo }</a></td>
															<td>${recurso.usuario.nomeUsuario }</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row ">
				<div class="col-md-12 col-sm-12">
				<hr>
					<div class="row">
						<div class="col-md-8 col-sm-12 ">
							<h6>Comentários</h6>
						</div>
						<c:if test="${demanda.statusDemanda != ('Finalizada')}">
						<div class="col-md-4 col-sm-12 align-middle mb-2">
							<a href="novo_Comentario?idDemanda=${demanda.idDemanda}" type="button" title="Enviar Comentário" class="btn-sm pi-btnComentario float-right ">
								<i class="fas fa-plus fa-1x mr-2"></i>Comentários
							</a>
						</div>
						</c:if>
					</div>
				</div>
				<div class="col-md-12 col-sm-12 pb-5">
					<div class="panel-body table-responsive table-scrollAnalista">
						<table class=" table table-striped  table-hover ">
							<thead class="pi-color4 text-white ">
								<tr>
									<th scope="col">Comentários</th>
									<th scope="col">Visualizar</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="recurso" items="${listaComentarioDemanda}">
									<tr>
										<td class="align-middle">${recurso.assuntoComentario }</td>
										<td><button type="button" class="btn btn-primary" 
										data-usu="${recurso.usuario.nomeUsuario }" data-coment="${recurso.comentario }" data-assunto="${recurso.assuntoComentario }"
										 onClick="ShowModal(this)" data-toggle="modal" data-target="#myModal"><i class="fas fa-eye mr-2"></i>Detalhes</button></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</section>
	</div>

	</div>
<!-- Modal -->
<!-- The Modal -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title" id="assuntoMo">Modal Heading</h4>
          <button type="button" class="close" data-dismiss="modal">×</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
        <h6>Descrição:</h6>
        	<textarea name="textarea" readonly="readonly" id="comentMo" style="width: 100%; height: 100px; resize: none"></textarea>
         <hr>
         <h6>Feito por:</h6>
         	<p id="usuMo"></p>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>

	<!-- fim modal -->
	
	<jsp:include page="footer.jsp" />
	<script src="js/filtre.js"></script>
	<script>
	function ShowModal(elem){
	    var assunto = $(elem).data("assunto");
	    var coment = $(elem).data("coment");
	    var usu = $(elem).data("usu");
	    document.getElementById("assuntoMo").innerHTML = assunto;
	    document.getElementById("comentMo").innerHTML = coment;
	    document.getElementById("usuMo").innerHTML = usu;
	}
	</script>
</body>

</html>