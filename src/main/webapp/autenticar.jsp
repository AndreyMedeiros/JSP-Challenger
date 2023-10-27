<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String username = request.getParameter("username");
String password = request.getParameter("password");

// Exemplo simples de autenticação
if (username.equals("admin") && password.equals("admin")) {
	// Autenticação bem-sucedida, redirecionar para a página principal
	response.sendRedirect("pagina-principal.jsp");
} else {
	// Autenticação falhou, redirecionar de volta para a página de login com uma mensagem de erro
	response.sendRedirect("login.jsp");
}
%>