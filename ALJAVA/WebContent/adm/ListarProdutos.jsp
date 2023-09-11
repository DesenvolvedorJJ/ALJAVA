<%@page import="Model.Produto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Dao.ProdutoDao"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/tabelaCliente.css">    
    <!-- FONTWESOME -->
    <script src="https://kit.fontawesome.com/e3e0ab7579.js" crossorigin="anonymous"></script>
	<title>Tela de Listar Produtos</title>
</head>
<body>
<div class="second-column">
                
<form action="#" name="formCliente" id="formCliente" method="POST"> 

<table class="content-table">
            <caption class="tabela"> Tabela Produtos</caption>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>Tipo</th>
                    <th>Descrição</th>
                    <th>Subtitulo</th>
                    <th>Marca</th>
                    <th>Modelo</th>
                    <th>Disponibilidade</th>
                    <th>Preço</th>
                    <th>Alterar</th>
                    <th>Excluir</th>
                </tr>
<%
ProdutoDao produtoDao = new ProdutoDao();
ArrayList<Produto> produto = produtoDao.ArrayListarProduto();
for(Produto p: produto){%>
	<tr>
		<td><%= p.getId_produto() %></td>
		<td><%= p.getNome() %></td>
		<td><%= p.getTipo() %></td>
		<td><%= p.getDescricao() %></td>
		<td><%= p.getHdois() %></td>
		<td><%= p.getMarca() %></td>
		<td><%= p.getModelo() %></td>
		<td><%= p.getDisponibilidade() %></td>
		<td><%= p.getPreco() %></td>
		<td> <a href="alterarProduto.jsp?id_produto=<%=p.getId_produto()%>"> <img src="img/alterar.png" width="20px" height="20px"> </a></td>
		<td> <a href="deletarProduto.jsp?id_produto=<%=p.getId_produto()%>"> <img src="img/excluir.png" width="20px" height="20px"> </a> </td>
	</tr>
<%} %>
	</thead>
</table>

</form>
 </div>
</body>
</html>
