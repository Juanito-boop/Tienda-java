package com.tiendavirtual.githubteam.dao;

import java.sql.*;

import com.tiendavirtual.githubteam.dto.*;

public class UsuarioDAO {
	public void insertarUsuario(Usuario nuevo) {
		ConexionBD Conex=new ConexionBD();
		
		try {
			Statement stmt= Conex.getConexionDB().createStatement();
			stmt.executeUpdate("INSERT INTO usuarios(nombre,password)VALUES("+"'"+nuevo.getNombre()+"'"+","+"'"+nuevo.getPassword()+"'"+")");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void buscarUsuario() {
		
	}
	
	public void actualizarUsuario() {
		
	}
	
	public void borrarUsuario() {
		
	}
}
