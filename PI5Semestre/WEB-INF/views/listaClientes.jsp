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
            			<div class="col-md-8  col-sm-12 float-left">
                			<h1>Cliente</h1>
                		</div>
                		<div class="col-md-4 col-sm-12 float-right">
	                		<a href="novo_Cliente" class=" float-right  btn pi-color2 text-white">
	            			<i class="fas fa-plus mr-2"></i>Novo Cliente</a>
                        </div>
                        <div class="col-12">
                        <hr>
                        </div>
                    </div>
                 </div>
            
            <form action="listar_Clientes" method="post">
            	<div class="panel col-md-12">
            		<section>
            		
                    <div class="  panel col-md-12">
                    	<div class="panel-body table-responsive table-scroll">
                            <table class=" table table-striped  table-hover ">
                                <thead class="pi-color2 text-white">
                                    <tr>
                                    	<!-- <th scope="col">#</th> -->
                                        <th scope="col">Razão Social</th>
                                        <th scope="col">endereco</th>
                                        <th scope="col">CNPJ</th>
                                        <th scope="col">Telefone</th>
                                        <th scope="col">Setor</th>
                                       <!--    <th scope="col">Opção</th>-->
                                    </tr>
                                </thead>
                                <tbody>
                                 	<c:forEach var="cliente" items="${listaCliente}">
                                 		<tr>
                                 			
                                            <td>
                                                ${cliente.razaoSocial }
                                            </td>
                                            <td>
                                                ${cliente.endereco }
                                            </td>
                                             <td>
                                                ${cliente.cnpj }
                                            </td>
                                             <td>
                                                ${cliente.telefone }
                                            </td>
                                             <td>
                                                ${cliente.setor }
                                            </td>
                                            
                                         <!--  <td class="align-middle"> 
		                                    	 <div class="btn-group" role="group" aria-label="Basic example">
			                                           	<button type="button" class="btn-lg btn btn-secondary " title="Editar" data-target="#modalEdit" data-toggle="modal"><i class="fas fa-edit"></i></button>
			                                            <button type="button" class="btn-lg btn btn-secondary" title="Excluir" data-target="#modalDelete" data-toggle="modal"><i class="fas fa-trash-alt"></i></button>
			                                     </div> 
		                                    
		                                    </td> -->   
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