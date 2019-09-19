<jsp:include page = "header.jsp" />
<body>
	<div class="wrapper px-5">
		<jsp:include page="sideBar.jsp" />
		<div id="content  mx-5">
			<!-- navBar -->
			<jsp:include page="navBar.jsp" />
			<section class=" pt-5 px-5">
				<div class="panel pt-5  px-4">
					<div class="painel-heading">
						<h1 class="">Cadastrar Analista</h1>
					</div>
					<hr>
					<form action="criar_Usuario" method="post">
						<div class="row">
							<div class="col-md-6 border-right ">
								<div class="form-group">
									<label for="nomeDoAnalista" class="text-left">Nome</label>
									<input id="nomeDoAnalista" name="nomeUsuario" value="" type="text" class="form-control" placeholder="Ex: Joao Patrimonio" required >
								</div>
								<div class="form-group">
									<label for="emailAnalista" class="text-left">E-mail</label>
									<input id="emailAnalista" name="email" value="" type="text" class="form-control" placeholder="Ex: JoaoPatrimonio@gmail.com" required >
								</div>
								<div class="form-group">
									<label for="senhaAnalista" class="text-left">Senha</label>
									<input id="senhaAnalista" name="senha" value="" type="password" class="form-control" placeholder="" required>
								</div>
								<div class="form-group">
									<label for="telefone" class="text-left">Telefone</label>
									<input id="telefone" name="telefone" value="" type="text" class="form-control cel-sp-mask" maxlength="15" placeholder="Ex: (11) 99999-9999" required  />
								</div>
								<div class="form-group">
									<label for="celular" class="text-left">Celular</label>
							 		<input id="celular" name="celular" value="" type="tel" class="form-control cel-sp-mask"  maxlength="15" data-mask="(00)00000000" data-mask-selectonfocus="true"placeholder="Ex: (11) 99999-9999" required  />
								</div>
							</div>
							<div class="col-md-6 ">
								<div class="form-group">
									<label for="cargo" class="text-left">Cargo</label>
									<input id="cargo" name="cargo" value="" type="text" class="form-control" placeholder="Ex: Analista Junior" required>
								</div>
								<div class="form-group">
									<label for="rgAnalista" class="text-left">RG</label>
									<input id="rgAnalista" name="rg" value="" type="text" class="form-control" placeholder="Ex: 48.428.478-X" onclick="mascara(this, mrg);" required  />
								</div>
								<div class="form-group">
									<label for="cpfAnalista" class="text-left">CPF</label>
									<input id="cpfAnalista" name="cpf" value="" type="text" class="form-control cpf-mask" placeholder="Ex: 123.369.987-98" maxlength="14" path="CPF" required />
											<form:errors	path="usuario.cpf" cssStyle="color:red"/>
								</div>
								<div class="form-group">
									<label for="observacoes" class="text-left">Observações</label>
									<textarea name="observacoes" id="observacoes" cols="30" rows="10" class="form-control" placeholder="Ex: Analista com 5 anos de experiência em Front-End."></textarea>
								</div>
								<div class="form-group">
									<input type="hidden" name="tipoUsuario.idTipoUsuario" value="3" />
								</div>
							</div>
							
							<div class="col-md-12 py-3">
								<a href="listar_Analistas" class="btn btn-sm  pi-btnCancelar float-right px-2">Cancelar</a>
								<!-- <input type="submit" value="Cadastrar"> -->
								<button type="submit" class="btn pi-btn btn-sm  float-right mx-2" value="criar_Usuario">Salvar</button>
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