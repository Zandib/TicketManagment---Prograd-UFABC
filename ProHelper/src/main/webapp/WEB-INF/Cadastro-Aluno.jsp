<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
<link href="resources/estilomenus.css" rel="stylesheet" type="text/css">
<link href="resources/estilohead.css" rel="stylesheet" type="text/css">
<link href="resources/estilotables.css" rel="stylesheet" type="text/css">
<link href="resources/estiloinput.css" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<title>ProHelper | UFABC</title>

</head>

<body id="Cadastrar">
	<!-- BARRA SUPERIOR (nome e descricao) -->
	<div id="top" class="HeaderGrande">
		<h1>ProHelper UFABC</h1>
		<p>
		<h4>
			<i>Sua central de solicitacoes para a Prograd</i>
		</h4>
	</div>
	


	<!-- MEIO (Dados) -->
	<div id="main" class="MenuCadastro">
			<form:form accept-charset="UTF-8" action="/cadastrar-aluno"
				method="POST">
				<table>
					<tr>
						<td>Nome:</td>
						<td><input id="nome" name="nome" type="text" /></td>
					</tr>
					<tr>
						<td>Email:</td>
						<td><input id="email" name="email" type="text" /></td>
					</tr>
					<tr>
						<td>RA:</td>
						<td><input id="ra" name="ra" type="text" /></td>
					</tr>
					<tr>
						<td>Usuario:</td>
						<td><input id="login" name="login" type="text" /></td>
					</tr>
					<tr>
						<td>Senha:</td>
						<td><input id="senha" name="senha" type="password" /></td>
					</tr>
					<tr>
						<td>Confirme sua Senha:</td>
						<td><input id="confirme_senha" name="confirme_senha"
							type="password" /></td>
					</tr>
				</table>
				<br>
				<input name="commit" type="submit" value="Cadastrar"
					onclick="return check()" />
			</form:form>
		</div>
	</div>

	<script type="text/javascript">
		function check() {
			var aa = ${alunos};
			var ff = ${funcionarios};
			if (!document.getElementById('nome').value
					|| !document.getElementById('email').value
					|| !document.getElementById('ra').value
					|| !document.getElementById('login').value
					|| !document.getElementById('senha').value
					|| !document.getElementById('confirme_senha').value){
				alert('Todos os campos são obrigatórios');
				return false;
			}
			else if(document.getElementById('senha').value != document
					.getElementById('confirme_senha').value){
				alert("Os campos \"Senha\" e \"Confirme sua Senha\" devem ser iguais");
				return false;
			}
			var i;
			for(i=0;i<aa.length;i++)	
				if(aa[i] == document.getElementById('login').value){
					alert("Login já utilizado!");
					return false;
				}
			for(i=0;i<ff.length;i++)
				if(ff[i] == document.getElementById('login').value){
					alert("Login já utilizado!");
					return false;
				}
			alert("Cadastro realizado!");
			return true;
		}
	</script>

</body>
</html>


