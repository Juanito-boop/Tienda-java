package com.tiendavirtual.githubteam.dao;

import java.sql.*;
import java.util.ArrayList;

import javax.swing.JOptionPane;

import com.tiendavirtual.githubteam.dto.*;

public class ProveedorDAO {
	public void insertarProveedor(Proveedor nuevo) {
		ConexionBD Conex=new ConexionBD();
		
		try {
			Statement stmt= Conex.getConexionDB().createStatement();
			stmt.executeUpdate("INSERT INTO proveedores(nombre,direccion,telefono,ciudad,nit)VALUES("+"'"+nuevo.getNombre()+"'"+","+"'"+nuevo.getDireccion()+"'"+","+"'"+nuevo.getTelefono()+"'"+","+"'"+nuevo.getCiudad()+"'"+","+"'"+nuevo.getNit()+"'"+")");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Proveedor> buscarProveedor(String nit) {
		ArrayList<Proveedor> proveedores = new ArrayList<Proveedor>();
		ConexionBD conex = new ConexionBD();

		String sql = "SELECT * FROM proveedores ";
		if (!nit.trim().equals("null")) {
			sql = sql + "WHERE NIT = '" + nit + "'";
		}

		try {
			Statement consulta = conex.getConexionDB().createStatement();
			ResultSet res = consulta.executeQuery(sql);

			while (res.next()) {
				Proveedor prov = new Proveedor(res.getString("nombre"),res.getString("direccion"),res.getString("telefono"), res.getString("ciudad"),
						res.getString("nit"));
				proveedores.add(prov);
			}
			res.close();
			consulta.close();
			//conex.desconectar();

		} catch (Exception e) {
			JOptionPane.showMessageDialog(null, "no se pudo consultar la Persona\n" + e);
		}
		return proveedores;
	}
	
	public void actualizarProveedor() {
		
	}
	
	public void borrarProveedor() {
		
	}
}
