<%@page import="Model.Pedido"%>
<%@page import="Dao.PedidoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
PedidoDao pedidodao = new PedidoDao();
Pedido pedido = new Pedido();
pedido = pedidodao.ListarPedidoID(Integer.parseInt(request.getParameter("id_pedido")));
%>
<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/alterar.css">

<title>Detalhamento do Pedido</title>
</head>
<body>
	 <div class="second-column">
                <h2 class="title title-second">Detalhamento do Pedido</h2>
                   <br>
				<form id="formPedido" name="formPedido" action="#">
                    
                    <h5 class="title title-second">Id do pedido</h5>
                    <label class="label-input icon-modify" for="">
                        <i class="fas fa-user"></i>
                        <input type="text" name="id_pedido" id="id_pedido" disabled="disabled" value="<%=pedido.getId_pedido()%>">
                    </label>
                    
                    <br>
                    
                    <h5 class="title title-second">Data em que o pedido foi feito</h5>
                    <label class="label-input icon-modify" for="dt_compra">
			            <input type="text" name="dt_compra" id="dt_compra" disabled="disabled" value="<%=pedido.getDt_compra()%>">
			        </label>
			        
			        <br>
			        
                    <h5 class="title title-second">Id do cliente</h5>
                    <label class="label-input icon-modify" for="">
                        <i class="fas fa-user"></i>
                        <input type="text" name="idCliente" id="idCliente" disabled="disabled" value="<%=pedido.getId_cliente()%>">
                    </label>
                    
                    <br>
                    
                    <h5 class="title title-second">Nome do cliente</h5>
                    <label class="label-input" for="">
                        <i class=""></i>
                        <input type="text" name="nomeCliente" id="nomeCliente" disabled="disabled" value="<%=pedido.getNome_Cliente()%>">
                    </label>
                    
                    <br>
                    
                    <h5 class="title title-second">CPF</h5>
                    <label class="label-input" for="">
                        <i class=""></i>
                        <input type="text" name="cpf" id="cpf" disabled="disabled" value="<%=pedido.getCpf()%>">
                    </label>
                    
                    <br>
                    
                    <h5 class="title title-second">Email</h5>
                    <label class="label-input" for="">
                        <i class=""></i>
                        <input type="text" name="email" id="email" disabled="disabled" value="<%=pedido.getEmail()%>">
                    </label>
                    
                    <br>
                    
                    <h5 class="title title-second">Id do produto</h5>
                    <label class="label-input" for="">
                        <i class=""></i>
                        <input type="text" name="idProduto" id="idProduto" disabled="disabled" value="<%=pedido.getId_produto()%>">
                    </label>
                    
                    <br>
                    
                    <h5 class="title title-second">Produto</h5>
                    <label class="label-input" for="">
                        <i class=""></i>
                        <input type="text" name="nomeProduto" id="nomeProduto" disabled="disabled" value="<%=pedido.getNome_Produto()%>">
                    </label>
                    
                    <br>
                    
                    <h5 class="title title-second">Categoria</h5>
                    <label class="label-input" for="">
                        <i class=""></i>
                        <input type="text" name="tipo" id="tipo" disabled="disabled" value="<%=pedido.getTipo()%>">
                    </label>
                    
                    <br>
                    
                    <h5 class="title title-second">Marca</h5>
                    <label class="label-input" for="">
                        <i class=""></i>
                        <input type="text" name="marca" id="marca" disabled="disabled" value="<%=pedido.getMarca()%>">
                    </label>
                    
                    <br>
                    
                    <h5 class="title title-second">Modelo</h5>
                    <label class="label-input" for="">
                        <i class=""></i>
                        <input type="text" name="modelo" id="modelo" disabled="disabled" value="<%=pedido.getModelo()%>">
                    </label>
                    
                    <br>
                    
                    <h5 class="title title-second">Id do tamanho</h5>
                    <label class="label-input" for="">
                        <i class=""></i>
                        <input type="text" name="hidInfo" id="hidInfo" disabled="disabled" value="<%=pedido.getId_tamanho()%>">
                    </label>
                    
                    <br>
                    
                    <h5 class="title title-second">Tamanho</h5>
                    <label class="label-input" for="">
                        <i class=""></i>
                        <input type="text" name="info" id="info" disabled="disabled" value="<%=pedido.getTamanho()%>">
                    </label>
                    
                    <br>
                    
                    <h5 class="title title-second">Preço R$</h5>
                    <label class="label-input" for="">
                        <i class=""></i>
                        <input type="text" name="preco" id="preco" disabled="disabled" value="<%=pedido.getPreco()%>">
                    </label>
                </form>
            </div>
	</body>
</html>