<%@page import="Dao.PedidoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
boolean resultado = false;
PedidoDao pedidoDao = new PedidoDao();
resultado = pedidoDao.DeletePedido(Integer.parseInt(request.getParameter("id_pedido")));
  
if(resultado){ %>
<script language="JavaScript">
	alert('Pedido Deletado com sucesso!');
	window.location.href="ListarPedidos.jsp"
</script>
<% }else{ %>
<script language="JavaScript">
	alert('Não foi possível deletar o pedido!');
	window.location.href="ListarPedidos.jsp"
</script>
<%}%>




