<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="br.edu.ufabc.ProHelper.model.dao.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//PT-BR"
       "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="pt-BR">
<head>
<link href="resources/estilomenus.css" rel="stylesheet" type="text/css">
<link href="resources/estilohead.css" rel="stylesheet" type="text/css">
<link href="resources/estilotables.css" rel="stylesheet" type="text/css">
<link href="resources/estiloinput.css" rel="stylesheet" type="text/css">
<title>ProHelper | UFABC</title>

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


	<!-- MEIO (Menu lateral, conteudo e feeds) -->
	<div id="main" class="AllContent">
		<!-- Menu principal lateral -->
		<table>
			<tr>
				<td id="menu">
					<ul>
						<li><a href="Trancamento-Matricula"> Trancamento fora de
								periodo</a></li>
						<li><a href="Solicitacao-Carteirinha">Segunda via de
								carteirinha</a></li>
						<li><a href="Contagem-Creditos">Solicitar Contagem de
								Creditos</a></li>
						<li><a href="Minhas-Solicitacoes">Minhas solicitacoes</a></li>
					</ul>
				</td>
				<td id="conteudo">
					<center>
						<h1 style="color: green">Minhas solicitações</h1>
					</center>
					<div id="dados">
						<table>
							<thead>
								<tr>
									<th><b>ID</b></th>
									<th><b>Tipo</b></th>
									<th><b>Descricao</b></th>
									<th><b>Status</b></th>
								</tr>
							</thead>
							<tbody id="teste">
								<c:forEach items="${solicits}" var="ss">
									<tr
										onclick="detalhar(${ss.id_solicitacao},${ss.tipo},'${ss.descricao}','${ss.status}','${ss.codMateria}','${ss.rg}','${ss.urlBO}')">
										<td><c:out value="${ss.id_solicitacao}"></c:out></td>
										<td><c:out value="${ss.tipo}"></c:out></td>
										<td><c:out value="${ss.descricao}"></c:out></td>
										<td><c:out value="${ss.status}"></c:out></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</td>
				<td id="vazio"></td>
			</tr>
		</table>
	</div>
	<script type="application/javascript">		
	function detalhar(id,tipo,descricao,status,codMateria,rg,bo){
		var detalhes="";
		detalhes += "ID: " + id;
		if(tipo == "1")
			detalhes += "\nTipo: Trancamento fora do periodo";
		if(tipo == "2")
			detalhes += "\nTipo: Solicitacao de segunda via de carteirinha";
		if(tipo == "3")
			detalhes += "\nTipo: Contagem de creditos";
		detalhes += "\nDescricao: " + descricao;
		detalhes += "\nStatus: " + status;
		if(codMateria.length>0)
			detalhes += "\nMateria: " + codMateria;
		if(rg.length>0)
			detalhes += "\nRG: " + rg;
		if(bo.length>0)
			detalhes += "\nBO: " + bo;

		alert(detalhes);
 	}
	</script>
</body>
</html>


