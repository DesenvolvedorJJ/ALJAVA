package Dao;
import java.sql.ResultSet; 	
import java.sql.SQLException;
import java.util.ArrayList;

import Model.Cliente;
import Util.Conexao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


public class ClienteDao {
	
	public boolean InserirCliente(Cliente c) {
		Conexao con = null;
		try {
			con = new Conexao();
			con.executeUpdate("INSERT INTO clientes(nome, dt_nascimento, cpf, email, senha) VALUES ('"
					+ c.getNome() + "','"
					+ c.getDt_nascimento() + "','"
					+ c.getCpf() + "','"
					+ c.getEmail() + "','"
					+ c.getSenha()+"');");
			return true;
		}catch(SQLException e) {
			System.out.println("Error ao Inserir Cliente");
			return false;
		}
	}
	
	public ArrayList<Cliente> ArrayListarCliente(){
		Conexao con = null;
		try {
			con = new Conexao();
			ResultSet result = con.executeQuery("SELECT * FROM clientes;");
			ArrayList<Cliente> listarCliente = new ArrayList<Cliente>();
			int i = 0;
			
			while(result.next()) {
				Cliente cliente = new Cliente();
				cliente.setId_cliente(result.getInt("id"));
				cliente.setNome(result.getString("nome"));
				cliente.setDt_nascimento(result.getString("dt_nascimento"));
				cliente.setCpf(result.getString("cpf"));
				cliente.setEmail(result.getString("email"));
				cliente.setSenha(result.getString("senha"));
				listarCliente.add(i, cliente);
				i++;
			}
			return listarCliente;
		}catch (SQLException e) {
			System.out.println("Erro na função listar cliente DAO" + e);
			return null;
		}
	}
	
	public Cliente ListarClienteID(int id) {
		Conexao con = null;
		try {
			con = new Conexao();
			ResultSet result = con.executeQuery("SELECT * FROM clientes WHERE id =" + id);
			result.next();
			
			Cliente cliente = new Cliente();
			cliente.setId_cliente(result.getInt("id"));
			cliente.setNome(result.getString("nome"));
			cliente.setDt_nascimento(result.getString("dt_nascimento"));
			cliente.setCpf(result.getString("cpf"));
			cliente.setEmail(result.getString("email"));
			cliente.setSenha(result.getString("senha"));
			return cliente;
		}catch(SQLException e) {
			System.out.println("Erro na função listar clienteID DAO" + e);
			return null;
		}
	}
	
	public boolean AlterarCliente(Cliente cliente) {
		Conexao con = null;
		try {
			con = new Conexao();
			con.executeUpdate("UPDATE clientes SET "
					+ "nome='"+ cliente.getNome() +"', "
					+ "dt_nascimento='"+ cliente.getDt_nascimento() +"',"
					+ "cpf='"+ cliente.getCpf() +"',"
					+ "email='"+ cliente.getEmail() +"',"
					+ "senha='"+ cliente.getSenha() + "'"
					+ " where id_cliente = " + cliente.getId_cliente());
			return true;
		}catch(SQLException e) {
			System.out.println("Erro na função atualizar cliente DAO" + e);
			return false;
		}
	}
	
	public boolean DeleteCliente(int id) {
		Conexao con = null;
		try {
			con = new Conexao();
			con.executeUpdate("DELETE FROM clientes WHERE id=" + id);
			return true;
		}catch(SQLException e) {
			System.out.println("Erro na função deletar cliente DAO" + e);
			return false;
		}
	}

	public int VerificarLogin(String Email, String Senha) {
		   Conexao con = null;
		   try {
			   con = new Conexao();
			   ResultSet result = con.executeQuery("SELECT * FROM clientes Where email = '"+ Email +"' AND senha ='" + Senha +"'");
			   
			   if(result.next()) {
				   System.out.print("Usuário já cadastrado");
				   return result.getInt("id");
			   }
			   else {
				   System.out.print("Usuário não cadastrado");
				   
			   }
			   
	   }catch(SQLException e) {
		 
	   }
		   return 0;
	   }

}
