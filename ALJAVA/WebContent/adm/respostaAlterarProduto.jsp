<%@page import="Dao.ProdutoDao"%>
<%@page import="Model.Produto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
boolean resultado = false;
int id = Integer.parseInt(request.getParameter("hidProduto"));
String nome = request.getParameter("nomeProduto");
String tipo = request.getParameter("tipo");
String descricao = request.getParameter("descricao");
String h2 = request.getParameter("h2");
String marca = request.getParameter("marca");
String modelo = request.getParameter("modelo");
String disponibilidade = request.getParameter("disponibilidade");
double preco = Double.parseDouble(request.getParameter("preco"));

Produto produto = new Produto();
produto.setId_produto(id);
produto.setNome(nome);
produto.setTipo(tipo);
produto.setDescricao(descricao);
produto.setHdois(h2);
produto.setMarca(marca);
produto.setModelo(modelo);
produto.setDisponibilidade(disponibilidade);
produto.setPreco(preco);


ProdutoDao produtoDao = new ProdutoDao();
resultado = produtoDao.AlterarProduto(produto);

if(resultado){ %>
<script language="JavaScript">
	alert('Produto Alterado com sucesso!');
	window.location.href="ListarProdutos.jsp"
</script>
<% }else{ %>
<script language="JavaScript">
	alert(' foi possível alterar o produto!');
	window.location.href="ListarProdutos.jsp"
</script>
<%} %>



