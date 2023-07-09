<%@page import="Dao.ClienteDao"%>
<%@page import="Model.Cliente"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

boolean result = false;
String email = request.getParameter("email");
String senha = request.getParameter("senha");


ClienteDao clienteDao = new ClienteDao();
result = clienteDao.VerificarLogin(email, senha);
	 
if (result) {
	 %>
	 <script language="JavaScript">
	     alert("Login realizado com sucesso");
	     window.location.href = "../Codes/home.html"
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