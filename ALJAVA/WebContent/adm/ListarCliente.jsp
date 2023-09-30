<%@page import="Model.Cliente"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Dao.ClienteDao"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/tabelaCliente.css">    
    <!-- FONTWESOME -->
    <script src="https://kit.fontawesome.com/e3e0ab7579.js" crossorigin="anonymous"></script>
	<title>Tela de Listar Cliente</title>
</head>
<body>
<div class="second-column">
                
<form action="#" name="formCliente" id="formCliente" method="POST"> 

<table class="content-table">
            <caption class="tabela"> Tabela Clientes</caption>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>Data de Nascimento</th>
                    <th>CPF</th>
                    <th>Email</th>
                    <th>Senha</th>
                    <th>Alterar</th>
                    <th>Excluir</th>
                </tr>
<%
ClienteDao clienteDao = new ClienteDao();
ArrayList<Cliente> cliente = clienteDao.ArrayListarCliente();
for(Cliente c: cliente){%>
	<tr>
		<td><%= c.getId_cliente() %></td>
		<td><%= c.getNome() %></td>
		<td><%= c.getDt_nascimento() %></td>
		<td><%= c.getCpf() %></td>
		<td><%= c.getEmail() %></td>
		<td><%= c.getSenha() %></td>
		<td> <a href="alterarCliente.jsp?idcliente=<%=c.getId_cliente()%>"> <img src="img/alterar.png" width="20px" height="20px"> </a></td>
		<td> <a href="deletarCliente.jsp?idcliente=<%=c.getId_cliente()%>"> <img src="img/excluir.png" width="20px" height="20px"> </a> </td>
	</tr>
<%} %>
	</thead>
</table>

</form>
 </div>
</body>
</html>
