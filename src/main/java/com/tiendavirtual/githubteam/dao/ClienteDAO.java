package com.tiendavirtual.githubteam.dao;

import java.sql.*;

import com.tiendavirtual.githubteam.dto.*;

public class ClienteDAO {

	public void insertarCliente(Cliente nuevo) {
		ConexionBD Conex=new ConexionBD();
		
		try {
			Statement stmt= Conex.getConexionDB().createStatement();
			stmt.executeUpdate("INSERT INTO clientes(nombre,direccion,numero_tel)VALUES("+"'"+nuevo.getNombre()+"'"+","+"'"+nuevo.getDireccion()+"'"+","+"'"+nuevo.getTelefono()+"'"+")");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void buscarCliente() {
		
	}
	
	public void actualizarCliente() {
		
	}
	
	public void borrarCliente() {
		
	}

}
