<%@page import="Dao.AdmDao"%>
<%@page import="Model.Adm"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

boolean result = false;
String usuario = request.getParameter("usuario");
String senha = request.getParameter("senha");


AdmDao admDao = new AdmDao();
result = admDao.VerificarLoginAdm(usuario, senha);
	 
if (result) {
	 %>
	 <script language="JavaScript">
	     alert("Login realizado com sucesso");
	     window.location.href = "homeAdm.html"
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