<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

<%
    String usuarioLogado = (String) session.getAttribute("usuarioLogado");

    if (usuarioLogado != null) {
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Bem-Sucedido</title>
</head>
<body>
    <h2>Login bem-sucedido! Bem-vindo, <%= usuarioLogado %>!</h2>
    <br>
    <a href="produtos.jsp">Ir para Produtos</a>  
    <br>
    <br>
     <a href="index.jsp">Voltar</a>
</body>
</html>
<%
    } else {
        // Redireciona para a página de erro se o nome do usuário não estiver na sessão
        response.sendRedirect("login-erro.jsp");
    }
%>
