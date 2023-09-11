<%@page import="Dao.ClienteDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
boolean resultado = false;
ClienteDao clientedao = new ClienteDao();
resultado = clientedao.DeleteCliente(Integer.parseInt(request.getParameter("idcliente")));
  
if(resultado){ %>
<script language="JavaScript">
	alert('Cliente Deletado com sucesso!');
	window.location.href="ListarCliente.jsp"
</script>
<% }else{ %>
<script language="JavaScript">
	alert('Não foi possível deletar o cliente!');
	window.location.href="ListarCliente.jsp"
</script>
<%}%>




