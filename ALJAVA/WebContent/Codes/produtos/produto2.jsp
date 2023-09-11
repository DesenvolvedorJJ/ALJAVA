<%@page import="Model.Produto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Dao.ProdutoDao"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" type="text/css" href="../css/produtos.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <title>Produto</title>
</head>

<body>
    <div class="container">
        <div class="imagem">
            <img src="../images/shoe-2.png" alt="Imagem do Produto">
        </div>
        <div class="informacoes">
        <%
			    ProdutoDao produtoDao = new ProdutoDao();
			    ArrayList<Produto> produtos = produtoDao.ArrayListarProduto();
			
			    for (Produto p : produtos) {
			        if (p.getId_produto() == 2) {
			%>
			            <h1><%= p.getNome() %></h1>
			            <h2><strong><%= p.getHdois() %></strong></h2>
			            <p>Marca: <strong><%= p.getMarca() %></strong><br>
			                Modelo: <strong><%= p.getModelo() %></strong><br>
			                Disponibilidade: <strong><%= p.getDisponibilidade() %></strong></p>
			            <div class="precos">
			                <span class="preco"><strong>R$ <%= p.getPreco() %></strong></span>
			            </div>
			<%
			        }
			    }
			%>
            <div class="opcoes">
                <form id="carrinhoForm" action="ProdutoCarrinho.jsp" method="post">
                    <input type="hidden" name="numero" value="36">
                    <a href="URL_DA_PAGINA_DE_CARRINHO_AQUI" 
                    class="botao" 
                    onclick="document.getElementById('carrinhoForm').submit();"> 
                        Adicione ao carrinho
                    </a>
                </form>
            </div>
        </div>
    </div>

    
</body>
</html>
