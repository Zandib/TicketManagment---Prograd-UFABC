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
	<table border="1" style="width: 370px">
		<form accept-charset="UTF-8" action="/editar" method="POST">
			<div style="margin: 0; padding: 0; display: inline">
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
			<td><input id="status" name="status" type="text"
				value="${cc.status}" style="width: 370px" /></td>
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
			<td border="0"><a href="/Procurar-Aluno/${cc.id_solicitacao}"><img
					src="https://vignette.wikia.nocookie.net/coasterpedia/images/5/58/Magnifying_glass.png/revision/latest?cb=20130222162701"
					alt="lookup" height="42" width="42"></a></td>
		</tr>
		<tr>
			<td>Responsável:</td>
			<td><input id="responsavel" name="responsavel" type="text"
				value="${cc.funcionario.id_funcionario}" style="width: 370px"
				readonly /></td>
			<td border="0"><a
				href="/Procurar-Funcionario/${cc.id_solicitacao}"><img
					src="https://vignette.wikia.nocookie.net/coasterpedia/images/5/58/Magnifying_glass.png/revision/latest?cb=20130222162701"
					alt="lookup" height="42" width="42"></a></td>
		</tr>
	</table>
	</br>
	<input name="commit" type="submit" value="Editar" />
	</form>
</body>
</html>