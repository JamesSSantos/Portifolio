<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<jsp:include page = "header.jsp" />
<body >
	<div id="content  ">
		<jsp:include page = "sideBar.jsp" />
		<!-- navBar -->
		<jsp:include page = "navBar.jsp" />
	</div>
	<div>
	</div>
	<div class="panel  px-5 py-5">
		<section class=" px-5">
			<h6>Bem-vindo!</h6>
			<div class="row">
				<div class="col-md-4  ">
					<div class="card hovercard">
						<a href="listar_Clientes">
							<div class="pi-color2">
								<h2 class="py-5 text-white"> Clientes</h2>
							</div>
						</a>
						<div class="avatar">
							<img src="img/customer.svg" alt="" style="background: white" />
							<h5>${Cliente.contagemCliente } Clientes</h5>
						</div>
					</div>
				</div>
				<div class="col-md-4 ">
					<form action="contar" method="get">
					<div class="card hovercard ">
						<a href="listar_Analistas" >
							<div class="pi-color3">
								<h2 class="py-5 text-white">Analistas</h2>                                    
							</div>
						</a> 
						<div class="avatar">
							<img src="img/boy.svg" alt="" style="background: white" />
							<h5>${usuario.contagemUsuario } Analistas</h5>
						</div>
					</div>
					</form>
				</div>                                               
				<div class="col-md-4 ">
					<div class="card hovercard">
						<a href="listar_Projetos" >
							<div class = "pi-color1">
								<h2 class="py-5 text-white">Projetos</h2>
							</div>
						</a> 
						<div class="avatar">
							<img src="img/briefing.svg" alt="" style="background: white" />
							<h5>${Projeto.contagemProjeto } Projetos</h5>
						</div>								
					</div>
				</div>
			</div>
		</section>
		<section class="px-5 ">
			<div class="row ">
				<div class="col-md-12 " >
					<div class="card hovercard">
						<div id="projetos" class=" py-2" >Projetos<div>
							<hr class="px-5">
							<form action="listar_Projetos" method="post">
								<div class="panel-body table-responsive px-3 card-h table-scroll">
									<table class=" table  table-hover " >
										<thead class="">
											<tr>
												<th scope="col">Projeto</th>
												<th scope="col">Cliente</th>
												<th scope="col">Valor</th>
												<th scope="col">Tempo</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="Projeto" items="${listaProjeto}">
												<tr>		                                			
													<td>
														${Projeto.nomeProjeto }
													</td>
													<td >
														${Projeto.cliente.razaoSocial}	
													</td>
													<td>
														R$ ${Projeto.valorProjeto }
													</td>
													<td>
														${Projeto.duracaoProjeto} dias
													</td>
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
	</section>
	</div>
<jsp:include page = "footer.jsp" />
<script src="js/filtre.js"></script>
<script src="js/teste.js"></script>
<script src="js/chart.js"></script>
</body>
</html>