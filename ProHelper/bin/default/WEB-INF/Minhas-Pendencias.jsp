<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//PT-BR"
       "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="pt-BR">
<head>

<title>ProHelper | UFABC</title>

</head>

<body style="background-color: #edf4ed">
	<!-- BARRA SUPERIOR (nome e descricao) -->
	<div id="top"
		style="background-color: Green; border-bottom: solid yellow; padding-left: 10px; padding-top: 5px; width: 100%; display: block">
		<table style="width: 100%">
			<tr>
				<td><h1 style="color: white;">ProHelper</h1></td>
				<td><a href="/sair"><input align="right" name="commit" type="submit"
					value="Sair" /></a></td>
			</tr>
		</table>
	</div>


	<!-- MEIO (Menu lateral, conteÃºdo e feeds) -->
	<div id="main" display="inline">
		<div id="middle;position:relative;">
			<!-- Menu principal lateral -->
			<table style="width: 100%;">
				<td style="width: 320px">
					<div id="menu_lateral" style="margin-top: -5px;">
						<ul style="list-style: none; padding-top: 10px;">
							<li style="padding-bottom: 17px"><div>
									<a href="Minhas-Pendencias"> Minhas Pendências</a>
								</div></li>
							<li style="padding-bottom: 17px"><div>
									<a href="Pendencias-Aberto">Pendencias em aberto</a>
								</div></li>
						</ul>
					</div>
				</td>
				<td>
					<div id="conteudo"
						style="margin-top: -25px; padding-bottom: 15px; padding-left: 15px; padding-right: 15px; border-top: none; border-left: dotted; border-bottom: dotted; border-right: dotted; width: 800px; background-color: white;"">
						<center>
							<h1 style="color: green">Minhas Pendências</h1>
						</center>
						<table border="1">
							<thead>
								<tr>
									<th><b>ID</b></th>
									<th><b>Tipo</b></th>
									<th><b>Descricao</b></th>
									<th><b>Status</b></th>
									<th><b>Materia</b></th>
									<th><b>RG</b></th>
									<th><b>B.O.</b></th>
									<th><b>Solicitante</b></th>
									<th><b>Responsável</b></th>
									<th><b>Ação</b></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${solicits}" var="cc">
									<tr>
										<td><c:out value="${cc.id_solicitacao}"></c:out></td>
										<td><c:out value="${cc.tipo}"></c:out></td>
										<td><c:out value="${cc.descricao}"></c:out></td>
										<td><c:out value="${cc.status}"></c:out></td>
										<td><c:out value="${cc.codMateria}"></c:out></td>
										<td><c:out value="${cc.rg}"></c:out></td>
										<td><c:out value="${cc.urlBO}"></c:out></td>
										<td><c:out value="${cc.aluno.id_aluno}"></c:out></td>
										<td><c:out value="${cc.funcionario.id_funcionario}"></c:out></td>
										<td><a href="/edit/${cc.id_solicitacao}">
												<button type="submit" formtarget="_blank">Editar</button>
										</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</td>
			</table>
</body>
</html>


