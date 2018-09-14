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


    <!-- MEIO (Login e senha) -->
    <div id="main" align="center" style="padding-top:50px;">
		<div id="login" style="width: 320px;">
			<form accept-charset="UTF-8" action="/login" method="GET"><div style="margin:0;padding:0;display:inline">
		  <b><p>Login:</br> <input id="login" name="login" type="text" /></p>
		  <p></br>Senha:</br> <input id="senha" name="senha" type="password" /></p>
		  <p></br>Cadastrar: 
		  	<a href="Cadastro-Aluno">Aluno</a> |
			<a href="Cadastro-TA">Tecnico administrativo</a>
		  <p><input name="commit" type="submit" value="login" /></p></b>
		  </form>
	</div>
</div>


  </body>
</html>
 
	
