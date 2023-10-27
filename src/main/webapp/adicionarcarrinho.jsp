<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.HashMap"%>
<%
int produtoId = Integer.parseInt(request.getParameter("produtoId"));
ArrayList<Integer> carrinho = (ArrayList<Integer>) session.getAttribute("carrinho");
HashMap<Integer, String> produtos = (HashMap<Integer, String>) session.getAttribute("produtos");

if (carrinho == null) {
	carrinho = new ArrayList<Integer>();
	session.setAttribute("carrinho", carrinho);
}
carrinho.add(produtoId);

// Certifique-se de definir a HashMap de produtos na sessão antes de usá-la
if (produtos == null) {
	produtos = new HashMap<Integer, String>();
	session.setAttribute("produtos", produtos);
	// Aqui você deve preencher a HashMap de produtos com IDs e nomes
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
	// Adicione outros produtos aqui
}

String nomeProduto = produtos.get(produtoId);
%>

<p>
	Produto
	<%=nomeProduto%>
	Adicionado ao carrinho com sucesso.
</p>

<a href="produtos.jsp">Voltar para a lista de produtos</a>