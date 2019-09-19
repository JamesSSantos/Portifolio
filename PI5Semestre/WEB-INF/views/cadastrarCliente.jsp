<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
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
						<h1 class="">Cadastrar Cliente</h1>
					</div>
					<hr>
                    <form action="criar_Cliente" method="post">
						<div class="row">
							<div class="col-md-6 border-right ">
								<label for="nomeDoCliente" class="text-left">Nome do Cliente</label>
                                <input id="nomeDoCliente" name="razaoSocial"  type="text" class="form-control" placeholder="Ex: Ernst & Young" required>
                           
	                        <div class="form-group">
	                        	<label for="cnpj" class="text-left">CNPJ</label>
	                            <input id="cnpj" name="cnpj" type="text" class="form-control" placeholder="Ex: 11.401.709/0001-45"  maxlength="25" required /> 
	                        </div>
							<div class="form-group">
								<form action="checkout-sample" method="POST">
   									CEP <input type="text" class="form-control" placeholder="04180020" name="cep" id="cep" />
  								 	Estado <input type="text" class="form-control" placeholder="São Paulo" name="estado" id="estado" />
   									Cidade <input type="text" class="form-control" placeholder="São Paulo" name="cidade" id="cidade" />
   									Bairro <input type="text" class="form-control" placeholder="Butantã" name="bairro" id="bairro" />
   									Logradouro <input type="text" class="form-control" placeholder="Av. Vital Brasil" name="endereco" id="endereco" />
   									Nº <input type="text" class="form-control" placeholder="666" name="numero" id="numero" />
								</form>
                            </div>
                         
                        </div>
                        <div class="col-md-6 ">
                        	<div class="form-group">
                            	<label for="telefoneCliente" class="text-left">Telefone</label>
                               	<input id="telefoneCliente" name="telefone"  type="tel" class="form-control" phone-ddd-mask maxlength="15" placeholder="Ex: (11) 99999-9999" required />
                           	</div>
                        	<div class="form-group">
                        		<label for="setor" class="text-left">Setor</label>
                        		<select name="setor" id="inputState" class="form-control">
                        			<option selected>Escolha</option>
                        			<option>Indústria</option>
                        			<option>Comércio</option>
                        			<option>Outros</option>
                        		</select>
                        	</div>
                        	<div class="form-group">
                        		<label for="observaçõesCliente" class="text-left">Observações</label>
								<textarea name="observações" id="observaçõesCliente" cols="30" rows="10" class="form-control" placeholder="Ex: Cliente possui 1500 funcionários."></textarea>
			                </div>
			             </div>
	                     <div class="col-md-12 ">
	                     	<a href="listar_Clientes" class="btn btn-md  pi-btnCancelar float-right px-2">Cancelar</a>
			                <button type="submit"  name="criar_Cliente" class="btn pi-btn btn-md  float-right mx-2">Salvar Cliente</button>
			             </div>
			          </div>
		            </form>
		          </div>
		       </section>
		     </div>
		   </div>
		   <jsp:include page = "footer.jsp" />
     	</body>
    </html>