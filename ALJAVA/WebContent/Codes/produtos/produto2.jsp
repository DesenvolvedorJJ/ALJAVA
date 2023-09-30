<%@page import="Model.Produto"%>
<%@page import="Model.Tamanho"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Dao.ProdutoDao"%>
<%@page import="Dao.TamanhoDao"%>

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
			            
				<div class="tamanho-container">
				                <!-- Botões de tamanho -->
				                <%
				                TamanhoDao[] tamanhodao = new TamanhoDao[13];
				                Tamanho[] tamanhos = new Tamanho[13];
				
				                for (int i = 0; i < 13; i++) {
				                    tamanhodao[i] = new TamanhoDao();
				                    tamanhos[i] = tamanhodao[i].ListarTamanhoID(i + 1);
				                }
				
								%>
				               
				<% for (int i = 0; i < 13; i++) { %>
				    <div class="tamanho-btn" id="tamanho-btn" value="<%= tamanhos[i].getId_tamanho()%>" 
				    onclick="tamanho(<%= tamanhos[i].getId_tamanho()%>)">
				        <%= tamanhos[i].getTamanho() %>
				    </div>
				<% } %>

				            </div>
				            
			            <div class="precos">
			                <span class="preco"><strong>R$ <%= p.getPreco() %></strong></span>
			            </div>
			<%
			        }
			    }
			%>

            <div class="opcoes">
                <form id="carrinhoForm" action="../pedidos/Pedido.jsp?idcliente=1&id_produto=<%=produto.getId_produto()%>" method="post">
                    
                    <input type="hidden" name="id_tamanho" id="id_tamanho">
                    
                    
           <button class="botao" type="submit" >Comprar</button>

                </form>
            </div>
        </div>
    </div>

    <script>
    const tamanhoBtns = document.querySelectorAll('.tamanho-btn');

    tamanhoBtns.forEach(btn => {
        btn.addEventListener('click', function() {
            // Remova a classe 'selecionado' de todos os botões
            tamanhoBtns.forEach(btn => {
                btn.classList.remove('selecionado');
            });

            // Adicione a classe 'selecionado' ao botão clicado
            this.classList.add('selecionado');

        });
    });
    function tamanho(valor) {
    	
    	  document.getElementById("id_tamanho").value = String(valor);
		
	}
	</script>
	
	
</body>
</html>
				