<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista de Produtos</title>
</head>
<body>
    <h1>Lista de Produtos</h1>

    <ul>
        <%
            ArrayList<Integer> carrinho = (ArrayList<Integer>) session.getAttribute("carrinho");
            HashMap<Integer, String> produtos = new HashMap<Integer, String>();
            produtos.put(11, "Bela Vista");
            produtos.put(12, "Pinheiros");
            produtos.put(13, "Moema");
            produtos.put(14, "Vila Olímpia");
            produtos.put(15, "Vila Madalena");
            produtos.put(16, "Vila Mariana");
            produtos.put(17, "Itaim Bibi");
            produtos.put(18, "Butantã");
            produtos.put(19, "Perdizes");
            produtos.put(20, "Faria Lima");

            if (carrinho == null) {
                carrinho = new ArrayList<Integer>();
            }

            double total = 0.0; // Inicialize a variável total com zero
        %>

        <%
            for (int produtoId = 11; produtoId <= 20; produtoId++) {
                String nomeProduto = produtos.get(produtoId);
                double precoProduto = getPrecoProduto(produtoId);

                // Verifique se o produto está no carrinho
                boolean estaNoCarrinho = carrinho.contains(produtoId);

                if (estaNoCarrinho) {
                    total += precoProduto;
                }
        %>
        <li>
            <%= nomeProduto %> - R$ <%= precoProduto %>
            <form method="post" action="adicionarcarrinho.jsp">
                <input type="hidden" name="produtoId" value="<%= produtoId %>" />
                <%
                    if (!estaNoCarrinho) { // Exibe o botão apenas se o produto não estiver no carrinho
                %>
                <input type="submit" value="Adicionar ao Carrinho" />
                <%
                    }
                %>
            </form>
        </li>
        <br>
        <%
            }
        %>
    </ul>

    <h1>Carrinho de Compras</h1>

    <ul>
        <%
            if (carrinho != null) {
                for (Integer produtoId : carrinho) {
        %>
                <li>Produto: <%= produtos.get(produtoId) %>
                <form method="post" action="removerdocarrinho.jsp">
                    <input type="hidden" name="produtoId" value="<%= produtoId %>" />
                    <input type="submit" value="Remover do Carrinho" />
                </form>
                <br>
        <%
                }
            }
        %>
    </ul>

    <p>Total: R$ <%= total %></p>

	<a href="pagamento.jsp?total=<%= total %>">Ir para o Pagamento</a>

</body>
</html>

<%!
    // Função para obter o preço do produto com base no ID do produto
    public double getPrecoProduto(int produtoId) {
        switch (produtoId) {
            case 11:
                return 91.00;
            case 12:
                return 92.00;
            case 13:
                return 93.00;
            case 14:
                return 94.00;
            case 15:
                return 95.00;
            case 16:
                return 96.00;
            case 17:
                return 97.00;
            case 18:
                return 98.00;
            case 19:
                return 99.00;
            case 20:
                return 100.00;
            default:
                return 0.00;
        }
    }
%>