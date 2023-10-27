<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Finalizar Compra</title>
</head>
<body>
	<h1>Compra Finalizada!</h1>

	<%
	String metodoPagamento = request.getParameter("metodoPagamento");
	%>
      
	<p>
		Sua forma de pagamento foi:
		<%=metodoPagamento%></p>

      Obrigado por Escolher a Enigma para seu lazer, boas férias!
    <br>
	<br>
	<a href="index.jsp">Voltar para tela de Login</a>
</body>
</html>