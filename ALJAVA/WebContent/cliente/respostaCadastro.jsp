<%@page import="Dao.ClienteDao"%>
<%@page import="Model.Cliente"%>
<%@page import="java.security.MessageDigest"%>
<%@page import="java.security.NoSuchAlgorithmException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
boolean resultado = false;
String nome = request.getParameter("nomeCliente");
String dt = request.getParameter("dt_nascimento");
String cpf = request.getParameter("CPF");
String email = request.getParameter("Email");
String senha = request.getParameter("Senha");

    // Criação de uma instância de MessageDigest com o algoritmo SHA-1
    MessageDigest sha1 = MessageDigest.getInstance("SHA-1");

    // Convertendo a string para bytes e alimente-os para o MessageDigest
    byte[] inputBytes = senha.getBytes();
    sha1.update(inputBytes);

    // Calculando o hash SHA-1
    byte[] sha1Hash = sha1.digest();

    // Convertendo o hash para uma representação hexadecimal
    StringBuilder hexHash = new StringBuilder();
    for (byte b : sha1Hash) {
        hexHash.append(String.format("%02x", b));
    }

Cliente cliente = new Cliente();
cliente.setNome(nome);
cliente.setDt_nascimento(dt);
cliente.setCpf(cpf);
cliente.setEmail(email);
cliente.setSenha(hexHash.toString());

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
