<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Página de Login</title>
</head>
<body>
    <h2>O Que deseja fazer ?</h2><br>
    <h2>Logar:</h2>
    <form action="login.jsp" method="post">
        Usuário: <input type="text" name="usuario" required><br>
        Senha: <input type="password" name="senha" required><br>
        <input type="submit" value="Login">
         <a href="Cadastre-se.jsp">Cadastrar</a>
    
</body>
</html>
