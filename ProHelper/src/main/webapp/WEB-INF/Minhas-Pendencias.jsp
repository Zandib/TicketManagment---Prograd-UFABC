<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//PT-BR"
       "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html dir="ltr" lang="pt-BR">
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


	<!-- MEIO (Menu lateral, conteúdo e feeds) -->
	<div id="main" class="AllContent">
		<!-- Menu principal lateral -->
		<table>
			<tr>
				<td id="menu">
					<ul>
						<li style="padding-bottom: 17px"><div>
								<a href="Minhas-Pendencias"> Minhas Pend�ncias</a>
							</div></li>
						<li style="padding-bottom: 17px"><div>
								<a href="Pendencias-Aberto">Pendencias em aberto</a>
							</div></li>
						<li style="padding-bottom: 17px"><div>
								<a href="Solicitacoes-Concluidas">Solicita��es conclu�das</a>
							</div></li>
					</ul>
				</td>
				<td id="conteudo">
					<center>
						<h1 style="color: green">Minhas Pend�ncias</h1>
					</center>
					<div id="dados">
						<table>
							<thead>
								<tr>
									<th><b>ID</b></th>
									<th><b>Tipo</b></th>
									<th><b>Descricao</b></th>
									<th><b>Status</b></th>
									<th><b>Solicitante</b></th>
									<th><b>Respons�vel</b></th>
									<th><b>A��o</b></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${solicits}" var="cc">
									<tr>
										<td><c:out value="${cc.id_solicitacao}"></c:out></td>
										<td><c:out value="${cc.tipo}"></c:out></td>
										<td><c:out value="${cc.descricao}"></c:out></td>
										<td><c:out value="${cc.status}"></c:out></td>
										<td id="id_aluno"><c:out value="${cc.aluno.nome}"></c:out></td>
										<td id="id_funcionario"><c:out
												value="${cc.funcionario.nome}"></c:out></td>
										<td><a href="/edit/${cc.id_solicitacao}">
												<button type="submit">Editar</button>
										</a></td>
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
</body>
</html>


