<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Login do Administrador</title>
  <link rel="stylesheet" type="text/css" href="css/loginAdm.css">
</head>
<body>
  <div class="container">
    <h2>Login do Administrador</h2>
    <form action="respostaLoginAdm.jsp" name="formAdm" id="formAdm" method="POST">
      <div class="input-container">
        <label for="usuario">Usuário:</label>
        <input type="text" id="usuario" name="usuario" required>
      </div>
      <div class="input-container">
        <label for="senha">Senha:</label>
        <input type="password" id="senha" name="senha" required>
      </div>
      <div class="button-container">
        <input type="submit" value="Entrar">
      </div>
    </form>
    <div class="forgot-password">
      <a href="#">Esqueceu sua senha?</a>
    </div>
  </div>
</body>
</html>

