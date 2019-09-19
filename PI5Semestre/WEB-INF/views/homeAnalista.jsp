<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<jsp:include page = "header.jsp" />
<body onload="tests()">
  	<div class="wrapper px-5">
		<jsp:include page = "sideBarAnalista.jsp" />
	 		<div id="content mx-5">
	 		<!-- navBar -->
	 	 	<jsp:include page = "navBar.jsp" />
	 		
                <div class=" px-5 pt-5 panel">
                	<form action="listar_demandaAnalista" method="post">
                	<!-- <input type="text" id="usuario" value="3"> -->
                    <div class="panel-heading">
                        <h1 class=" my-5"><a href="teste2">Demandas</a></h1>
                    </div>
                    <div class="panel-body table-responsive table-scroll">
                        <table class="pi-tableHomeAnalista table table-striped  table-hover " width="20%">
                            <thead>
                                <tr>
                                	<!-- - <th scope="col">#</th>-->
                                    <th scope="col">Demanda</th>
                                    <th scope="col">Projeto</th>
                                    <th scope="col">Status</th>
                                    <th scope="col">Opções</th>
                                </tr>
                            </thead>
                            <tbody>
                                	<c:forEach var="Demanda" items="${listaDemandaAnalista}">
                                       <tr>
                                       		<!--<td>
                                               ${Demanda.idDemanda }
                                            </td>-->
                                            <td>
                                                ${Demanda.nomeDemanda }
                                            </td>
                                            <td >
                                                ${Demanda.projeto.nomeProjeto}
                                            </td>
                        
                                            <td>
                                               ${Demanda.statusDemanda}
                                            </td>
                                            
		                                    <td class="list-unstyled CTAs align-middle text-center">
		                                       
		                                            <a class="btn-lg  pi-btnOpcoes text-center d-none d-md-block " href="visualizar_demanda?idDemanda=${Demanda.idDemanda }"><i class="fas fa-hourglass-start fa-1x mr-2"></i>Demanda</a>
		                                       		 <a class="btn-lg pi-btnOpcoes 	 d-sm-block d-md-none " href="visualizar_demanda?idDemanda=${Demanda.idDemanda }"><i class="fas fa-hourglass-start mr-2"></i></a>
		                                    </td>
		                                    	
		                                    
	                                	</tr>
	                                </c:forEach>
                         
                            </tbody>
                        </table>
                    </div>
                    </form>
                </div>
            </section>

       
</div>  
</div>  



    <jsp:include page = "footer.jsp" />
    <script src="js/filtre.js"></script>
    <script src="js/tests.js"></script>
     <script src="js/teste.js"></script>
</body>
</html>