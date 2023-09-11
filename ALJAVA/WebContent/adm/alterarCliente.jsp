<%@page import="Model.Cliente"%>
<%@page import="Dao.ClienteDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
ClienteDao clientedao = new ClienteDao();
Cliente cliente = new Cliente();
cliente = clientedao.ListarClienteID(Integer.parseInt(request.getParameter("idcliente")));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/alterar.css">

<title>Formulario de Alteração</title>
</head>
<body>
	 <div class="second-column">
                <h2 class="title title-second">Alterar Cliente</h2>
                   
				<form id="formCliente" name="formCliente" method="POST" action="respostaAlterarCliente.jsp">
                    
                    <label class="label-input icon-modify" for="">
                        <i class="fas fa-user"></i>
                        <input type="text" name="idCliente" id="idCliente" disabled="disabled" value="<%=cliente.getId_cliente()%>">
                        <input type="hidden" name="hidCliente" id="hidCliente" value="<%=cliente.getId_cliente()%>">
                    </label>
                    
                    <label class="label-input icon-modify" for="">
                        <i class="fas fa-user"></i>
                        <input type="text" name="nomeCliente" id="nomeCliente" value="<%=cliente.getNome()%>">
                    </label>

                    <label class="label-input icon-modify" for="">
                        <i class="fas fa-calendar"></i>
                        <input type="date" name="dt_nascimento" id="dt_nascimento" value="<%=cliente.getDt_nascimento()%>">
                    </label>

                    <label class="label-input icon-modify" for="">
                        <i class="far fa-id-card"></i>
                        <input type="text" name="CPF" id="CPF" value="<%=cliente.getCpf()%>">
                    </label>

                    <label class="label-input icon-modify" for="">
                        <i class="fas fa-envelope"></i>
                        <input type="text" name="Email" id="Email" value="<%=cliente.getEmail()%>">
                    </label>

                    <label class="label-input icon-modify" for="">
                        <i class="fas fa-lock"></i>
                        <input type="text" name="Senha" id="Senha" value="<%=cliente.getSenha()%>">
                    </label>
                    <button type="submit" value="Salvar" name="Salvar" class="btn btn-second">Alterar</button>
                </form>
            </div>

</body>
</html>