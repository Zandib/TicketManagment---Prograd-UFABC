<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8" />
<title>Editar Solicitacao</title>
</head>
<body>
	<table border="1">
		<thead>
			<tr>
				<th><b>ID</b></th>
				<th><b>Email</b></th>
				<th><b>Nome</b></th>
				<th><b>Ação</b></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${funcionarios}" var="cc">
				<tr>
					<td><c:out value="${cc.id_funcionario}"></c:out></td>
					<td><c:out value="${cc.email}"></c:out></td>
					<td><c:out value="${cc.nome}"></c:out></td>
					<td><a href="/Set-Funcionario/${id_solicitacao}/${cc.id_funcionario}">
							<button type="submit" formtarget="_blank">Atribuir</button>
					</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>