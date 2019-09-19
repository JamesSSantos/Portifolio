<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>

<jsp:include page = "header.jsp" />

</head>
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
                			<h1>Analista</h1>
                		</div>
                		<div class="col-md-4 col-sm-12 float-right">
	                		<a href="novo_Usuario" class=" float-right  btn pi-color3 text-white">
	            			<i class="fas fa-plus mr-2"></i>Novo Analista</a>
                        </div>
                        <div class="col-12">
                        <hr>
                        </div>
                    </div>
                 </div>
                 
            <form action="lista_Analistas" method="POST">
            	<div class="panel col-md-12">
            		<section>
            			
                    	<div class="  panel col-md-12">
                    		<div class="panel-body table-responsive table-scroll">
                            	<table class=" table table-striped  table-hover ">
                                	<thead class="pi-color3 text-white">
	                                    <tr>
	                                    	<!--  <th scope="col">#</th>-->
	                                        <th scope="col">Nome</th>
	                                        <th scope="col">Email</th>
	                                      	<th scope="col">Cargo</th>
	                                      	<th scope="col">Telefone</th>
	                                      	<th scope="col">Opções</th>
	                                    </tr>
                                	</thead>
                                <tbody>
                                 	<c:forEach var="usuario" items="${listaUsuario}">
                                 		<tr>
                                 			
                                            <td>
                                                ${usuario.nomeUsuario }
                                            </td>
                                            <td>
                                                ${usuario.email }
                                            </td>
                                             <td>
                                                ${usuario.cargo }
                                            </td>
                                             <td>
                                                ${usuario.telefone }
                                            </td>
                                            <td class="align-middle">
                                                      
                                                              <a href="calendarioAdmin?idUsuario=${usuario.idUsuario }" title="agenda"  class="btn-lg button calendar"><i class="fas fa-calendar-check "></i></a>
                                                     
                                                     <!--  <button type="button"  title="" data-toggle="modal" data-target="#ModalMapa" class="btn btn-secondary ">
                                                              <a href="#">Localizar</a>
                                                      </button> -->
                                              
                                                     
                                             	 <!--  <a class="btn-lg button delete" title="Excluir" href="excluir_Analista?idUsuario=${usuario.idUsuario }"><i class="fas fa-trash-alt"></i></a>-->
                                           
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
	<script src="js/mask.js"></script>

</body>
</html>