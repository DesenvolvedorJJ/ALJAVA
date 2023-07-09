<%@page import="Dao.ClienteDao"%>
<%@page import="Model.Adm"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

boolean result = false;
String usuario = request.getParameter("usuario");
String senha = request.getParameter("senha");


ClienteDao clienteDao = new ClienteDao();
result = clienteDao.VerificarLoginAdm(usuario, senha);
	 
if (result) {
	 %>
	 <script language="JavaScript">
	     alert("Login realizado com sucesso");
	     window.location.href = "ListarCliente.jsp"
	 </script>
	 <%
	 } else {
	     %> <script language="JavaScript">
	          alert('Usuario ou senha Incorretos!');
	          window.location.href = "LoginADM.jsp"
	      </script>
	     <%
	 }

%>