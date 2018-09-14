<%@ page language="java" contentType="text/html;"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//PT-BR"
       "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html dir="ltr" lang="pt-BR">
<head>
<link href="resources/estilohead.css" rel="stylesheet" type="text/css">
<link href="resources/estiloinput.css" rel="stylesheet" type="text/css">
<title>ProHelper | UFABC</title>

</head>
<body>
	<!-- BARRA SUPERIOR (nome e descricao) -->
	<div id="top" class="HeaderGrande">
		<h1>ProHelper UFABC</h1>
		<p>
		<h4>
			<i>Sua central de solicitacoes para a Prograd</i>
		</h4>
	</div>

	<!-- MEIO (Login e senha) -->
	<div id="login" class="MenuLogin">
			<h4>${message}</h4>
			<form accept-charset="UTF-8" action="/login" method="POST">
				<p>Login:</p>
				<p>
					<input id="login" name="login" type="text" />
				</p>
				<p>Senha:</p>
				<p>
					<input id="senha" name="senha" type="password" />
				</p>
				
				<input name="commit" type="submit" value="Login" /> <br></br>
				
				<p>Cadastrar:</p>
				<p>
					<a href="Cadastro-Aluno">Aluno</a>
				</p>
				<p>
					<a href="Cadastro-TA">Funcionário</a>
				</p>
				
			</form>
	</div>
</body>
</html>


