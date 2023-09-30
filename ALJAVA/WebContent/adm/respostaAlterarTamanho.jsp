<%@page import="Dao.TamanhoDao"%>
<%@page import="Model.Tamanho"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
boolean resultado = false;
int id = Integer.parseInt(request.getParameter("hidInfo"));
String tamanh = request.getParameter("hidTamanho");
String disponivel = request.getParameter("disponivel");

Tamanho tamanho = new Tamanho();
tamanho.setId_tamanho(id);
tamanho.setTamanho(tamanh);
tamanho.setDisponivel(disponivel);

TamanhoDao tamanhoDao = new TamanhoDao();
resultado = tamanhoDao.AlterarTamanho(tamanho);

if(resultado){ %>
<script language="JavaScript">
	alert('Tamanho Alterado com sucesso!');
	window.location.href="ListarTamanho.jsp"
</script>
<% }else{ %>
<script language="JavaScript">
	alert(' foi possível alterar o tamanho!');
	window.location.href="ListarTamanho.jsp"
</script>
<%} %>



