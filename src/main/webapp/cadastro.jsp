<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

<%
    String usuario = request.getParameter("usuario");
    String senha = request.getParameter("senha");

    // Simulação de um banco de dados com usuários cadastrados (lista em memória)
    List<String> usuarios = (List<String>) application.getAttribute("usuarios");

    if (usuarios == null) {
        usuarios = new ArrayList<>();
        application.setAttribute("usuarios", usuarios);
    }

    if (!usuarios.contains(usuario)) {
        usuarios.add(usuario);
        response.sendRedirect("cadastro-sucesso.jsp");
    } else {
        response.sendRedirect("cadastro-erro.jsp");
    }
%>
