<%@page import="Dao.ClienteDao"%>
<%@page import="Model.Cliente"%>
<%@page import="java.security.MessageDigest"%>
<%@page import="java.security.NoSuchAlgorithmException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

int result = -1;
String email = request.getParameter("email");
String senha = request.getParameter("senha");

//Criação de uma instância de MessageDigest com o algoritmo SHA-1
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

ClienteDao clienteDao = new ClienteDao();
result = clienteDao.VerificarLogin(email, hexHash.toString());
	 
if (result != 0) {
	 %>
<form id="clienteForm" action="../Codes/Home.jsp" method="POST">
    <input type="hidden" name="id_cliente" value="<%= result %>">
</form>
<script language="JavaScript">
    document.getElementById("clienteForm").submit();
    alert("Login realizado com sucesso");
</script>
<%
	 } else {
	     %> <script language="JavaScript">
	          alert('Email ou senha Incorretos!');
	          window.location.href = "CadastroCliente.jsp"
	      </script>
	     <%
	 }

%>