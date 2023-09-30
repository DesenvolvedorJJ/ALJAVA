<%@page import="Dao.TamanhoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
boolean resultado = false;
TamanhoDao tamanhoDao = new TamanhoDao();
resultado = tamanhoDao.DeleteTamanho(Integer.parseInt(request.getParameter("id_tamanho")));
  
if(resultado){ %>
<script language="JavaScript">
	alert('Tamanho Deletado com sucesso!');
	window.location.href="ListarTamanho.jsp"
</script>
<% }else{ %>
<script language="JavaScript">
	alert('Não foi possível deletar o tamanho!');
	window.location.href="ListarTamanho.jsp"
</script>
<%}%>




