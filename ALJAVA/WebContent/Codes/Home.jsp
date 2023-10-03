<%@page import="Model.Produto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Dao.ProdutoDao"%>
<%@page import="Dao.ClienteDao"%>
<%@page import="Model.Cliente"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
ClienteDao clientedao = new ClienteDao();
Cliente cliente = new Cliente();
cliente = clientedao.ListarClienteID(Integer.parseInt(request.getParameter("id_cliente")));
%>    

<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ALJAVA</title>
  <link rel="stylesheet" href="css/home.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">


</head>

<body>
  <div class="container">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <div class="container-fluid ">
        <a class="navbar-brand" href="#"><img src="images/Alogo.png" alt=""></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
          aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="#"><strong>Home</strong></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#Shoes"><strong>Shoes</strong></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#Backpack"><strong>Mochilas</strong></a>
            </li>
            <li class="nav-item">
              <a class="nav-link " href="#contact-us"><strong>Contato</strong></a>
            </li>
          </ul>
        </div>
      
      <form class="search1 text-end">
        <input class="form-control me-2" type="search" placeholder="Procurar" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Pesquisar</button>
      </form>
      </div>
    </nav>

    <div id="carouselExampleControls" class="carousel slide bg-col" data-bs-ride="carousel">
      <div class="carousel-inner ">
        <div class="carousel-item active">
          <div class="row align-items-center">
            <div class="col-md-7">
              <h1>Mega LcD TV</h1>
              <p>Desfrute de uma experiência de visualização de alta qualidade com a TV LCD.</p>
              <h1 class="price">R$5000</h1>
              <button class="buy-now-btn"> Comprar </button>
            </div>
            <div class="col-md-5">
              <img src="images/tv.png" class="d-block w-100" alt="...">
            </div>
          </div>

        </div>
        <div class="carousel-item">
          <div class="row align-items-center">
            <div class="col-md-7">
              <h1>X-box One S</h1>
              <p>Xbox One S: entretenimento em alta definição na palma da sua mão.</p>
              <h1 class="price">R$1300</h1>
              <button class="buy-now-btn"> Comprar </button>
            </div>
            <div class="col-md-5"> <img src="images/xbox.png" class="d-block w-100" alt="..."></div>
          </div>

        </div>
        <div class="carousel-item">
          <div class="row align-items-center">
            <div class="col-md-7">
              <h1>Call Dude Headphone</h1>
              <p>Ouça cada detalhe da sua música favorita com nossos fones de ouvido de alta qualidade.</p>
              <h1 class="price">R$320</h1>
              <button class="buy-now-btn"> Comprar </button>
            </div>
            <div class="col-md-5"> <img src="images/headphone.png" class="d-block w-100" alt="..."></div>
          </div>

        </div>
      </div>
      <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Próximo</span>
      </a>
    </div>


  </div>
  <div class="container categories">
    <div class="row">
      <div class="col-md-4">
        <div class="bg-col1  d-flex flex-row align-items-center justify-content-between ">
          <h1>Relógios</h1>
          <img src="images/watch.png" alt="">

        </div>

      </div>
      <div class="col-md-3  ">
        <div class="bg-col2 d-flex flex-row align-items-center justify-content-between ">
          <h1>Bags</h1>
          <img src="images/bag.png" alt="">

        </div>

      </div>
      <div class="col-md-4 ">
        <div class="bg-col3 d-flex flex-row align-items-center justify-content-between">
          <h1>Shoes</h1>
          <img src="images/shoes.png" alt="">
        </div>


      </div>
    </div>
  </div>
  <div class="container shoes" id="Shoes">
    <h1>Shoes</h1>
    <div class="row row-cols-1 row-cols-md-3 g-4">
    <div class="col">
      <div class="card">
        <img src="images/shoe-1.png" class="card-img-top" alt="...">
        <div class="card-body">
        	<%
			    ProdutoDao produtoDao = new ProdutoDao();
			    ArrayList<Produto> produtos = produtoDao.ArrayListarProduto();
			
			    for (Produto p : produtos) {
			        if (p.getId_produto() == 1) {
			%>
			            <h5 class="card-title"><%= p.getNome() %></h5>
			            <p class="card-text"><%= p.getDescricao() %></p>
          				<h5>R$ <%= p.getPreco() %></h5>
          				
          				<form action="../Codes/produtos/produto1.jsp" method="POST" class="buy-now-form">
						  <input type="hidden" name="id_cliente" value="<%= cliente.getId_cliente() %>">
						  <input type="hidden" name="id_produto" value="<%= p.getId_produto() %>">
						  <button type="submit" class="buy-now-btn">Comprar Agora</button>
						</form>

			<%
			        }
			    }
			%>
        </div>

      </div>
    </div>
    <div class="col">
      <div class="card">
        <img src="images/shoe-2.png" class="card-img-top" alt="...">
        <div class="card-body">
          <%
			    ProdutoDao produto2Dao = new ProdutoDao();
			    ArrayList<Produto> produtos2 = produtoDao.ArrayListarProduto();
			
			    for (Produto p : produtos2) {
			        if (p.getId_produto() == 2) {
			%>
			            <h5 class="card-title"><%= p.getNome() %></h5>
			            <p class="card-text"><%= p.getDescricao() %></p>
          				<h5>R$ <%= p.getPreco() %></h5>
          				
          				<form action="../Codes/produtos/produto2.jsp" method="POST" class="buy-now-form">
						  <input type="hidden" name="id_cliente" value="<%= cliente.getId_cliente() %>">
						  <input type="hidden" name="id_produto" value="<%= p.getId_produto() %>">
						  <button type="submit" class="buy-now-btn">Comprar Agora</button>
						</form>
			<%
			        }
			    }
			%>
        </div>

      </div>
    </div>
    <div class="col">
      <div class=" card ">
        <img src="images/shoe-3.png" class="card-img-top" alt="...">
        <div class="card-body">
          <%
			    ProdutoDao produto3Dao = new ProdutoDao();
			    ArrayList<Produto> produtos3 = produtoDao.ArrayListarProduto();
			
			    for (Produto p : produtos3) {
			        if (p.getId_produto() == 3) {
			%>
			            <h5 class="card-title"><%= p.getNome() %></h5>
			            <p class="card-text"><%= p.getDescricao() %></p>
          				<h5>R$ <%= p.getPreco() %></h5>
          				
          				<form action="../Codes/produtos/produto3.jsp" method="POST" class="buy-now-form">
						  <input type="hidden" name="id_cliente" value="<%= cliente.getId_cliente() %>">
						  <input type="hidden" name="id_produto" value="<%= p.getId_produto() %>">
						  <button type="submit" class="buy-now-btn">Comprar Agora</button>
						</form>
			<%
			        }
			    }
			%>
        </div>

      </div>
    </div>
  </div>
  </div>
  <div class="container" id="Backpack">
    <h1>Bags</h1>
    <div class="row row-cols-1 row-cols-md-3 g-4">
      <div class="col">
        <div class="card h-100">
          <img src="images/bag-1.png" class="card-img-top" alt="...">
          <div class="card-body">
           <%
			    ProdutoDao produto4Dao = new ProdutoDao();
			    ArrayList<Produto> produtos4 = produtoDao.ArrayListarProduto();
			
			    for (Produto p : produtos4) {
			        if (p.getId_produto() == 4) {
			%>
			            <h5 class="card-title"><%= p.getNome() %></h5>
			            <p class="card-text"><%= p.getDescricao() %></p>
          				<h5>R$ <%= p.getPreco() %></h5>
          				
          				<form action="../Codes/produtos/produto4.jsp" method="POST" class="buy-now-form">
						  <input type="hidden" name="id_cliente" value="<%= cliente.getId_cliente() %>">
						  <input type="hidden" name="id_produto" value="<%= p.getId_produto() %>">
						  <button type="submit" class="buy-now-btn">Comprar Agora</button>
						</form>
			<%
			        }
			    }
			%>
          </div>
          <div class="card-footer">
          </div>
        </div>
      </div>
      <div class="col">
        <div class="card h-100">
          <img src="images/bag-2.png" class="card-img-top" alt="...">
          <div class="card-body">
            <%
			    ProdutoDao produto5Dao = new ProdutoDao();
			    ArrayList<Produto> produtos5 = produtoDao.ArrayListarProduto();
			
			    for (Produto p : produtos5) {
			        if (p.getId_produto() == 5) {
			%>
			            <h5 class="card-title"><%= p.getNome() %></h5>
			            <p class="card-text"><%= p.getDescricao() %></p>
          				<h5>R$ <%= p.getPreco() %></h5>
          				
          				<form action="../Codes/produtos/produto5.jsp" method="POST" class="buy-now-form">
						  <input type="hidden" name="id_cliente" value="<%= cliente.getId_cliente() %>">
						  <input type="hidden" name="id_produto" value="<%= p.getId_produto() %>">
						  <button type="submit" class="buy-now-btn">Comprar Agora</button>
						</form>
			<%
			        }
			    }
			%>
          </div>
          <div class="card-footer">
          </div>
        </div>
      </div>
      <div class="col">
        <div class="card h-100">
          <img src="images/bag-3.png" class="card-img-top" alt="...">
          <div class="card-body">
            <%
			    ProdutoDao produto6Dao = new ProdutoDao();
			    ArrayList<Produto> produtos6 = produtoDao.ArrayListarProduto();
			
			    for (Produto p : produtos6) {
			        if (p.getId_produto() == 6) {
			%>
			            <h5 class="card-title"><%= p.getNome() %></h5>
			            <p class="card-text"><%= p.getDescricao() %></p>
          				<h5>R$ <%= p.getPreco() %></h5>
          				
          				<form action="../Codes/produtos/produto6.jsp" method="POST" class="buy-now-form">
						  <input type="hidden" name="id_cliente" value="<%= cliente.getId_cliente() %>">
						  <input type="hidden" name="id_produto" value="<%= p.getId_produto() %>">
						  <button type="submit" class="buy-now-btn">Comprar Agora</button>
						</form>
			<%
			        }
			    }
			%>
          </div>
          <div class="card-footer">
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="container bg-col d-flex align-items-center justify-content-center" id="contact-us">
    <div>
      <h3>MANTENHA-SE INFORMADO!</h3>
      <h6>Receba atualizações sobre produtos, promoções e muito mais</h6>
      <input type="text" placeholder="Insira Seu Email" class="form-control">
      <button class="buy-now-btn"> ENVIAR</button> 
    </div>

  </div>
  <div class="container">
    <footer class=" d-flex justify-content-center ">
      <p> &copy 2023, ALJAVA</p>
    </footer>
  </div>


  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous">
  </script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"
    integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous">
  </script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js"
    integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous">
  </script>

</body>

</html>