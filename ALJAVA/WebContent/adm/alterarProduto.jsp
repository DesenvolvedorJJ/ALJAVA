<%@page import="Model.Produto"%>
<%@page import="Dao.ProdutoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
ProdutoDao produtodao = new ProdutoDao();
Produto produto = new Produto();
produto = produtodao.ListarProdutoID(Integer.parseInt(request.getParameter("id_produto")));
%>
<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/alterar.css">

<title>Formulario de Alteração de Produto</title>
</head>
<body>
	 <div class="second-column">
                <h2 class="title title-second">Alterar Produto</h2>
                   
				<form id="formProduto" name="formProduto" method="POST" action="respostaAlterarProduto.jsp">
                    
                    <label class="label-input" for="">
                        <i class=""></i>
                        <input type="text" name="idProduto" id="idProduto" disabled="disabled" value="<%=produto.getId_produto()%>">
                        <input type="hidden" name="hidProduto" id="hidProduto" value="<%=produto.getId_produto()%>">
                    </label>
                    
                    <label class="label-input" for="">
                        <i class=""></i>
                        <input type="text" name="nomeProduto" id="nomeProduto" value="<%=produto.getNome()%>">
                    </label>

                    <label class="label-input" for="">
                        <i class=""></i>
                        <input type="text" name="tipo" id="tipo" value="<%=produto.getTipo()%>">
                    </label>

                    <label class="label-input" for="">
                        <i class=""></i>
                        <input type="text" name="descricao" id="descricao" value="<%=produto.getDescricao()%>">
                    </label>

                    <label class="label-input" for="">
                        <i class=""></i>
                        <input type="text" name="h2" id="h2" value="<%=produto.getHdois()%>">
                    </label>

                    <label class="label-input" for="">
                        <i class=""></i>
                        <input type="text" name="marca" id="marca" value="<%=produto.getMarca()%>">
                    </label>
                    
                    <label class="label-input" for="">
                        <i class=""></i>
                        <input type="text" name="modelo" id="modelo" value="<%=produto.getModelo()%>">
                    </label>
                    
                    <label class="label-input" for="">
                        <i class=""></i>
                        <input type="text" name="disponibilidade" id="disponibilidade" value="<%=produto.getDisponibilidade()%>">
                    </label>
                    
                    <label class="label-input" for="">
                        <i class=""></i>
                        <input type="text" name="preco" id="preco" value="<%=produto.getPreco()%>">
                    </label>
                    
                    <button type="submit" value="Salvar" name="Salvar" class="btn btn-second">Alterar</button>
                </form>
            </div>
	</body>
</html>