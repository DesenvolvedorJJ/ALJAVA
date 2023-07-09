<%@page import="Dao.ClienteDao"%>
<%@page import="Model.Cliente"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
boolean resultado = false;
String nome = request.getParameter("nomeCliente");
String dt = request.getParameter("dt_nascimento");
String cpf = request.getParameter("CPF");
String email = request.getParameter("Email");
String senha = request.getParameter("Senha");

Cliente cliente = new Cliente();
cliente.setNome(nome);
cliente.setDt_nascimento(dt);
cliente.setCpf(cpf);
cliente.setEmail(email);
cliente.setSenha(senha);

ClienteDao clienteDao = new ClienteDao();
resultado = clienteDao.InserirCliente(cliente);

if(resultado){ %>
<script language="JavaScript">
	alert('Cliente Cadastrado com sucesso!');
	window.location.href="CadastroCliente.jsp"
</script>
<% }else{ %>
<script language="JavaScript">
	alert('Não foi possível cadastrar o cliente!');
	window.location.href="CadastroCliente.jsp"
</script>
<%} %>
