<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<title>Visualizar Dados do Funcionário</title>
	<link rel="stylesheet" href="<%=application.getContextPath()%>/css/style.css">
</head>
<body>
	<jsp:include page="../../componentes/menu.jsp" />

	<div class="container">
		<h1>Dados do Funcionário</h1>

        <c:set var="funcionario" value="${requestScope.model}" />
        	<c:choose>
              <c:when test="${funcionario != null}">

                <div class="field">
                    <label for="nome">Nome:</label>
                    <span id="nome">${funcionario.nome}</span>
                </div>

                <div class="field">
                    <label for="rg">RG:</label>
                    <span id="rg">${funcionario.rg}</span>
                    <label for="orgao_emissor">Órgão Emissor:</label>
                    <span id="orgao_emissor">${funcionario.orgaoEmissor}</span>
                </div>

                <div class="field">
                    <label for="cpf">CPF:</label>
                    <span id="cpf">${funcionario.orgaoEmissor}</span>
                </div>

                <div class="field">
                    <label for="endereco">Endereço:</label>
                    <span id="endereco">${funcionario.endereco}</span>
                    <label for="complemento">Complemento:</label>
                    <span id="complemento">${funcionario.complemento}</span>
                    <label for="bairro">Bairro:</label>
                    <span id="bairro">${funcionario.bairro}</span>
                    <label for="cidade">Cidade:</label>
                    <span id="cidade">${funcionario.cidade}</span>
                    <label for="estado">Estado:</label>
                    <span id="estado">${funcionario.estado}</span>
                </div>

                <div class="field">
                    <label for="telefone">Telefone:</label>
                    <span id="telefone">${funcionario.telefone}</span>
                    <label for="celular">Celular:</label>
                    <span id="celular">${funcionario.celular}</span>
                </div>

                <div class="field">
                    <label for="ctps">CTPS:</label>
                    <span id="ctps">${funcionario.ctps}</span>
                    <label for="pis">PIS:</label>
                    <span id="pis">${funcionario.pis}</span>
                </div>

                <div class="field">
                    <label for="data_nascimento">Data de Nascimento:</label>
                    <span id="data_nascimento">${funcionario.dataNascimento}</span>
                </div>
	    </c:when>
          <c:otherwise>
    	    <p>Não foi encontrado o registro!</p>
          </c:otherwise>
        </c:choose>
    </div>
</body>
</html>
