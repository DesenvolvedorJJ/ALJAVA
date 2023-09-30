package Dao;
import java.sql.ResultSet;
 	
import java.sql.SQLException;
import java.util.ArrayList;

import Model.Tamanho;
import Util.Conexao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


public class TamanhoDao {
	
	public boolean InserirTamanho(Tamanho t) {
		Conexao con = null;
		try {
			con = new Conexao();
			con.executeUpdate("INSERT INTO tamanhos(tamanho, disponivel) VALUES ('"
					+ t.getTamanho() + "','"
					+ t.getDisponivel() +"');");
			return true;
		}catch(SQLException e) {
			System.out.println("Error ao Inserir Tamanho");
			return false;
		}
	}
	
	public ArrayList<Tamanho> ArrayListarTamanho(){
		Conexao con = null;
		try {
			con = new Conexao();
			ResultSet result = con.executeQuery("SELECT * FROM tamanhos;");
			ArrayList<Tamanho> listarTamanho = new ArrayList<Tamanho>();
			int i = 0;
			
			while(result.next()) {
				Tamanho tamanho = new Tamanho();
				tamanho.setId_tamanho(result.getInt("id"));
				tamanho.setTamanho(result.getString("tamanho"));
				tamanho.setDisponivel(result.getString("disponivel"));
				listarTamanho.add(i, tamanho);
				i++;
			}
			return listarTamanho;
		}catch (SQLException e) {
			System.out.println("Erro na função listar tamanho DAO" + e);
			return null;
		}
	}
	
	public Tamanho ListarTamanhoID(int id_tamanho) {
		Conexao con = null;
		try {
			con = new Conexao();
			ResultSet result = con.executeQuery("SELECT * FROM tamanhos WHERE id =" + id_tamanho);
			result.next();
			
			Tamanho tamanho = new Tamanho();
			tamanho.setId_tamanho(result.getInt("id"));
			tamanho.setTamanho(result.getString("tamanho"));
			tamanho.setDisponivel(result.getString("disponivel"));
			return tamanho;
		}catch(SQLException e) {
			System.out.println("Erro na função listar produtoID DAO" + e);
			return null;
		}
	}
	
	public boolean AlterarTamanho(Tamanho tamanho) {
		Conexao con = null;
		try {
			con = new Conexao();
			con.executeUpdate("UPDATE tamanhos SET "
					+ "disponivel='"+ tamanho.getDisponivel() + "'"
					+ "tamanho='"+ tamanho.getTamanho() + "'"
					+ " where id = " + tamanho.getId_tamanho());
			return true;
		}catch(SQLException e) {
			System.out.println("Erro na função atualizar tamanho DAO" + e);
			return false;
		}
	}
	
	public boolean DeleteTamanho(int id_tamanho) {
		Conexao con = null;
		try {
			con = new Conexao();
			con.executeUpdate("DELETE FROM tamanhos WHERE id=" + id_tamanho);
			return true;
		}catch(SQLException e) {
			System.out.println("Erro na função deletar tamanho DAO" + e);
			return false;
		}
	}


}
