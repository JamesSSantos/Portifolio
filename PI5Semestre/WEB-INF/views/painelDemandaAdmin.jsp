<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>

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
	 	 					<a href="listar_Projetos" title="Voltar as Demandas"><i class="fas fa-arrow-circle-left fa-1x mx-1"></i></a>
            				<hr>
            			</div>
            			<div class="col-md-8 col-sm-12  float-left">
                			<h1>Demandas</h1>
                			
                		</div>
                		
                		<!--  <div class="col-md-4 col-sm-12  float-right">
                			<a href="nova_demanda?Projeto.idProjeto=${Projeto.idProjeto }" class=" float-right btn  pi-btnOpcoes text-white">
	            				<i class="fas fa-plus mr-2"></i>Demanda
	            			</a>
	            		</div>-->
	            		<div class="col-12"><hr></div>
                	</div>
                 </div>
                 <div class="panel ">
					<div class="col-12">
						<div class="panel-body table-responsive table-scroll"> 
							<table class="pi-tableHomeAnalista table table-striped  table-hover " >
								<thead>
									<tr>
										<th scope="col">Demanda</th>
										<th scope="col">Descrição</th>
										<th scope="col">Analista Responsável</th>
										<th scope="col">Status</th>
										<th scope="col">Opções</th>
	                                </tr>
	                            </thead>
                            	<tbody>
                            		<c:forEach var="Demanda" items="${listaDemanda}">
                            		<tr>
                            			<td class="align-middle"> ${Demanda.nomeDemanda }</td>
		                                <td class="align-middle">${Demanda.descricaoDemanda }</td>
		                                <td class="align-middle">${Demanda.usuario.nomeUsuario }</td>
		                                <td class="align-middle">${Demanda.statusDemanda }</td>
		                                <td class="align-middle">
		                                	<div class="btn-group" role="group" aria-label="Basic example">
		                                    	<a class="btn-lg button view" href="visualizar_demandaAdmin?idDemanda=${Demanda.idDemanda }"  title="Visualizar Demanda" >
		                                    		<i class="fas fa-eye"></i>
		                                    	</a>
		                                    	<!-- <a class="btn-lg button edit" href="editar_Demanda?idDemanda=${Demanda.idDemanda }" class="btn-lg button edit" title="Editar" ><i class="fas fa-edit"></i></a>
			                                    <a class="btn-lg button delete" title="Excluir" href="excluir_demanda?idDemanda=${Demanda.idDemanda }"><i class="fas fa-trash-alt"></i></a> -->
			                                </div>
			                             </td>
			                          </tr>
                            		</c:forEach>
			                     </tbody>
			                    </table>
			                </div>
			             </div>
			          </div>
			       </div>
			      
                		
            			</div>
            			</form>
        			</div>
    			</div>

 

   
<jsp:include page = "footer.jsp" />
<script src="js/filtre.js"></script>
<script src="js/findIdProjeto.js"></script>
</body>
</html>