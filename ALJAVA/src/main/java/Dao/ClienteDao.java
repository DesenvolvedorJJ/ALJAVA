package Dao;
import java.sql.ResultSet; 
import java.sql.SQLException;
import java.util.ArrayList;

import Model.Adm;
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
			con.executeUpdate("INSERT INTO cliente(nome, dt_nascimento, cpf, email, senha) VALUES ('"
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
			ResultSet result = con.executeQuery("SELECT * FROM cliente;");
			ArrayList<Cliente> listarCliente = new ArrayList<Cliente>();
			int i = 0;
			
			while(result.next()) {
				Cliente cliente = new Cliente();
				cliente.setId_cliente(result.getInt("id_cliente"));
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
			ResultSet result = con.executeQuery("SELECT * FROM cliente WHERE id_cliente =" + id);
			result.next();
			
			Cliente cliente = new Cliente();
			cliente.setId_cliente(result.getInt("id_cliente"));
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
			con.executeUpdate("UPDATE cliente SET "
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
			con.executeUpdate("DELETE FROM cliente WHERE id_cliente=" + id);
			return true;
		}catch(SQLException e) {
			System.out.println("Erro na função deletar cliente DAO" + e);
			return false;
		}
	}

	public boolean VerificarLogin(String Email, String Senha) {
		   Conexao con = null;
		   try {
			   con = new Conexao();
			   ResultSet result = con.executeQuery("SELECT * FROM cliente Where email = '"+ Email +"' AND senha ='" + Senha +"'");
			   
			   if(result.next()) {
				   System.out.print("Usuário já cadastrado");
				   return true;
			   }
			   else {
				   System.out.print("Usuário não cadastrado");
				   
			   }
			   
	   }catch(SQLException e) {
		 
	   }
		   return false;
	   }
	
	public ArrayList<Adm> ArrayListarAdm(){
		Conexao con = null;
		try {
			con = new Conexao();
			ResultSet result = con.executeQuery("SELECT * FROM adms;");
			ArrayList<Adm> listarAdm = new ArrayList<Adm>();
			int i = 0;
			
			while(result.next()) {
				Adm adm = new Adm();
				adm.setId_adm(result.getInt("id"));
				adm.setNome(result.getString("nome"));
				adm.setUsuario(result.getString("usuario"));
				adm.setSenha(result.getString("senha"));
				listarAdm.add(i, adm);
				i++;
			}
			return listarAdm;
		}catch (SQLException e) {
			System.out.println("Erro na função listar cliente DAO" + e);
			return null;
		}
	}
	
	public boolean VerificarLoginAdm(String Usuario, String Senha) {
		   Conexao con = null;
		   try {
			   con = new Conexao();
			   ResultSet result = con.executeQuery("SELECT * FROM adms Where usuario = '"+ Usuario +"' AND senha ='" + Senha +"'");
			   
			   if(result.next()) {
				   System.out.print("Tudo Certo");
				   return true;
			   }
			   else {
				   System.out.print("Adm não encontrado");
				   
			   }
			   
	   }catch(SQLException e) {
		 
	   }
		   return false;
	   }

}
