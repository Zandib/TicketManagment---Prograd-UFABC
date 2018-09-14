<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
						<h1 style="color: green">Contagem de Créditos</h1>
					</center>
					<h4>Indique o curso que deseja solicitar a contagem de
						créditos.</h4>
					<form accept-charset="UTF-8" action="/solicitar/3" method="POST">
						<h4>Curso:</h4>
						<input name="curso" type="text" size="80"> <br></br> <input
							name="submeter" type="submit" value="Enviar">
					</form>
				</td>
				<td id="vazio"></td>
			</tr>
		</table>
	</div>
</body>
</html>


