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
                			<h1>Registros da Demanda</h1>
                		</div>
                        <div class="col-12">
                        <hr>
                        </div>
                    </div>
                 </div>
                 
            <form action="listarRegistro" method="POST">
            	<div class="panel col-md-12">
            		<section>
            			
                    	<div class="  panel col-md-12">
                    		<div class="panel-body table-responsive table-scroll">
                            	<table class=" table table-striped  table-hover ">
                                	<thead class="pi-color3 text-white">
	                                    <tr>
	                                    	<th scope="col">Data/Hora</th>
	                                        <th scope="col">Status</th>
                                	</thead>
                                <tbody>
                                 	<c:forEach var="horaTrabalhada" items="${listaRegistro}">
                                 		<tr>
                                 			<td>
                                 				<c:set value="${horaTrabalhada.registroHora }" var="dateString" />
												<fmt:parseDate value="${dateString}" var="dateObject" pattern="yyyy-MM-dd HH:mm:ss" />
												<fmt:formatDate value="${dateObject }" pattern="dd/MM/yyyy" />
												<fmt:formatDate value="${dateObject }" pattern="hh:mm:ss" />
                                            </td>
                                            <td>
                                                ${horaTrabalhada.statusHora }
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