<%@page import="Model.Pedido"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Dao.PedidoDao"%>

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
            <caption class="tabela"> Tabela Pedidos</caption>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Data da Compra</th>
                    <th>ID do cliente</th>
                    <th>ID do produto</th>
                    <th>Visualizar informações</th>
                    <th>Excluir</th>
                </tr>
<%
PedidoDao pedidoDao = new PedidoDao();
ArrayList<Pedido> pedido = pedidoDao.ArrayListarPedido();
for(Pedido p: pedido){%>
	<tr>
		<td><%= p.getId_pedido() %></td>
		<td><%= p.getDt_compra() %></td>
		<td><%= p.getId_cliente() %></td>
		<td><%= p.getId_produto() %></td>
		<td> <a href="verPedido.jsp?id_pedido=<%=p.getId_pedido()%>"> <img src="img/ver.png" width="20px" height="20px" > </a></td>
		<td> <a href="deletarPedido.jsp?id_pedido=<%=p.getId_pedido()%>"> <img src="img/excluir.png" width="20px" height="20px"> </a> </td>
	</tr>
<%} %>
	</thead>
</table>

</form>
 </div>
</body>
</html>
