<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<jsp:include page = "header.jsp" />
<body>
	<div class="wrapper px-5">
		
		<div id="content  mx-5">
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
			<section class=" pt-5 px-5">
				<div class="panel pt-5  px-4">
					<div class="painel-heading">
						<h1 class="">Cadastrar Administrador</h1>
					</div>
					<hr>
					<form action="criar_Administrador" method="post">
						<div class="row">
							<div class="col-md-6 border-right ">
								<div class="form-group">
									<label for="nomeDoAnalista" class="text-left">Nome</label>
									<input id="nomeDoAnalista" name="nomeUsuario" value="" type="text" class="form-control" placeholder="Ex: Joao Patrimonio" required>
								</div>
								<div class="form-group">
									<label for="emailAnalista" class="text-left">E-mail</label>
									<input id="emailAnalista" name="email" value="" type="email" class="form-control" placeholder="Ex: JoaoPatrimonio@gmail.com" required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$">
								</div>
								<div class="form-group">
									<label for="senhaAnalista" class="text-left">Senha</label>
									<input id="senhaAnalista" name="senha" value="" type="password" class="form-control" placeholder="" required>
								</div>
								<div class="form-group">
									<label for="telefone" class="text-left">Telefone</label>
									<input id="telefone" name="telefone" value="" type="text" class="form-control" placeholder="Ex: (11) 99999-9999" required pattern="[0-9]{2}[0-9]{4,6}[0-9]{3,4}$" title="Telefone deve conter DDD e pelo menos 8 digitos. Digite apenas números">
								</div>
								<div class="form-group">
									<label for="celular" class="text-left">Celular</label>
							 		<input id="celular" name="celular" value="" type="text" class="form-control" placeholder="Ex: (11) 99999-9999" required pattern="[0-9]{2}[0-9]{4,6}[0-9]{3,4}$" title="Celular deve conter DDD e pelo menos 8 digitos. Digite apenas números">
								</div>
							</div>
							<div class="col-md-6 ">
							
								<div class="form-group">
									<input type="hidden" name="cargo" value="Administrador" />
								</div>
								<div class="form-group">
									<label for="rg" class="text-left">RG</label>
									<input id="rg" name="rg" value="" type="text" class="form-control" placeholder="Ex: 48.428.478-X" onclick="mascara(this, mrg);"required pattern="[0-9xX]{9,12}$" title="O RG Deve conter de 9 a 12 numeros. Somente numeros">
								</div>
								<div class="form-group">
									<label for="cpf" class="text-left">CPF</label>
									<input id="cpf" name="cpf" value="" type="text" class="form-control" placeholder="Ex: 123.369.987-98" maxlength="14" path="CPF" required pattern="[0-9]{11}$" title="O CPF deve conter 11 numeros. Apenas números!">
											<form:errors	path="usuario.cpf" cssStyle="color:red"/>
								</div>
								<div class="form-group">
									<label for="observacoes" class="text-left">Observações</label>
									<textarea name="observacoes" id="observacoes" cols="30" rows="10" class="form-control" placeholder="Ex: Analista com 5 anos de experiência em Front-End."></textarea>
								</div>
								<div class="form-group">
									<input type="hidden" name="tipoUsuario.idTipoUsuario" value="2" />
								</div>
							</div>
							
							<div class="col-md-12 py-3">
								<a href="listar_Administrador" class="btn btn-sm  pi-btnCancelar float-right px-2">Cancelar</a>
								<!-- <input type="submit" value="Cadastrar"> -->
								<button type="submit" class="btn pi-btn btn-sm  float-right mx-2" value="criar_Administrador">Salvar</button>
							</div>
						</div>
					</form>
                 </div>
             </section>
                 </div>
        	<!-- Fim Painel de Cadastro -->
    	</div>
	</body>
	<script src="js/alertAnalist.js"> </script>
	
</html>