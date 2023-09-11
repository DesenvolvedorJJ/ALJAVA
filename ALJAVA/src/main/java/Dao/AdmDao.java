package Dao;
import java.sql.ResultSet; 	
import java.sql.SQLException;
import java.util.ArrayList;

import Model.Adm;
import Util.Conexao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class AdmDao {
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
			System.out.println("Erro na função listar Adm DAO" + e);
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