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

<body>
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
					<div id="menu_lateral" style="margin-top: 0px;">
						<ul style="list-style: none; padding-top: 10px;">
							<li style="padding-bottom: 17px"><div>
									<a href="Trancamento-Matricula"> Trancamento fora de
										periodo</a>
								</div></li>
							<li style="padding-bottom: 17px"><div>
									<a href="Solicitacao-Carteirinha">Segunda via de
										carteirinha</a>
								</div></li>
							<li style="padding-bottom: 17px"><div>
									<a href="Contagem-Creditos">Solicitar Contagem de Creditos</a>
								</div></li>
							<li style="padding-bottom: 17px"><div>
									<a href="Minhas-Solicitacoes">Minhas solicitacoes</a>
								</div></li>
						</ul>
					</div>
				</td>
				<td>
					<div id="conteudo"
						style="margin-top: -25px; padding-bottom: 15px; padding-left: 15px; padding-right: 15px; border-top: none; border-left: dotted; border-bottom: dotted; border-right: dotted; width: 800px; background-color: white;"">
						<center>
							<h1 style="color: green">Minhas solicitações</h1>
						</center>
						<div id="dados">
							<table border="1">
								<thead>
									<tr>
										<th><b>ID</b></th>
										<th><b>Tipo</b></th>
										<th><b>Descricao</b></th>
										<th><b>Status</b></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${solicits}" var="ss">
										<tr>
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
			</table>
</body>
</html>


