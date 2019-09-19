<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>

<jsp:include page = "header.jsp" />

</head>
<body>
	<div class="wrapper px-5 ">
		
	 		<div id="content mx-5">
		<!-- navBar -->
	 	 	 <header >
	  <nav >
	 	 <div class="d-flex">
  			<div class="mr-auto p-2  "></div>
			
	         	<div class="d-flex flex-row  mr-5 ">
	         
	         	<div> <span class=" pr-4 ">Usuário: ${Usuario.nomeUsuario } </span></div>
	         		
	         	<div class="d-flex justify-content-end"><a href="Login"><span><i class="fas fa-sign-out-alt"></i> Sair</span></a></div>	
	      	</div>
  	      	
	 </div>
</nav>
</header>
	 	 	<div class="panel pt-5  px-5">
	 	 		<div class="mx-3 painel-heading mt-5">
	 	 			<div class="px-3 row">
            			<div class="col-md-8 col-sm-12 float-left">
                			<h1>Administrador</h1>
                		</div>
                		<div class="col-md-4 col-sm-12 float-right">
	                		<a href="novo_Administrador" class=" float-right  btn pi-color3 text-white">
	            			<i class="fas fa-plus mr-2"></i>Novo Administrador</a>
                        </div>
                        <div class="col-12">
                        <hr>
                        </div>
                    </div>
                 </div>
                 
                 
            <form action="lista_Administrador" method="POST">
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
                                 	<c:forEach var="usuario" items="${listaAdmin}">
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
                                                      
                                                 
                                              
                                                     
                                             	 <a class="btn-lg button delete" title="Excluir" href="excluir_Admin?idUsuario=${usuario.idUsuario }"><i class="fas fa-trash-alt"></i></a>
                                           
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