<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    </form>

    <h2>Se Cadastrar:</h2>
    <form action="cadastro.jsp" method="post">
        Usuário: <input type="text" name="usuario" required><br>
        Senha: <input type="password" name="senha" required><br>
        <input type="submit" value="Cadastrar">
        <a href="index.jsp">Limpar Tudo</a>
        <br>
        <br>
        <a href="index.jsp">Voltar</a>
    </form>
</body>
</html>