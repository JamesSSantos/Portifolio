<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<jsp:include page = "header.jsp" />
<body>
	<div class="wrapper px-5 ">
		<jsp:include page = "sideBar.jsp" />
	 		<div id="content mx-5">
			<!-- navBar -->
	 	 	<jsp:include page = "navBar.jsp" />
	 	 	<div class="panel pt-5  px-5">
	 	 		<div class=" painel-heading mt-5">
	 	 			<div class="px-3 row">
	 	 				<div class="col-md-12 col-sm-12  ">
	 	 				<a href="listar_demanda?projeto.idProjeto=${demanda.projeto.idProjeto }" title="Voltar as Demandas"><i class="fas fa-arrow-circle-left fa-1x mx-1"></i></a>
	 	 				<hr>
	 	 				</div>
	 	 			
            			<div class="col-md-8 col-sm-12  float-left">
                			<h1>${demanda.nomeDemanda }</h1>
                			
                		</div>
                		<div class="col-md-12 col-sm-12 float-right">
                				<a href="listaRegistros?idDemanda=${demanda.idDemanda }" type="button" title="Horas Trabalhadas" class="btn-sm pi-btnComentario float-right ">
								<i class="fas fa-plus fa-1x mr-2"></i>Horas Trabalhadas
							</a>
                			</div>
                	</div>
                 </div>
                 
                 <section class=" pt-3">
			<div class="col-md-12 col-sm-12">
				<div class="panel">
					<hr class="pi-hr-color">
					<div class="painel-heading">
						
						<div class="panel-body table-responsive">
							<table class="pi-tableHomeAnalista table table-striped  table-hover ">
								<thead>
									<tr>
										
										<th scope="col">Projeto</th>
									
										
										<th scope="col">Status</th>
										<th scope="col">Data Cadastro</th>
										<th scope="col">Data Início</th>
										<th scope="col">Data Término</th>
									
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="align-middle">${demanda.projeto.nomeProjeto }</td>
										
				
										
										<td class="align-middle">${demanda.statusDemanda }</td>
										<td class="align-middle">${demanda.dataCadastro }</td>
										<td class="align-middle">${demanda.dataInicioDemanda }</td>
										<td class="align-middle">${demanda.dataTerminoDemanda }</td>
										
									</tr>
								</tbody>
							</table>
							</div>
								<div class="panel-body table-responsive pt-4">
							<table class="pi-tableHomeAnalista table table-striped  table-hover pt-4">
								<thead>
									<tr>
										
										<th scope="col">Descrição</th>
										
									
									</tr>
								</thead>
								<tbody>
									<tr>
									
										<td class="align-middle">${demanda.descricaoDemanda }</td>
										
								
										
									</tr>
								</tbody>
							
							
							</table>
						</div>
					</div>
				</div>
			</div>
		</section>
		
				<section class=" pt-3 ">
				<div class="col-md-12 col-sm-12">
			<div class="panel">
				<hr>
				<div class="painel-heading">
					<div class="row">
						<div class="col-md-12 col-sm-12">
							<div class="row">
								<div class="col-md-3 col-sm-12 ">
									<h6>Anexos</h6>
								</div>
								<div class="col-md-9 col-sm-12  pb-3">
									<form:form method="post" action="UploadAdm" enctype="multipart/form-data" class="float-right">
										<input type="hidden" name="demanda.idDemanda" value="${demanda.idDemanda}" >
										<input name="file" type="file" /><input type="submit" value="Upload">
									</form:form>
								</div>
								<div class="col-md-12 col-sm-12  ">
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
															<td>${recurso.usuario.nomeUsuario}</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
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
						<div class="col-md-4 col-sm-12 align-middle mb-2">
							<a href="novo_ComentarioAdm?idDemanda=${demanda.idDemanda}" type="button" title="Enviar Comentário" class="btn-sm pi-btnComentario float-right ">
								<i class="fas fa-plus fa-1x mr-2"></i>Comentários
							</a>
						</div>
					</div>
				</div>
				<div class="col-md-12 col-sm-12 pb-5">
					<div class="panel-body table-responsive table-scrollAnalista">
						<table class=" table table-striped  table-hover ">
							<thead class="pi-color4 text-white ">
								<tr>
									<th scope="col">Comentários</th>
									<th scope="col" class="align-right">Comentário feito por</th>
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
			</div>
		</section>
           </div>
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
        	<textarea name="textarea" readonly="readonly" id="comentMo" style="width: 100%; height: 15%; resize: none"></textarea>
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
                 
                 
<jsp:include page = "footer.jsp" />
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