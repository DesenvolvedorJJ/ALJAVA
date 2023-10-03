<%@page import="Dao.PedidoDao"%>
<%@page import="Model.Pedido"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
boolean resultado = false;
String dt = request.getParameter("dt_compra");
int id_cliente = Integer.parseInt(request.getParameter("hidCliente"));
int id_produto = Integer.parseInt(request.getParameter("hidProduto"));
int id_tamanho = Integer.parseInt(request.getParameter("hidInfo"));

Pedido pedido = new Pedido();
pedido.setDt_compra(dt);
pedido.setId_cliente(id_cliente);
pedido.setId_produto(id_produto);
pedido.setId_tamanho(id_tamanho);

PedidoDao pedidoDao = new PedidoDao();
resultado = pedidoDao.InserirPedido(pedido);

if(resultado){ %>
	<form id="clienteForm" action="../Home.jsp" method="POST">
	<input type="hidden" name="id_cliente" value="<%= id_cliente %>">
	</form>
	<script language="JavaScript">
	document.getElementById("clienteForm").submit();
	alert('Pedido Realizado.');
	</script>
<% }else{ %>
<form id="clienteForm" action="../Home.jsp" method="POST">
	<input type="hidden" name="id_cliente" value="<%= id_cliente %>">
	</form>
	<script language="JavaScript">
	document.getElementById("clienteForm").submit();
	alert('Pedido Realizado.');
	</script>
<%} %>
