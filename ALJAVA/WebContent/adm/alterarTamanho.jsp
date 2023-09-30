<%@page import="Model.Tamanho"%>
<%@page import="Dao.TamanhoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
TamanhoDao tamanhodao = new TamanhoDao();
Tamanho tamanho = new Tamanho();
tamanho = tamanhodao.ListarTamanhoID(Integer.parseInt(request.getParameter("id_tamanho")));
%>
<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/alterar.css">

<title>Formulario de Alteração de Tamanho</title>
</head>
<body>
	 <div class="second-column">
                <h2 class="title title-second">Alterar Tamanho</h2>
                   
				<form id="formTamanho" name="formTamanho" method="POST" action="respostaAlterarTamanho.jsp">
                    
                    <label class="label-input" for="">
                        <i class=""></i>
                        <input type="text" name="idInfo" id="idInfo" disabled="disabled" value="<%=tamanho.getId_tamanho()%>">
                        <input type="hidden" name="hidInfo" id="hidInfo" value="<%=tamanho.getId_tamanho()%>">
                    </label>
                    
                    <label class="label-input" for="">
                        <i class=""></i>
                        <input type="text" name="tamanho" id="tamanho" disabled="disabled" value="<%=tamanho.getTamanho()%>">
                        <input type="hidden" name="hidTamanho" id="hidTamanho" value="<%=tamanho.getTamanho()%>">
                    </label>

                    <label class="label-input" for="">
                        <i class=""></i>
                        <input type="text" name="disponivel" id="disponivel" value="<%=tamanho.getDisponivel()%>">
                    </label>
                    
                    <button type="submit" value="Salvar" name="Salvar" class="btn btn-second">Alterar</button>
                </form>
            </div>
	</body>
</html>