<%@page import="Dao.ProdutoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
boolean resultado = false;
ProdutoDao produtoDao = new ProdutoDao();
resultado = produtoDao.DeleteProduto(Integer.parseInt(request.getParameter("id_produto")));
  
if(resultado){ %>
<script language="JavaScript">
	alert('Produto Deletado com sucesso!');
	window.location.href="ListarProduto.jsp"
</script>
<% }else{ %>
<script language="JavaScript">
	alert('Não foi possível deletar o produto!');
	window.location.href="ListarProduto.jsp"
</script>
<%}%>




