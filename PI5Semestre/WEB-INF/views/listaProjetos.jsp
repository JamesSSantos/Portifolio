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
	 	 		<div class="mx-3 painel-heading mt-5">
	 	 			<div class="px-3 row">
            			<div class="col-md-8 col-sm-12 float-left">
                			<h1>Projetos</h1>
                		</div>
                		<div class="col-md-4 col-sm-12 float- right">
	                		<a href="novo_Projeto" class=" float-right  btn-sm btn-md btn pi-color1 text-white">
	            			<i class="fas fa-plus mr-2"></i>Novo Projeto</a>
                        </div>
                        <div class="col-12">
                        <hr>
                        </div>
                    </div>
                 </div>
          <form action="listar_Projetos" method="post">
            	<div class="panel col-md-12">
            		<section >
            		
                    <div class="  panel col-md-12">
                    	<div class="panel-body table-responsive table-scroll">
                            <table class=" table table-striped  table-hover border-right-0" >
                                <thead class="pi-color1 text-white">
                                    <tr>
                                    	
					                        <th scope="col">Projeto</th>
					                        <th scope="col">Cliente</th>
					                       	<th scope="col">Valor</th>
					                        <th scope="col">Tempo</th>
					                       <!--  <th scope="col">Status</th> -->
					                        <th scope="col">Opções</th>
					                       
                                    </tr>
                                </thead>
                                <tbody >
                                 	<c:forEach var="Projeto" items="${listaProjeto}">
		                                	<tr>
		                                					                                
				                                <td class="align-middle">
				                                	${Projeto.nomeProjeto }
				                                </td>
				                                <td class="align-middle">
				                                	${Projeto.cliente.razaoSocial}
				                                </td>
				                                <td class="align-middle">
				                                	${Projeto.valorProjeto }
				                                </td>
				                                <td class="align-middle">
				                                	${Projeto.duracaoProjeto} dias
				                                </td>
				                              <!--   <td class="align-middle">
				                                	${Projeto.statusProjeto}
				                                </td> -->
				                                <td class="actions">
				                                <a href="listar_demanda?Projeto.idProjeto=${Projeto.idProjeto }" class="btn pi-color1 my-2  text-white hover-color1">
				                                	
				                                	<i class="fas fa-eye mr-2"></i>Demandas
				                                </a>
				                               
				                                	<a href="nova_demanda?Projeto.idProjeto=${Projeto.idProjeto }"  class="btn pi-color1 text-white hover-color1"><i class="fas fa-plus fa-1x mr-2 d-none-sm "></i>Demanda</a>
				                                
				                                
				                                	
				                                 
		                                    	<!--  <div class="btn-group" role="group" aria-label="Basic example">
			                                           	<button type="button" class="btn-lg btn btn-secondary" title="Editar" data-target="#modalEdit" data-toggle="modal"><i class="fas fa-edit"></i></button>
			                                            <button type="button" class="btn-lg btn btn-secondary" title="Excluir" data-target="#modalDelete" data-toggle="modal"><i class="fas fa-trash-alt"></i></button>
			                                     </div>  -->
		                                    
		                                    </td>
				                           	</tr>
				                     	</c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </section>
                
            </div>
            </form>
        </div>
    </div>
     </div>
       

    
    
    


   <jsp:include page = "footer.jsp" />
    <script src="js/filtre.js"></script>
	 		
</body>
</html>