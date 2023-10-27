<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Remover do Carrinho</title>
</head>
<body>
    <%
        int produtoId = Integer.parseInt(request.getParameter("produtoId"));
        ArrayList<Integer> carrinho = (ArrayList<Integer>) session.getAttribute("carrinho");
        
        if (carrinho != null) {
            carrinho.remove(Integer.valueOf(produtoId)); // Remove o produto do carrinho
        }
    %>
    
    <p>Produto removido do carrinho com sucesso.</p>
    
    <a href="produtos.jsp">Voltar para a lista de produtos</a>
</body>
</html>