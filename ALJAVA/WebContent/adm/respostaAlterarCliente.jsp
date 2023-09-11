<%@page import="Dao.ClienteDao"%>
<%@page import="Model.Cliente"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
boolean resultado = false;
int id = Integer.parseInt(request.getParameter("hidCliente"));
String nome = request.getParameter("nomeCliente");
String dt = request.getParameter("dt_nascimento");
String cpf = request.getParameter("CPF");
String email = request.getParameter("Email");
String senha = request.getParameter("Senha");

Cliente cliente = new Cliente();
cliente.setId_cliente(id);
cliente.setNome(nome);
cliente.setDt_nascimento(dt);
cliente.setCpf(cpf);
cliente.setEmail(email);
cliente.setSenha(senha);

ClienteDao clienteDao = new ClienteDao();
resultado = clienteDao.AlterarCliente(cliente);

if(resultado){ %>
<script language="JavaScript">
	alert('Cliente Alterado com sucesso!');
	window.location.href="ListarCliente.jsp"
</script>
<% }else{ %>
<script language="JavaScript">
	alert(' foi possível alterar o cliente!');
	window.location.href="ListarCliente.jsp"
</script>
<%} %>



