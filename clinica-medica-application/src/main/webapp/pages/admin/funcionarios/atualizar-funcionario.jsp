<!DOCTYPE html>
<html>
<head>
	<title>Atualização do Funcionário</title>
	<link rel="stylesheet" href="<%=application.getContextPath()%>/css/style.css">
</head>
<body>
    <%@ include file="../../componentes/menu.jsp" %>

    <%@ include file="../../componentes/mensagens.jsp" %>

    <c:choose>
      <c:when test="${requestScope.model == null}">
        <c:set var="funcionario" value="${requestScope.model}" />
      </c:when>
      <c:otherwise>
        <p>Não foi encontrado o registro!</p>
      </c:otherwise>
    </c:choose>

	<form action="atualizarFuncionarioServlet" method="post">
	    <p class="obrigatorio-mensagem">* - campos obrigatórios</p>
		<h2>Cadastro de Funcionário</h2>
		<label for="nome"><span class="obrigatorio"/>Nome do Funcionário:</label>
		<input type="text" id="nome" name="nome" required value='<%=(request.getParameter("nome")!=null && !messagesArrayList.isNovoFormulario()) ? request.getParameter("nome") : "" %>'><br>

		<label for="rg"><span class="obrigatorio"/>Número do RG:</label>
		<input type="text" id="rg" name="rg" required value='<%=(request.getParameter("rg")!=null && !messagesArrayList.isNovoFormulario()) ? request.getParameter("rg") : "" %>'><br>

		<label for="orgao_emissor"><span class="obrigatorio"/>Órgão Emissor:</label>
		<input type="text" id="orgao_emissor" name="orgao_emissor" required value='<%=(request.getParameter("orgao_emissor")!=null && !messagesArrayList.isNovoFormulario()) ? request.getParameter("orgao_emissor") : "" %>'><br>

		<label for="cpf"><span class="obrigatorio"/>Número do CPF:</label>
		<input type="text" id="cpf" name="cpf" pattern="^\d{3}\.\d{3}\.\d{3}-\d{2}$" required placeholder="999.999.999-99" value='<%=(request.getParameter("cpf")!=null && !messagesArrayList.isNovoFormulario()) ? request.getParameter("cpf") : "" %>'><br>

		<label for="endereco">Endereço:</label>
		<input type="text" id="endereco" name="endereco" value='<%=(request.getParameter("endereco")!=null && !messagesArrayList.isNovoFormulario()) ? request.getParameter("endereco") : "" %>'><br>

		<label for="numero_complemento">Número Complemento:</label>
		<input type="text" id="numero_complemento" name="numero_complemento" value='<%=(request.getParameter("numero_complemento")!=null && !messagesArrayList.isNovoFormulario()) ? request.getParameter("numero_complemento") : "" %>'><br>

		<label for="bairro">Bairro:</label>
		<input type="text" id="bairro" name="bairro" value='<%=(request.getParameter("bairro")!=null && !messagesArrayList.isNovoFormulario()) ? request.getParameter("bairro") : "" %>'><br>

		<label for="cidade">Cidade:</label>
		<input type="text" id="cidade" name="cidade" value='<%=(request.getParameter("cidade")!=null && !messagesArrayList.isNovoFormulario()) ? request.getParameter("cidade") : "" %>'><br>

		<label for="estado">Estado:</label>
		<input type="text" id="estado" name="estado" value='<%=(request.getParameter("estado")!=null && !messagesArrayList.isNovoFormulario()) ? request.getParameter("estado") : "" %>'><br>

		<label for="telefone">Telefone:</label>
		<input type="text" id="telefone" name="telefone" value='<%=(request.getParameter("telefone")!=null && !messagesArrayList.isNovoFormulario()) ? request.getParameter("telefone") : "" %>'><br>

		<label for="celular"><span class="obrigatorio"/>Celular:</label>
		<input type="text" id="celular" name="celular" placeholder="(XX)XXXX-XXXX" pattern="^\(?\d{2}\)?[-.\s]?\d{4,5}[-.\s]?\d{4}$" required value='<%=(request.getParameter("celular")!=null && !messagesArrayList.isNovoFormulario()) ? request.getParameter("celular") : "" %>'><br>

		<label for="ctps">Número da CTPS:</label>
		<input type="text" id="ctps" name="ctps" value='<%=(request.getParameter("ctps")!=null && !messagesArrayList.isNovoFormulario()) ? request.getParameter("ctps") : "" %>'><br>

		<label for="pis">Número do PIS:</label>
		<input type="text" id="pis" name="pis" value='<%=(request.getParameter("pis")!=null && !messagesArrayList.isNovoFormulario()) ? request.getParameter("pis") : "" %>'><br>

		<label for="data_nascimento"><span class="obrigatorio"/>Data de Nascimento:</label>
		<input type="date" id="data_nascimento" name="data_nascimento" required value='<%=(request.getParameter("data_nascimento")!=null && !messagesArrayList.isNovoFormulario()) ? request.getParameter("data_nascimento") : "" %>'>
		<br>
        <br>

		<input type="submit" value="Enviar">
	</form>
</body>
</html>
