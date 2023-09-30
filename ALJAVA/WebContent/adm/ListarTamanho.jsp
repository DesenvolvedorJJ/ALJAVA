<%@page import="Model.Tamanho"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Dao.TamanhoDao"%>

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
	<title>Tela de Listar Tamanhos</title>
</head>
<body>
<div class="second-column">
                
<form action="#" name="formTamanho" id="formTamanho" method="POST"> 

<table class="content-table">
            <caption class="tabela"> Tabela Tamanhos</caption>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Tamanho</th>
                    <th>Disponível?</th>
                    <th>Alterar</th>
                    <th>Excluir</th>
                </tr>
<%
TamanhoDao tamanhoDao = new TamanhoDao();
ArrayList<Tamanho> tamanho = tamanhoDao.ArrayListarTamanho();
for(Tamanho t: tamanho){%>
	<tr>
		<td><%= t.getId_tamanho() %></td>
		<td><%= t.getTamanho() %></td>
		<td><%= t.getDisponivel() %></td>
		<td> <a href="alterarTamanho.jsp?id_tamanho=<%=t.getId_tamanho()%>"> <img src="img/alterar.png" width="20px" height="20px"> </a></td>
		<td> <a href="deletarTamanho.jsp?id_tamanho=<%=t.getId_tamanho()%>"> <img src="img/excluir.png" width="20px" height="20px"> </a> </td>
	</tr>
<%} %>
	</thead>
</table>

</form>
 </div>
</body>
</html>
