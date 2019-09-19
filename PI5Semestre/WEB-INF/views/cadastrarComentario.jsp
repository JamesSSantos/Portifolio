<jsp:include page="header.jsp" />
<body>
		<div class="wrapper px-5 ">
		<jsp:include page="sideBarAnalista.jsp" />
		<div id="content mx-5">
			<!-- navBar -->
			<jsp:include page="navBar.jsp" />
			
			<div class=" px-5 pt-5 panel">
				<div class=" pt-5 painel-heading media-padX">
					<h3>Comentário</h3>
				</div>
				<hr>
				<form action="criar_comentario" method="post">
					<div class="row">
						<div class="col-12 border-right ">
							<div class="form-group">
								<input name="assuntoComentario" id="comentario"
									placeholder="Assunto do Comentario" maxlength="15"></input>
							</div>
							<div class="form-group">
							
								<textarea name="comentario" id="comentario" cols="30"
									rows="10" class="form-control"
									placeholder="Ex: Analista com 5 anos de experiência em Front-End." maxlength="200"></textarea>
							</div>

							<div class="form-group">
								<input type="hidden" name="idDemanda"
									value="${demanda.idDemanda }" />
							</div>
						</div>

						<!-- <div class="col-md-12">
							<input type="submit" />
						</div> -->
						<div class="col-12 ">
								<a href="visualizar_demanda?idDemanda=${demanda.idDemanda }" class="btn btn-sm  pi-btnCancelar  float-right px-2">Cancelar</a>
		                        <button class="btn pi-btn btn-sm  float-right mx-2" name="criar_Projeto" onclick="projCreated()" value="criar_Cometario">Salvar</button>
							</div>
					</div>
				</form>
			</div>
			
		</div>
		<!-- Fim Painel de Cadastro -->
	</div>
</body>
<script src="js/alertAnalist.js"> </script>
</html>