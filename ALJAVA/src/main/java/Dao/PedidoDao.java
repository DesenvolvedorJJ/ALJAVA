package Dao;
import java.sql.ResultSet; 	

import java.sql.SQLException;
import java.util.ArrayList;
import Model.Pedido;
import Util.Conexao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


public class PedidoDao {
	
	public boolean InserirPedido(Pedido p) {
		Conexao con = null;
		try {
			con = new Conexao();
			con.executeUpdate("INSERT INTO pedidos (dt_compra, id_cliente, id_produto, id_tamanho) VALUES ('"
					+ p.getDt_compra() + "','"
					+ p.getId_cliente() + "','"
					+ p.getId_produto() + "','"
					+ p.getId_tamanho() +"');");
			return true;
		}catch(SQLException e) {
			System.out.println("Error ao Inserir Pedido");
			return false;
		}
	}
	
	public ArrayList<Pedido> ArrayListarPedido(){
		Conexao con = null;
		try {
			con = new Conexao();
			ResultSet result = con.executeQuery("SELECT"
					+ " p.id,"
					+ " p.dt_compra,"
					+ " c.nome,"
					+ " pr.h2"
					+ " FROM"
					+ " pedidos p"
					+ " JOIN"
					+ " clientes c ON p.id_cliente = c.id"
					+ " JOIN"
					+ " produtos pr ON p.id_produto = pr.id");
			ArrayList<Pedido> listarPedido = new ArrayList<Pedido>();
			int i = 0;
			
			while(result.next()) {
				Pedido pedido = new Pedido();
				pedido.setId_pedido(result.getInt("p.id"));
				pedido.setDt_compra(result.getString("p.dt_compra"));
				pedido.setNome_Cliente(result.getString("c.nome"));
				pedido.setH2(result.getString("pr.h2"));
				listarPedido.add(i, pedido);
				i++;
			}
			return listarPedido;
		}catch (SQLException e) {
			System.out.println("Erro na função listar pedido DAO" + e);
			return null;
		}
	}
	
	public Pedido ListarPedidoID(int id_pedido) {
		Conexao con = null;
		try {
			con = new Conexao();
			ResultSet result = con.executeQuery("SELECT"
					+ " p.id,"
					+ " p.dt_compra,"
					+ " c.id,"
					+ " c.nome,"
					+ " c.cpf,"
					+ " c.email,"
					+ " pr.id,"
					+ " pr.nome,"
					+ " pr.tipo,"
					+ " pr.marca,"
					+ " pr.modelo,"
					+ " t.id,"
					+ " t.tamanho,"
					+ " pr.preco"
					+ " FROM"
					+ " pedidos p"
					+ " JOIN"
					+ " clientes c ON p.id_cliente = c.id"
					+ " JOIN"
					+ " produtos pr ON p.id_produto = pr.id"
					+ " JOIN"
					+ " tamanhos t ON p.id_tamanho = t.id"
					+ " WHERE p.id =" + id_pedido);
			result.next();
			
			Pedido pedido = new Pedido();
			pedido.setId_pedido(result.getInt("p.id"));
			pedido.setDt_compra(result.getString("p.dt_compra"));
			pedido.setId_cliente(result.getInt("c.id"));
			pedido.setNome_Cliente(result.getString("c.nome"));
			pedido.setCpf(result.getString("c.cpf"));
			pedido.setEmail(result.getString("c.email"));
			pedido.setId_produto(result.getInt("pr.id"));
			pedido.setNome_Produto(result.getString("pr.nome"));
			pedido.setTipo(result.getString("pr.tipo"));
			pedido.setMarca(result.getString("pr.marca"));
			pedido.setModelo(result.getString("pr.modelo"));
			pedido.setId_tamanho(result.getInt("t.id"));
			pedido.setTamanho(result.getString("t.tamanho"));
			pedido.setPreco(result.getDouble("pr.preco"));
			return pedido;
		}catch(SQLException e) {
			System.out.println("Erro na função listar pedidoID DAO" + e);
			return null;
		}
	}
	
	public boolean DeletePedido(int id_pedidos) {
		Conexao con = null;
		try {
			con = new Conexao();
			con.executeUpdate("DELETE FROM pedidos WHERE id =" + id_pedidos);
			return true;
		}catch(SQLException e) {
			System.out.println("Erro na função deletar pedido DAO" + e);
			return false;
		}
	}
	

	
}
