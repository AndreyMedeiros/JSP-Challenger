<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Página de Acesso</title>
<script>
	// Função para redirecionar para a página de verificação dos produtos após 5 segundos
	function redirecionarParaVerificacao() {
		setTimeout(function() {
			window.location.href = "produtos.jsp";
		}, 5000); // 5000 milissegundos = 5 segundos
	}

	// Chamar a função de redirecionamento quando a página for carregada
	window.onload = redirecionarParaVerificacao;
</script>
</head>
<body>
	<h1>Página de Acesso</h1>
	<p>Seu acesso ao sistema foi autorizado com sucesso!</p>
	<p>Bem-vindo(a)!</p>
</body>
</html>