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
    <div id="intro" style="background-color:Green;border-bottom: solid yellow;padding-left:10px;padding-top:5px;">
		<h1 style="color:white;">   ProHelper UFABC</h1>
		<p style="font-size:20px;color:yellow;padding-left:15px;"><i>Sua central de solicitacoes para a Prograd</i></p>
  	</div>


    <!-- MEIO (Dados) -->
    <div id="main" style="padding-top:50px;">
		<div id="dados">
		<table style="width:370px">
			<form accept-charset="UTF-8" action="/cadastrar-aluno" method="POST"><div style="margin:0;padding:0;display:inline">
			<tr>
		 		<td>Nome: </td><td> <input id="nome" name="nome" type="text" /></td>
			</tr>
			<tr>
		 		<td>Email: </td><td><input id="email" name="email" type="text" /></td>
			</tr>
		  	<tr>
		 		<td>RA:</td><td>  <input id="ra" name="ra" type="text" /></td>
			</tr>
			<tr>
		 		<td>Usuario:</td><td>  <input id="login" name="login" type="text" /></td>
		  	</tr>
			<tr>
		 		<td>Senha:</td><td>  <input id="senha" name="senha" type="password" /></td>
		  	</tr>
			<tr>
		 		<td>Confirme sua Senha: </td><td> <input id="confirme_senha" name="confirme_senha" type="password" /></td>
		  	</tr>
		</table>
		</br><input name="commit" type="submit" value="Cadastrar" /></p></b>
	</div>
</div>


  </body>
</html>
 
	
