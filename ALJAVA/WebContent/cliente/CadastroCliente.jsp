<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="css/cadastroCliente.css">    
    <!-- FONTWESOME -->
    <script src="https://kit.fontawesome.com/e3e0ab7579.js" crossorigin="anonymous"></script>
</head>
<body>
    <div class="container">

        <div class="content first-content">

            <div class="first-column">
                <h2 class="title title-primary">Já tem conta?</h2>
                <p class="description description-primary">continue conectado conosco</p>
                <p class="description description-primary">clicando no botão abaixo</p>
                <button id="signin" class="btn btn-primary">login</button>
            </div><!-- FIRST-COLUMN -->

            <div class="second-column">
                <h2 class="title title-second">criar conta</h2>
                <div class="social-midia">
                    <ul class="list-social-midia">
                        <a class="link-social-midia" href="#">
                            <li class="item-social-midia"><i class="fab fa-facebook-f"></i></li>
                        </a><!-- FACEBOOK -->
                        <a class="link-social-midia" href="#">
                            <li class="item-social-midia"><i class="fab fa-google"></i></li>
                        </a><!-- GOOGLE -->
                        <a class="link-social-midia" href="#">
                            <li class="item-social-midia"><i class="fab fa-linkedin-in"></i></li>
                        </a><!-- LINKEDIN -->
                    </ul>
                </div><!-- SOCIAL-MIDIA -->
                <p class="description description-second">registre-se com seu email </p>
             
                <form class="form" id="formCliente" name="formCliente" method="POST" action="respostaCadastro.jsp">
                    <label class="label-input icon-modify" for="">
                        <i class="fas fa-user"></i>
                        <input type="text" name="nomeCliente" id="nomeCliente" placeholder="Nome Completo">
                    </label>

                    <label class="label-input icon-modify" for="">
                        <i class="fas fa-calendar"></i>
                        <input type="date" name="dt_nascimento" id="dt_nascimento" placeholder="Data de Nascimento">
                    </label>

                    <label class="label-input icon-modify" for="">
                        <i class="far fa-id-card"></i>
                        <input type="text" name="CPF" id="CPF" placeholder="CPF">
                    </label>

                    <label class="label-input icon-modify" for="">
                        <i class="fas fa-envelope"></i>
                        <input type="email" name="Email" id="Email" placeholder="Email">
                    </label>

                    <label class="label-input icon-modify" for="">
                        <i class="fas fa-lock"></i>
                        <input type="password" name="Senha" id="Senha" placeholder="Senha">
                    </label>
                    <button type="submit" value="Salvar" name="Salvar" class="btn btn-second">registrar</button>
                </form>
            </div><!-- SECOND-COLUMN -->

        </div><!-- CONTENT FIRST-CONTENT -->
        
        <div class="content second-content">

            <div class="first-column">
                <h2 class="title title-primary">Olá!</h2>
                <p class="description description-primary">Novo por aqui?</p>
                <p class="description description-primary">registre-se clicando no botão abaixo</p>
                <button id="signup" class="btn btn-primary">registre-se</button>
            </div><!-- FIRST-COLUMN -->

            <div class="second-column">
                <h2 class="title title-second">Entre na sua conta</h2>
                <div class="social-midia">
                    <ul class="list-social-midia">
                        <a class="link-social-midia" href="#">
                            <li class="item-social-midia"><i class="fab fa-facebook-f"></i></li>
                        </a><!-- FACEBOOK -->
                        <a class="link-social-midia" href="#">
                            <li class="item-social-midia"><i class="fab fa-google"></i></li>
                        </a><!-- GOOGLE -->
                        <a class="link-social-midia" href="#">
                            <li class="item-social-midia"><i class="fab fa-linkedin-in"></i></li>
                        </a><!-- LINKEDIN -->
                    </ul>
                </div><!-- SOCIAL-MIDIA -->
			    <p class="description description-second">conectar-se com seu email</p>
			    <form class="form" action="respostaLogin.jsp" method="POST">
			        <label class="label-input icon-modify" for="">
			            <i class="fas fa-envelope"></i>
			            <input type="email" name="email" placeholder="Email">
			        </label>
			        <label class="label-input icon-modify" for="">
			            <i class="fas fa-lock"></i>
			            <input type="password" name="senha" placeholder="Senha">
			        </label>
  						<a class="password" href="#">esqueceu a senha?</a>
  						<a class="text" href="../adm/LoginADM.jsp">Logar como ADM</a>
			        <button type="submit" class="btn btn-second">entrar</button>
			    </form>
			</div><!-- SECOND-COLUMN -->

        </div><!-- CONTENT SECOND-CONTENT -->

    </div><!-- CONTAINER -->
    
        <!-- IMPORT JAVASCRIPT -->
    <script src="js/script.js"></script>
    
</body>
</html>
