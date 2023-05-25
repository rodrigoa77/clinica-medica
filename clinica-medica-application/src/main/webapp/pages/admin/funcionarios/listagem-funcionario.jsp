<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
	<title>Listagem de Funcionários</title>
	<link rel="stylesheet" href="<%=application.getContextPath()%>/css/style.css">
</head>
<body>

    <%@ include file="../../componentes/menu.jsp" %>

    <%@ include file="../../componentes/mensagens.jsp" %>

    <a href="<%=application.getContextPath()%>/pages/admin/funcionarios/cadastrar-funcionario.jsp" class="button">Adicionar funcionário</a>

	<h2>Listagem de Funcionários</h2>
	<c:set var="funcionarios" value="${requestScope.model}" />
	<c:choose>
      <c:when test="${fn:length(funcionarios) > 0}">
	<table>
		<thead>
			<tr>
				<th>Nome</th>
				<th>Cidade</th>
				<th>Estado</th>
				<th>Telefone</th>
				<th>Celular</th>
				<th>Número da CTPS</th>
				<th>Número do PIS</th>
				<th>Data de Nascimento</th>
				<th>Ações</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="funcionario" items="${funcionarios}">
			<tr>
				<td>${funcionario.nome}</td>
				<td>${funcionario.cidade}</td>
				<td>${funcionario.estado}</td>
				<td>${funcionario.telefone}</td>
				<td>${funcionario.celular}</td>
				<td>${funcionario.ctps}</td>
				<td>${funcionario.pis}</td>
				<td>${funcionario.dataNascimento}</td>
				<td>
                    <a href="atualizarFuncionarioServlet?id=${funcionario.id}" class="button">Editar </a>
                    <a href="visualizacaoFuncionarioServlet?id=${funcionario.id}" class="button">Visualizar </a>
                    <a href="excluirFuncionarioServlet?id=${funcionario.id}" class="button">Excluir </a>
				</td>
			</tr>
        </c:forEach>
		</tbody>
	</table>
	</c:when>
      <c:otherwise>
	    <p>Não foram encontrados registros!</p>
      </c:otherwise>
    </c:choose>
</body>
</html>
