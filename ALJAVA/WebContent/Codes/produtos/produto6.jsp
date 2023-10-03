<%@page import="Model.Cliente"%>
<%@page import="Model.Produto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Dao.ProdutoDao"%>
<%@page import="Dao.ClienteDao"%>

<%
ClienteDao clientedao = new ClienteDao();
Cliente cliente = new Cliente();
cliente = clientedao.ListarClienteID(Integer.parseInt(request.getParameter("id_cliente")));
%>

<%
ProdutoDao produtodao = new ProdutoDao();
Produto produto = new Produto();
produto = produtodao.ListarProdutoID(Integer.parseInt(request.getParameter("id_produto")));
%>

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
            <img src="../images/bag-3.png" alt="Imagem do Produto">
        </div>
        <div class="informacoes">
        <%
			    ProdutoDao produtoDao = new ProdutoDao();
			    ArrayList<Produto> produtos = produtoDao.ArrayListarProduto();
			
			    for (Produto p : produtos) {
			        if (p.getId_produto() == 6) {
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
                
                <form id="carrinhoForm" action="../pedidos/Pedido.jsp" method="post">
				  <input type="hidden" name="id_cliente" value="<%=cliente.getId_cliente()%>">
				  <input type="hidden" name="id_produto" value="<%=produto.getId_produto()%>">
				  <input type="hidden" name="id_tamanho" value="12">
				  <button class="botao" type="submit">Comprar</button>
				</form>
				
            </div>
        </div>
    </div>	
	
	</body>
</html>
			           