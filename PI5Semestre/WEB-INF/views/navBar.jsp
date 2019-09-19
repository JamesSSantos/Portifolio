	<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
	<%@page import="br.usjt.pi5semestre.model.entity.Usuario" %>
	
	<jsp:include page = "header.jsp" />
	  <header >
	  <nav >
	 	 <div class="d-flex">
  			<div class="mr-auto p-2  "><span class="menu"><i class="fas fa-bars"></i></span></div>
			<form action="Dados" method="get">
	         	<div class="d-flex flex-row  mr-5 ">
	         	<div> <span class=" pr-4 ">Usuário:  ${Usuario.nomeUsuario }</span></div>
	         		
	         	<div class="d-flex justify-content-end"><a href="logout"><span><i class="fas fa-sign-out-alt"></i> Sair</span></a></div>	
	      	</div>
  	      	</form>
	  
	 </div>
</nav>
</header>
	</body>
</html>