<%@page import="Model.Cliente"%>
<%@page import="Model.Produto"%>
<%@page import="Model.Tamanho"%>
<%@page import="Dao.ClienteDao"%>
<%@page import="Dao.ProdutoDao"%>
<%@page import="Dao.TamanhoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
ClienteDao clientedao = new ClienteDao();
Cliente cliente = new Cliente();
cliente = clientedao.ListarClienteID(Integer.parseInt(request.getParameter("id_cliente")));
%>

<%
ProdutoDao produtodao = new ProdutoDao();
Produto produto = new Produto();
produto = produtodao.ListarProdutoID(Integer.parseInt(request.getParameter("id_produto")));
%>

<%
TamanhoDao tamanhodao = new TamanhoDao();
Tamanho tamanho = new Tamanho();
tamanho = tamanhodao.ListarTamanhoID(Integer.parseInt(request.getParameter("id_tamanho")));
%>

<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/pedidos.css">

<title>Formulario de Alteração de Tamanho</title>
</head>
<body>
	 <div class="second-column">
                <h2 class="title title-second">Finalizar Pedido</h2>
                   
				<form id="formTamanho" name="formTamanho" method="POST" action="respostaPedido.jsp">
                    
                    <label class="label-input icon-modify" for="dt_compra">
			            <input type="hidden" name="dt_compra" id="dt_compra" placeholder="Data da Compra" value="<%= getCurrentDate() %>">
			        </label>
                    
                    <label class="label-input icon-modify" for="">
                        <i class="fas fa-user"></i>
                        <input type="hidden" name="hidCliente" id="hidCliente" value="<%=cliente.getId_cliente()%>">
                    </label>
                    <h5 class="title title-second">Cliente:</h5>
                    <label class="label-input" for="">
                        <i class=""></i>
                        <input type="text" name="nomeCliente" id="nomeCliente" disabled="disabled" value="<%=cliente.getNome()%>">
                        <input type="hidden" name="hidnomeCliente" id="hidnomeCliente" value="<%=cliente.getNome()%>">
                    </label>
                    <h5 class="title title-second">CPF:</h5>
                    <label class="label-input" for="">
                        <i class=""></i>
                        <input type="text" name="cpf" id="cpf" disabled="disabled" value="<%=cliente.getCpf()%>">
                        <input type="hidden" name="hidCpf" id="hidCpf" value="<%=cliente.getCpf()%>">
                    </label>
                    <h5 class="title title-second">Email:</h5>
                    <label class="label-input" for="">
                        <i class=""></i>
                        <input type="text" name="email" id="email" disabled="disabled" value="<%=cliente.getEmail()%>">
                        <input type="hidden" name="hidEmail" id="hidEmail" value="<%=cliente.getEmail()%>">
                    </label>
                    
                    <label class="label-input" for="">
                        <i class=""></i>
                        <input type="hidden" name="hidProduto" id="hidProduto" value="<%=produto.getId_produto()%>">
                    </label>
                    <h5 class="title title-second">Produto:</h5>
                    <label class="label-input" for="">
                        <i class=""></i>
                        <input type="text" name="nomeProduto" id="nomeProduto" disabled="disabled" value="<%=produto.getNome()%>">
                        <input type="hidden" name="hidnomeProduto" id="hidnomeProduto" value="<%=produto.getNome()%>">
                    </label>
                    <h5 class="title title-second">Categoria:</h5>
                    <label class="label-input" for="">
                        <i class=""></i>
                        <input type="text" name="tipo" id="tipo" disabled="disabled" value="<%=produto.getTipo()%>">
                        <input type="hidden" name="hidTipo" id="hidTipo" value="<%=produto.getTipo()%>">
                    </label>
                    <h5 class="title title-second">Marca:</h5>
                    <label class="label-input" for="">
                        <i class=""></i>
                        <input type="text" name="marca" id="marca" disabled="disabled" value="<%=produto.getMarca()%>">
                        <input type="hidden" name="hidMarca" id="hidMarca" value="<%=produto.getMarca()%>">
                    </label>
                    <h5 class="title title-second">Modelo:</h5>
                    <label class="label-input" for="">
                        <i class=""></i>
                        <input type="text" name="modelo" id="modelo" disabled="disabled" value="<%=produto.getModelo()%>">
                        <input type="hidden" name="hidModelo" id="hidModelo" value="<%=produto.getModelo()%>">
                    </label>
                    
                    <label class="label-input" for="">
                        <i class=""></i>
                        <input type="hidden" name="hidInfo" id="hidInfo" value="<%=tamanho.getId_tamanho()%>">
                    </label>
                    <h5 class="title title-second">Tamanho:</h5>
                    <label class="label-input" for="">
                        <i class=""></i>
                        <input type="text" name="info" id="info" disabled="disabled" value="<%=tamanho.getTamanho()%>">
                        <input type="hidden" name="hidnomeCliente" id="hidnomeCliente" value="<%=tamanho.getTamanho()%>">
                    </label>
                    <h5 class="title title-second">Valor:</h5>
                    <label class="label-input" for="">
                        <i class=""></i>
                        <input type="text" name="preco" id="preco" disabled="disabled" value="<%=produto.getPreco()%>">
                        <input type="hidden" name="hidPreco" id="hidPreco" value="<%=produto.getPreco()%>">
                    </label>
                    
                    <button type="submit" value="Salvar" name="Salvar" class="btn btn-second">Finalizar</button>
                </form>
            </div>
	</body>
</html>

<%!
    // Função para obter a data atual no formato yyyy-MM-dd
    public String getCurrentDate() {
        java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd");
        java.util.Date currentDate = new java.util.Date();
        return sdf.format(currentDate);
    }
%>