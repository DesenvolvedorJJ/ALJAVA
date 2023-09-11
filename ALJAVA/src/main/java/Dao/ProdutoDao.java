package Dao;
import java.sql.ResultSet; 	
import java.sql.SQLException;
import java.util.ArrayList;

import Model.Produto;
import Util.Conexao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


public class ProdutoDao {
	
	public boolean InserirProduto(Produto p) {
		Conexao con = null;
		try {
			con = new Conexao();
			con.executeUpdate("INSERT INTO produtos(nome, tipo, descricao, h2, marca, modelo, disponibilidade, preco) VALUES ('"
					+ p.getNome() + "','"
					+ p.getTipo() + "','"
					+ p.getDescricao() + "','"
					+ p.getHdois() + "','"
					+ p.getMarca() + "','"
					+ p.getModelo() + "','"
					+ p.getDisponibilidade() + "','"
					+ p.getPreco()+"');");
			return true;
		}catch(SQLException e) {
			System.out.println("Error ao Inserir Produto");
			return false;
		}
	}
	
	public ArrayList<Produto> ArrayListarProduto(){
		Conexao con = null;
		try {
			con = new Conexao();
			ResultSet result = con.executeQuery("SELECT * FROM produtos;");
			ArrayList<Produto> listarProduto = new ArrayList<Produto>();
			int i = 0;
			
			while(result.next()) {
				Produto produto = new Produto();
				produto.setId_produto(result.getInt("id_produto"));
				produto.setNome(result.getString("nome"));
				produto.setTipo(result.getString("tipo"));
				produto.setDescricao(result.getString("descricao"));
				produto.setHdois(result.getString("h2"));
				produto.setMarca(result.getString("marca"));
				produto.setModelo(result.getString("modelo"));
				produto.setDisponibilidade(result.getString("disponibilidade"));
				produto.setPreco(result.getDouble("preco"));
				listarProduto.add(i, produto);
				i++;
			}
			return listarProduto;
		}catch (SQLException e) {
			System.out.println("Erro na função listar produto DAO" + e);
			return null;
		}
	}
	
	public Produto ListarProdutoID(int id_produto) {
		Conexao con = null;
		try {
			con = new Conexao();
			ResultSet result = con.executeQuery("SELECT * FROM produtos WHERE id_produto =" + id_produto);
			result.next();
			
			Produto produto = new Produto();
			produto.setId_produto(result.getInt("id_produto"));
			produto.setNome(result.getString("nome"));
			produto.setTipo(result.getString("tipo"));
			produto.setDescricao(result.getString("descricao"));
			produto.setHdois(result.getString("h2"));
			produto.setMarca(result.getString("marca"));
			produto.setModelo(result.getString("modelo"));
			produto.setDisponibilidade(result.getString("disponibilidade"));
			produto.setPreco(result.getDouble("preco"));
			return produto;
		}catch(SQLException e) {
			System.out.println("Erro na função listar produtoID DAO" + e);
			return null;
		}
	}
	
	public boolean AlterarProduto(Produto produto) {
		Conexao con = null;
		try {
			con = new Conexao();
			con.executeUpdate("UPDATE produtos SET "
					+ "nome='"+ produto.getNome() +"', "
					+ "tipo='"+ produto.getTipo() +"',"
					+ "descricao='"+ produto.getDescricao() +"',"
					+ "h2='"+ produto.getHdois() +"',"
					+ "marca='"+ produto.getMarca() +"',"
					+ "modelo='"+ produto.getModelo() +"',"
					+ "disponibilidade='"+ produto.getDisponibilidade() +"',"
					+ "preco='"+ produto.getPreco() + "'"
					+ " where id_produto = " + produto.getId_produto());
			return true;
		}catch(SQLException e) {
			System.out.println("Erro na função atualizar produto DAO" + e);
			return false;
		}
	}
	
	public boolean DeleteProduto(int id_produto) {
		Conexao con = null;
		try {
			con = new Conexao();
			con.executeUpdate("DELETE FROM produtos WHERE id_produto=" + id_produto);
			return true;
		}catch(SQLException e) {
			System.out.println("Erro na função deletar produto DAO" + e);
			return false;
		}
	}


}
