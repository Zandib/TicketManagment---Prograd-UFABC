<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="../resources/estilomenus.css" rel="stylesheet" type="text/css">
<link href="../resources/estilohead.css" rel="stylesheet" type="text/css">
<link href="../resources/estilotables.css" rel="stylesheet" type="text/css">
<link href="../resources/estiloinput.css" rel="stylesheet" type="text/css">
<title>Editar Solicitacao</title>
</head>

<body>
	<!-- BARRA SUPERIOR (nome e descricao) -->
	<div id="top" class="HeaderPequeno">
		<table>
			<tr>
				<td><h1>ProHelper</h1></td>
				<td style="text-align: right;"><a href="/sair"><button
							type="submit">Sair</button></a></td>
			</tr>
		</table>
	</div>


	<div id="main" class="MenuCadastro">
		<form accept-charset="UTF-8" action="/editar" method="POST">
			<table border="1" style="width: 370px">
				<tr>
					<td>Id:</td>
					<td><input id="id" name="id" type="text"
						value="${cc.id_solicitacao}" style="width: 370px" readonly /></td>
				</tr>
				<tr>
					<td>Tipo:</td>
					<td><input id="tipo" name="tipo" type="text"
						value="${cc.tipo}" style="width: 370px" /></td>
				</tr>
				<tr>
					<td>Descricao:</td>
					<td><input id="descricao" name="descricao" type="text"
						value="${cc.descricao}" style="width: 370px" /></td>
				</tr>
				<tr>
					<td>Status:</td>
					<td><select id="status" name="status">
							<option value="${cc.status}">${cc.status}</option>
							<option value="Aberta">Aberta</option>
							<option value="Em analise">Em análise</option>
							<option value="Aguardando aprovação">Aguardando
								aprovação</option>
							<option value="Concluido">Concluido</option>
					</select></td>
				</tr>
				<tr>
					<td>Materia:</td>
					<td><input id="materia" name="materia" type="text"
						value="${cc.codMateria}" style="width: 370px" readonly /></td>
				</tr>
				<tr>
					<td>RG:</td>
					<td><input id="rg" name="rg" type="text" value="${cc.rg}"
						style="width: 370px" /></td>
				</tr>
				<tr>
					<td>B.O.:</td>
					<td><input id="bo" name="bo" type="text" value="${cc.urlBO}"
						style="width: 370px" /></td>
				</tr>
				<tr>
					<td>Solicitante:</td>
					<td><input id="solicitante" name="solicitante" type="text"
						value="${cc.aluno.id_aluno}" style="width: 370px" readonly /></td>
				</tr>
				<tr>
					<td>Responsavel:</td>
					<td><select id="responsavel" name="responsavel">
							<option value="${cc.funcionario.nome} - ${cc.funcionario.email}">${cc.funcionario.nome}
								- ${cc.funcionario.email}</option>
							<c:forEach items="${funcionarios}" var="ff">
								<option value="${ff.nome} - ${ff.email}"><c:out
										value="${ff.nome} - ${ff.email}"></c:out></option>
							</c:forEach>
					</select></td>
				</tr>
			</table>
			<br> <input name="commit" type="submit" value="Editar" />
		</form>
	</div>
</body>
</html>